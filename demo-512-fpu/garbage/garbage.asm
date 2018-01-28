00000100  33F6              xor si,si
00000102  89363A09          mov [0x93a],si
00000106  DF063A09          fild word [0x93a]
0000010A  DE36EC01          fidiv word [0x1ec]
0000010E  D9FE              fsin
00000110  DE0EEE01          fimul word [0x1ee]
00000114  DF1E3A09          fistp word [0x93a]
00000118  A13A09            mov ax,[0x93a]
0000011B  88842F05          mov [si+0x52f],al
0000011F  32E4              xor ah,ah
00000121  F7E8              imul ax
00000123  88A42F07          mov [si+0x72f],ah
00000127  46                inc si
00000128  81FE0002          cmp si,0x200
0000012C  76D4              jna 0x102
0000012E  B81300            mov ax,0x13
00000131  CD10              int 0x10
00000133  BAC803            mov dx,0x3c8
00000136  B080              mov al,0x80
00000138  EE                out dx,al
00000139  42                inc dx
0000013A  B140              mov cl,0x40
0000013C  B440              mov ah,0x40
0000013E  2AE1              sub ah,cl
00000140  E8C000            call 0x203
00000143  E2F7              loop 0x13c
00000145  B140              mov cl,0x40
00000147  8AE1              mov ah,cl
00000149  E8B700            call 0x203
0000014C  E2F9              loop 0x147
0000014E  B103              mov cl,0x3
00000150  BE2F09            mov si,0x92f
00000153  B84001            mov ax,0x140
00000156  E8C100            call 0x21a
00000159  C1E806            shr ax,byte 0x6
0000015C  2C02              sub al,0x2
0000015E  0004              add [si],al
00000160  803C28            cmp byte [si],0x28
00000163  7E03              jng 0x168
00000165  C60428            mov byte [si],0x28
00000168  803C14            cmp byte [si],0x14
0000016B  7F03              jg 0x170
0000016D  C60414            mov byte [si],0x14
00000170  46                inc si
00000171  E2E0              loop 0x153
00000173  680060            push word 0x6000
00000176  07                pop es
00000177  B94001            mov cx,0x140
0000017A  BDC800            mov bp,0xc8
0000017D  8BC1              mov ax,cx
0000017F  03063209          add ax,[0x932]
00000183  E86A00            call 0x1f0
00000186  8BD8              mov bx,ax
00000188  8BC5              mov ax,bp
0000018A  03063609          add ax,[0x936]
0000018E  E85F00            call 0x1f0
00000191  03C3              add ax,bx
00000193  97                xchg ax,di
00000194  B84001            mov ax,0x140
00000197  F7E5              mul bp
00000199  03C1              add ax,cx
0000019B  97                xchg ax,di
0000019C  D0E8              shr al,1
0000019E  50                push ax
0000019F  B80A00            mov ax,0xa
000001A2  E87500            call 0x21a
000001A5  5B                pop bx
000001A6  03C3              add ax,bx
000001A8  0C80              or al,0x80
000001AA  AA                stosb
000001AB  4D                dec bp
000001AC  79CF              jns 0x17d
000001AE  49                dec cx
000001AF  79C9              jns 0x17a
000001B1  FF063209          inc word [0x932]
000001B5  832E340903        sub word [0x934],byte +0x3
000001BA  8306360903        add word [0x936],byte +0x3
000001BF  BADA03            mov dx,0x3da
000001C2  EC                in al,dx
000001C3  A808              test al,0x8
000001C5  74FB              jz 0x1c2
000001C7  EC                in al,dx
000001C8  A808              test al,0x8
000001CA  75FB              jnz 0x1c7
000001CC  680060            push word 0x6000
000001CF  1F                pop ds
000001D0  6800A0            push word 0xa000
000001D3  07                pop es
000001D4  BF4029            mov di,0x2940
000001D7  8BF7              mov si,di
000001D9  B9E056            mov cx,0x56e0
000001DC  F3A5              rep movsw
000001DE  E460              in al,0x60
000001E0  3C01              cmp al,0x1
000001E2  0F854DFF          jnz near 0x133
000001E6  B80300            mov ax,0x3
000001E9  CD10              int 0x10
000001EB  C3                ret
000001EC  2800              sub [bx+si],al
000001EE  800098            add byte [bx+si],0x98
000001F1  8BF0              mov si,ax
000001F3  8A84EF05          mov al,[si+0x5ef]
000001F7  2B063409          sub ax,[0x934]
000001FB  98                cbw
000001FC  8BF0              mov si,ax
000001FE  8A84EF07          mov al,[si+0x7ef]
00000202  C3                ret
00000203  BE2F09            mov si,0x92f
00000206  BB0300            mov bx,0x3
00000209  8AC4              mov al,ah
0000020B  2A04              sub al,[si]
0000020D  7902              jns 0x211
0000020F  32C0              xor al,al
00000211  EE                out dx,al
00000212  46                inc si
00000213  4B                dec bx
00000214  75F3              jnz 0x209
00000216  C3                ret
00000217  B80A00            mov ax,0xa
0000021A  50                push ax
0000021B  B823A1            mov ax,0xa123
0000021E  BA5D26            mov dx,0x265d
00000221  F7EA              imul dx
00000223  A31C02            mov [0x21c],ax
00000226  5A                pop dx
00000227  F7E2              mul dx
00000229  92                xchg ax,dx
0000022A  C3                ret
