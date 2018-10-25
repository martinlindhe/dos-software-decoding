uses fpu:
0000015A  DBE3              fninit
0000015C  DF04              fild word [si]
0000015E  D80EC302          fmul dword [0x2c3]
00000162  D9EE              fldz
00000164  DF44FE            fild word [si-0x2]
00000167  D95CF8            fstp dword [si-0x8]
0000016A  D95CF0            fstp dword [si-0x10]
0000016D  D95CF4            fstp dword [si-0xc]
