# uses fpu

00000165  D9EB              fldpi
00000167  DE36EC02          fidiv word [0x2ec]
0000016B  DE0EF402          fimul word [0x2f4]
0000016F  D9160003          fst dword [0x300]
00000173  DF06F002          fild word [0x2f0]
00000177  DE36FE02          fidiv word [0x2fe]
0000017B  DEC1              faddp st1
