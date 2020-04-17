/***************************************************************************
* Copyright (c) Date: Mon Nov 24 16:25:59 CST 2008 QUALCOMM INCORPORATED
* All Rights Reserved
* Modified by QUALCOMM INCORPORATED on Mon Nov 24 16:25:59 CST 2008
****************************************************************************/


/*! \file gaussian.h
    \brief Brief description of file
*/

/*!
Performs 3x3 Gaussian blur on an image.

\param src pointer to input buffer
\param stride stride of input image
\param width  width of the image block to be processed
\param height height of the image block to be processed
\param dst pointer to output buffer

\details

\b Assembly \b Assumptions
 - \a src must be aligned by HVX vector size
 - \a dst must be aligned by HVX vector size
 - \a strides must be a multiple of HVX vector size
 - \a height must be a multiple of 2

\b Cycle-Count
 - TO ADD

\b Notes
 - None
*/

void Gaussian3x3u8(
    unsigned char   *src,
    int              stride,
    int              width,
    int              height,
    unsigned char   *dst
    );


/*!
Performs 5x5 Gaussian blur on an image.

\param src pointer to input buffer
\param stride stride of input image
\param width  width of the image block to be processed
\param height height of the image block to be processed
\param dst pointer to output buffer

\details

\b Assembly \b Assumptions
 - \a src must be aligned by HVX vector size
 - \a dst must be aligned by HVX vector size
 - \a strides must be a multiple of HVX vector size
 - \a height must be a multiple of 2

\b Cycle-Count
 - TO ADD

\b Notes
 - None
*/

void Gaussian5x5u8(
    unsigned char   *src,
    int              stride,
    int              width,
    int              height,
    unsigned char   *dst
    );


/*!
Performs 7x7 Gaussian blur on an image.

\param src pointer to input buffer
\param stride stride of input image
\param width  width of the image block to be processed
\param height height of the image block to be processed
\param dst pointer to output buffer

\details

\b Assembly \b Assumptions
 - \a src must be aligned by HVX vector size
 - \a dst must be aligned by HVX vector size
 - \a strides must be a multiple of HVX vector size
 - \a height must be a multiple of 2

\b Cycle-Count
 - TO ADD

\b Notes
 - None
*/

void Gaussian7x7u8(
    unsigned char   *src,
    int              stride,
    int              width,
    int              height,
    unsigned char   *dst
    );

