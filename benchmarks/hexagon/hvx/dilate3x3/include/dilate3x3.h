/***************************************************************************
* Copyright (c) Date: Mon Nov 24 16:25:59 CST 2008 QUALCOMM INCORPORATED
* All Rights Reserved
* Modified by QUALCOMM INCORPORATED on Mon Nov 24 16:25:59 CST 2008
****************************************************************************/


/*! \file dilate3x3.h
    \brief Brief description of file
*/

/*!
Performs 3x3 dilation

\param src pointer to input buffer
\param stride_i stride of input image
\param width  width of the image block to be processed
\param height height of the image block to be processed
\param dst pointer to output buffer
\param stride_o stride of output

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


void dilate3x3(
    unsigned char   *src,
    int              stride_i,
    int              width,
    int              height,
    unsigned char   *dst,
    int              stride_o
    );

