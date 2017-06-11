uses fpu

0000013C  D9EB              fldpi
0000013E  DE4D04            fimul word [di+0x4]
00000141  DE35              fidiv word [di]
00000143  D9FE              fsin
00000145  DE4D02            fimul word [di+0x2]
00000148  DF1C              fistp word [si]
