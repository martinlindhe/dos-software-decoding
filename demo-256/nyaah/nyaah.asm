00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  680060            push word 0x6000
00000107  0FA1              pop fs
00000109  BFFB01            mov di,0x1fb
0000010C  D9EB              fldpi
0000010E  DE0EF501          fimul word [0x1f5]
00000112  DE36F901          fidiv word [0x1f9]
00000116  D9FE              fsin
00000118  DE0EF701          fimul word [0x1f7]
0000011C  DF1D              fistp word [di]
0000011E  A7                cmpsw
0000011F  FF0EF501          dec word [0x1f5]
00000123  75E7              jnz 0x10c
00000125  BAC803            mov dx,0x3c8
00000128  93                xchg ax,bx
00000129  EE                out dx,al
0000012A  42                inc dx
0000012B  B140              mov cl,0x40
0000012D  32C0              xor al,al
0000012F  EE                out dx,al
00000130  8AC1              mov al,cl
00000132  F6D8              neg al
00000134  EE                out dx,al
00000135  0C08              or al,0x8
00000137  EE                out dx,al
00000138  E2F3              loop 0x12d
0000013A  6800A0            push word 0xa000
0000013D  07                pop es
0000013E  BFFB05            mov di,0x5fb
00000141  51                push cx
00000142  BE4B00            mov si,0x4b
00000145  52                push dx
00000146  BDA000            mov bp,0xa0
00000149  0FB6DE            movzx bx,dh
0000014C  03DB              add bx,bx
0000014E  8A87FB01          mov al,[bx+0x1fb]
00000152  0FB6DA            movzx bx,dl
00000155  03DB              add bx,bx
00000157  0287FB01          add al,[bx+0x1fb]
0000015B  0FB6D9            movzx bx,cl
0000015E  03DB              add bx,bx
00000160  0287FB01          add al,[bx+0x1fb]
00000164  0FB6DD            movzx bx,ch
00000167  03DB              add bx,bx
00000169  0287FB01          add al,[bx+0x1fb]
0000016D  8805              mov [di],al
0000016F  47                inc di
00000170  81C20102          add dx,0x201
00000174  4D                dec bp
00000175  75D2              jnz 0x149
00000177  5A                pop dx
00000178  81C10302          add cx,0x203
0000017C  4E                dec si
0000017D  75C6              jnz 0x145
0000017F  59                pop cx
00000180  81C102FF          add cx,0xff02
00000184  81C201FE          add dx,0xfe01
00000188  51                push cx
00000189  52                push dx
0000018A  BEFB05            mov si,0x5fb
0000018D  BF4B00            mov di,0x4b
00000190  BD4001            mov bp,0x140
00000193  33C0              xor ax,ax
00000195  AC                lodsb
00000196  C1E802            shr ax,byte 0x2
00000199  8BDF              mov bx,di
0000019B  F7DB              neg bx
0000019D  81C3B400          add bx,0xb4
000001A1  2BD8              sub bx,ax
000001A3  B90400            mov cx,0x4
000001A6  03D9              add bx,cx
000001A8  69DB4001          imul bx,bx,word 0x140
000001AC  03DD              add bx,bp
000001AE  83EB02            sub bx,byte +0x2
000001B1  8AE0              mov ah,al
000001B3  648907            mov [fs:bx],ax
000001B6  81EB4001          sub bx,0x140
000001BA  E2F7              loop 0x1b3
000001BC  4D                dec bp
000001BD  4D                dec bp
000001BE  75D3              jnz 0x193
000001C0  4F                dec di
000001C1  75CD              jnz 0x190
000001C3  BADA03            mov dx,0x3da
000001C6  EC                in al,dx
000001C7  2408              and al,0x8
000001C9  74FB              jz 0x1c6
000001CB  0FA0              push fs
000001CD  1F                pop ds
000001CE  33FF              xor di,di
000001D0  33F6              xor si,si
000001D2  B9007D            mov cx,0x7d00
000001D5  F3A5              rep movsw
000001D7  0FA0              push fs
000001D9  07                pop es
000001DA  33FF              xor di,di
000001DC  33C0              xor ax,ax
000001DE  B9007D            mov cx,0x7d00
000001E1  F3AB              rep stosw
000001E3  5A                pop dx
000001E4  59                pop cx
000001E5  0E                push cs
000001E6  1F                pop ds
000001E7  E460              in al,0x60
000001E9  3C01              cmp al,0x1
000001EB  0F854BFF          jnz word 0x13a
000001EF  B80300            mov ax,0x3
000001F2  CD10              int 0x10
000001F4  C3                ret
000001F5  0002              add [bp+si],al
000001F7  1E                push ds
000001F8  004000            add [bx+si+0x0],al
