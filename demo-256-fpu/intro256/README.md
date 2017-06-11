uses fpu

00000161  D906F801          fld dword [0x1f8]
00000165  DF05              fild word [di]
00000167  DEC9              fmulp st1
00000169  D9C0              fld st0
0000016B  D9FF              fcos
0000016D  DE0E0E01          fimul word [0x10e]
00000171  DF1C              fistp word [si]
