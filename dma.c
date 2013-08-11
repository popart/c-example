#include "dma.h"

void dmaTransfer(void *destination, const void *source, unsigned int numTransfers, int channel, unsigned int mode){
    DMA_MEMORY[channel].cnt = 0; //clear the DMA CONTROL for this channel, stopping any current transfers
    
    DMA_MEMORY[channel].src = source;
    DMA_MEMORY[channel].dst = destination;
    DMA_MEMORY[channel].cnt = (mode) | (numTransfers);
}
