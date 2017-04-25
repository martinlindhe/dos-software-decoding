uses fpu

0000011F  DF060202          fild word [0x202]
00000123  D80EF001          fmul dword [0x1f0]
00000127  D9C0              fld st0
00000129  D9FE              fsin
0000012B  D80EF801          fmul dword [0x1f8]
0000012F  DF1E0002          fistp word [0x200]
