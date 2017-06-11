uses fpu

00000113  9BDBE3            finit

0000013F  DF060002          fild word [0x200]
00000143  DE36FE01          fidiv word [0x1fe]
00000147  D9FB              fsincos
00000149  DE0EFE01          fimul word [0x1fe]
0000014D  DF1E0602          fistp word [0x206]
00000151  DE0EFE01          fimul word [0x1fe]
00000155  DF1E0402          fistp word [0x204]
