uses fpu

00000109  D9EE              fldz
0000010B  D9C0              fld st0
0000010D  D9FE              fsin
0000010F  DE0EF701          fimul word [0x1f7]
00000113  DF1F              fistp word [bx]
00000115  D806FB01          fadd dword [0x1fb]

