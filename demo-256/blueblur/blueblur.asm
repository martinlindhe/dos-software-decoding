00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  B9007D            mov cx,0x7d00
00000107  BF0005            mov di,0x500
0000010A  33C0              xor ax,ax
0000010C  F3AB              rep stosw
0000010E  680070            push word 0x7000
00000111  0FA1              pop fs
00000113  680080            push word 0x8000
00000116  0FA9              pop gs
00000118  6800A0            push word 0xa000
0000011B  07                pop es
0000011C  B1C8              mov cl,0xc8
0000011E  33FF              xor di,di
00000120  D9E8              fld1
00000122  DF06F401          fild word [0x1f4]
00000126  DF06F201          fild word [0x1f2]
0000012A  BA4001            mov dx,0x140
0000012D  D9C1              fld st1
0000012F  D8C8              fmul st0
00000131  D9C1              fld st1
00000133  D8C8              fmul st0
00000135  DEC1              faddp st1
00000137  D9FA              fsqrt
00000139  DE3EFA01          fidivr word [0x1fa]
0000013D  64DF1D            fistp word [fs:di]
00000140  D9C1              fld st1
00000142  D9C1              fld st1
00000144  D9F3              fpatan
00000146  D836F601          fdiv dword [0x1f6]
0000014A  65DF1D            fistp word [gs:di]
0000014D  D8C2              fadd st2
0000014F  47                inc di
00000150  4A                dec dx
00000151  75DA              jnz 0x12d
00000153  DDD8              fstp st0
00000155  D8C1              fadd st1
00000157  E2CD              loop 0x126
00000159  BAC803            mov dx,0x3c8
0000015C  33C0              xor ax,ax
0000015E  EE                out dx,al
0000015F  42                inc dx
00000160  8AC4              mov al,ah
00000162  C0E802            shr al,byte 0x2
00000165  50                push ax
00000166  D0E8              shr al,1
00000168  EE                out dx,al
00000169  EE                out dx,al
0000016A  58                pop ax
0000016B  EE                out dx,al
0000016C  FEC4              inc ah
0000016E  75F0              jnz 0x160
00000170  D9EE              fldz
00000172  BB0003            mov bx,0x300
00000175  D9C0              fld st0
00000177  D9FE              fsin
00000179  DE0EFC01          fimul word [0x1fc]
0000017D  DE06FC01          fiadd word [0x1fc]
00000181  DF1F              fistp word [bx]
00000183  D806F601          fadd dword [0x1f6]
00000187  FEC3              inc bl
00000189  75EA              jnz 0x175
0000018B  BADA03            mov dx,0x3da
0000018E  EC                in al,dx
0000018F  2408              and al,0x8
00000191  74FB              jz 0x18e
00000193  33FF              xor di,di
00000195  648A1D            mov bl,[fs:di]
00000198  658A3D            mov bh,[gs:di]
0000019B  8BC3              mov ax,bx
0000019D  32FF              xor bh,bh
0000019F  8ABF0003          mov bh,[bx+0x300]
000001A3  02FC              add bh,ah
000001A5  03C5              add ax,bp
000001A7  32C4              xor al,ah
000001A9  2BDD              sub bx,bp
000001AB  32DF              xor bl,bh
000001AD  F6C320            test bl,0x20
000001B0  7405              jz 0x1b7
000001B2  90                nop
000001B3  90                nop
000001B4  80E31F            and bl,0x1f
000001B7  32E4              xor ah,ah
000001B9  32FF              xor bh,bh
000001BB  2BC3              sub ax,bx
000001BD  0FAFC1            imul ax,cx
000001C0  02DC              add bl,ah
000001C2  8A850005          mov al,[di+0x500]
000001C6  32E4              xor ah,ah
000001C8  2BD8              sub bx,ax
000001CA  C1EB03            shr bx,byte 0x3
000001CD  03D8              add bx,ax
000001CF  889D0005          mov [di+0x500],bl
000001D3  26881D            mov [es:di],bl
000001D6  47                inc di
000001D7  81FF00FA          cmp di,0xfa00
000001DB  75B8              jnz 0x195
000001DD  81C50101          add bp,0x101
000001E1  55                push bp
000001E2  81E5FF00          and bp,0xff
000001E6  8A8E0003          mov cl,[bp+0x300]
000001EA  5D                pop bp
000001EB  E460              in al,0x60
000001ED  3C01              cmp al,0x1
000001EF  759A              jnz 0x18b
000001F1  C3                ret
000001F2  60                pushaw
000001F3  FF9CFFDB          call word far [si-0x2401]
000001F7  0F                db 0x0f
000001F8  C9                leave
000001F9  3C10              cmp al,0x10
000001FB  0E                push cs
000001FC  7F00              jg 0x1fe
