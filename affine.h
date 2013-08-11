#ifndef AFFINE_H
#define AFFINE_H
typedef struct{ //matrix numbers are squeezed in between OAMs
    unsigned short fill0[3];
    signed short pa;
    unsigned short fill1[3];
    signed short pb;
    unsigned short fill2[3];
    signed short pc;
    unsigned short fill3[3];
    signed short pd;
}OBJ_AFF;

#define AFFINE_MEMORY ((OBJ_AFF*)(0x7000000))
//extern OBJ_AFF* shadowAFF;

void setAffineMatrix(int index, int theta, signed short sx, signed short sy);
#endif
