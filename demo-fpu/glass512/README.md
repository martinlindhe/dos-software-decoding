uses fpu

00000117  9BDBE3            finit
0000011A  D9EE              fldz
0000011C  D9C0              fld st0
0000011E  D9FE              fsin
00000120  65D91F            fstp dword [gs:bx]
00000123  D806E802          fadd dword [0x2e8]
