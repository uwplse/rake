/***************************************************************************
* Copyright (c) Date: Mon Nov 24 16:25:59 CST 2008 QUALCOMM INCORPORATED
* All Rights Reserved
* Modified by QUALCOMM INCORPORATED on Mon Nov 24 16:25:59 CST 2008
****************************************************************************/


/*! \file boxfilter.h
    \brief Brief description of file
*/

/*!
Performs 11x11 box filtering on an image

\param inp pointer to input buffer
\param stride stride of input image
\param width  width of the image block to be processed
\param height height of the image block to be processed
\param outp pointer to output buffer

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


void boxfilter11x11(
    unsigned char *inp,
    int            stride,
    int            width,
    int            height,
    unsigned char *outp
    );
