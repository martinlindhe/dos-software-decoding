00000100  BF0002            mov di,0x200
00000103  B1A0              mov cl,0xa0
00000105  BBF505            mov bx,0x5f5
00000108  33D2              xor dx,dx
0000010A  8BC2              mov ax,dx
0000010C  C1F80B            sar ax,byte 0xb
0000010F  29C3              sub bx,ax
00000111  C1E002            shl ax,byte 0x2
00000114  29C3              sub bx,ax
00000116  03D3              add dx,bx
00000118  8AC6              mov al,dh
0000011A  AA                stosb
0000011B  8BC3              mov ax,bx
0000011D  C1F809            sar ax,byte 0x9
00000120  00F0              add al,dh
00000122  AA                stosb
00000123  FEC9              dec cl
00000125  75E3              jnz 0x10a
00000127  B81300            mov ax,0x13
0000012A  CD10              int 0x10
0000012C  6800A0            push word 0xa000
0000012F  07                pop es
00000130  33FF              xor di,di
00000132  B9007D            mov cx,0x7d00
00000135  33C0              xor ax,ax
00000137  F3AB              rep stosw
00000139  BAC803            mov dx,0x3c8
0000013C  33C0              xor ax,ax
0000013E  EE                out dx,al
0000013F  42                inc dx
00000140  EE                out dx,al
00000141  EE                out dx,al
00000142  86E0              xchg ah,al
00000144  EE                out dx,al
00000145  EE                out dx,al
00000146  EE                out dx,al
00000147  86E0              xchg ah,al
00000149  EE                out dx,al
0000014A  EE                out dx,al
0000014B  86E0              xchg ah,al
0000014D  EE                out dx,al
0000014E  EE                out dx,al
0000014F  EE                out dx,al
00000150  86E0              xchg ah,al
00000152  EE                out dx,al
00000153  EE                out dx,al
00000154  FEC0              inc al
00000156  3C40              cmp al,0x40
00000158  75E6              jnz 0x140
0000015A  B702              mov bh,0x2
0000015C  FEC3              inc bl
0000015E  BEE803            mov si,0x3e8
00000161  BF2100            mov di,0x21
00000164  B27F              mov dl,0x7f
00000166  8AC2              mov al,dl
00000168  F62F              imul byte [bx]
0000016A  03C0              add ax,ax
0000016C  88E1              mov cl,ah
0000016E  8AC2              mov al,dl
00000170  F66F40            imul byte [bx+0x40]
00000173  03C0              add ax,ax
00000175  88E5              mov ch,ah
00000177  890C              mov [si],cx
00000179  46                inc si
0000017A  46                inc si
0000017B  FECA              dec dl
0000017D  71E7              jno 0x166
0000017F  B664              mov dh,0x64
00000181  B27F              mov dl,0x7f
00000183  33C9              xor cx,cx
00000185  BEE803            mov si,0x3e8
00000188  8AC6              mov al,dh
0000018A  F62F              imul byte [bx]
0000018C  03C0              add ax,ax
0000018E  02EC              add ch,ah
00000190  8AC6              mov al,dh
00000192  F66F40            imul byte [bx+0x40]
00000195  03C0              add ax,ax
00000197  2ACC              sub cl,ah
00000199  51                push cx
0000019A  52                push dx
0000019B  AD                lodsw
0000019C  03C8              add cx,ax
0000019E  B8FF00            mov ax,0xff
000001A1  8BD5              mov dx,bp
000001A3  2C07              sub al,0x7
000001A5  29CA              sub dx,cx
000001A7  81C10A0A          add cx,0xa0a
000001AB  F7C28080          test dx,0x8080
000001AF  75F2              jnz 0x1a3
000001B1  8ACA              mov cl,dl
000001B3  08F1              or cl,dh
000001B5  D0D9              rcr cl,1
000001B7  53                push bx
000001B8  8AD9              mov bl,cl
000001BA  8A1F              mov bl,[bx]
000001BC  C0E302            shl bl,byte 0x2
000001BF  00D8              add al,bl
000001C1  5B                pop bx
000001C2  5A                pop dx
000001C3  59                pop cx
000001C4  AA                stosb
000001C5  FECA              dec dl
000001C7  71D0              jno 0x199
000001C9  83C740            add di,byte +0x40
000001CC  FECE              dec dh
000001CE  80FE9C            cmp dh,0x9c
000001D1  75AE              jnz 0x181
000001D3  81C50906          add bp,0x609
000001D7  52                push dx
000001D8  BADA03            mov dx,0x3da
000001DB  EC                in al,dx
000001DC  A808              test al,0x8
000001DE  75FB              jnz 0x1db
000001E0  EC                in al,dx
000001E1  A808              test al,0x8
000001E3  74FB              jz 0x1e0
000001E5  5A                pop dx
000001E6  B401              mov ah,0x1
000001E8  CD16              int 0x16
000001EA  7503              jnz 0x1ef
000001EC  E96DFF            jmp word 0x15c
000001EF  B80300            mov ax,0x3
000001F2  CD10              int 0x10
000001F4  C3                ret
000001F5  4D                dec bp
000001F6  61                popaw
000001F7  746A              jz 0x263
000001F9  7521              jnz 0x21c
000001FB  27                daa
000001FC  39                db 0x39
000001FD  36                ss
