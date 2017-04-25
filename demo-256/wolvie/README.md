uses fpu

00000137  DF05              fild word [di]
00000139  8905              mov [di],ax
0000013B  DF05              fild word [di]
0000013D  D9F3              fpatan
0000013F  DE0EDF01          fimul word [0x1df]
00000143  DF1E0202          fistp word [0x202]
