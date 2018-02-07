# 2017-04-13

maybe corrupted ip:

0000:0000> load ../dos-software-decoding/games/Invaders (1995)(Paul Reid)/invaders.com
[*] Reading rom from ../dos-software-decoding/games/Invaders (1995)(Paul Reid)/invaders.com
loading rom to 0086F0..00AA4B
085F:0100> run
[W] Executing until we hit a breakpoint
video error: unknown video mode 13
int21 error: unknown AH=35, AX=3515
int21 error: unknown AH=25, AX=2515
int10 error: unknown AH=10, AX=1012
op F7 unknown reg=4
XXX fatal error occured
[E] Failed to execute instruction, breaking.
085F:0A15> flat
[*] 085F:0A15 is 009005.  rom offset is 0000:0100, or 000A15

