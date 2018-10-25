uses fpu

00000123  D9EE              fldz
00000125  B90005            mov cx,0x500
00000128  D9C0              fld st0
0000012A  D9FF              fcos
0000012C  D80EE001          fmul dword [0x1e0]
00000130  DB1C              fistp dword [si]
00000132  D806E401          fadd dword [0x1e4]
