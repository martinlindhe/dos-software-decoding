uses fpu

000001DF  DB060001          fild dword [0x100]
000001E3  D9FA              fsqrt
000001E5  DB1E0001          fistp dword [0x100]
