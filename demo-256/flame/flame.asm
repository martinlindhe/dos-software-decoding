00000100  B80102            mov ax,0x201
00000103  8EE8              mov gs,ax
00000105  B81300            mov ax,0x13
00000108  CD10              int 0x10
0000010A  BF01FC            mov di,0xfc01
0000010D  8EE7              mov fs,di
0000010F  30C0              xor al,al
00000111  B90003            mov cx,0x300
00000114  51                push cx
00000115  F3AA              rep stosb
00000117  8CE7              mov di,fs
00000119  31DB              xor bx,bx
0000011B  B83F1F            mov ax,0x1f3f
0000011E  B11F              mov cl,0x1f
00000120  81C30201          add bx,0x102
00000124  FEC4              inc ah
00000126  26899D9F00        mov [es:di+0x9f],bx
0000012B  268985FC00        mov [es:di+0xfc],ax
00000130  83C703            add di,byte +0x3
00000133  E2EB              loop 0x120
00000135  30C0              xor al,al
00000137  BAC803            mov dx,0x3c8
0000013A  EE                out dx,al
0000013B  42                inc dx
0000013C  8CE6              mov si,fs
0000013E  59                pop cx
0000013F  F36E              rep outsb
00000141  8CEF              mov di,gs
00000143  31C0              xor ax,ax
00000145  B9803E            mov cx,0x3e80
00000148  29CD              sub bp,cx
0000014A  F366AB            rep stosd
0000014D  8CEF              mov di,gs
0000014F  89FE              mov si,di
00000151  A1FD01            mov ax,[0x1fd]
00000154  01C7              add di,ax
00000156  80F47D            xor ah,0x7d
00000159  01C6              add si,ax
0000015B  B90078            mov cx,0x7800
0000015E  81C64001          add si,0x140
00000162  30FF              xor bh,bh
00000164  31C0              xor ax,ax
00000166  56                push si
00000167  30F6              xor dh,dh
00000169  8A14              mov dl,[si]
0000016B  80E2C0            and dl,0xc0
0000016E  01D6              add si,dx
00000170  C1E202            shl dx,byte 0x2
00000173  01D6              add si,dx
00000175  8A9C4101          mov bl,[si+0x141]
00000179  01D8              add ax,bx
0000017B  8A9C3F01          mov bl,[si+0x13f]
0000017F  01D8              add ax,bx
00000181  8A9CC0FE          mov bl,[si-0x140]
00000185  01D8              add ax,bx
00000187  8A1C              mov bl,[si]
00000189  01D8              add ax,bx
0000018B  C1E802            shr ax,byte 0x2
0000018E  5E                pop si
0000018F  AA                stosb
00000190  46                inc si
00000191  E2CF              loop 0x162
00000193  8CEF              mov di,gs
00000195  81C70078          add di,0x7800
00000199  033EFD01          add di,[0x1fd]
0000019D  B94001            mov cx,0x140
000001A0  E440              in al,0x40
000001A2  32060002          xor al,[0x200]
000001A6  C0C803            ror al,byte 0x3
000001A9  A20002            mov [0x200],al
000001AC  D0E8              shr al,1
000001AE  89EA              mov dx,bp
000001B0  00F0              add al,dh
000001B2  AA                stosb
000001B3  E2EB              loop 0x1a0
000001B5  83ED0A            sub bp,byte +0xa
000001B8  06                push es
000001B9  B800A0            mov ax,0xa000
000001BC  8EC0              mov es,ax
000001BE  BF0414            mov di,0x1404
000001C1  8CEE              mov si,gs
000001C3  83C604            add si,byte +0x4
000001C6  0336FD01          add si,[0x1fd]
000001CA  B80800            mov ax,0x8
000001CD  B154              mov cl,0x54
000001CF  51                push cx
000001D0  B14E              mov cl,0x4e
000001D2  51                push cx
000001D3  56                push si
000001D4  F366A5            rep movsd
000001D7  5E                pop si
000001D8  59                pop cx
000001D9  01C7              add di,ax
000001DB  F366A5            rep movsd
000001DE  01C7              add di,ax
000001E0  01C6              add si,ax
000001E2  59                pop cx
000001E3  E2EA              loop 0x1cf
000001E5  07                pop es
000001E6  8036FE017D        xor byte [0x1fe],0x7d
000001EB  B401              mov ah,0x1
000001ED  CD16              int 0x16
000001EF  0F845AFF          jz word 0x14d
000001F3  31C0              xor ax,ax
000001F5  CD16              int 0x16
000001F7  B80300            mov ax,0x3
000001FA  CD10              int 0x10
000001FC  C3                ret
000001FD  0000              add [bx+si],al
