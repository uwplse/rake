#include "hexagon_types.h"
#include "hvx.cfg.h"

HVX_Vector getllvm(unsigned short *restrict src){
    HVX_Vector *p1 = (HVX_Vector *)(src);
    HVX_Vector *p2 = (HVX_Vector *)(src+1);
    HVX_Vector x = *p1;
    HVX_Vector y = *p2;
    return Q6_Vuh_vabsdiff_VuhVuh(x, y);
}

HVX_VectorPair getllvm2(unsigned char *restrict src){
    HVX_VectorPair *p1 = (HVX_VectorPair *)(src);
    HVX_VectorPair *p2 = (HVX_VectorPair *)(src + 1);
    HVX_VectorPair x = *p1;
    HVX_VectorPair y = *p2;
    HEXAGON_Vect32 c = 0x02040204;
    return Q6_Wuh_vadd_WuhWuh_sat(x, y);
}

HVX_VectorPair getllvm3(unsigned short *restrict src){
    HVX_VectorPair *p1 = (HVX_VectorPair *)(src);
    HVX_Vector *p2 = (HVX_Vector *)(src+1);
    HVX_VectorPair x = *p1;
    HVX_Vector y = *p2;
    HEXAGON_Vect32 c = 0x02040204;
    return Q6_Wuh_vmpyacc_WuhVubRub(x, y, c);
}
