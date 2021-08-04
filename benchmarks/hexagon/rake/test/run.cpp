#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>

#include "hexagon_standalone.h"
#include <hexagon_sim_timer.h>

#include "HalideBuffer.h"

#if vmpabuu
  #include "vmpabuu_hvx128.h"
#elif simple
  #include "simple_hvx128.h"
#elif gaussian3x3
  #include "gaussian3x3_hvx128.h"
#elif gaussian5x5
  #include "gaussian5x5_hvx128.h"
#elif gaussian5x5_sdk
  #include "gaussian5x5_sdk_hvx128.h"
#elif gaussian7x7
  #include "gaussian7x7_hvx128.h"
#elif gaussian7x7_sdk
  #include "gaussian7x7_sdk_hvx128.h"
#elif conv3x3a16
  #include "conv3x3a16_hvx128.h"
#elif conv3x3a16_sdk
  #include "conv3x3a16_sdk_hvx128.h"
#elif conv3x3a32
  #include "conv3x3a32_hvx128.h"
#elif conv3x3a32_sdk
  #include "conv3x3a32_sdk_hvx128.h"
#elif sobel3x3
  #include "sobel3x3_hvx128.h"
#elif sobel3x3_sdk
  #include "sobel3x3_sdk_hvx128.h"
#elif blur3x3
  #include "blur3x3_hvx128.h"
#elif dilate3x3
  #include "dilate3x3_hvx128.h"
#elif median3x3
  #include "median3x3_hvx128.h"
#elif add
  #include "add_hvx128.h"
#elif mul
#include "mul_hvx128.h"
#elif average_pool
  #include "average_pool_hvx128.h"
#elif max_pool
  #include "max_pool_hvx128.h"
#elif l2norm
  #include "l2norm_hvx128.h"
#elif matmul
  #include "matmul_hvx128.h"
#elif fully_connected
  #include "fully_connected_hvx128.h"
#elif conv_nn
  #include "conv_nn_hvx128.h"
#elif debug
#include "debug_hvx128.h"
#endif

#define LOG2VLEN 7
#define VLEN (1<<LOG2VLEN)

#define O_CREAT_WRONLY_TRUNC (O_CREAT | O_WRONLY | O_TRUNC)

extern "C" {
ssize_t      write(int, const void *, size_t);
}

int write_file(int fp, unsigned char *src, int height, int width, int border_width) {
  int i;
  for(i = 0; i < height; i++) {
    if(write(fp, &src[i*width], sizeof(unsigned char)*(width))!=(width)) {
      return 1;
    }
  }
  return 0;
}

template<typename F>
long long benchmark(F op) {
  long long start_time = q6sim_read_pcycles();

  op();

  long long total_cycles = q6sim_read_pcycles() - start_time;
  return total_cycles;
}

// This is a basic implementation of the Halide runtime for Hexagon.
void halide_print(void *user_context, const char *str) {
    if (str) {
        //log_printf("%s", str);
    }
}

void halide_error(void *user_context, const char *str) {
    if (!str) {
        //log_printf("Unknown error\n");
    } else if (*str == '\0' || str[strlen(str) - 1] != '\n') {
        //log_printf("Error: %s\n", str);
    } else {
        //log_printf("Error: %s", str);
    }
}

int main(int argc, char **argv) {
  int i, in_fp;
  
  constexpr int dims = 2;

  /* -----------------------------------------------------*/
  /*  Get input parameters                                */
  /* -----------------------------------------------------*/
  if (argc != 5) {
    printf("usage: %s <width> <height> <input.bin> <output.bin>\n", argv[0]);
    return 1;
  }

  int width  = atoi(argv[1]);
  int height = atoi(argv[2]);
  int stride = (width + (VLEN) - 1)&(-(VLEN));

  /* -----------------------------------------------------*/
  /*  Allocate memory for input/output                    */
  /* -----------------------------------------------------*/

  unsigned char *input  = (unsigned char *)memalign(1 << LOG2VLEN, width*height*sizeof(unsigned char));
  unsigned char *output = (unsigned char *)memalign(1 << LOG2VLEN, width*height*4*sizeof(unsigned char));

  if ( input == NULL || output == NULL ) {
    printf("Error: Could not allocate Memory for image\n");
    return 1;
  }

  /* -----------------------------------------------------*/
  /*  Read image input from file                          */
  /* -----------------------------------------------------*/
  if((in_fp = open(argv[3], O_RDONLY)) < 0 ) {
    printf("Error: Cannot open %s for input\n", argv[3]);
    return 1;
  }

  for(i = 0; i < height; i++) {
    if(read(in_fp, &input[i*width],  sizeof(unsigned char)*width)!=width) {
      printf("Error, Unable to read from %s\n", argv[3]);
      close(in_fp);
      return 1;
    }
  }
  close(in_fp);

  /* -----------------------------------------------------*/
  /*  Run benchmark on the Simulator                      */
  /* -----------------------------------------------------*/
  long long cycles;

#if add
      halide_dimension_t x_dim{ 0, width, 1 };
      halide_dimension_t y_dim{ 0, height, width };
      halide_dimension_t shape[2] = { x_dim, y_dim };

      Halide::Runtime::Buffer<uint8_t> input1_buf(input, dims, shape);
      Halide::Runtime::Buffer<uint8_t> input2_buf(input, dims, shape);
      Halide::Runtime::Buffer<uint8_t> output_buf(output, dims, shape);

      // Run in 128 byte mode
      SIM_ACQUIRE_HVX;
      SIM_SET_HVX_DOUBLE_MODE;
      cycles = benchmark([&]() {
          int error = add_hvx128(input1_buf, 0, 100, input2_buf, 0, 100, 0, 5, 225, output_buf);
          if (error != 0) {
              printf("add_hvx128 pipeline failed: %d\n", error);
          }
          });
      SIM_RELEASE_HVX;

      for (int x = 0; x < 10; x++)
          for (int y = 0; y < 10; y++)
              printf("(x: %d, y: %d) ==> input-val: %d   output-val: %d\n", x, y, input1_buf(x, y), output_buf(x, y));

      printf("AppReported (HVX128B-mode): Image %dx%d - add(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles, (float)cycles / (width * height));
#endif

#if mul
      halide_dimension_t x_dim{ 0, width, 1 };
      halide_dimension_t y_dim{ 0, height, width };
      halide_dimension_t shape[2] = { x_dim, y_dim };

      Halide::Runtime::Buffer<uint8_t> input1_buf(input, dims, shape);
      Halide::Runtime::Buffer<uint8_t> input2_buf(input, dims, shape);
      Halide::Runtime::Buffer<uint8_t> output_buf(output, dims, shape);

      // Run in 128 byte mode
      SIM_ACQUIRE_HVX;
      SIM_SET_HVX_DOUBLE_MODE;
      cycles = benchmark([&]() {
          int error = mul_hvx128(input1_buf, 2, input2_buf, 5, 5, 10000, 1, 5, 225, output_buf);
          if (error != 0) {
              printf("mul_hvx128 pipeline failed: %d\n", error);
          }
          });
      SIM_RELEASE_HVX;

      for (int x = 0; x < 10; x++)
          for (int y = 0; y < 10; y++)
              printf("(x: %d, y: %d) ==> input-val: %d   output-val: %d\n", x, y, input1_buf(x, y), output_buf(x, y));

      printf("AppReported (HVX128B-mode): Image %dx%d - mul(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles, (float)cycles / (width * height));
#endif

#if average_pool
      halide_dimension_t c_dim{ 0, 1024, 1 };
      halide_dimension_t x_dim{ 0, width/32, 128 };
      halide_dimension_t y_dim{ 0, height/32, 128 * (width / 32) };
      halide_dimension_t b_dim{ 0, 1, 128 * (width / 32) * (height / 32) };
      halide_dimension_t shape[4] = { c_dim, x_dim, y_dim, b_dim };

      Halide::Runtime::Buffer<uint8_t> input_buf(input, 4, shape);
      Halide::Runtime::Buffer<uint8_t> output_buf(output, 4, shape);

      // Run in 128 byte mode
      SIM_ACQUIRE_HVX;
      SIM_SET_HVX_DOUBLE_MODE;
      cycles = benchmark([&]() {
          int error = average_pool_hvx128(input_buf, 2, 2, 8, 8, 5, 225, output_buf);
          if (error != 0) {
              printf("average_pool_hvx128 pipeline failed: %d\n", error);
          }
          });
      SIM_RELEASE_HVX;

      for (int x = 0; x < 10; x++)
          for (int y = 0; y < 10; y++)
              printf("(x: %d, y: %d) ==> input-val: %d   output-val: %d\n", x, y, input_buf(x, y), output_buf(x, y));

      printf("AppReported (HVX128B-mode): Image %dx%d - average_pool(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles, (float)cycles / (width * height));
#endif

#if max_pool
      halide_dimension_t c_dim{ 0, 1024, 1 };
      halide_dimension_t x_dim{ 0, width / 32, 128 };
      halide_dimension_t y_dim{ 0, height / 32, 128 * (width / 32) };
      halide_dimension_t b_dim{ 0, 1, 128 * (width / 32) * (height / 32) };
      halide_dimension_t shape[4] = { c_dim, x_dim, y_dim, b_dim };

      Halide::Runtime::Buffer<uint8_t> input_buf(input, 4, shape);
      Halide::Runtime::Buffer<uint8_t> output_buf(output, 4, shape);

      // Run in 128 byte mode
      SIM_ACQUIRE_HVX;
      SIM_SET_HVX_DOUBLE_MODE;
      cycles = benchmark([&]() {
          int error = max_pool_hvx128(input_buf, 2, 2, 8, 8, 5, 225, output_buf);
          if (error != 0) {
              printf("max_pool_hvx128 pipeline failed: %d\n", error);
          }
          });
      SIM_RELEASE_HVX;

      for (int x = 0; x < 10; x++)
          for (int y = 0; y < 10; y++)
              printf("(x: %d, y: %d) ==> input-val: %d   output-val: %d\n", x, y, input_buf(x, y), output_buf(x, y));

      printf("AppReported (HVX128B-mode): Image %dx%d - max_pool(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles, (float)cycles / (width * height));
#endif

#if l2norm
      halide_dimension_t x_dim{ 0, width, 1 };
      halide_dimension_t y_dim{ 0, height, width };
      halide_dimension_t shape[2] = { x_dim, y_dim };

      Halide::Runtime::Buffer<uint8_t> input_buf(input, dims, shape);
      Halide::Runtime::Buffer<uint8_t> output_buf(output, dims, shape);

      // Run in 128 byte mode
      SIM_ACQUIRE_HVX;
      SIM_SET_HVX_DOUBLE_MODE;
      cycles = benchmark([&]() {
          int error = l2norm_hvx128(input_buf, 0, output_buf);
          if (error != 0) {
              printf("l2norm_hvx128 pipeline failed: %d\n", error);
          }
          });
      SIM_RELEASE_HVX;

      for (int x = 0; x < 10; x++)
          for (int y = 0; y < 10; y++)
              printf("(x: %d, y: %d) ==> input-val: %d   output-val: %d\n", x, y, input_buf(x, y), output_buf(x, y));

      printf("AppReported (HVX128B-mode): Image %dx%d - l2norm(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles, (float)cycles / (width * height));
#endif

#if matmul
      int* bias = (int*)memalign(1 << LOG2VLEN, width * height * sizeof(int));
      for (int i=0; i < (width*height); i++)
          bias[i] = 10000;

      halide_dimension_t x_dim{ 0, width, 1 };
      halide_dimension_t y_dim{ 0, height, width };
      halide_dimension_t shape[2] = { x_dim, y_dim };

      halide_dimension_t i_dim{ 0, width*height, 1 };
      halide_dimension_t b_shape[2] = { i_dim };

      Halide::Runtime::Buffer<uint8_t> mat_a_(input, dims, shape);
      Halide::Runtime::Buffer<uint8_t> mat_b_(input, dims, shape);
      Halide::Runtime::Buffer<int32_t> bias_((long*)bias, 1, b_shape);
      Halide::Runtime::Buffer<uint8_t> output_(output, dims, shape);

      // Run in 128 byte mode
      SIM_ACQUIRE_HVX;
      SIM_SET_HVX_DOUBLE_MODE;
      cycles = benchmark([&]() {
          int error = matmul_hvx128(mat_a_, mat_b_, bias_, 0, 0, 65536, 1, 0, 5, 250, output_);
          if (error != 0) {
              printf("matmul_hvx128 pipeline failed: %d\n", error);
          }
          });
      SIM_RELEASE_HVX;

      for (int x = 0; x < 10; x++)
          for (int y = 0; y < 10; y++)
              printf("(x: %d, y: %d) ==> input-val: %d   output-val: %d\n", x, y, mat_a_(x, y), output_(x, y));

      printf("AppReported (HVX128B-mode): Image %dx%d - matmul(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles, (float)cycles / (width * height));
#endif

#if fully_connected
      int* bias = (int*)memalign(1 << LOG2VLEN, width * height * sizeof(int));
      for (int i = 0; i < (width * height); i++)
          bias[i] = 10000;

      halide_dimension_t x_dim{ 0, width, 1 };
      halide_dimension_t y_dim{ 0, height, width };
      halide_dimension_t shape[2] = { x_dim, y_dim };

      halide_dimension_t i_dim{ 0, width * height, 1 };
      halide_dimension_t b_shape[2] = { i_dim };

      Halide::Runtime::Buffer<uint8_t> mat_a_(input, dims, shape);
      Halide::Runtime::Buffer<uint8_t> mat_b_(input, dims, shape);
      Halide::Runtime::Buffer<int32_t> bias_((long*)bias, 1, b_shape);
      Halide::Runtime::Buffer<uint8_t> output_(output, dims, shape);
      
      // Run in 128 byte mode
      SIM_ACQUIRE_HVX;
      SIM_SET_HVX_DOUBLE_MODE;
      cycles = benchmark([&]() {
          int error = fully_connected_hvx128(mat_a_, 3, mat_b_, 5, bias_, 7, 32767, 1, 5, 250, output_);
          if (error != 0) {
              printf("fully_connected_hvx128 pipeline failed: %d\n", error);
          }
          });
      SIM_RELEASE_HVX;

      for (int x = 0; x < 10; x++)
          for (int y = 0; y < 10; y++)
              printf("(x: %d, y: %d) ==> input-val: %d   output-val: %d\n", x, y, mat_a_(x, y), output_(x, y));

      printf("AppReported (HVX128B-mode): Image %dx%d - fully_connected_hvx128(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles, (float)cycles / (width * height));
#endif

#if conv_nn
      int* bias = (int*)memalign(1 << LOG2VLEN, width * height * sizeof(int));
      for (int i = 0; i < (width * height); i++)
          bias[i] = 10000;

      width = 128;
      height = 128;

      halide_dimension_t c_dim{ 0, 1024, 1 };
      halide_dimension_t x_dim{ 0, width / 32, 128 };
      halide_dimension_t y_dim{ 0, height / 32, 128 * (width / 32) };
      halide_dimension_t b_dim{ 0, 1, 128 * (width / 32) * (height / 32) };
      halide_dimension_t shape[4] = { c_dim, x_dim, y_dim, b_dim };

      halide_dimension_t i_dim{ 0, width * height, 1 };
      halide_dimension_t b_shape[2] = { i_dim };

      // A 6D array of filter coefficients indexed by ci % n, co % k, ci / n, co / k, x, y,

      halide_dimension_t cim_dim{ 0, 4, 1 };
      halide_dimension_t com_dim{ 0, 4, 4 };
      halide_dimension_t cid_dim{ 0, 4, 4 * 4 };
      halide_dimension_t cod_dim{ 0, 4, 4 * 4 * 4 };
      halide_dimension_t fx_dim{ 0, 1, 4 * 4 * 4 * 4 };
      halide_dimension_t fy_dim{ 0, 1, 4 * 4 * 4 * 4 };
      halide_dimension_t f_shape[6] = { cim_dim, com_dim, cid_dim, cod_dim, x_dim, b_dim };

      Halide::Runtime::Buffer<uint8_t> input_buf(input, 4, shape);
      Halide::Runtime::Buffer<uint8_t> output_buf(output, 4, shape);
      Halide::Runtime::Buffer<uint8_t> filter_buf(input, 6, f_shape);
      Halide::Runtime::Buffer<int32_t> bias_((long*)bias, 1, b_shape);

      // Run in 128 byte mode
      SIM_ACQUIRE_HVX;
      SIM_SET_HVX_DOUBLE_MODE;
      cycles = benchmark([&]() {
          int error = conv_nn_hvx128(input_buf, 3, filter_buf, 5, bias_, 1, 1, 1, 1, 32767, 1, 3, 5, 250, output_buf);
          if (error != 0) {
              printf("conv_nn_hvx128 pipeline failed: %d\n", error);
          }
          });
      SIM_RELEASE_HVX;

      for (int x = 0; x < 10; x++)
          for (int y = 0; y < 10; y++)
              printf("(x: %d, y: %d) ==> input-val: %d   output-val: %d\n", x, y, input_buf(x, y), output_buf(x, y));

      printf("AppReported (HVX128B-mode): Image %dx%d - conv_nn_hvx128(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles, (float)cycles / (width * height));
#endif

#if debug
      halide_dimension_t x_dim{ 0, width, 1 };
      halide_dimension_t y_dim{ 0, height, width };
      halide_dimension_t shape[2] = { x_dim, y_dim };

      Halide::Runtime::Buffer<uint8_t> input1_buf(input, dims, shape);
      Halide::Runtime::Buffer<int16_t> output_buf((int16_t*)output, dims, shape);

      // Run in 128 byte mode
      SIM_ACQUIRE_HVX;
      SIM_SET_HVX_DOUBLE_MODE;
      cycles = benchmark([&]() {
          int error = debug_hvx128(input1_buf, 20, output_buf);
          if (error != 0) {
              printf("debug_hvx128 pipeline failed: %d\n", error);
          }
          });
      SIM_RELEASE_HVX;

      for (int x = 0; x < 10; x++)
          for (int y = 0; y < 10; y++)
              printf("(x: %d, y: %d) ==> input-val: %d   output-val: %d\n", x, y, input1_buf(x, y), output_buf(x, y));

      printf("AppReported (HVX128B-mode): Image %dx%d - debug(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles, (float)cycles / (width * height));
#endif

  #if vmpabuu
    halide_dimension_t x_dim{0, width, 1};
    halide_dimension_t y_dim{0, height, width};
    halide_dimension_t shape[2] = {x_dim, y_dim};

    Halide::Runtime::Buffer<uint8_t> input_buf(input, dims, shape);
    Halide::Runtime::Buffer<int16_t> output_buf((short*)output, dims, shape);

    // Run in 128 byte mode
    SIM_ACQUIRE_HVX;
    SIM_SET_HVX_DOUBLE_MODE;
    cycles = benchmark([&]() {
        int error = vmpabuu_hvx128(input_buf, output_buf);
        if (error != 0) {
          printf("gaussian5x5_hvx128 pipeline failed: %d\n", error);
        }
      });
    SIM_RELEASE_HVX;

    for (int x=0; x<10; x++)
      for (int y=0; y<10; y++)
        printf("(x: %d, y: %d) ==> input-val: %d   output-val: %d\n", x, y, input_buf(x, y), output_buf(x, y));

    printf("AppReported (HVX128B-mode): Image %dx%d - simple(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles, (float)cycles/(width*height));
  #endif
  
  #if simple
    halide_dimension_t x_dim{0, width/2, 1};
    halide_dimension_t y_dim{0, height/2, width/2};
    halide_dimension_t shape[2] = {x_dim, y_dim};

    Halide::Runtime::Buffer<int16_t> input_buf((short*)input, dims, shape);
    Halide::Runtime::Buffer<int16_t> output_buf((short*)output, dims, shape);

    // Run in 128 byte mode
    SIM_ACQUIRE_HVX;
    SIM_SET_HVX_DOUBLE_MODE;
    cycles = benchmark([&]() {
        int error = simple_hvx128(input_buf, output_buf);
        if (error != 0) {
          printf("gaussian5x5_hvx128 pipeline failed: %d\n", error);
        }
      });
    SIM_RELEASE_HVX;

    for (int x=0; x<10; x++)
      for (int y=0; y<10; y++)
        printf("(x: %d, y: %d) ==> input-val: %d   output-val: %d\n", x, y, input_buf(x, y), output_buf(x, y));

    printf("AppReported (HVX128B-mode): Image %dx%d - simple(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles, (float)cycles/(width*height));
  #endif

#if blur3x3
    halide_dimension_t x_dim{ 0, width/2, 1 };
    halide_dimension_t y_dim{ 0, height, width/2 };
    halide_dimension_t shape[2] = { x_dim, y_dim };

    Halide::Runtime::Buffer<int16_t> input_buf((short*)input, dims, shape);
    Halide::Runtime::Buffer<int16_t> output_buf((short*)output, dims, shape);

    // Run in 128 byte mode
    SIM_ACQUIRE_HVX;
    SIM_SET_HVX_DOUBLE_MODE;
    cycles = benchmark([&]() {
        int error = blur3x3_hvx128(input_buf, output_buf);
        if (error != 0) {
            printf("blur3x3_hvx128 pipeline failed: %d\n", error);
        }
        });
    SIM_RELEASE_HVX;

    for (int x = 0; x < 10; x++)
        for (int y = 0; y < 10; y++)
            printf("(x: %d, y: %d) ==> input-val: %d   output-val: %d\n", x, y, input_buf(x, y), output_buf(x, y));

    printf("AppReported (HVX128B-mode): Image %dx%d - blur3x3(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles, (float)cycles / (width * height));
  #endif

  #if dilate3x3
    halide_dimension_t x_dim{ 0, width, 1 };
    halide_dimension_t y_dim{ 0, height, width };
    halide_dimension_t shape[2] = { x_dim, y_dim };

    Halide::Runtime::Buffer<uint8_t> input_buf(input, dims, shape);
    Halide::Runtime::Buffer<uint8_t> output_buf(output, dims, shape);

    // Run in 128 byte mode
    SIM_ACQUIRE_HVX;
    SIM_SET_HVX_DOUBLE_MODE;
    cycles = benchmark([&]() {
        int error = dilate3x3_hvx128(input_buf, output_buf);
        if (error != 0) {
            printf("dilate3x3_hvx128 pipeline failed: %d\n", error);
        }
        });
    SIM_RELEASE_HVX;

    for (int x = 0; x < 10; x++)
        for (int y = 0; y < 10; y++)
            printf("(x: %d, y: %d) ==> input-val: %d   output-val: %d\n", x, y, input_buf(x, y), output_buf(x, y));

    printf("AppReported (HVX128B-mode): Image %dx%d - dilate3x3(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles, (float)cycles / (width * height));
  #endif

  #if conv3x3a16
    signed char mask[9] =
    {
        1, 2, 1,
        2, 4, 2,
        1, 2, 1
    };

    halide_dimension_t x_dim{ 0, width, 1 };
    halide_dimension_t y_dim{ 0, height, width };
    halide_dimension_t shape[2] = { x_dim, y_dim };

    halide_dimension_t mask_shape[2];
    mask_shape[0].min = 0; mask_shape[0].extent = 3; mask_shape[0].stride = 1;
    mask_shape[1].min = 0; mask_shape[1].extent = 3; mask_shape[1].stride = 3;

    Halide::Runtime::Buffer<uint8_t> input_buf(input, dims, shape);
    Halide::Runtime::Buffer<uint8_t> output_buf(output, dims, shape);
    Halide::Runtime::Buffer<int8_t> mask_buf(mask, dims, mask_shape);

    // Run in 128 byte mode
    SIM_ACQUIRE_HVX;
    SIM_SET_HVX_DOUBLE_MODE;
    cycles = benchmark([&]() {
        int error = conv3x3a16_hvx128(input_buf, mask_buf, output_buf);
        if (error != 0) {
            printf("conv3x3a16_hvx128 pipeline failed: %d\n", error);
        }
        });
    SIM_RELEASE_HVX;

    for (int x = 0; x < 10; x++)
        for (int y = 0; y < 10; y++)
            printf("(x: %d, y: %d) ==> input-val: %d   output-val: %d\n", x, y, input_buf(x, y), output_buf(x, y));

    printf("AppReported (HVX128B-mode): Image %dx%d - conv3x3a16(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles, (float)cycles / (width * height));
  #endif

#if conv3x3a16_sdk
    signed char mask[9] =
    {
        1, 2, 1,
        2, 4, 2,
        1, 2, 1
    };

    halide_dimension_t x_dim{ 0, width, 1 };
    halide_dimension_t y_dim{ 0, height, width };
    halide_dimension_t shape[2] = { x_dim, y_dim };

    halide_dimension_t mask_shape[2];
    mask_shape[0].min = 0; mask_shape[0].extent = 3; mask_shape[0].stride = 1;
    mask_shape[1].min = 0; mask_shape[1].extent = 3; mask_shape[1].stride = 3;

    Halide::Runtime::Buffer<uint8_t> input_buf(input, dims, shape);
    Halide::Runtime::Buffer<uint8_t> output_buf(output, dims, shape);
    Halide::Runtime::Buffer<int8_t> mask_buf(mask, dims, mask_shape);

    // Run in 128 byte mode
    SIM_ACQUIRE_HVX;
    SIM_SET_HVX_DOUBLE_MODE;
    cycles = benchmark([&]() {
        int error = conv3x3a16_sdk_hvx128(input_buf, mask_buf, output_buf);
        if (error != 0) {
            printf("conv3x3a16_hvx128 pipeline failed: %d\n", error);
        }
        });
    SIM_RELEASE_HVX;

    for (int x = 0; x < 10; x++)
        for (int y = 0; y < 10; y++)
            printf("(x: %d, y: %d) ==> input-val: %d   output-val: %d\n", x, y, input_buf(x, y), output_buf(x, y));

    printf("AppReported (HVX128B-mode): Image %dx%d - conv3x3a16(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles, (float)cycles / (width * height));
#endif

  #if conv3x3a32
    signed char mask[9] =
    {
        1, 2, 1,
        2, 4, 2,
        1, 2, 1
    };

    halide_dimension_t x_dim{ 0, width, 1 };
    halide_dimension_t y_dim{ 0, height, width };
    halide_dimension_t shape[2] = { x_dim, y_dim };

    halide_dimension_t mask_shape[2];
    mask_shape[0].min = 0; mask_shape[0].extent = 3; mask_shape[0].stride = 1;
    mask_shape[1].min = 0; mask_shape[1].extent = 3; mask_shape[1].stride = 3;

    Halide::Runtime::Buffer<uint8_t> input_buf(input, dims, shape);
    Halide::Runtime::Buffer<uint8_t> output_buf(output, dims, shape);
    Halide::Runtime::Buffer<int8_t> mask_buf(mask, dims, mask_shape);

    // Run in 128 byte mode
    SIM_ACQUIRE_HVX;
    SIM_SET_HVX_DOUBLE_MODE;
    cycles = benchmark([&]() {
        int error = conv3x3a32_hvx128(input_buf, mask_buf, output_buf);
        if (error != 0) {
            printf("conv3x3a32_hvx128 pipeline failed: %d\n", error);
        }
        });
    SIM_RELEASE_HVX;

    for (int x = 0; x < 10; x++)
        for (int y = 0; y < 10; y++)
            printf("(x: %d, y: %d) ==> input-val: %d   output-val: %d\n", x, y, input_buf(x, y), output_buf(x, y));

    printf("AppReported (HVX128B-mode): Image %dx%d - conv3x3a32(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles, (float)cycles / (width * height));
  #endif

#if conv3x3a32_sdk
    signed char mask[9] =
    {
        1, 2, 1,
        2, 4, 2,
        1, 2, 1
    };

    halide_dimension_t x_dim{ 0, width, 1 };
    halide_dimension_t y_dim{ 0, height, width };
    halide_dimension_t shape[2] = { x_dim, y_dim };

    halide_dimension_t mask_shape[2];
    mask_shape[0].min = 0; mask_shape[0].extent = 3; mask_shape[0].stride = 1;
    mask_shape[1].min = 0; mask_shape[1].extent = 3; mask_shape[1].stride = 3;

    Halide::Runtime::Buffer<uint8_t> input_buf(input, dims, shape);
    Halide::Runtime::Buffer<uint8_t> output_buf(output, dims, shape);
    Halide::Runtime::Buffer<int8_t> mask_buf(mask, dims, mask_shape);

    // Run in 128 byte mode
    SIM_ACQUIRE_HVX;
    SIM_SET_HVX_DOUBLE_MODE;
    cycles = benchmark([&]() {
        int error = conv3x3a32_sdk_hvx128(input_buf, mask_buf, output_buf);
        if (error != 0) {
            printf("conv3x3a32_hvx128 pipeline failed: %d\n", error);
        }
        });
    SIM_RELEASE_HVX;

    for (int x = 0; x < 10; x++)
        for (int y = 0; y < 10; y++)
            printf("(x: %d, y: %d) ==> input-val: %d   output-val: %d\n", x, y, input_buf(x, y), output_buf(x, y));

    printf("AppReported (HVX128B-mode): Image %dx%d - conv3x3a32(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles, (float)cycles / (width * height));
#endif

  #if sobel3x3
    halide_dimension_t x_dim{ 0, width, 1 };
    halide_dimension_t y_dim{ 0, height, width };
    halide_dimension_t shape[2] = { x_dim, y_dim };

    Halide::Runtime::Buffer<uint8_t> input_buf(input, dims, shape);
    Halide::Runtime::Buffer<uint8_t> output_buf(output, dims, shape);

    // Run in 128 byte mode
    SIM_ACQUIRE_HVX;
    SIM_SET_HVX_DOUBLE_MODE;
    cycles = benchmark([&]() {
        int error = sobel3x3_hvx128(input_buf, output_buf);
        if (error != 0) {
            printf("sobel3x3_hvx128 pipeline failed: %d\n", error);
        }
        });
    SIM_RELEASE_HVX;

    for (int x = 0; x < 10; x++)
        for (int y = 0; y < 10; y++)
            printf("(x: %d, y: %d) ==> input-val: %d   output-val: %d\n", x, y, input_buf(x, y), output_buf(x, y));

    printf("AppReported (HVX128B-mode): Image %dx%d - sobel3x3(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles, (float)cycles / (width * height));
  #endif

#if sobel3x3_sdk
    halide_dimension_t x_dim{ 0, width, 1 };
    halide_dimension_t y_dim{ 0, height, width };
    halide_dimension_t shape[2] = { x_dim, y_dim };

    Halide::Runtime::Buffer<uint8_t> input_buf(input, dims, shape);
    Halide::Runtime::Buffer<uint8_t> output_buf(output, dims, shape);

    // Run in 128 byte mode
    SIM_ACQUIRE_HVX;
    SIM_SET_HVX_DOUBLE_MODE;
    cycles = benchmark([&]() {
        int error = sobel3x3_sdk_hvx128(input_buf, output_buf);
        if (error != 0) {
            printf("sobel3x3_hvx128 pipeline failed: %d\n", error);
        }
        });
    SIM_RELEASE_HVX;

    for (int x = 0; x < 10; x++)
        for (int y = 0; y < 10; y++)
            printf("(x: %d, y: %d) ==> input-val: %d   output-val: %d\n", x, y, input_buf(x, y), output_buf(x, y));

    printf("AppReported (HVX128B-mode): Image %dx%d - sobel3x3(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles, (float)cycles / (width * height));
#endif

  #if gaussian3x3
    halide_dimension_t x_dim{ 0, width, 1 };
    halide_dimension_t y_dim{ 1, height-1, width };
    halide_dimension_t shape[2] = { x_dim, y_dim };

    Halide::Runtime::Buffer<uint8_t> input_buf(input, dims, shape);
    Halide::Runtime::Buffer<uint8_t> output_buf(output, dims, shape);

    // Run in 128 byte mode
    SIM_ACQUIRE_HVX;
    SIM_SET_HVX_DOUBLE_MODE;
    cycles = benchmark([&]() {
        int error = gaussian3x3_hvx128(input_buf, output_buf);
        if (error != 0) {
            printf("gaussian3x3_hvx128 pipeline failed: %d\n", error);
        }
        });
    SIM_RELEASE_HVX;

    for (int x = 0; x < 10; x++)
        for (int y = 0; y < 10; y++)
            printf("(x: %d, y: %d) ==> input-val: %d   output-val: %d, true-val: %d\n", x, y, input_buf(x, y), output_buf(x, y),
                
                ((static_cast<int16_t>(input_buf(x-1, y-1)) * 1 + static_cast<int16_t>(input_buf(x, y-1)) * 2 + static_cast<int16_t>(input_buf(x+1, y-1)) * 1 +
                    static_cast<int16_t>(input_buf(x-1, y)) * 2 + static_cast<int16_t>(input_buf(x, y)) * 4 + static_cast<int16_t>(input_buf(x+1, y)) * 2 +
                    static_cast<int16_t>(input_buf(x-1, y+1)) * 1 + static_cast<int16_t>(input_buf(x, y+1)) * 2 + static_cast<int16_t>(input_buf(x+1, y+1) * 1)) + 8) >> 4
                    
                );

    printf("AppReported (HVX128B-mode): Image %dx%d - gaussian3x3(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles, (float)cycles / (width * height));
  #endif

  #if gaussian5x5
    halide_dimension_t x_dim{0, width, 1};
    halide_dimension_t y_dim{0, height, width};
    halide_dimension_t shape[2] = {x_dim, y_dim};

    Halide::Runtime::Buffer<uint8_t> input_buf(input, dims, shape);
    Halide::Runtime::Buffer<uint8_t> output_buf(output, dims, shape);

    // Run in 128 byte mode
    SIM_ACQUIRE_HVX;
    SIM_SET_HVX_DOUBLE_MODE;
    cycles = benchmark([&]() {
        int error = gaussian5x5_hvx128(input_buf, output_buf);
        if (error != 0) {
          printf("gaussian5x5_hvx128 pipeline failed: %d\n", error);
        }
      });
    SIM_RELEASE_HVX;

    for (int x=0; x<10; x++)
      for (int y=0; y<10; y++)
        printf("(x: %d, y: %d) ==> input-val: %d   output-val: %d\n", x, y, input_buf(x, y), output_buf(x, y));

    printf("AppReported (HVX128B-mode): Image %dx%d - gaussian5x5(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles, (float)cycles/(width*height));
  #endif

#if gaussian5x5_sdk
    halide_dimension_t x_dim{ 0, width, 1 };
    halide_dimension_t y_dim{ 0, height, width };
    halide_dimension_t shape[2] = { x_dim, y_dim };

    Halide::Runtime::Buffer<uint8_t> input_buf(input, dims, shape);
    Halide::Runtime::Buffer<uint8_t> output_buf(output, dims, shape);

    // Run in 128 byte mode
    SIM_ACQUIRE_HVX;
    SIM_SET_HVX_DOUBLE_MODE;
    cycles = benchmark([&]() {
        int error = gaussian5x5_sdk_hvx128(input_buf, output_buf);
        if (error != 0) {
            printf("gaussian5x5_hvx128 pipeline failed: %d\n", error);
        }
        });
    SIM_RELEASE_HVX;

    for (int x = 0; x < 10; x++)
        for (int y = 0; y < 10; y++)
            printf("(x: %d, y: %d) ==> input-val: %d   output-val: %d\n", x, y, input_buf(x, y), output_buf(x, y));

    printf("AppReported (HVX128B-mode): Image %dx%d - gaussian5x5(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles, (float)cycles / (width * height));
#endif

#if gaussian7x7
    halide_dimension_t x_dim{ 0, width, 1 };
    halide_dimension_t y_dim{ 0, height, width };
    halide_dimension_t shape[2] = { x_dim, y_dim };

    Halide::Runtime::Buffer<uint8_t> input_buf(input, dims, shape);
    Halide::Runtime::Buffer<uint8_t> output_buf(output, dims, shape);

    // Run in 128 byte mode
    SIM_ACQUIRE_HVX;
    SIM_SET_HVX_DOUBLE_MODE;
    cycles = benchmark([&]() {
        int error = gaussian7x7_hvx128(input_buf, output_buf);
        if (error != 0) {
            printf("gaussian7x7_hvx128 pipeline failed: %d\n", error);
        }
        });
    SIM_RELEASE_HVX;

    for (int x = 0; x < 10; x++)
        for (int y = 0; y < 10; y++)
            printf("(x: %d, y: %d) ==> input-val: %d   output-val: %d\n", x, y, input_buf(x, y), output_buf(x, y));

    printf("AppReported (HVX128B-mode): Image %dx%d - gaussian7x7(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles, (float)cycles / (width * height));
#endif

#if gaussian7x7_sdk
    halide_dimension_t x_dim{ 0, width, 1 };
    halide_dimension_t y_dim{ 0, height, width };
    halide_dimension_t shape[2] = { x_dim, y_dim };

    Halide::Runtime::Buffer<uint8_t> input_buf(input, dims, shape);
    Halide::Runtime::Buffer<uint8_t> output_buf(output, dims, shape);

    // Run in 128 byte mode
    SIM_ACQUIRE_HVX;
    SIM_SET_HVX_DOUBLE_MODE;
    cycles = benchmark([&]() {
        int error = gaussian7x7_sdk_hvx128(input_buf, output_buf);
        if (error != 0) {
            printf("gaussian7x7_hvx128 pipeline failed: %d\n", error);
        }
        });
    SIM_RELEASE_HVX;

    for (int x = 0; x < 10; x++)
        for (int y = 0; y < 10; y++)
            printf("(x: %d, y: %d) ==> input-val: %d   output-val: %d\n", x, y, input_buf(x, y), output_buf(x, y));

    printf("AppReported (HVX128B-mode): Image %dx%d - gaussian7x7(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles, (float)cycles / (width * height));
#endif

#if median3x3
    halide_dimension_t x_dim{ 0, width, 1 };
    halide_dimension_t y_dim{ 0, height, width };
    halide_dimension_t shape[2] = { x_dim, y_dim };

    Halide::Runtime::Buffer<uint8_t> input_buf(input, dims, shape);
    Halide::Runtime::Buffer<uint8_t> output_buf(output, dims, shape);

    // Run in 128 byte mode
    SIM_ACQUIRE_HVX;
    SIM_SET_HVX_DOUBLE_MODE;
    cycles = benchmark([&]() {
        int error = median3x3_hvx128(input_buf, output_buf);
        if (error != 0) {
            printf("median3x3_hvx128 pipeline failed: %d\n", error);
        }
        });
    SIM_RELEASE_HVX;

    for (int x = 0; x < 10; x++)
        for (int y = 0; y < 10; y++)
            printf("(x: %d, y: %d) ==> input-val: %d   output-val: %d\n", x, y, input_buf(x, y), output_buf(x, y));

    printf("AppReported (HVX128B-mode): Image %dx%d - median3x3(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles, (float)cycles / width / height);
#endif

  /* -----------------------------------------------------*/
  /*  Write output image to file                          */
  /* -----------------------------------------------------*/
  char *filename = (char *) malloc(100 * sizeof(char));
  strcpy(filename, argv[4]);
  int out_fp;

  if((out_fp = open(filename, O_CREAT_WRONLY_TRUNC, 0777)) < 0)
    {
      printf("Error: Cannot open %s for output\n", filename);
      return 1;
    }
  if(write_file(out_fp, output, height, width, 2) != 0) {
    printf("Error: Cannot write to file %s\n", filename);
  }

  close(out_fp);

  free(input);
  free(output);
  free(filename);

  printf("Success!\n");

  return 0;
}

/*int main(int argc, char **argv) {

#if gaussian7x7
  // Run in 128 byte mode
  SIM_ACQUIRE_HVX;
  SIM_SET_HVX_DOUBLE_MODE;
  cycles_hvx128 = benchmark([&]() {
      int error = gaussian7x7_hvx128(input1_buf, output_buf);
      if (error != 0) {
        printf("gaussian7x7_hvx128 pipeline failed: %d\n", error);
      }
    });
  SIM_RELEASE_HVX;

  printf("AppReported (HVX128B-mode): Image %dx%d - gaussian7x7(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles_hvx128, (float)cycles_hvx128/width/height);
#endif

#if conv3x3a16
  // Run in 128 byte mode
  SIM_ACQUIRE_HVX;
  SIM_SET_HVX_DOUBLE_MODE;
  cycles_hvx128 = benchmark([&]() {
      int error = conv3x3a16_hvx128(input1_buf, mask_buf, output_buf);
      if (error != 0) {
        printf("conv3x3a16_hvx128 pipeline failed: %d\n", error);
      }
    });
  SIM_RELEASE_HVX;

  printf("AppReported (HVX128B-mode): Image %dx%d - conv3x3a16(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles_hvx128, (float)cycles_hvx128/width/height);
#endif

#if conv3x3a32
  // Run in 128 byte mode
  SIM_ACQUIRE_HVX;
  SIM_SET_HVX_DOUBLE_MODE;
  cycles_hvx128 = benchmark([&]() {
      int error = conv3x3a32_hvx128(input1_buf, mask_buf, output_buf);
      if (error != 0) {
        printf("conv3x3a32_hvx128 pipeline failed: %d\n", error);
      }
    });
  SIM_RELEASE_HVX;

  printf("AppReported (HVX128B-mode): Image %dx%d - conv3x3a32(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles_hvx128, (float)cycles_hvx128/width/height);
#endif

#if sobel3x3
  // Run in 128 byte mode
  SIM_ACQUIRE_HVX;
  SIM_SET_HVX_DOUBLE_MODE;
  cycles_hvx128 = benchmark([&]() {
      int error = sobel3x3_hvx128(input1_buf, output_buf);
      if (error != 0) {
        printf("sobel3x3_hvx128 pipeline failed: %d\n", error);
      }
    });
  SIM_RELEASE_HVX;

  printf("AppReported (HVX128B-mode): Image %dx%d - sobel3x3(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles_hvx128, (float)cycles_hvx128/width/height);
#endif

#if blur3x3
  // Run in 128 byte mode
  SIM_ACQUIRE_HVX;
  SIM_SET_HVX_DOUBLE_MODE;
  cycles_hvx128 = benchmark([&]() {
      int error = blur3x3_hvx128(input1_buf, output_buf);
      if (error != 0) {
        printf("blur3x3_hvx128 pipeline failed: %d\n", error);
      }
    });
  SIM_RELEASE_HVX;

  printf("AppReported (HVX128B-mode): Image %dx%d - blur3x3(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles_hvx128, (float)cycles_hvx128/width/height);
#endif

#if dilate3x3
  // Run in 128 byte mode
  SIM_ACQUIRE_HVX;
  SIM_SET_HVX_DOUBLE_MODE;
  cycles_hvx128 = benchmark([&]() {
      int error = dilate3x3_hvx128(input1_buf, output_buf);
      if (error != 0) {
        printf("dilate3x3_hvx128 pipeline failed: %d\n", error);
      }
    });
  SIM_RELEASE_HVX;

  printf("AppReported (HVX128B-mode): Image %dx%d - dilate3x3(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles_hvx128, (float)cycles_hvx128/width/height);
#endif
  
}

//unsigned long long q6sim_read_pcycles(void);

#define FH int
#define O_CREAT_WRONLY_TRUNC (O_CREAT | O_WRONLY | O_TRUNC)
#define IS_INVALID_FILE_HANDLE(_a) (_a < 0)

#define RESET_PMU()     __asm__ __volatile__ (" r0 = #0x48 ; trap0(#0); \n" : : : "r0","r1","r2","r3","r4","r5","r6","r7","memory")
#define DUMP_PMU()      __asm__ __volatile__ (" r0 = #0x4a ; trap0(#0); \n" : : : "r0","r1","r2","r3","r4","r5","r6","r7","memory")
//#define READ_PCYCLES    q6sim_read_pcycles



template<typename F>
long long benchmark(F op) {
  RESET_PMU();
  //long long start_time = READ_PCYCLES();

  op();

  //long long total_cycles = READ_PCYCLES() - start_time;
  DUMP_PMU();
  return 0;//total_cycles;
}

int write_file(FH fp, unsigned char *src, int height, int width, int border_width) {
  int i;
#ifdef BORDERS
  for(i = 0; i < height; i++) {
#else
    for(i = border_width; i < height-border_width; i++) {
#endif

#ifdef BORDERS
      if(write(fp, &src[i*width], sizeof(unsigned char)*(width))!=(width)) {
#else
        if(write(fp, &src[(i*width)+border_width], sizeof(unsigned char)*(width-(border_width*2)))!=(width-(border_width*2))) {
#endif
      return 1;
    }
  }
  return 0;
}

#if gaussian3x3
  #include "gaussian3x3_hvx128.h"
#elif gaussian5x5
  #include "gaussian5x5_hvx128.h"
#elif gaussian7x7
  #include "gaussian7x7_hvx128.h"
#elif conv3x3a16
  #include "conv3x3a16_hvx128.h"
#elif conv3x3a32
  #include "conv3x3a32_hvx128.h"
#elif sobel3x3
  #include "sobel3x3_hvx128.h"
#elif blur3x3
  #include "blur3x3_hvx128.h"
#elif dilate3x3
  #include "dilate3x3_hvx128.h"
#elif median3x3
  #include "median3x3_hvx128.h"
#endif

signed char mask[9] =
{
    1, -4, 7,
    2, -5, 8,
    3, -6, 9
};
*/