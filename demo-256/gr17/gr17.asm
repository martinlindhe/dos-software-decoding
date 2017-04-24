00000100  8EE0              mov fs,ax
00000102  B81300            mov ax,0x13
00000105  CD10              int 0x10
00000107  6800A0            push word 0xa000
0000010A  07                pop es
0000010B  BAC803            mov dx,0x3c8
0000010E  8AC1              mov al,cl
00000110  EE                out dx,al
00000111  42                inc dx
00000112  C0E802            shr al,byte 0x2
00000115  EE                out dx,al
00000116  EE                out dx,al
00000117  040A              add al,0xa
00000119  A8C0              test al,0xc0
0000011B  7402              jz 0x11f
0000011D  B0FF              mov al,0xff
0000011F  EE                out dx,al
00000120  43                inc bx
00000121  E2E8              loop 0x10b
00000123  BFC800            mov di,0xc8
00000126  C706B9010000      mov word [0x1b9],0x0
0000012C  B1FF              mov cl,0xff
0000012E  8BC5              mov ax,bp
00000130  A3BE01            mov [0x1be],ax
00000133  FEC9              dec cl
00000135  FF36B901          push word [0x1b9]
00000139  E440              in al,0x40
0000013B  241F              and al,0x1f
0000013D  32E4              xor ah,ah
0000013F  0106B901          add [0x1b9],ax
00000143  9BDBE3            finit
00000146  DF06BE01          fild word [0x1be]
0000014A  D9FB              fsincos
0000014C  DE0EB901          fimul word [0x1b9]
00000150  DF1EBE01          fistp word [0x1be]
00000154  8B1EBE01          mov bx,[0x1be]
00000158  DE0EB901          fimul word [0x1b9]
0000015C  DF1EBE01          fistp word [0x1be]
00000160  8F06B901          pop word [0x1b9]
00000164  A1BE01            mov ax,[0x1be]
00000167  BA4001            mov dx,0x140
0000016A  F7E2              mul dx
0000016C  03D8              add bx,ax
0000016E  8AD1              mov dl,cl
00000170  81C3607C          add bx,0x7c60
00000174  268817            mov [es:bx],dl
00000177  FEC9              dec cl
00000179  26885701          mov [es:bx+0x1],dl
0000017D  268857FF          mov [es:bx-0x1],dl
00000181  2688974001        mov [es:bx+0x140],dl
00000186  268897C0FE        mov [es:bx-0x140],dl
0000018B  FF06B901          inc word [0x1b9]
0000018F  A1BB01            mov ax,[0x1bb]
00000192  3906B901          cmp [0x1b9],ax
00000196  7696              jna 0x12e
00000198  45                inc bp
00000199  4F                dec di
0000019A  758A              jnz 0x126
0000019C  FE06BB01          inc byte [0x1bb]
000001A0  64A06C04          mov al,[fs:0x46c]
000001A4  643A066C04        cmp al,[fs:0x46c]
000001A9  74F9              jz 0x1a4
000001AB  E460              in al,0x60
000001AD  A801              test al,0x1
000001AF  0F8470FF          jz word 0x123
000001B3  B80300            mov ax,0x3
000001B6  CD10              int 0x10
000001B8  C3                ret
000001B9  0A00              or al,[bx+si]
000001BB  0000              add [bx+si],al
000001BD  01                db 0x01
