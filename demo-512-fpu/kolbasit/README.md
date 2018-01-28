uses fpu

00000115  D906E802          fld dword [0x2e8]
00000119  D9C0              fld st0
0000011B  D9FE              fsin
0000011D  D91E0403          fstp dword [0x304]
00000121  D9FF              fcos
00000123  D91E0803          fstp dword [0x308]
