00000100  B81300            mov ax,0x13
00000103  CD10              int 0x10
00000105  BAC403            mov dx,0x3c4
00000108  B80406            mov ax,0x604
0000010B  EF                out dx,ax
0000010C  B8020F            mov ax,0xf02
0000010F  EF                out dx,ax
00000110  BAD403            mov dx,0x3d4
00000113  B817E3            mov ax,0xe317
00000116  EF                out dx,ax
00000117  B81400            mov ax,0x14
0000011A  EF                out dx,ax
0000011B  6800A0            push word 0xa000
0000011E  07                pop es
0000011F  33C0              xor ax,ax
00000121  33FF              xor di,di
00000123  B9007D            mov cx,0x7d00
00000126  F3AB              rep stosw
00000128  BEE201            mov si,0x1e2
0000012B  33DB              xor bx,bx
0000012D  33C0              xor ax,ax
0000012F  B280              mov dl,0x80
00000131  8A0C              mov cl,[si]
00000133  20D1              and cl,dl
00000135  743D              jz 0x174
00000137  60                pushaw
00000138  BD1900            mov bp,0x19
0000013B  50                push ax
0000013C  B128              mov cl,0x28
0000013E  8BD5              mov dx,bp
00000140  08CA              or dl,cl
00000142  60                pushaw
00000143  8AEA              mov ch,dl
00000145  89DF              mov di,bx
00000147  C1E702            shl di,byte 0x2
0000014A  03FB              add di,bx
0000014C  C1E704            shl di,byte 0x4
0000014F  8BD8              mov bx,ax
00000151  C1EB02            shr bx,byte 0x2
00000154  03FB              add di,bx
00000156  250300            and ax,0x3
00000159  B101              mov cl,0x1
0000015B  86C1              xchg al,cl
0000015D  D2E0              shl al,cl
0000015F  86E0              xchg ah,al
00000161  B002              mov al,0x2
00000163  BAC403            mov dx,0x3c4
00000166  EF                out dx,ax
00000167  26882D            mov [es:di],ch
0000016A  61                popaw
0000016B  40                inc ax
0000016C  E2D0              loop 0x13e
0000016E  58                pop ax
0000016F  43                inc bx
00000170  4D                dec bp
00000171  75C8              jnz 0x13b
00000173  61                popaw
00000174  D0EA              shr dl,1
00000176  052800            add ax,0x28
00000179  3D4001            cmp ax,0x140
0000017C  72B3              jc 0x131
0000017E  46                inc si
0000017F  83C319            add bx,byte +0x19
00000182  81FB2003          cmp bx,0x320
00000186  72A5              jc 0x12d
00000188  33ED              xor bp,bp
0000018A  BBB0FF            mov bx,0xffb0
0000018D  F7DB              neg bx
0000018F  B92602            mov cx,0x226
00000192  BADA03            mov dx,0x3da
00000195  EC                in al,dx
00000196  2408              and al,0x8
00000198  75FB              jnz 0x195
0000019A  EC                in al,dx
0000019B  2408              and al,0x8
0000019D  74FB              jz 0x19a
0000019F  01DD              add bp,bx
000001A1  BAD403            mov dx,0x3d4
000001A4  89E8              mov ax,bp
000001A6  C1E808            shr ax,byte 0x8
000001A9  86C4              xchg al,ah
000001AB  B00C              mov al,0xc
000001AD  EF                out dx,ax
000001AE  89E8              mov ax,bp
000001B0  25FF00            and ax,0xff
000001B3  86C4              xchg al,ah
000001B5  B00D              mov al,0xd
000001B7  EF                out dx,ax
000001B8  E2D8              loop 0x192
000001BA  B401              mov ah,0x1
000001BC  CD16              int 0x16
000001BE  74CD              jz 0x18d
000001C0  33C0              xor ax,ax
000001C2  CD16              int 0x16
000001C4  B80300            mov ax,0x3
000001C7  CD10              int 0x10
000001C9  B409              mov ah,0x9
000001CB  BAD101            mov dx,0x1d1
000001CE  CD21              int 0x21
000001D0  C3                ret
000001D1  FE4E61            dec byte [bp+0x61]
000001D4  646F              fs outsw
000001D6  202F              and [bx],ch
000001D8  205472            and [si+0x72],dl
000001DB  696D616A65        imul bp,[di+0x61],word 0x656a
000001E0  FE                db 0xfe
000001E1  243C              and al,0x3c
000001E3  7EDB              jng 0x1c0
000001E5  FF                db 0xff
000001E6  BDC37E            mov bp,0x7ec3
000001E9  3C18              cmp al,0x18
000001EB  187E7E            sbb [bp+0x7e],bh
000001EE  5A                pop dx
000001EF  5A                pop dx
000001F0  5A                pop dx
000001F1  5A                pop dx
000001F2  5A                pop dx
000001F3  183C              sbb [si],bh
000001F5  2424              and al,0x24
000001F7  2424              and al,0x24
000001F9  E700              out 0x0,ax
000001FB  AA                stosb
000001FC  AA                stosb
000001FD  EA                db 0xea
000001FE  A8AA              test al,0xaa
