00000100  BC8042            mov sp,0x4280
00000103  E80600            call word 0x10c
00000106  B8004C            mov ax,0x4c00
00000109  CD21              int 0x21
0000010B  C3                ret
0000010C  B81300            mov ax,0x13
0000010F  CD10              int 0x10
00000111  B9F01E            mov cx,0x1ef0
00000114  8CD8              mov ax,ds
00000116  8EC0              mov es,ax
00000118  BF0002            mov di,0x200
0000011B  33C0              xor ax,ax
0000011D  FC                cld
0000011E  F3AB              rep stosw
00000120  BAC803            mov dx,0x3c8
00000123  EE                out dx,al
00000124  42                inc dx
00000125  B90001            mov cx,0x100
00000128  B331              mov bl,0x31
0000012A  32FF              xor bh,bh
0000012C  8AC7              mov al,bh
0000012E  F6E3              mul bl
00000130  C1E808            shr ax,byte 0x8
00000133  8AE0              mov ah,al
00000135  EE                out dx,al
00000136  EE                out dx,al
00000137  B005              mov al,0x5
00000139  EE                out dx,al
0000013A  FEC7              inc bh
0000013C  E2EE              loop 0x12c
0000013E  BB0083            mov bx,0x8300
00000141  BA2593            mov dx,0x9325
00000144  53                push bx
00000145  52                push dx
00000146  B9E03D            mov cx,0x3de0
00000149  33FF              xor di,di
0000014B  32E4              xor ah,ah
0000014D  32FF              xor bh,bh
0000014F  8A850002          mov al,[di+0x200]
00000153  8A9DA002          mov bl,[di+0x2a0]
00000157  03C3              add ax,bx
00000159  8A9D9F02          mov bl,[di+0x29f]
0000015D  03C3              add ax,bx
0000015F  8A9DA102          mov bl,[di+0x2a1]
00000163  03C3              add ax,bx
00000165  C1E802            shr ax,byte 0x2
00000168  81FF401F          cmp di,0x1f40
0000016C  7707              ja 0x175
0000016E  90                nop
0000016F  90                nop
00000170  3403              xor al,0x3
00000172  EB03              jmp short 0x177
00000174  90                nop
00000175  3405              xor al,0x5
00000177  7404              jz 0x17d
00000179  90                nop
0000017A  90                nop
0000017B  FEC8              dec al
0000017D  88850002          mov [di+0x200],al
00000181  47                inc di
00000182  E2C7              loop 0x14b
00000184  5B                pop bx
00000185  5A                pop dx
00000186  BFE13D            mov di,0x3de1
00000189  B99C00            mov cx,0x9c
0000018C  03D3              add dx,bx
0000018E  80F393            xor bl,0x93
00000191  8AC2              mov al,dl
00000193  88850002          mov [di+0x200],al
00000197  47                inc di
00000198  E2F2              loop 0x18c
0000019A  53                push bx
0000019B  52                push dx
0000019C  B9A03C            mov cx,0x3ca0
0000019F  B800A0            mov ax,0xa000
000001A2  8EC0              mov es,ax
000001A4  33FF              xor di,di
000001A6  33F6              xor si,si
000001A8  BB007D            mov bx,0x7d00
000001AB  8A840002          mov al,[si+0x200]
000001AF  8AE0              mov ah,al
000001B1  268985007D        mov [es:di+0x7d00],ax
000001B6  268947FE          mov [es:bx-0x2],ax
000001BA  83C702            add di,byte +0x2
000001BD  83EB02            sub bx,byte +0x2
000001C0  46                inc si
000001C1  E2E8              loop 0x1ab
000001C3  BA6000            mov dx,0x60
000001C6  EC                in al,dx
000001C7  2480              and al,0x80
000001C9  0F8579FF          jnz word 0x146
000001CD  5B                pop bx
000001CE  5A                pop dx
000001CF  B80300            mov ax,0x3
000001D2  CD10              int 0x10
000001D4  B409              mov ah,0x9
000001D6  BADC01            mov dx,0x1dc
000001D9  CD21              int 0x21
000001DB  C3                ret
000001DC  46                inc si
000001DD  6C                insb
000001DE  6F                outsw
000001DF  6F                outsw
000001E0  642020            and [fs:bx+si],ah
000001E3  2020              and [bx+si],ah
000001E5  2020              and [bx+si],ah
000001E7  2020              and [bx+si],ah
000001E9  2020              and [bx+si],ah
000001EB  2020              and [bx+si],ah
000001ED  2020              and [bx+si],ah
000001EF  2020              and [bx+si],ah
000001F1  2020              and [bx+si],ah
000001F3  2020              and [bx+si],ah
000001F5  2020              and [bx+si],ah
000001F7  2020              and [bx+si],ah
000001F9  2020              and [bx+si],ah
000001FB  2020              and [bx+si],ah
000001FD  0D0A24            or ax,0x240a
