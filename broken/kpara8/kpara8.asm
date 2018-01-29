00000100  68D607            push word 0x7d6
00000103  17                pop ss
00000104  31E4              xor sp,sp
00000106  B8024F            mov ax,0x4f02
00000109  BB0001            mov bx,0x100
0000010C  CD10              int 0x10            ; set svga mode
0000010E  B8014F            mov ax,0x4f01
00000111  89D9              mov cx,bx
00000113  16                push ss
00000114  07                pop es
00000115  BF9400            mov di,0x94
00000118  CD10              int 0x10            ; check if mode has been set
0000011A  FA                cli
0000011B  FC                cld

; few-byte way of clearing registers:
0000011C  B90B00            mov cx,0xb
0000011F  6A00              push byte +0x0
00000121  E2FC              loop 0x11f
00000123  61                popa

00000124  B740              mov bh,0x40
00000126  8EC3              mov es,bx
00000128  B580              mov ch,0x80
0000012A  F3AB              rep stosw
0000012C  80C710            add bh,0x10
0000012F  79F5              jns 0x126
00000131  0FBC969800        bsf dx,[bp+0x98]
00000136  F7DA              neg dx
00000138  2E0197B6FC        add [cs:bx-0x34a],dx
0000013D  B0FF              mov al,0xff
0000013F  B504              mov ch,0x4
00000141  680020            push word 0x2000
00000144  07                pop es
00000145  F3AA              rep stosb
00000147  B504              mov ch,0x4
00000149  B03F              mov al,0x3f
0000014B  21F8              and ax,di
0000014D  0FA3465D          bt [bp+0x5d],ax
00000151  7305              jnc 0x158
00000153  0FA37608          bt [bp+0x8],si
00000157  46                inc si
00000158  D6                salc
00000159  AA                stosb
0000015A  E2ED              loop 0x149
0000015C  B518              mov ch,0x18
0000015E  68A0F7            push word 0xf7a0
00000161  1F                pop ds
00000162  89F8              mov ax,di
00000164  3407              xor al,0x7
00000166  0FA3476E          bt [bx+0x6e],ax
0000016A  D6                salc
0000016B  AA                stosb
0000016C  E2F4              loop 0x162
0000016E  BAC803            mov dx,0x3c8
00000171  58                pop ax
00000172  EE                out dx,al
00000173  42                inc dx
00000174  EE                out dx,al
00000175  91                xchg ax,cx
00000176  EE                out dx,al
00000177  91                xchg ax,cx
00000178  EE                out dx,al
00000179  EE                out dx,al
0000017A  91                xchg ax,cx
0000017B  EE                out dx,al
0000017C  91                xchg ax,cx
0000017D  EE                out dx,al
0000017E  41                inc cx
0000017F  80C302            add bl,0x2
00000182  740A              jz 0x18e
00000184  71EE              jno 0x174
00000186  2EFE8E7E7C        dec byte [cs:bp+0x7c7e]
0000018B  49                dec cx
0000018C  EBE6              jmp short 0x174
0000018E  8EE2              mov fs,dx
00000190  BB487D            mov bx,0x7d48
00000193  59                pop cx
00000194  BADA03            mov dx,0x3da
00000197  EC                in al,dx
00000198  A808              test al,0x8
0000019A  74FB              jz 0x197
0000019C  EC                in al,dx
0000019D  A808              test al,0x8
0000019F  75FB              jnz 0x19c
000001A1  B80040            mov ax,0x4000
000001A4  6800A0            push word 0xa000
000001A7  07                pop es
000001A8  31D2              xor dx,dx
000001AA  31F6              xor si,si
000001AC  31FF              xor di,di
000001AE  60                pusha
000001AF  B8054F            mov ax,0x4f05
000001B2  31DB              xor bx,bx
000001B4  C1E206            shl dx,byte 0x6
000001B7  CD10              int 0x10
000001B9  61                popa
000001BA  8ED8              mov ds,ax
000001BC  B580              mov ch,0x80
000001BE  F3A5              rep movsw
000001C0  42                inc dx
000001C1  80C410            add ah,0x10
000001C4  79E8              jns 0x1ae
000001C6  58                pop ax
000001C7  01C2              add dx,ax
000001C9  7409              jz 0x1d4
000001CB  52                push dx
000001CC  FFD3              call bx
000001CE  E464              in al,0x64
000001D0  D0E8              shr al,1
000001D2  73C0              jnc 0x194
000001D4  EA0000FFFF        jmp 0xffff:0x0
000001D9  E81000            call 0x1ec
000001DC  25FF3F            and ax,0x3fff
000001DF  8942FC            mov [bp+si-0x4],ax
000001E2  E80700            call 0x1ec
000001E5  250101            and ax,0x101
000001E8  8942FE            mov [bp+si-0x2],ax
000001EB  C3                ret
000001EC  8CE0              mov ax,fs
000001EE  6BC00D            imul ax,ax,byte +0xd
000001F1  86E0              xchg ah,al
000001F3  40                inc ax
000001F4  8EE0              mov fs,ax
000001F6  C3                ret
000001F7  BA0040            mov dx,0x4000
000001FA  8EC2              mov es,dx
000001FC  26AC              es lodsb
000001FE  2C04              sub al,0x4
00000200  18E4              sbb ah,ah
00000202  F6D4              not ah
00000204  20E0              and al,ah
00000206  AA                stosb
00000207  E2F3              loop 0x1fc
00000209  80C610            add dh,0x10
0000020C  79EC              jns 0x1fa
0000020E  B114              mov cl,0x14
00000210  36AD              ss lodsw
00000212  97                xchg ax,di
00000213  FE0A              dec byte [bp+si]
00000215  36AD              ss lodsw
00000217  7918              jns 0x231
00000219  8862FE            mov [bp+si-0x2],ah
0000021C  8042FD05          add byte [bp+si-0x3],0x5
00000220  7303              jnc 0x225
00000222  E8B4FF            call 0x1d9
00000225  E8C4FF            call 0x1ec
00000228  B403              mov ah,0x3
0000022A  240F              and al,0xf
0000022C  0C10              or al,0x10
0000022E  E89400            call 0x2c5
00000231  E2DD              loop 0x210
00000233  C3                ret
00000234  B114              mov cl,0x14
00000236  83C604            add si,byte +0x4
00000239  E89DFF            call 0x1d9
0000023C  E2F8              loop 0x236
0000023E  C78685000A05      mov word [bp+0x85],0x50a
00000244  BBF77C            mov bx,0x7cf7
00000247  C3                ret
00000248  C1E804            shr ax,byte 0x4
0000024B  3C0D              cmp al,0xd
0000024D  73E5              jnc 0x234
0000024F  3C0D              cmp al,0xd
00000251  7314              jnc 0x267
00000253  6BF802            imul di,ax,byte +0x2
00000256  83C743            add di,byte +0x43
00000259  96                xchg ax,si
0000025A  8A4250            mov al,[bp+si+0x50]
0000025D  E86500            call 0x2c5
00000260  83C702            add di,byte +0x2
00000263  D6                salc
00000264  E85E00            call 0x2c5
00000267  C3                ret
00000268  AA                stosb
00000269  0A82B037          or al,[bp+si+0x37b0]
0000026D  0CFF              or al,0xff
0000026F  3F                aas
00000270  0C10              or al,0x10
00000272  46                inc si
00000273  7990              jns 0x205
00000275  47                inc di
00000276  F8                clc
00000277  06                push es
00000278  C3                ret
00000279  68888F            push word 0x8f88
0000027C  7008              jo 0x286
0000027E  41                inc cx
0000027F  FD                std
00000280  92                xchg ax,dx
00000281  C0601C45          shl byte [bx+si+0x1c],byte 0x45
00000285  91                xchg ax,cx
00000286  22F0              and dh,al
00000288  E088              loopne 0x212
0000028A  87FC              xchg di,sp
0000028C  306232            xor [bp+si+0x32],ah
0000028F  30C0              xor al,al
00000291  21BE0873          and [bp+0x7308],di
00000295  06                push es
00000296  60                pusha
00000297  80A007FC80        and byte [bx+si-0x3f9],0x80
0000029C  07                pop es
0000029D  FC                cld
0000029E  3E0882A02F        or [ds:bp+si+0x2fa0],al
000002A3  FC                cld
000002A4  92                xchg ax,dx
000002A5  237C3E            and di,[si+0x3e]
000002A8  E291              loop 0x23b
000002AA  04E6              add al,0xe6
000002AC  011E0439          add [0x3904],bx
000002B0  57                push di
000002B1  686174            push word 0x7461
000002B4  206973            and [bx+di+0x73],ch
000002B7  2023              and [bp+di],ah
000002B9  61                popa
000002BA  736D              jnc 0x329
000002BC  3F                aas
000002BD  007E7E            add [bp+0x7e],bh
000002C0  7E7E              jng 0x340
000002C2  7E7E              jng 0x342
000002C4  006068            add [bx+si+0x68],ah
000002C7  0020              add [bx+si],ah
000002C9  1F                pop ds
000002CA  98                cbw
000002CB  6BF040            imul si,ax,byte +0x40
000002CE  57                push di
000002CF  C1EF02            shr di,byte 0x2
000002D2  81C70040          add di,0x4000
000002D6  8EC7              mov es,di
000002D8  5F                pop di
000002D9  83E703            and di,byte +0x3
000002DC  C1E702            shl di,byte 0x2
000002DF  B108              mov cl,0x8
000002E1  B508              mov ch,0x8
000002E3  AC                lodsb
000002E4  2690              es nop
000002E6  90                nop
000002E7  AA                stosb
000002E8  FECD              dec ch
000002EA  75F7              jnz 0x2e3
000002EC  81C77802          add di,0x278
000002F0  E2EF              loop 0x2e1
000002F2  61                popa
000002F3  C3                ret
000002F4  0000              add [bx+si],al
000002F6  0000              add [bx+si],al
000002F8  0000              add [bx+si],al
000002FA  0000              add [bx+si],al
000002FC  0000              add [bx+si],al
000002FE  55                push bp
000002FF  AA                stosb
