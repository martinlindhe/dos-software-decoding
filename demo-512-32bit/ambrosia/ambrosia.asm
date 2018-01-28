00000100  B310              mov bl,0x10
00000102  0E                push cs
00000103  58                pop ax
00000104  02E3              add ah,bl
00000106  8EE8              mov gs,ax
00000108  02E3              add ah,bl
0000010A  8EE0              mov fs,ax
0000010C  8EC0              mov es,ax
0000010E  02E3              add ah,bl
00000110  A3F002            mov [0x2f0],ax
00000113  02E3              add ah,bl
00000115  6633C0            xor eax,eax
00000118  33FF              xor di,di
0000011A  BBC800            mov bx,0xc8
0000011D  B94001            mov cx,0x140
00000120  8BC3              mov ax,bx
00000122  2D6400            sub ax,0x64
00000125  A3E702            mov [0x2e7],ax
00000128  F7E0              mul ax
0000012A  66268905          mov [es:di],eax
0000012E  8BC1              mov ax,cx
00000130  2DA000            sub ax,0xa0
00000133  A3E502            mov [0x2e5],ax
00000136  F7E0              mul ax
00000138  66260105          add [es:di],eax
0000013C  26DB05            fild dword [es:di]
0000013F  D9FA              fsqrt
00000141  65DF15            fist word [gs:di]
00000144  D80EBC02          fmul dword [0x2bc]
00000148  D91EE902          fstp dword [0x2e9]
0000014C  DF06E502          fild word [0x2e5]
00000150  DF06E702          fild word [0x2e7]
00000154  D9F3              fpatan
00000156  D80EB802          fmul dword [0x2b8]
0000015A  26DF15            fist word [es:di]
0000015D  D80EBC02          fmul dword [0x2bc]
00000161  D9FE              fsin
00000163  DE0EC802          fimul word [0x2c8]
00000167  65DE05            fiadd word [gs:di]
0000016A  65DF1D            fistp word [gs:di]
0000016D  D906E902          fld dword [0x2e9]
00000171  D9FE              fsin
00000173  DE0EC802          fimul word [0x2c8]
00000177  26DE05            fiadd word [es:di]
0000017A  26DF1D            fistp word [es:di]
0000017D  47                inc di
0000017E  E2A0              loop 0x120
00000180  4B                dec bx
00000181  759A              jnz 0x11d
00000183  B81300            mov ax,0x13
00000186  CD10              int 0x10
00000188  32C0              xor al,al
0000018A  BAC803            mov dx,0x3c8
0000018D  EE                out dx,al
0000018E  42                inc dx
0000018F  B90001            mov cx,0x100
00000192  890EED02          mov [0x2ed],cx
00000196  E80801            call 0x2a1
00000199  A1ED02            mov ax,[0x2ed]
0000019C  EE                out dx,al
0000019D  8BC1              mov ax,cx
0000019F  D1E8              shr ax,1
000001A1  F6D0              not al
000001A3  A3ED02            mov [0x2ed],ax
000001A6  E8F800            call 0x2a1
000001A9  A1ED02            mov ax,[0x2ed]
000001AC  EE                out dx,al
000001AD  A3ED02            mov [0x2ed],ax
000001B0  E8EE00            call 0x2a1
000001B3  A1ED02            mov ax,[0x2ed]
000001B6  EE                out dx,al
000001B7  E2D9              loop 0x192
000001B9  D906CC02          fld dword [0x2cc]
000001BD  D806C002          fadd dword [0x2c0]
000001C1  D916CC02          fst dword [0x2cc]
000001C5  D9FB              fsincos
000001C7  DE0EC802          fimul word [0x2c8]
000001CB  DE06C602          fiadd word [0x2c6]
000001CF  DF1EE502          fistp word [0x2e5]
000001D3  DE0EC402          fimul word [0x2c4]
000001D7  DE06C802          fiadd word [0x2c8]
000001DB  DF1EE702          fistp word [0x2e7]
000001DF  8B36E702          mov si,[0x2e7]
000001E3  69F64001          imul si,si,word 0x140
000001E7  0336E502          add si,[0x2e5]
000001EB  56                push si
000001EC  BDA07D            mov bp,0x7da0
000001EF  2BEE              sub bp,si
000001F1  2BEE              sub bp,si
000001F3  55                push bp
000001F4  33FF              xor di,di
000001F6  A1F002            mov ax,[0x2f0]
000001F9  8EC0              mov es,ax
000001FB  B164              mov cl,0x64
000001FD  B3A0              mov bl,0xa0
000001FF  648A04            mov al,[fs:si]
00000202  650202            add al,[gs:bp+si]
00000205  8AE0              mov ah,al
00000207  2689854001        mov [es:di+0x140],ax
0000020C  AB                stosw
0000020D  46                inc si
0000020E  FECB              dec bl
00000210  75ED              jnz 0x1ff
00000212  81C6A000          add si,0xa0
00000216  81C74001          add di,0x140
0000021A  E2E1              loop 0x1fd
0000021C  BFC9AD            mov di,0xadc9
0000021F  B032              mov al,0x32
00000221  B334              mov bl,0x34
00000223  B152              mov cl,0x52
00000225  2688455A          mov [es:di+0x5a],al
00000229  AA                stosb
0000022A  E2F9              loop 0x225
0000022C  81C7EE00          add di,0xee
00000230  FECB              dec bl
00000232  75EF              jnz 0x223
00000234  5D                pop bp
00000235  5E                pop si
00000236  BF0AAF            mov di,0xaf0a
00000239  B132              mov cl,0x32
0000023B  B250              mov dl,0x50
0000023D  648A04            mov al,[fs:si]
00000240  650204            add al,[gs:si]
00000243  0206EF02          add al,[0x2ef]
00000247  2688455A          mov [es:di+0x5a],al
0000024B  648A04            mov al,[fs:si]
0000024E  650202            add al,[gs:bp+si]
00000251  C0E802            shr al,byte 0x2
00000254  F6D8              neg al
00000256  AA                stosb
00000257  83C602            add si,byte +0x2
0000025A  FECA              dec dl
0000025C  75DF              jnz 0x23d
0000025E  81C6E001          add si,0x1e0
00000262  81C7F000          add di,0xf0
00000266  E2D3              loop 0x23b
00000268  FE06EF02          inc byte [0x2ef]
0000026C  BADA03            mov dx,0x3da
0000026F  EC                in al,dx
00000270  A808              test al,0x8
00000272  74FB              jz 0x26f
00000274  6800A0            push word 0xa000
00000277  07                pop es
00000278  1E                push ds
00000279  A1F002            mov ax,[0x2f0]
0000027C  8ED8              mov ds,ax
0000027E  33FF              xor di,di
00000280  33F6              xor si,si
00000282  B9803E            mov cx,0x3e80
00000285  F366A5            rep movsd
00000288  1F                pop ds
00000289  E460              in al,0x60
0000028B  FEC8              dec al
0000028D  0F8528FF          jnz near 0x1b9
00000291  B80300            mov ax,0x3
00000294  CD10              int 0x10
00000296  BAD002            mov dx,0x2d0
00000299  B409              mov ah,0x9
0000029B  CD21              int 0x21
0000029D  B44C              mov ah,0x4c
0000029F  CD21              int 0x21
000002A1  DF06ED02          fild word [0x2ed]
000002A5  D80EBC02          fmul dword [0x2bc]
000002A9  D9FE              fsin
000002AB  DE0EC402          fimul word [0x2c4]
000002AF  DE06C402          fiadd word [0x2c4]
000002B3  DF1EED02          fistp word [0x2ed]
000002B7  C3                ret
000002B8  0000              add [bx+si],al
000002BA  234239            and ax,[bp+si+0x39]
000002BD  B4C8              mov ah,0xc8
000002BF  3D0AD7            cmp ax,0xd70a
000002C2  A33C1F            mov [0x1f3c],ax
000002C5  005000            add [bx+si+0x0],dl
000002C8  3200              xor al,[bx+si]
000002CA  40                inc ax
000002CB  0100              add [bx+si],ax
000002CD  0000              add [bx+si],al
000002CF  0028              add [bx+si],ch
000002D1  6329              arpl [bx+di],bp
000002D3  3230              xor dh,[bx+si]
000002D5  3032              xor [bp+si],dh
000002D7  204761            and [bx+0x61],al
000002DA  6C                insb
000002DB  656E              gs outsb
000002DD  2F                das
000002DE  4D                dec bp
000002DF  41                inc cx
000002E0  58                pop ax
000002E1  54                push sp
000002E2  45                inc bp
000002E3  52                push dx
000002E4  24                db 0x24
