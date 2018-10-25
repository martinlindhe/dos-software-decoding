uses fpu:

000001C7  DF440C            fild word [si+0xc]
000001CA  D95C2C            fstp dword [si+0x2c]
000001CD  DF04              fild word [si]
000001CF  D84C10            fmul dword [si+0x10]
000001D2  D9C0              fld st0
000001D4  D9FB              fsincos
