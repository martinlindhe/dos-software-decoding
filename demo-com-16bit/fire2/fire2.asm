00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  B81210            mov ax,0x1012
00000107  BB0100            mov bx,0x1
0000010A  B111              mov cl,0x11
0000010C  BAC501            mov dx,0x1c5
0000010F  CD10              int 0x10
00000111  B409              mov ah,0x9
00000113  BAB001            mov dx,0x1b0
00000116  CD21              int 0x21        ; WRITE STRING at dx TO STANDARD OUTPUT

00000118  50                push ax
00000119  55                push bp
0000011A  8BEC              mov bp,sp
0000011C  C7460200A0        mov word [bp+0x2],0xa000
00000121  5D                pop bp
00000122  1F                pop ds
00000123  33F6              xor si,si
00000125  BFF201            mov di,0x1f2
00000128  B108              mov cl,0x8

0000012A  B5A0              mov ch,0xa0

0000012C  AC                lodsb
0000012D  22C0              and al,al
0000012F  7402              jz 0x133

00000131  B00F              mov al,0xf
00000133  8AE0              mov ah,al
00000135  2689854001        mov [es:di+0x140],ax
0000013A  AB                stosw
0000013B  FECD              dec ch
0000013D  75ED              jnz 0x12c

0000013F  81C6A000          add si,0xa0
00000143  81C74001          add di,0x140
00000147  E2E1              loop 0x12a

00000149  1E                push ds
0000014A  06                push es
0000014B  1F                pop ds
0000014C  07                pop es
0000014D  49                dec cx
0000014E  33C0              xor ax,ax
00000150  F3AA              rep stosb
00000152  BE9202            mov si,0x292
00000155  81F66003          xor si,0x360
00000159  56                push si
0000015A  BF507D            mov di,0x7d50
0000015D  B110              mov cl,0x10

0000015F  51                push cx
00000160  56                push si
00000161  B150              mov cl,0x50
00000163  F3A5              rep movsw
00000165  5E                pop si
00000166  59                pop cx
00000167  81C7A000          add di,0xa0
0000016B  81C64001          add si,0x140
0000016F  E2EE              loop 0x15f

00000171  5E                pop si
00000172  B314              mov bl,0x14
00000174  B9007D            mov cx,0x7d00
00000177  BF803E            mov di,0x3e80

loop17a:        ; dustbox gets stuck here-ish
0000017A  268A854101        mov al,[es:di+0x141]
0000017F  2602854001        add al,[es:di+0x140]
00000184  2602853F01        add al,[es:di+0x13f]
00000189  260205            add al,[es:di]
0000018C  D0E8              shr al,1
0000018E  D0E8              shr al,1
00000190  AA                stosb
00000191  E2E7              loop loop17a

00000193  BADA03            mov dx,0x3da  ; CGA status reg
00000196  EC                in al,dx
00000197  A808              test al,0x8
00000199  75FB              jnz 0x196  ; waits until we leave vertical retrace (bit 3)

0000019B  EC                in al,dx
0000019C  A808              test al,0x8
0000019E  74FB              jz 0x19b
000001A0  E460              in al,0x60
000001A2  FEC8              dec al
000001A4  7406              jz 0x1ac
000001A6  FECB              dec bl
000001A8  75CA              jnz 0x174
000001AA  EBA9              jmp short 0x155

000001AC  B44C              mov ah,0x4c     ; exit
000001AE  CD21              int 0x21

; data:
000001B0  46                inc si
000001B1  49                dec cx
000001B2  41                inc cx
000001B3  53                push bx
000001B4  4B                dec bx
000001B5  4F                dec di
000001B6  2027              and [bx],ah
000001B8  3938              cmp [bx+si],di
000001BA  3235              xor dh,[di]
000001BC  366220            bound sp,[ss:bx+si]
000001BF  49                dec cx
000001C0  4E                dec si
000001C1  54                push sp
000001C2  52                push dx
000001C3  4F                dec di
000001C4  2400              and al,0x0
000001C6  001E0000          add [0x0],bl
000001CA  0025              add [di],ah
000001CC  0000              add [bx+si],al
000001CE  3001              xor [bx+di],al
000001D0  0339              add di,[bx+di]
000001D2  0302              add ax,[bp+si]
000001D4  3B07              cmp ax,[bx]
000001D6  033E0E03          add di,[0x30e]
000001DA  3F                aas
000001DB  16                push ss
000001DC  083F              or [bx],bh
000001DE  1F                pop ds
000001DF  0D3F28            or ax,0x283f
000001E2  123F              adc bh,[bx]
000001E4  3218              xor bl,[bx+si]
000001E6  3F                aas
000001E7  37                aaa
000001E8  1E                push ds
000001E9  3F                aas
000001EA  3B25              cmp sp,[di]
000001EC  3F                aas
000001ED  3E323F            xor bh,[ds:bx]
000001F0  3F                aas
000001F1  3F                aas
