# 5 jan, 2018

gfx is only drawn in top left part of screen, seems incomplete

XXX video: set video mode to 320x200, 256 colors (VGA)
DAC palette 0 = 0, 0, 0
DAC palette 0 = 0, 0, 0
DAC palette 0 = 0, 0, 0
DAC palette 0 = 0, 0, 0
DAC palette 0 = 0, 0, 0
DAC palette 0 = 0, 0, 0
DAC palette 0 = 0, 0, 0
int33 error: unknown AX=4803
XXX impl MOUSE - RETURN POSITION AND BUTTON STATUS



NOTE: "int33 error: unknown AX=4803"  looks to be a failed 0003 call because ah wasnt cleared:

00000132  B003              mov al,0x3
00000134  CD33              int 0x33

