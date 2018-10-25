uses fpu

00000114  9BDBE3            finit
00000117  D906AA02          fld dword [0x2aa]
0000011B  D806A602          fadd dword [0x2a6]
0000011F  D916AA02          fst dword [0x2aa]
00000123  D9FB              fsincos
00000125  D91EC202          fstp dword [0x2c2]
00000129  D91EBE02          fstp dword [0x2be]
