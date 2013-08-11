#define A_MASK (1<<0)
#define B_MASK (1<<1)
#define SELECT_MASK (1<<2)
#define START_MASK (1<<3)
#define RIGHT_MASK (1<<4)
#define LEFT_MASK (1<<5)
#define UP_MASK (1<<6)
#define DOWN_MASK (1<<7)
#define R_MASK (1<<8)
#define L_MASK (1<<9)

#define BUTTON_DOWN(mask) (((mask) & buttons) == (mask))
#define BUTTON_PRESSED(mask) ((((mask) & lastButtons) != (mask)) && (BUTTON_DOWN(mask)))

volatile u32* rawButtons = (volatile u32*)0x4000130;
int buttons;
int lastButtons;
