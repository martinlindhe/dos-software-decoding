uses fpu

00000100  9BDBE3            finit
00000103  BEFF01            mov si,0x1ff
00000106  B504              mov ch,0x4
00000108  DF06FD01          fild word [0x1fd]
0000010C  D9EB              fldpi
0000010E  DF06FB01          fild word [0x1fb]
00000112  DEF9              fdivp st1
00000114  890EFB01          mov [0x1fb],cx
00000118  DF06FB01          fild word [0x1fb]
0000011C  D8C9              fmul st1
0000011E  D9FF              fcos
00000120  D8CA              fmul st2
00000122  D8C2              fadd st2
00000124  DF1C              fistp word [si]
