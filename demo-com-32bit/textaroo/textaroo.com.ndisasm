00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  BEFC01            mov si,0x1fc
00000107  BFFD01            mov di,0x1fd
0000010A  B120              mov cl,0x20
0000010C  A4                movsb
0000010D  4E                dec si
0000010E  4E                dec si
0000010F  E2FB              loop 0x10c
00000111  46                inc si
00000112  B140              mov cl,0x40
00000114  AC                lodsb
00000115  F6D8              neg al
00000117  AA                stosb
00000118  E2FA              loop 0x114
0000011A  BEDD01            mov si,0x1dd
0000011D  B120              mov cl,0x20
0000011F  F3A4              rep movsb
00000121  BAD301            mov dx,0x1d3
00000124  B409              mov ah,0x9
00000126  CD21              int 0x21
00000128  6800A0            push word 0xa000
0000012B  1F                pop ds
0000012C  BF7D02            mov di,0x27d
0000012F  33F6              xor si,si
00000131  56                push si
00000132  B148              mov cl,0x48
00000134  56                push si
00000135  B508              mov ch,0x8
00000137  AC                lodsb
00000138  02C0              add al,al
0000013A  0410              add al,0x10
0000013C  AA                stosb
0000013D  81C63F01          add si,0x13f
00000141  FECD              dec ch
00000143  75F2              jnz 0x137
00000145  5E                pop si
00000146  46                inc si
00000147  E2EB              loop 0x134
00000149  1E                push ds
0000014A  07                pop es
0000014B  0E                push cs
0000014C  1F                pop ds
0000014D  49                dec cx
0000014E  B010              mov al,0x10
00000150  F3AA              rep stosb
00000152  6633DB            xor ebx,ebx
00000155  668BFB            mov edi,ebx
00000158  BF2800            mov di,0x28
0000015B  5D                pop bp
0000015C  55                push bp
0000015D  B148              mov cl,0x48
0000015F  BE7D02            mov si,0x27d
00000162  B508              mov ch,0x8
00000164  B320              mov bl,0x20
00000166  57                push di
00000167  660FBE86F101      movsx eax,byte [bp+0x1f1]
0000016D  66F7EB            imul ebx
00000170  66F7FF            idiv edi
00000173  056400            add ax,0x64
00000176  69C04001          imul ax,ax,word 0x140
0000017A  50                push ax
0000017B  83EF3C            sub di,byte +0x3c
0000017E  F7DF              neg di
00000180  83C72D            add di,byte +0x2d
00000183  660FBE86DD01      movsx eax,byte [bp+0x1dd]
00000189  66F7EB            imul ebx
0000018C  66F7FF            idiv edi
0000018F  05A000            add ax,0xa0
00000192  5F                pop di
00000193  03F8              add di,ax
00000195  A4                movsb
00000196  5F                pop di
00000197  80C302            add bl,0x2
0000019A  FECD              dec ch
0000019C  75C8              jnz 0x166
0000019E  45                inc bp
0000019F  83E57F            and bp,byte +0x7f
000001A2  E2BE              loop 0x162
000001A4  57                push di
000001A5  BF0023            mov di,0x2300
000001A8  B5B6              mov ch,0xb6
000001AA  268A05            mov al,[es:di]
000001AD  260245FF          add al,[es:di-0x1]
000001B1  D0E8              shr al,1
000001B3  AA                stosb
000001B4  E2F4              loop 0x1aa
000001B6  58                pop ax
000001B7  40                inc ax
000001B8  3C50              cmp al,0x50
000001BA  7704              ja 0x1c0
000001BC  3C28              cmp al,0x28
000001BE  7305              jnc 0x1c5
000001C0  8036B70108        xor byte [0x1b7],0x8
000001C5  50                push ax
000001C6  5F                pop di
000001C7  5D                pop bp
000001C8  4D                dec bp
000001C9  83E57F            and bp,byte +0x7f
000001CC  E460              in al,0x60
000001CE  FEC8              dec al
000001D0  758A              jnz 0x15c
000001D2  C3                ret
000001D3  666961736B6F2739  imul esp,[bx+di+0x73],dword 0x39276f6b
000001DB  3824              cmp [si],ah
000001DD  0003              add [bp+di],al
000001DF  06                push es
000001E0  090C              or [si],cx
000001E2  1013              adc [bp+di],dl
000001E4  16                push ss
000001E5  181B              sbb [bp+di],bl
000001E7  1E                push ds
000001E8  2124              and [si],sp
000001EA  26292B            sub [es:bp+di],bp
000001ED  2D2F31            sub ax,0x312f
000001F0  3335              xor si,[di]
000001F2  37                aaa
000001F3  383A              cmp [bp+si],bh
000001F5  3B3C              cmp di,[si]
000001F7  3D3E3F            cmp ax,0x3f3e
000001FA  3F                aas
000001FB  40                inc ax
000001FC  40                inc ax
