00000100  B81300            mov ax,0x13
00000103  CD10              int 0x10
00000105  BAC203            mov dx,0x3c2
00000108  B0E3              mov al,0xe3
0000010A  EE                out dx,al
0000010B  680090            push word 0x9000
0000010E  07                pop es
0000010F  33FF              xor di,di
00000111  33C0              xor ax,ax
00000113  B90080            mov cx,0x8000
00000116  F3AB              rep stosw
00000118  B2C8              mov dl,0xc8
0000011A  EE                out dx,al
0000011B  42                inc dx
0000011C  8AC1              mov al,cl
0000011E  EE                out dx,al
0000011F  EE                out dx,al
00000120  D0E8              shr al,1
00000122  EE                out dx,al
00000123  FEC1              inc cl
00000125  75F5              jnz 0x11c
00000127  680090            push word 0x9000
0000012A  07                pop es
0000012B  B5FA              mov ch,0xfa
0000012D  268A05            mov al,[es:di]
00000130  6BC00F            imul ax,ax,byte +0xf
00000133  C1E804            shr ax,byte 0x4
00000136  AA                stosb
00000137  E2F4              loop 0x12d
00000139  B701              mov bh,0x1
0000013B  AC                lodsb
0000013C  98                cbw
0000013D  A30002            mov [0x200],ax
00000140  AC                lodsb
00000141  98                cbw
00000142  A30202            mov [0x202],ax
00000145  AC                lodsb
00000146  98                cbw
00000147  4E                dec si
00000148  A30402            mov [0x204],ax
0000014B  BF0002            mov di,0x200
0000014E  E87400            call word 0x1c5
00000151  BF0402            mov di,0x204
00000154  E86E00            call word 0x1c5
00000157  8B05              mov ax,[di]
00000159  98                cbw
0000015A  059001            add ax,0x190
0000015D  8BC8              mov cx,ax
0000015F  8A260002          mov ah,[0x200]
00000163  99                cwd
00000164  F7F9              idiv cx
00000166  69F84001          imul di,ax,word 0x140
0000016A  8A24              mov ah,[si]
0000016C  99                cwd
0000016D  F7F9              idiv cx
0000016F  03F8              add di,ax
00000171  26888DA07D        mov [es:di+0x7da0],cl
00000176  4B                dec bx
00000177  75C2              jnz 0x13b
00000179  FF06FE01          inc word [0x1fe]
0000017D  B8FFFF            mov ax,0xffff
00000180  BF06F9            mov di,0xf906
00000183  B91D04            mov cx,0x41d
00000186  F3AB              rep stosw
00000188  06                push es
00000189  6800A0            push word 0xa000
0000018C  07                pop es
0000018D  1F                pop ds
0000018E  33F6              xor si,si
00000190  33FF              xor di,di
00000192  B90080            mov cx,0x8000
00000195  F3A5              rep movsw
00000197  0E                push cs
00000198  0E                push cs
00000199  1F                pop ds
0000019A  07                pop es
0000019B  BDF501            mov bp,0x1f5
0000019E  BA0118            mov dx,0x1801
000001A1  BBFF00            mov bx,0xff
000001A4  B90700            mov cx,0x7
000001A7  B80013            mov ax,0x1300
000001AA  CD10              int 0x10
000001AC  E460              in al,0x60
000001AE  FEC8              dec al
000001B0  0F8573FF          jnz word 0x127
000001B4  B80300            mov ax,0x3
000001B7  CD10              int 0x10
000001B9  C3                ret
000001BA  DF06FE01          fild word [0x1fe]
000001BE  DF06FC01          fild word [0x1fc]
000001C2  DEF9              fdivp st1
000001C4  C3                ret
000001C5  BE0202            mov si,0x202
000001C8  E8EFFF            call word 0x1ba
000001CB  D9FF              fcos
000001CD  DF05              fild word [di]
000001CF  DEC9              fmulp st1
000001D1  E8E6FF            call word 0x1ba
000001D4  D9FF              fcos
000001D6  DF04              fild word [si]
000001D8  DEC9              fmulp st1
000001DA  DEC1              faddp st1
000001DC  E8DBFF            call word 0x1ba
000001DF  D9FF              fcos
000001E1  DF05              fild word [di]
000001E3  DEC9              fmulp st1
000001E5  E8D2FF            call word 0x1ba
000001E8  D9FE              fsin
000001EA  DF04              fild word [si]
000001EC  DEC9              fmulp st1
000001EE  DEE9              fsubp st1
000001F0  DF1C              fistp word [si]
000001F2  DF1D              fistp word [di]
000001F4  C3                ret
000001F5  6461              fs popaw
000001F7  7665              jna 0x25e
000001F9  2F                das
000001FA  7362              jnc 0x25e
000001FC  C8002C01          enter 0x2c00,0x1
