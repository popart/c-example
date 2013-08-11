Controls:  D-pad to move, A and B to rotate.  Start to begin game.

Plan for final:

Edit sound clip to be shorter.  It will hopefully work then.

Use interrupts instead of polling everything.

Improve the collision detection to be two-tiered.  I think all the collision in this game will be sprite collision, as the background is just sky, but may create collision maps if applicable.  

Add the math for non-center point rotation.  Again in TONC.  Right now the balloon is just drawn on the bottom half of the sprite so the center point is at the top of the balloon.  Also add the math to correct the collision points on the balloon while it's rotating.

Implement save states.

Draw the rest of the game.  Move all the hardcoded stuff into general functions and then plug it in.