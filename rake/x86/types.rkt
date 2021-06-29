#lang rosette/safe

(provide (all-defined-out))

;; Integer vector types
(struct __m512i_si8 (v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54 v55 v56 v57 v58 v59 v60 v61 v62 v63) #:mutable)
(struct __m512i_ui8 (v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54 v55 v56 v57 v58 v59 v60 v61 v62 v63) #:mutable)
(struct __m512i_si16 (v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31) #:mutable)
(struct __m512i_ui16 (v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31) #:mutable)
(struct __m512i_si32 (v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15) #:mutable)
(struct __m512i_ui32 (v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15) #:mutable)

;; Boolean vector types
(struct __mmask8 (v0 v1 v2 v3 v4 v5 v6 v7) #:mutable)
(struct __mmask16 (v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15) #:mutable)
(struct __mmask32 (v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31) #:mutable)

;; Everything below is auto-generated using scripts
(struct _mm512_maskz_dpwssds_epi32 (k src a b) #:transparent)
(struct _mm512_mask_dpwssds_epi32 (src k a b) #:transparent)
(struct _mm512_dpwssds_epi32 (src a b) #:transparent)
(struct _mm512_maskz_dpwssd_epi32 (k src a b) #:transparent)
(struct _mm512_mask_dpwssd_epi32 (src k a b) #:transparent)
(struct _mm512_dpwssd_epi32 (src a b) #:transparent)
(struct _mm512_maskz_dpbusds_epi32 (k src a b) #:transparent)
(struct _mm512_mask_dpbusds_epi32 (src k a b) #:transparent)
(struct _mm512_dpbusds_epi32 (src a b) #:transparent)
(struct _mm512_maskz_dpbusd_epi32 (k src a b) #:transparent)
(struct _mm512_mask_dpbusd_epi32 (src k a b) #:transparent)
(struct _mm512_dpbusd_epi32 (src a b) #:transparent)