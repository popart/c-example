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
void runTutorial();

void runTutorial() {
    //start game
    REG_DISPCNTL = BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE;


    int loadNew = 1; // flag for whether or not new maps should load

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

    /*set up sound
    //slows down a lot!

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

    dmaTransfer(REG_FIFO_A, beatClip.data, 0, 1, DMA_ON|DMA_REPEAT|DMA_32|DMA_AT_REFRESH );
    */

    loadSprites();
    while(1) {
        lastButtons = buttons;
        buttons = ~(*rawButtons);

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

        if (BUTTON_DOWN(LEFT_MASK) && (player.col>0) && checkColl(player.col+player.centerX-1, player.row+player.centerY, player.radius,
                obstacles[0].col+obstacles[0].centerX, obstacles[0].row+obstacles[0].centerY, obstacles[0].radius)) {
            player.col--;
        } else if (BUTTON_DOWN(RIGHT_MASK) && (player.col+16*2<240) && checkColl(player.col+player.centerX+1, player.row+player.centerY, player.radius,
                obstacles[0].col+obstacles[0].centerX, obstacles[0].row+obstacles[0].centerY, obstacles[0].radius)) {
            player.col++;
        }
        if (BUTTON_DOWN(UP_MASK) && (player.row > 0) && checkColl(player.col+player.centerX, player.row+player.centerY-1, player.radius,
                obstacles[0].col+obstacles[0].centerX, obstacles[0].row+obstacles[0].centerY, obstacles[0].radius)) {
            player.row--;
        } else if (BUTTON_DOWN(DOWN_MASK) && ((player.row+128) < 240) && checkColl(player.col+player.centerX, player.row+player.centerY+1, player.radius,
                obstacles[0].col+obstacles[0].centerX, obstacles[0].row+obstacles[0].centerY, obstacles[0].radius)) {
            player.row++;
        }

        //move flower
        obstacles[0].row += flowerYVel;
        obstacles[0].col += flowerXVel;
        if(obstacles[0].col < 0) {
            obstacles[0].col = 0;
            flowerXVel *= -1;
        } else if (obstacles[0].col + obstacles[0].radius*2 > 240) {
            obstacles[0].col = 240 - obstacles[0].radius*2;
            flowerXVel *= -1;
        }
        if(obstacles[0].row < 0) {
            obstacles[0].row = 0;
            flowerYVel *= -1;
        } else if (obstacles[0].row + obstacles[0].radius*2 > 160) {
            obstacles[0].row = 160 - obstacles[0].radius*2;
            flowerYVel *= -1;
        }
        if(!checkColl(player.col+player.centerX, player.row+player.centerY+1, player.radius,
                obstacles[0].col+obstacles[0].centerX, obstacles[0].row+obstacles[0].centerY, obstacles[0].radius)) {
            //bounce flower
            flowerXVel *= -1;
            flowerYVel *= -1;
            //also show some text
            if (stringFlag == 0)
                writeText(player.col+player.centerX, player.row+player.centerY, (char*)oops);
            else if (stringFlag == 1)
                writeText(player.col+player.centerX, player.row+player.centerY, (char*)eek);
            else
                writeText(player.col+player.centerX, player.row+player.centerY, (char*)pardon);
            stringFlag = (stringFlag+1)%3;
        }


        updateSprites();

        // Copy shadow into real NEED TO PUT AFFINE STUFF IN SHADOW
        setAffineMatrix(0, theta, INT2FIX(1), INT2FIX(1));

        //scroll the map
        vOff--;
        bigVOff--;

        //check to load maps
        if (hOff < 0) {
         hOff = 256 + hOff;
         sbbX = (sbbX - 1) % sbbW;
         loadNew = 1;
        } else if (hOff >= 256) {
         hOff = 0;
         sbbX = (sbbX + 1) % sbbW;
         loadNew = 1;
        }
        if (vOff < 0) {
         vOff = 256 + vOff;
         sbbY = (sbbY - 1) % sbbH;
         loadNew = 1;
        } else if (vOff >= 256) {
         vOff = 0;
         sbbY = (sbbY + 1) % sbbH;
         loadNew = 1;
        }

        //drawing in VBlank
        waitForVBlank();
        dmaTransfer(OAM, shadowOAM, 128*4, 3, DMA_ON);
        // Load the new maps in if appropriate
        if (loadNew) {

             // The math here is a bit hard to explain in comments, but it's basically
             // creating an offset similar to what we do to figure out which pixel to draw
             // back in MODE 3 and 4 because you have to pull the correct screenblock map out
             // of a giant map.
             dmaTransfer(&SCREENBLOCK[28], map + (sbbY * (sbbW * 1024) + sbbX * 1024), 1024, 3, DMA_ON);
             dmaTransfer(&SCREENBLOCK[29], map + (sbbY * (sbbW * 1024) + ((sbbX + 1) % sbbW) * 1024), 1024, 3, DMA_ON);
             dmaTransfer(&SCREENBLOCK[30], map + (((sbbY + 1) % sbbH) * (sbbW * 1024) + sbbX * 1024), 1024, 3, DMA_ON);
             dmaTransfer(&SCREENBLOCK[31], map + (((sbbY + 1) % sbbH) * (sbbW * 1024) + ((sbbX + 1) % sbbW) * 1024), 1024, 3, DMA_ON);

            // Reset loadNew so it doesn't load maps in on every vertical blank.
            loadNew = 0;
      }

      // Update the offset registers.
      REG_BG1HOFS = hOff;
      REG_BG1VOFS = vOff;
    }

    return 0;
}
