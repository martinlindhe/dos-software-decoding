uses 32bit and fpu

00000150  66810481004701    add dword [si],0x1470081

00000162  9BDBE3            finit
00000165  D9EB              fldpi
00000167  BEDC01            mov si,0x1dc
0000016A  DE34              fidiv word [si]
0000016C  D9EE              fldz
