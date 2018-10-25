00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  680080            push word 0x8000
00000107  07                pop es
00000108  06                push es
00000109  0FA1              pop fs
0000010B  B15A              mov cl,0x5a
0000010D  BBA5FF            mov bx,0xffa5
00000110  2BF6              sub si,si
00000112  E8BC00            call word 0x1d1
00000115  4E                dec si
00000116  83FEA5            cmp si,byte -0x5b
00000119  75F7              jnz 0x112
0000011B  43                inc bx
0000011C  83FB5B            cmp bx,byte +0x5b
0000011F  75EF              jnz 0x110
00000121  4B                dec bx
00000122  BE0100            mov si,0x1
00000125  E8A900            call word 0x1d1
00000128  46                inc si
00000129  83FE5B            cmp si,byte +0x5b
0000012C  75F7              jnz 0x125
0000012E  4B                dec bx
0000012F  83FBA5            cmp bx,byte -0x5b
00000132  75EE              jnz 0x122
00000134  49                dec cx
00000135  79D6              jns 0x10d
00000137  92                xchg ax,dx
00000138  BAC803            mov dx,0x3c8
0000013B  EE                out dx,al
0000013C  42                inc dx
0000013D  B740              mov bh,0x40
0000013F  B104              mov cl,0x4
00000141  32C0              xor al,al
00000143  EE                out dx,al
00000144  EE                out dx,al
00000145  8AC4              mov al,ah
00000147  EE                out dx,al
00000148  E2F7              loop 0x141
0000014A  FEC4              inc ah
0000014C  FECF              dec bh
0000014E  75EF              jnz 0x13f
00000150  680090            push word 0x9000
00000153  1F                pop ds
00000154  680070            push word 0x7000
00000157  07                pop es
00000158  80EE07            sub dh,0x7
0000015B  8AC6              mov al,dh
0000015D  A2A23F            mov [0x3fa2],al
00000160  BF0200            mov di,0x2
00000163  B98C64            mov cx,0x648c
00000166  0403              add al,0x3
00000168  648B35            mov si,[fs:di]
0000016B  8804              mov [si],al
0000016D  47                inc di
0000016E  47                inc di
0000016F  E2F5              loop 0x166
00000171  2BFF              sub di,di
00000173  BE521C            mov si,0x1c52
00000176  B364              mov bl,0x64
00000178  B1A0              mov cl,0xa0
0000017A  AC                lodsb
0000017B  8AE3              mov ah,bl
0000017D  AB                stosw
0000017E  2689853E01        mov [es:di+0x13e],ax
00000183  E2F5              loop 0x17a
00000185  83C615            add si,byte +0x15
00000188  81C74001          add di,0x140
0000018C  FECB              dec bl
0000018E  75E8              jnz 0x178
00000190  06                push es
00000191  1F                pop ds
00000192  B20A              mov dl,0xa
00000194  2BF6              sub si,si
00000196  49                dec cx
00000197  32E4              xor ah,ah
00000199  8A84BFFE          mov al,[si-0x141]
0000019D  8A9CC1FE          mov bl,[si-0x13f]
000001A1  03C3              add ax,bx
000001A3  8A9C3F01          mov bl,[si+0x13f]
000001A7  03C3              add ax,bx
000001A9  8A9C4101          mov bl,[si+0x141]
000001AD  03C3              add ax,bx
000001AF  C1E802            shr ax,byte 0x2
000001B2  8804              mov [si],al
000001B4  46                inc si
000001B5  E2E0              loop 0x197
000001B7  FECA              dec dl
000001B9  75D9              jnz 0x194
000001BB  6800A0            push word 0xa000
000001BE  07                pop es
000001BF  2BF6              sub si,si
000001C1  2BFF              sub di,di
000001C3  B57D              mov ch,0x7d
000001C5  F3A5              rep movsw
000001C7  E460              in al,0x60
000001C9  3C01              cmp al,0x1
000001CB  7583              jnz 0x150
000001CD  B003              mov al,0x3
000001CF  CD10              int 0x10
000001D1  8D07              lea ax,[bx]
000001D3  F7E8              imul ax
000001D5  95                xchg ax,bp
000001D6  8D04              lea ax,[si]
000001D8  F7E8              imul ax
000001DA  03C5              add ax,bp
000001DC  A30001            mov [0x100],ax
000001DF  DB060001          fild dword [0x100]
000001E3  D9FA              fsqrt
000001E5  DB1E0001          fistp dword [0x100]
000001E9  A10001            mov ax,[0x100]
000001EC  3AC1              cmp al,cl
000001EE  750F              jnz 0x1ff
000001F0  8BEE              mov bp,si
000001F2  83C55A            add bp,byte +0x5a
000001F5  B0B5              mov al,0xb5
000001F7  F7E5              mul bp
000001F9  03C3              add ax,bx
000001FB  055A00            add ax,0x5a
000001FE  AB                stosw
000001FF  C3                ret
