00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  8CD8              mov ax,ds
00000106  FEC4              inc ah
00000108  8EC0              mov es,ax
0000010A  BAC803            mov dx,0x3c8
0000010D  88C8              mov al,cl
0000010F  EE                out dx,al
00000110  42                inc dx
00000111  C0E802            shr al,byte 0x2
00000114  EE                out dx,al
00000115  EE                out dx,al
00000116  F6D0              not al
00000118  C0E804            shr al,byte 0x4
0000011B  EE                out dx,al
0000011C  E2EC              loop 0x10a
0000011E  31FF              xor di,di
00000120  BB9CFF            mov bx,0xff9c
00000123  B960FF            mov cx,0xff60
00000126  DBE3              fninit
00000128  DF06C401          fild word [0x1c4]
0000012C  890C              mov [si],cx
0000012E  DF04              fild word [si]
00000130  891C              mov [si],bx
00000132  DF04              fild word [si]
00000134  D8C0              fadd st0
00000136  D9C1              fld st1
00000138  D9C1              fld st1
0000013A  D8C8              fmul st0
0000013C  D9C9              fxch st1
0000013E  D8C8              fmul st0
00000140  DEC1              faddp st1
00000142  D9FA              fsqrt
00000144  D9CA              fxch st2
00000146  D9F3              fpatan
00000148  D9C0              fld st0
0000014A  D9C3              fld st3
0000014C  D8C8              fmul st0
0000014E  DEF3              fdivrp st3
00000150  D9C2              fld st2
00000152  D8F4              fdiv st4
00000154  DEC1              faddp st1
00000156  DE0EFA01          fimul word [0x1fa]
0000015A  D8060D01          fadd dword [0x10d]
0000015E  D9FE              fsin
00000160  D9E9              fldl2t
00000162  DEC1              faddp st1
00000164  DE0ED801          fimul word [0x1d8]
00000168  D9C9              fxch st1
0000016A  D9FB              fsincos
0000016C  D8CC              fmul st4
0000016E  D9C9              fxch st1
00000170  D8CC              fmul st4
00000172  D9060D01          fld dword [0x10d]
00000176  D9FE              fsin
00000178  DE0ED801          fimul word [0x1d8]
0000017C  D9C0              fld st0
0000017E  DEEA              fsubp st2
00000180  DEEA              fsubp st2
00000182  D9C4              fld st4
00000184  DE0EFA01          fimul word [0x1fa]
00000188  D9060D01          fld dword [0x10d]
0000018C  D9FE              fsin
0000018E  D9E8              fld1
00000190  DEC1              faddp st1
00000192  D8CC              fmul st4
00000194  DEC1              faddp st1
00000196  DEEC              fsubp st4
00000198  D9CB              fxch st3
0000019A  D8C8              fmul st0
0000019C  D9C9              fxch st1
0000019E  D8C8              fmul st0
000001A0  DEC1              faddp st1
000001A2  D9CA              fxch st2
000001A4  D8C8              fmul st0
000001A6  DEC2              faddp st2
000001A8  D9C9              fxch st1
000001AA  D9FA              fsqrt
000001AC  DF06D801          fild word [0x1d8]
000001B0  DEF1              fdivrp st1
000001B2  DEC9              fmulp st1
000001B4  DF1C              fistp word [si]
000001B6  B0FF              mov al,0xff
000001B8  813CFF00          cmp word [si],0xff
000001BC  7702              ja 0x1c0
000001BE  8A04              mov al,[si]
000001C0  AA                stosb
000001C1  41                inc cx
000001C2  81F9A000          cmp cx,0xa0
000001C6  0F8C5CFF          jl word 0x126
000001CA  43                inc bx
000001CB  81FB6400          cmp bx,0x64
000001CF  0F8C50FF          jl word 0x123
000001D3  1E                push ds
000001D4  8CC3              mov bx,es
000001D6  8EDB              mov ds,bx
000001D8  6800A0            push word 0xa000
000001DB  07                pop es
000001DC  B57D              mov ch,0x7d
000001DE  31FF              xor di,di
000001E0  31F6              xor si,si
000001E2  F3A5              rep movsw
000001E4  1F                pop ds
000001E5  8EC3              mov es,bx
000001E7  D9EC              fldlg2
000001E9  D8060D01          fadd dword [0x10d]
000001ED  D91E0D01          fstp dword [0x10d]
000001F1  B401              mov ah,0x1
000001F3  CD16              int 0x16
000001F5  0F8425FF          jz word 0x11e
000001F9  B80300            mov ax,0x3
000001FC  CD10              int 0x10
000001FE  CD20              int 0x20
