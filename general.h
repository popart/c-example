/*general.h*/

#ifndef GENERALH
#define GENERALH

/*DEFINES*/
#define REG_DISPCNTL (*(u16*)0x4000000)
#define MODE3 3
#define MODE4 4
#define BG0_ENABLE (1<<8)
#define BG1_ENABLE (1<<9)
#define BG2_ENABLE (1<<10)
#define BG3_ENABLE (1 << 11)
#define WIDTH 240
#define HEIGHT 160
#define PAL_MEM ((u16*)0x5000000)


/*MACROS*/
#define OFFSET3(x, y) ((y)*WIDTH + (x))
#define OFFSET4(x, y) (((y)*WIDTH + (x))/2)
#define RGB(r, g, b) ((r) | ((g)<<5) | ((b)<<10))

/*TYPEDEFS*/
typedef unsigned char u8;
typedef signed char s8;
typedef unsigned short u16;
typedef signed short s16;
typedef unsigned int u32;
typedef signed int s32;

/*GLOBAL VARIABLES THAT GET USED ALL THE TIME*/
u16* videoBuffer = (u16*)0x6000000;
volatile u16* scanlineCounter = (volatile u16*)0x4000006;

#endif
