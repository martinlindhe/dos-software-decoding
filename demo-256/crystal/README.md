uses fpu

00000111  D9EE              fldz
00000113  B90028            mov cx,0x2800
00000116  DDD1              fst st1
00000118  D9FE              fsin
0000011A  DE4C0C            fimul word [si+0xc]
