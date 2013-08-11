#include "general.h"
#include "dma.h"
#include "buttons.h"
#include "spritesAndTiles.h"
#include "fixed.h"
#include "affine.h"
#include "trigLUT.h"
#include "sprites.h"
#include "splash.h"
#include "tutorialBG.h"
#include "font.h"
#include "textMap.h"
#include "sound.h"
#include "timers.h"
#include "interrupts.h"
#include "tutorialBGM.h"
#include "reggaeLoop.h"
#include "city.h"

/*TYPEDEFS */
typedef struct {
    int row; //pos on screen
    int col; //pos on screen
    int xVel;
    int yVel;
    int start; //offset on sprite map
    int shape; //obj attr shape
    int size; //obj attr size
    int centerX; //position of center from top left corner
    int centerY; //position of center from top left corner
    int radius;  //approx. circle around sprite
    int pal;
    int active; //1 if active, 0 if not
} SPRITE;

/*PROTOTYPES */
void loadSprites(SPRITE* obstacles, int numSprites);
void updateSprites(SPRITE* obstacles, int numSprites);
void waitForVBlank();
int checkColl(int ax, int ay, int aRad, int bx, int by, int bRad);
int intRoot(int a, int max);
void writeText(int x, int r, char* text);
void interruptHandler();
void setupInterrupts();
void rotCenter();
void runMainMenu();
void runTutorial();
void runGame();
void spawnSprite(SPRITE* obstacles, int numSprites);
int rand();
void animate(SPRITE *s);

/*GLOBAL VARIABLES*/
OBJ_ATTR shadowOAM[128];
#define shadowAFF ((OBJ_AFF*)(shadowOAM))

#define NUMSPRITES 7
#define BALLOON SPRITEOFFSET16(0,0)
#define BALLOON_POP SPRITEOFFSET16(4,0)
#define FLOWER SPRITEOFFSET16(0,2)
#define AIRSHIP1 SPRITEOFFSET16(0,10)
#define AIRSHIP2 SPRITEOFFSET16(0,14)
#define PARROT1 SPRITEOFFSET16(4,10)
#define PARROT2 SPRITEOFFSET16(4,14)
#define PARROT3 SPRITEOFFSET16(4,18)
#define PARROT4 SPRITEOFFSET16(4,22)
#define BIRD1 SPRITEOFFSET16(8,10)
#define BIRD2 SPRITEOFFSET16(8,14)
#define BIRD3 SPRITEOFFSET16(8,18)
#define BIRD4 SPRITEOFFSET16(8,22)
SPRITE player = {90,116, 0, 0, BALLOON, ATTR0_TALL, ATTR1_SIZE32, 16+0, 32+4, 8, 0, 1};
SPRITE tutSprites[1] = {
    {50, 150, 1, 1, FLOWER, ATTR0_SQUARE, ATTR1_SIZE64, 32, 32, 32, 1, 1}
};

SPRITE gameSprites[NUMSPRITES] = {
        {0, 0, 0, 0, AIRSHIP1, ATTR0_SQUARE, ATTR1_SIZE32, 16, 16, 16, 0, 0},
        {0, 0, 0, 0, AIRSHIP1, ATTR0_SQUARE, ATTR1_SIZE32, 16, 16, 16, 0, 0},
        {0, 0, 0, 0, AIRSHIP1, ATTR0_SQUARE, ATTR1_SIZE32, 16, 16, 16, 0, 0},
        {0, 0, 0, 0, PARROT1, ATTR0_SQUARE, ATTR1_SIZE32, 16, 16, 9, 2, 0},
        {0, 0, 0, 0, BIRD1, ATTR0_SQUARE, ATTR1_SIZE32, 16, 16, 9, 2, 0},
        {0, 0, 0, 0, BIRD1, ATTR0_SQUARE, ATTR1_SIZE32, 16, 16, 9, 2, 0},
        {0, 0, 0, 0, BIRD1, ATTR0_SQUARE, ATTR1_SIZE32, 16, 16, 9, 2, 0}
    };

//map parameters
u16* map;

unsigned int sbbX = 0; // X position in terms of screenblocks
unsigned int sbbY = 0; // Y position in terms of screenblocks
int sbbW = 0; // width of map in terms of screenblocks
int sbbH = 0; // height of map in terms of screenblocks

int hOff = 0; // horizontal offset within a screenblock
int bigHOff = 0; // horizontal offset on the entire map
int vOff = 0; // vertical offset within a screenblock
int bigVOff = 0; // vertical offset on the entire map

int theta = 0;
int deltaTheta = 30;
int playerVel = 4;

//strings
const char oops[14] = {'A',' ','A','N','D',' ','B',' ','S','P','I','N','!', 0};
const char eek[12] = {'A','R','R','O','W','S',' ','M','O','V','E', 0};
const char pardon[15] = {'S','T','A','R','T',' ','T','O',' ','R','E','S','E','T', 0};
int stringFlag = 0;

//sound
int samplesA = 0;
SOUNDCLIP beatClip;

/* MAIN */
int main(void) {
    runMainMenu();
    while (1) {}
    return 0;
}

void loadSprites(SPRITE * obstacles, int numSprites) {
    // Load sprite palette
    dmaTransfer(SPRITE_PAL, spritesPal, 256, 3, DMA_ON);

    //load sprite tiles
    dmaTransfer(&CHARBLOCK[4], spritesTiles, spritesTilesLen/2, 3, DMA_ON);
    
    //clear shadowOAM
    int blank = 0;
    dmaTransfer(shadowOAM, &blank, 128*4, 3, DMA_SOURCE_FIXED|DMA_ON);

    //set up sprite attributes for affine balloon sprite
    shadowOAM[0].attr0 = player.row | ATTR0_4BPP | player.shape | ATTR0_DOUBLE_AFFINE;
    shadowOAM[0].attr1 = player.col | player.size | ATTR1_AFFINEINDEX(0);
    shadowOAM[0].attr2 = player.start | ATTR2_PALETTE_BANK(player.pal);
    
    //set up affine matrix
    shadowAFF[0].pa = INT2FIX(1);
    shadowAFF[0].pd = INT2FIX(1);
    
    //set up obstacle sprites
    int i;
    for(i=0; i<numSprites; i++) {
        shadowOAM[i+1].attr0 = obstacles[i].row | ATTR0_4BPP | obstacles[i].shape | ATTR0_REGULAR;
        shadowOAM[i+1].attr1 = obstacles[i].col | obstacles[i].size ;
        shadowOAM[i+1].attr2 = obstacles[i].start | ATTR2_PALETTE_BANK(obstacles[i].pal);
    }
    
    //hide unused sprites

    for(i=0; i<numSprites; i++) {
        if(obstacles[i].active)
            shadowOAM[i+1].attr0 = ATTR0_REGULAR;
        else
            shadowOAM[i+1].attr0 = ATTR0_HIDE; //probably messes up other stuff
    }

    for(i=numSprites; i<128; i++) {
        OAM[i].attr0 = ATTR0_HIDE;
    }
}

void updateSprites(SPRITE* obstacles, int numSprites) {
    shadowOAM[0].attr0 = player.row | ATTR0_4BPP | player.shape | ATTR0_DOUBLE_AFFINE;
    shadowOAM[0].attr1 = player.col | player.size | ATTR1_AFFINEINDEX(0);
    shadowOAM[0].attr2 = player.start | ATTR2_PALETTE_BANK(player.pal);
    
    int i;
    for(i=0; i<numSprites; i++) {
        if(obstacles[i].active) {
            shadowOAM[i+1].attr0 = obstacles[i].row | ATTR0_4BPP | obstacles[i].shape | ATTR0_REGULAR;
            shadowOAM[i+1].attr1 = obstacles[i].col | obstacles[i].size;
            shadowOAM[i+1].attr2 = obstacles[i].start | ATTR2_PALETTE_BANK(obstacles[i].pal);
            if (obstacles[i].xVel < 0)
                shadowOAM[i+1].attr1 = shadowOAM[i+1].attr1 | ATTR1_HFLIP;
        }
        else shadowOAM[i+1].attr0 = ATTR0_HIDE;
    }
}

void setAffineMatrix(int index, int theta, signed short sx, signed short sy){

    shadowAFF[index].pa = fixedDivide(cosine(theta), sx);
    shadowAFF[index].pb = fixedDivide(-sine(theta), sx);
    shadowAFF[index].pc = fixedDivide(sine(theta), sy);
    shadowAFF[index].pd = fixedDivide(cosine(theta), sy);
}

int checkColl(int ax, int ay, int aRad, int bx, int by, int bRad) { //return 0 if two sprites are colliding
    int r = intRoot((ax-bx)*(ax-bx) + (ay-by)*(ay-by), aRad+bRad+1);
    if (r < (aRad + bRad))
        return 0;
    else return 1;
}

void waitForVBlank() {
   while (*scanlineCounter > 160);
   while (*scanlineCounter < 160);
}

int intRoot(int a, int max) {
    int ans = 0;
    while (ans*ans < a && ans < max)
        ans++;
    return ans-1;
}

void writeText(int x, int y, char* text) {
    int tileRow = y/8;
    int tileCol = x/8;
    //clear previous text
    u16 blank = 0x0000;
    u16* tMap = (u16*)&SCREENBLOCK[26];
    dmaTransfer (tMap, (u16*)&blank, textMapLen/2, 3, (DMA_ON | DMA_SOURCE_FIXED));
    
    //write the new text straight to memory
    int i = 0;
    int offset = 0;
    while (text[i] != 0) {
        if((tileCol+offset)>= 30) {
            tileRow++;
            offset = 0;
        }
        tMap[(tileRow)*32 + tileCol + offset] = (u16)text[i]-32;
        i++;
        offset++;
    }
}

void setupInterrupts(){
    REG_IME = 1; // Enable interrupts
    REG_INTERRUPT = (unsigned int)interruptHandler;
    REG_IE = IRQ_TIMER0; //set up the TIMER 0 interrupt
}

void interruptHandler(){
    REG_IME = 0;
    if(REG_IF == IRQ_TIMER0){
        samplesA++;
        if(samplesA == beatClip.end*4){
            //dmaTransfer(0, 0, 0, 1, 0);  // i think this turns somthing off
            samplesA = 0;
            dmaTransfer(REG_FIFO_A, beatClip.data, 0, 1, DMA_ON|DMA_REPEAT|DMA_32|DMA_AT_REFRESH );
            REG_IF = IRQ_TIMER0; // last step to reset interrupts (use REG_IF = REG_IF?)
        }
    }
    REG_IME = 1;
}

//discreetly move the collision center of the balloon around as it spins
void rotCenter() {
    if (theta >= 45 && theta < 135) {
        player.centerX = 16+4;
        player.centerY = 32;
    } else if (theta >= 135 && theta < 225) {
        player.centerX = 16;
        player.centerY = 32-4;
    } else if (theta >= 225 && theta < 315) {
        player.centerX = 16-4;
        player.centerY = 32;
    } else {
        player.centerX = 16;
        player.centerY = 32+4;
    }
}

void runMainMenu() {
    int choice = 1;
    //turn off sound
    dmaTransfer(0, 0, 0, 1, 0); 
    REG_TM0CNT = 0;
    
    //draw splash screen
   REG_DISPCNTL = MODE3 | BG2_ENABLE;
   dmaTransfer(videoBuffer, splashBitmap, 38400/2, 3, DMA_ON | DMA_32);

   while(1) {
        lastButtons = buttons;
        buttons = ~(*rawButtons);
        
        int i;
        if (choice) {
           for (i=0; i<70; i++) {
                videoBuffer[18604+i] = 0x1CE7;
                videoBuffer[26764+i] = 0x6F7B;
            }
        } else {
            for (i=0; i<70; i++) {
                videoBuffer[18604+i] = 0x6F7B;
                videoBuffer[26764+i] = 0x1CE7;
            }
        }

       if(BUTTON_PRESSED(UP_MASK) || BUTTON_PRESSED(DOWN_MASK))
            choice = choice ^ 1;

       if(BUTTON_PRESSED(START_MASK)) {
           if(choice)
                runGame();
           else
                runTutorial();
       }
   }
   
}

void runTutorial() {
     //start game
    REG_DISPCNTL = BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE;

    // Enable 8 bits per pixel, 32x32 tile map, character block 0, and screenblock 28
    REG_BG1CNT = BG_8BPP | BG_REG_32x32 | CBB(0) | SBB(28);
    dmaTransfer(PAL_MEM, tutorialBGPal, 256, 3, DMA_ON);
    dmaTransfer(&CHARBLOCK[0], tutorialBGTiles, tutorialBGTilesLen/2, 3, DMA_ON);
    map = (u16*)tutorialBGMap;
    dmaTransfer(&SCREENBLOCK[28], map , 1024, 3, DMA_ON);

    //set up text background
    REG_BG0CNT = BG_8BPP | BG_REG_32x32 | CBB(1) | SBB(26);
    dmaTransfer(&CHARBLOCK[1], fontTiles, fontTilesLen/2, 3, DMA_ON);
    u16 blank = 0x0000;
    u16* tMap = (u16*)&SCREENBLOCK[26];
    dmaTransfer (tMap, (u16*)&blank, textMapLen/2, 3, (DMA_ON | DMA_SOURCE_FIXED));

    /*set up sound */
    beatClip.data = (char*)tutorialBGM;
    beatClip.length = tutorialBGM_len;
    beatClip.start = 0;
    beatClip.end = tutorialBGM_len;

    setupInterrupts();
    REG_TM0D = -1522;
    REG_TM0CNT = TIMER_IRQ_ENABLE | TIMER_FREQUENCY_SYSTEM | TIMER_ENABLE;

    REG_SND_STAT = SND_STAT_ON;
    REG_SND_DSCNT = SND_DSCNT_A100 |
                    SND_DSCNT_AR | SND_DSCNT_AL |
                    SND_DSCNT_ATMR0 |
                    SND_DSCNT_ARESET;

    samplesA = 0;
    dmaTransfer(REG_FIFO_A, beatClip.data, 0, 1, DMA_ON|DMA_REPEAT|DMA_32|DMA_AT_REFRESH );

    //init flower
    SPRITE *obstacles = tutSprites;
    loadSprites(obstacles, 1);
    
    while(1) {
        lastButtons = buttons;
        buttons = ~(*rawButtons);
        
        //reset game
        if(BUTTON_PRESSED(START_MASK))
            runMainMenu();

        //move player
        if(BUTTON_DOWN(A_MASK) ){
            theta += deltaTheta;
        } else if(BUTTON_DOWN(B_MASK) ){
            theta -= deltaTheta;
        } else { //balloon swings back down on its own
            if (theta > 180.0 && theta < 360.0)
                theta += deltaTheta/2;
            if (theta <= 180.0 && theta > 0.0)
                theta -= deltaTheta/2;
        }

        if(theta >= 360) //360.0 should be 0
                theta -= 360;
        if(theta < 0)
                theta += 360;
        rotCenter();

        if (BUTTON_DOWN(LEFT_MASK) && (player.col>0) ) {
            player.col-=playerVel;
        } else if (BUTTON_DOWN(RIGHT_MASK) && (player.col+16*2<240) ) {
            player.col+=playerVel;
        }
        if (BUTTON_DOWN(UP_MASK) && (player.row > 3) ) {
            player.row-=playerVel;
        } else if (BUTTON_DOWN(DOWN_MASK) && ((player.row+128) < 240) ) {
            player.row+=playerVel;
        }

        //move flower
        obstacles[0].row += obstacles[0].yVel;
        obstacles[0].col += obstacles[0].xVel;
        if(obstacles[0].col < 0) {
            obstacles[0].col = 0;
            obstacles[0].xVel *= -1;
        } else if (obstacles[0].col + obstacles[0].radius*2 > 240) {
            obstacles[0].col = 240 - obstacles[0].radius*2;
            obstacles[0].xVel *= -1;
        }
        if(obstacles[0].row < 0) {
            obstacles[0].row = 0;
            obstacles[0].yVel *= -1;
        } else if (obstacles[0].row + obstacles[0].radius*2 > 160) {
            obstacles[0].row = 160 - obstacles[0].radius*2;
            obstacles[0].yVel *= -1;
        }
        
        //check collision
        if(!checkColl(player.col+player.centerX, player.row+player.centerY+1, player.radius,
                obstacles[0].col+obstacles[0].centerX, obstacles[0].row+obstacles[0].centerY, obstacles[0].radius)) {
            //bounce flower
            obstacles[0].xVel *= -1;
            obstacles[0].yVel *= -1;
            //also show some text
            if (stringFlag == 0)
                writeText(player.col+player.centerX, player.row+player.centerY, (char*)oops);
            else if (stringFlag == 1)
                writeText(player.col+player.centerX, player.row+player.centerY, (char*)eek);
            else
                writeText(player.col+player.centerX, player.row+player.centerY, (char*)pardon);
            stringFlag = (stringFlag+1)%3;
        }
        
        updateSprites(obstacles, 1);

        setAffineMatrix(0, theta, INT2FIX(1), INT2FIX(1));

        //scroll the map
        vOff--;

        //drawing in VBlank
        waitForVBlank();
        dmaTransfer(OAM, shadowOAM, 128*4, 3, DMA_ON);

      // Update the offset registers.
      REG_BG1HOFS = hOff;
      REG_BG1VOFS = vOff;
    }

    //return 0;
}

void runGame() {
     //start game
    REG_DISPCNTL = BG1_ENABLE | SPRITE_ENABLE;

    int loadNew = 1; // flag for whether or not new maps should load

    // Enable 8 bits per pixel, 64x64 tile map, character block 0, and screenblock 28
    REG_BG1CNT = BG_8BPP | BG_REG_32x64 | CBB(0) | SBB(28);
    dmaTransfer(PAL_MEM, cityPal, 256, 3, DMA_ON);
    dmaTransfer(&CHARBLOCK[0], cityTiles, cityTilesLen/2, 3, DMA_ON);
    map = (u16*)cityMap;
    dmaTransfer(&SCREENBLOCK[28], map+sbbY*1024, 1024, 3, DMA_ON);
    
    sbbY = 2; // Y position in terms of screenblocks
    sbbH = 3; // height of map in terms of screenblocks
    
    hOff = 0;
    bigHOff = 0;
    vOff = 256-160; // vertical offset within a screenblock
    bigVOff = (256*3)-160; // vertical offset on the entire map

    /*init sound */
    beatClip.data = (char*)reggaeLoop;
    beatClip.length = reggaeLoop_len;
    beatClip.start = 0;
    beatClip.end = reggaeLoop_len;

    setupInterrupts();
    REG_TM0D = -1522;
    REG_TM0CNT = TIMER_IRQ_ENABLE | TIMER_FREQUENCY_SYSTEM | TIMER_ENABLE;

    REG_SND_STAT = SND_STAT_ON;
    REG_SND_DSCNT = SND_DSCNT_A100 |
                    SND_DSCNT_AR | SND_DSCNT_AL |
                    SND_DSCNT_ATMR0 |
                    SND_DSCNT_ARESET;
                    
    samplesA = 0;
    dmaTransfer(REG_FIFO_A, beatClip.data, 0, 1, DMA_ON|DMA_REPEAT|DMA_32|DMA_AT_REFRESH );

    SPRITE* obstacles = gameSprites;
    loadSprites(obstacles, NUMSPRITES);
    
    int ticker = 0;
    
    while(1) {
        lastButtons = buttons;
        buttons = ~(*rawButtons);
        
        //return to menu
        if(BUTTON_PRESSED(START_MASK))
            runMainMenu();

        //spawn new obstacle sprites
        //really just the same sprites becoming active
        if(ticker == 0)
          spawnSprite(obstacles, NUMSPRITES);

        //move player
        if(BUTTON_DOWN(A_MASK) ){
            theta += deltaTheta;
        } else if(BUTTON_DOWN(B_MASK) ){
            theta -= deltaTheta;
        } else { //balloon swings back down on its own
            if (theta > 180.0 && theta < 360.0)
                theta += deltaTheta/2;
            if (theta <= 180.0 && theta > 0.0)
                theta -= deltaTheta/2;
        }

        if(theta >= 360) //360.0 should be 0
                theta -= 360;
        if(theta < 0)
                theta += 360;
        rotCenter();

        if (BUTTON_DOWN(LEFT_MASK) && (player.col>0)) {
            player.col-=playerVel;
        } else if (BUTTON_DOWN(RIGHT_MASK) && (player.col+16*2<240)) {
            player.col+=playerVel;
        }
        if (BUTTON_DOWN(UP_MASK) && (player.row > 2)) {
            player.row-=playerVel;
        } else if (BUTTON_DOWN(DOWN_MASK) && ((player.row+128) < 240)) {
            player.row+=playerVel;
        }
        //move the sprites around and check collisions
        int i;
        for(i=0; i<NUMSPRITES; i++) {
            if(obstacles[i].active) {
                obstacles[i].row += obstacles[i].yVel;
                obstacles[i].col += obstacles[i].xVel;

                //change picture sto animate
                if(ticker%2 == 0) {
                    switch (obstacles[i].start) {
                        case AIRSHIP1: obstacles[i].start = AIRSHIP2;
                            break;
                        case AIRSHIP2: obstacles[i].start = AIRSHIP1;
                            break;
                        case PARROT1: obstacles[i].start = PARROT2;
                            break;
                        case PARROT2: obstacles[i].start = PARROT3;
                            break;
                        case PARROT3: obstacles[i].start = PARROT4;
                            break;
                        case PARROT4: obstacles[i].start = PARROT1;
                            break;
                        case BIRD1: obstacles[i].start = BIRD2;
                            break;
                        case BIRD2: obstacles[i].start = BIRD3;
                            break;
                        case BIRD3: obstacles[i].start = BIRD4;
                            break;
                        case BIRD4: obstacles[i].start = BIRD1;
                            break;
                    }
                }
               
                if(obstacles[i].col < 0) {
                    obstacles[i].col = 0;
                    obstacles[i].active = 0;
                } else if (obstacles[i].col + obstacles[i].radius*2 > 240) {
                    obstacles[i].col = 240 - obstacles[i].radius*2;
                    obstacles[i].active = 0;
                }
                if(obstacles[i].row < 0) {
                    obstacles[i].row = 0;
                    obstacles[i].active = 0;
                } else if (obstacles[0].row + obstacles[0].radius*2 > 160) {
                    obstacles[0].row = 160 - obstacles[0].radius*2;
                    obstacles[i].active = 0;
                }
                //return to the main menu if collision for now
                if(!checkColl(player.col+player.centerX, player.row+player.centerY+1, player.radius, obstacles[i].col+obstacles[i].centerX, obstacles[i].row+obstacles[i].centerY, obstacles[i].radius))
                    runMainMenu();
            }
        }
        updateSprites(obstacles, NUMSPRITES);

        setAffineMatrix(0, theta, INT2FIX(1), INT2FIX(1));

        //scroll the map
        if(bigVOff > 0) {
            vOff--;
            bigVOff--;
        }
        //check to load maps
        if (vOff < 0) {
         vOff = 256 + vOff;
         sbbY = (sbbY - 1);// % sbbH;
         loadNew = 1;
        } 

        //drawing in VBlank
        waitForVBlank();
        dmaTransfer(OAM, shadowOAM, 128*4, 3, DMA_ON);
        // Load the new maps in if appropriate
        if (loadNew) {
             // well the maps only go up and down (32x64)
            dmaTransfer(&SCREENBLOCK[28], map + (sbbY *1024), 1024, 3, DMA_ON);
            dmaTransfer(&SCREENBLOCK[29], map + (((sbbY + 1) % sbbH)* 1024), 1024, 3, DMA_ON);

            // Reset loadNew so it doesn't load maps in on every vertical blank.
            loadNew = 0;
      }

      // Update the offset registers.
      REG_BG1HOFS = hOff;
      REG_BG1VOFS = vOff;
    }

    ticker = (ticker+1)% 15;
    //return 0;
}

void spawnSprite(SPRITE* obstacles, int numSprites) {
    int s = rand()%5 + 1;
    if(!obstacles[s].active) {
        obstacles[s].active = 1;
        obstacles[s].row = rand()%120;
        obstacles[s].yVel = rand()%3 - 2;
        if(s%2 == 0) {
            obstacles[s].col = 0;
            obstacles[s].xVel = rand()%3 + 1;
        } else {
            obstacles[s].col = 200;
            obstacles[s].xVel = (rand()%3 + 1)*-1;
        }
        
    }
}


/* END OF FILE */
