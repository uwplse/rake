/***************************************************************************
* Copyright (c) Date: Mon Nov 24 16:25:59 CST 2008 QUALCOMM INCORPORATED
* All Rights Reserved
* Modified by QUALCOMM INCORPORATED on Mon Nov 24 16:25:59 CST 2008
****************************************************************************/


/*! \file sobel.h
    \brief Brief description of file
*/

/*!
Performs 3x3 sobel filter on an image.

\param in pointer to input buffer
\param stride stride of image
\param width  width of the image block to be processed
\param height height of the image block to be processed
\param out pointer to output buffer

\details

\b Assembly \b Assumptions
 - \a inp must be aligned by HVX vector size
 - \a outp must be aligned by HVX vector size
 - \a strides must be a multiple of HVX vector size

\b Cycle-Count
 - TO ADD

\b Notes
 - None
*/


void sobel(
    unsigned char *in,
    int            stride,
    int            width,
    int            height,
    unsigned char *out
    );
