########################################################################
# Copyright (c) Date: Tue Aug 05 16:38:42 CDT 2014 QUALCOMM INCORPORATED
# All Rights Reserved
# Modified by QUALCOMM INCORPORATED on Tue Aug 05 16:38:42 CDT 2014
########################################################################

PROGRAM = dilate3x3
Q6VERSION = v60

ASM_SRC_DIR = ../asm_src
OBJ_DIR = ./build
SRC_DIR = ../src
COM_SRC = ../../common/src
INCLUDES = -I../../common/include -I../include

EXEC = $(OBJ_DIR)/$(PROGRAM).exe

REF_OBJ_DIR = ./ref_build
REF_EXEC = $(REF_OBJ_DIR)/$(PROGRAM).exe

# Check for Vector Length
ifeq (,$(LOG2VLEN))
  LOG2VLEN:=7
endif

# Check for correct hvx option
ifneq (,$(findstring mhvx-length,(shell hexagon-clang --help | grep "mhvx-length")))
HVX_LENGTH=1
endif

ifeq (7,$(LOG2VLEN))
ifdef HVX_LENGTH
  MHVX:=-mhvx -mhvx-length=128B
else
  MHVX:=-mhvx -mhvx-double
endif
else
ifdef HVX_LENGTH
  MHVX:=-mhvx -mhvx-length=64B
else
  MHVX:=-mhvx
endif
endif

ifneq (,$(strip $(filter-out 6 7,$(LOG2VLEN))))
  $(error LOG2VLEN is $(LOG2VLEN), but LOG2VLEN must be 6 or 7)
endif
#---------------------------------------------------------#
#  Usage "make SRC=I" if use C intrinsics                 #
#---------------------------------------------------------#
ifeq ($(SRC),I)
  _C_SRCS = $(PROGRAM)_i.c \
            test_$(PROGRAM).c
  _ASM_SRCS =
else
  _C_SRCS = $(PROGRAM)_a.c \
            test_$(PROGRAM).c

  _ASM_SRCS = $(PROGRAM).S
endif

_REF_C_SRCS = $(PROGRAM)_c.c \
              test_$(PROGRAM).c

REF_OBJS = $(_REF_C_SRCS:%.c=$(REF_OBJ_DIR)/%.o)

SRC_C_OBJS   = $(_C_SRCS:%.c=$(OBJ_DIR)/%.o)
SRC_ASM_OBJS = $(_ASM_SRCS:%.S=$(OBJ_DIR)/%.obj)

SRC_C_OBJS += $(OBJ_DIR)/subsys.o

CC = hexagon-clang
CCF = -O2
QDSP6SS_PUB_BASE:=0xFE200000
CFLAGS  = $(CCF) -m$(Q6VERSION) $(MHVX) -DLOG2VLEN=$(LOG2VLEN) $(INCLUDES) -DQDSP6SS_PUB_BASE=$(QDSP6SS_PUB_BASE)
ASFLAGS = -Wall $(CCF) -m$(Q6VERSION) $(INCLUDES)

LD = $(CC) $(CCF)
LDFLAGS = -m$(Q6VERSION)
LLIBS = -lhexagon

RUN = hexagon-sim

RUNPARAMS = 1920 1080 ../../testvectors/football1920x1080.bin

OUTPUT = $(OBJ_DIR)/out.bin
REFOUT = $(REF_OBJ_DIR)/out.bin

RM = rm -rf


$(EXEC): $(SRC_C_OBJS) $(SRC_ASM_OBJS)
	$(LD) $(LDFLAGS) -o $@ $(SRC_C_OBJS) $(SRC_ASM_OBJS) $(LLIBS)

$(REF_EXEC): $(REF_OBJS)
	gcc -o $@ $(REF_OBJS)

$(SRC_C_OBJS): | $(OBJ_DIR)

$(SRC_ASM_OBJS): | $(OBJ_DIR)

$(REF_OBJS): |$(REF_OBJ_DIR)

clean:
	$(RM) $(OBJ_DIR) $(REF_OBJ_DIR) stats.txt pmu_statsfile.txt *.0


sim: $(EXEC) $(REF_EXEC)
	@echo building reference output
	$(REF_EXEC) $(RUNPARAMS) $(REFOUT)
	$(RUN) -m$(Q6VERSION) -- $(EXEC) $(RUNPARAMS) $(OUTPUT)
	cmp $(OUTPUT) $(REFOUT)

$(OBJ_DIR)/subsys.o: $(COM_SRC)/subsys.c
	$(CC) $(CFLAGS) -c -o $@ $<

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c -o $@ $<

$(OBJ_DIR)/%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

$(OBJ_DIR)/%.obj: $(ASM_SRC_DIR)/%.S
	$(CC) $(CFLAGS) -c -o $@ $<

$(OBJ_DIR):
	mkdir $(OBJ_DIR)

$(REF_OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	gcc -Wall -O3 $(INCLUDES) -c -o $@ $<

$(REF_OBJ_DIR)/%.o: %.c
	gcc -Wall -O3 $(INCLUDES) -c -o $@ $<


$(REF_OBJ_DIR):
	mkdir $(REF_OBJ_DIR)

