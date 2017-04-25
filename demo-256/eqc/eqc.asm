00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  2BC0              sub ax,ax
00000106  BAC803            mov dx,0x3c8
00000109  EE                out dx,al
0000010A  42                inc dx
0000010B  B140              mov cl,0x40
0000010D  EE                out dx,al
0000010E  EE                out dx,al
0000010F  EE                out dx,al
00000110  40                inc ax
00000111  E2FA              loop 0x10d
00000113  9BDBE3            finit
00000116  6800A0            push word 0xa000
00000119  07                pop es
0000011A  BE1E03            mov si,0x31e
0000011D  2BFF              sub di,di
0000011F  2BC0              sub ax,ax
00000121  2BDB              sub bx,bx
00000123  B5FC              mov ch,0xfc
00000125  AC                lodsb
00000126  02843F01          add al,[si+0x13f]
0000012A  8A1C              mov bl,[si]
0000012C  13C3              adc ax,bx
0000012E  8A5C02            mov bl,[si+0x2]
00000131  03C3              add ax,bx
00000133  C1E802            shr ax,byte 0x2
00000136  AA                stosb
00000137  8804              mov [si],al
00000139  E2EA              loop 0x125
0000013B  FF060002          inc word [0x200]
0000013F  DF060002          fild word [0x200]
00000143  DE36FE01          fidiv word [0x1fe]
00000147  D9FB              fsincos
00000149  DE0EFE01          fimul word [0x1fe]
0000014D  DF1E0602          fistp word [0x206]
00000151  DE0EFE01          fimul word [0x1fe]
00000155  DF1E0402          fistp word [0x204]
00000159  B502              mov ch,0x2
0000015B  890E0202          mov [0x202],cx
0000015F  DF060202          fild word [0x202]
00000163  D9FB              fsincos
00000165  DE0EFE01          fimul word [0x1fe]
00000169  DF1E0C02          fistp word [0x20c]
0000016D  DE0EFE01          fimul word [0x1fe]
00000171  DF160802          fist word [0x208]
00000175  DE0EFE01          fimul word [0x1fe]
00000179  D9FB              fsincos
0000017B  DE0E0802          fimul word [0x208]
0000017F  DF1E0A02          fistp word [0x20a]
00000183  DE0E0802          fimul word [0x208]
00000187  DF1E0E02          fistp word [0x20e]
0000018B  8B360402          mov si,[0x204]
0000018F  8B3E0602          mov di,[0x206]
00000193  8B1E0A02          mov bx,[0x20a]
00000197  53                push bx
00000198  0FAFDE            imul bx,si
0000019B  A10E02            mov ax,[0x20e]
0000019E  F7EF              imul di
000001A0  2BC3              sub ax,bx
000001A2  C1F806            sar ax,byte 0x6
000001A5  8BE8              mov bp,ax
000001A7  8B1E0C02          mov bx,[0x20c]
000001AB  0FAFDE            imul bx,si
000001AE  8BC5              mov ax,bp
000001B0  F7EF              imul di
000001B2  03C3              add ax,bx
000001B4  C1F807            sar ax,byte 0x7
000001B7  5B                pop bx
000001B8  50                push ax
000001B9  0FAFDF            imul bx,di
000001BC  A10E02            mov ax,[0x20e]
000001BF  F7EE              imul si
000001C1  03C3              add ax,bx
000001C3  C1F806            sar ax,byte 0x6
000001C6  50                push ax
000001C7  8BDD              mov bx,bp
000001C9  0FAFDE            imul bx,si
000001CC  A10C02            mov ax,[0x20c]
000001CF  F7EF              imul di
000001D1  2BC3              sub ax,bx
000001D3  C1F806            sar ax,byte 0x6
000001D6  D1FE              sar si,1
000001D8  056400            add ax,0x64
000001DB  03C6              add ax,si
000001DD  69C04001          imul ax,ax,word 0x140
000001E1  5B                pop bx
000001E2  03C3              add ax,bx
000001E4  03F8              add di,ax
000001E6  58                pop ax
000001E7  0420              add al,0x20
000001E9  8805              mov [di],al
000001EB  49                dec cx
000001EC  0F856BFF          jnz word 0x15b
000001F0  B401              mov ah,0x1
000001F2  CD16              int 0x16
000001F4  0F8422FF          jz word 0x11a
000001F8  B80300            mov ax,0x3
000001FB  CD10              int 0x10
000001FD  C3                ret
000001FE  3F                aas
000001FF  00                db 0x00
