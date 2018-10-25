# 14 jan, 2018

NOTE: "int33 error: unknown AX=4803" is due to a bug in the program (ah isn't cleared):
00000132  B003              mov al,0x3
00000134  CD33              int 0x33

---

gfx is only drawn in top left part of screen, seems incomplete


XXX video: set video mode to 320x200, 256 colors (VGA)
int33 error: unknown AX=4803. ip=085F:0136
XXX impl MOUSE - RETURN POSITION AND BUTTON STATUS
