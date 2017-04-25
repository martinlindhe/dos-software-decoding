00000100  9BDBE3            finit
00000103  BEFF01            mov si,0x1ff
00000106  B504              mov ch,0x4
00000108  DF06FD01          fild word [0x1fd]
0000010C  D9EB              fldpi
0000010E  DF06FB01          fild word [0x1fb]
00000112  DEF9              fdivp st1
00000114  890EFB01          mov [0x1fb],cx
00000118  DF06FB01          fild word [0x1fb]
0000011C  D8C9              fmul st1
0000011E  D9FF              fcos
00000120  D8CA              fmul st2
00000122  D8C2              fadd st2
00000124  DF1C              fistp word [si]
00000126  46                inc si
00000127  E2EB              loop 0x114
00000129  B013              mov al,0x13
0000012B  CD10              int 0x10
0000012D  6800A0            push word 0xa000
00000130  07                pop es
00000131  BADA03            mov dx,0x3da
00000134  EC                in al,dx
00000135  2408              and al,0x8
00000137  74FB              jz 0x134
00000139  BEFF01            mov si,0x1ff
0000013C  B2C8              mov dl,0xc8
0000013E  32C0              xor al,al
00000140  EE                out dx,al
00000141  42                inc dx
00000142  BD4000            mov bp,0x40
00000145  B104              mov cl,0x4
00000147  8BDD              mov bx,bp
00000149  021E2B03          add bl,[0x32b]
0000014D  8A18              mov bl,[bx+si]
0000014F  8AC3              mov al,bl
00000151  C0E802            shr al,byte 0x2
00000154  EE                out dx,al
00000155  8A18              mov bl,[bx+si]
00000157  8AC3              mov al,bl
00000159  C0E802            shr al,byte 0x2
0000015C  EE                out dx,al
0000015D  8A18              mov bl,[bx+si]
0000015F  8AC3              mov al,bl
00000161  C0E802            shr al,byte 0x2
00000164  EE                out dx,al
00000165  E2E0              loop 0x147
00000167  4D                dec bp
00000168  75DB              jnz 0x145
0000016A  83062B0304        add word [0x32b],byte +0x4
0000016F  832E2D0305        sub word [0x32d],byte +0x5
00000174  33FF              xor di,di
00000176  A12B03            mov ax,[0x32b]
00000179  F6C402            test ah,0x2
0000017C  7533              jnz 0x1b1
0000017E  BD2B03            mov bp,0x32b
00000181  33DB              xor bx,bx
00000183  B9C700            mov cx,0xc7
00000186  BA4001            mov dx,0x140
00000189  8ADA              mov bl,dl
0000018B  025E00            add bl,[bp+0x0]
0000018E  2A18              sub bl,[bx+si]
00000190  02D9              add bl,cl
00000192  2A5E02            sub bl,[bp+0x2]
00000195  8A00              mov al,[bx+si]
00000197  8AD9              mov bl,cl
00000199  2A5E00            sub bl,[bp+0x0]
0000019C  2A18              sub bl,[bx+si]
0000019E  02DA              add bl,dl
000001A0  025E02            add bl,[bp+0x2]
000001A3  2A18              sub bl,[bx+si]
000001A5  2AD8              sub bl,al
000001A7  8A00              mov al,[bx+si]
000001A9  AA                stosb
000001AA  4A                dec dx
000001AB  75DC              jnz 0x189
000001AD  E2D7              loop 0x186
000001AF  EB40              jmp short 0x1f1
000001B1  33062D03          xor ax,[0x32d]
000001B5  C1E807            shr ax,byte 0x7
000001B8  250700            and ax,0x7
000001BB  A2D801            mov [0x1d8],al
000001BE  B9C700            mov cx,0xc7
000001C1  BD4001            mov bp,0x140
000001C4  8BC1              mov ax,cx
000001C6  2DC800            sub ax,0xc8
000001C9  F7E9              imul cx
000001CB  8BD8              mov bx,ax
000001CD  8BC5              mov ax,bp
000001CF  2D4001            sub ax,0x140
000001D2  F7ED              imul bp
000001D4  03D8              add bx,ax
000001D6  C1FB05            sar bx,byte 0x5
000001D9  32FF              xor bh,bh
000001DB  021E2D03          add bl,[0x32d]
000001DF  8A18              mov bl,[bx+si]
000001E1  02D9              add bl,cl
000001E3  8A18              mov bl,[bx+si]
000001E5  2BDD              sub bx,bp
000001E7  32FF              xor bh,bh
000001E9  8A00              mov al,[bx+si]
000001EB  AA                stosb
000001EC  4D                dec bp
000001ED  75D5              jnz 0x1c4
000001EF  E2D0              loop 0x1c1
000001F1  E460              in al,0x60
000001F3  FEC8              dec al
000001F5  0F8538FF          jnz word 0x131
000001F9  CD20              int 0x20
000001FB  80007F            add byte [bx+si],0x7f
000001FE  00                db 0x00
