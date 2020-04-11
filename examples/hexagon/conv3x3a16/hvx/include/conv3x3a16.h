/***************************************************************************
* Copyright (c) Date: Mon Nov 24 16:25:59 CST 2008 QUALCOMM INCORPORATED
* All Rights Reserved
* Modified by QUALCOMM INCORPORATED on Mon Nov 24 16:25:59 CST 2008
****************************************************************************/


/*! \file conv3x3as16.h
    \brief Brief description of file
*/

/*!
Performs 3x3 convolution on an image with 16bit accumulation

\param inp pointer to input buffer
\param stride_i stride of input image
\param width  width of the image block to be processed
\param height height of the image block to be processed
\param mask  pointer to filter kernel
\param shift shift amount for intermediate results
\param outp pointer to output buffer
\param stride_o stride of output

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


void conv3x3(
    unsigned char *inp,
    int            stride_i,
    int            width,
    int            height,
    signed char   *mask,
    int            shift,
    unsigned char *outp,
    int            stride_o
    );
