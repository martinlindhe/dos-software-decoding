uses fpu

00000106  9BDBE3            finit

00000179  DF06FF01          fild word [0x1ff]
0000017D  DE36FD01          fidiv word [0x1fd]
00000181  D9FB              fsincos
00000183  DE0E0502          fimul word [0x205]
00000187  DF1E0302          fistp word [0x203]
0000018B  DE0E0502          fimul word [0x205]
0000018F  DF1E0102          fistp word [0x201]
