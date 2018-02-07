2017-03-31:

has an interesting loading mechanism:

00000100  mov ax,cs
00000102  add ax,0x12
00000105  push ax
00000106  mov ax,0x4
00000109  push ax
0000010A  xor ax,ax
0000010C  mov ds,ax ; ds=0
0000010E  retf      ; loads cs=0012, ip=0004 from stack (flat address 00124)


---
2017-03-31:

loading rom to 0100..4120
0000:0100> XXX video: set video mode to 320x200, 4 colors
XXX set bg/border color to 00
XXX set palette id to 01
XXX impl xchg16
XXX impl shr16
XXX impl shl16
XXX impl shl16
XXX impl shl16
XXX impl shl16
XXX impl shl16
