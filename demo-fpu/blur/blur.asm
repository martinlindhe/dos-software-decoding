00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  BAC803            mov dx,0x3c8
00000107  B001              mov al,0x1
00000109  EE                out dx,al
0000010A  42                inc dx
0000010B  8ADC              mov bl,ah
0000010D  B90200            mov cx,0x2
00000110  32C0              xor al,al
00000112  80FB3F            cmp bl,0x3f
00000115  7E02              jng 0x119
00000117  02C3              add al,bl
00000119  EE                out dx,al
0000011A  E2F4              loop 0x110
0000011C  32C0              xor al,al
0000011E  80FB3F            cmp bl,0x3f
00000121  7D02              jnl 0x125
00000123  02C3              add al,bl
00000125  EE                out dx,al
00000126  FECB              dec bl
00000128  75E3              jnz 0x10d
0000012A  8CC8              mov ax,cs
0000012C  80C410            add ah,0x10
0000012F  8EC0              mov es,ax
00000131  80C410            add ah,0x10
00000134  8EE8              mov gs,ax
00000136  80C410            add ah,0x10
00000139  8EE0              mov fs,ax
0000013B  33F6              xor si,si
0000013D  83FB7D            cmp bx,byte +0x7d
00000140  7F09              jg 0x14b
00000142  33C0              xor ax,ax
00000144  33FF              xor di,di
00000146  49                dec cx
00000147  F3AA              rep stosb
00000149  EB38              jmp short 0x183
0000014B  1E                push ds
0000014C  06                push es
0000014D  1F                pop ds
0000014E  0FBE54FF          movsx dx,[si-0x1]
00000152  0FBE4401          movsx ax,[si+0x1]
00000156  03D0              add dx,ax
00000158  0FBE84C0FE        movsx ax,[si-0x140]
0000015D  03D0              add dx,ax
0000015F  0FBE844001        movsx ax,[si+0x140]
00000164  03D0              add dx,ax
00000166  D1EA              shr dx,1
00000168  650FB604          movzx ax,[gs:si]
0000016C  2BD0              sub dx,ax
0000016E  7F02              jg 0x172
00000170  32D2              xor dl,dl
00000172  648814            mov [fs:si],dl
00000175  46                inc si
00000176  75D6              jnz 0x14e
00000178  1F                pop ds
00000179  06                push es
0000017A  0FA8              push gs
0000017C  0FA0              push fs
0000017E  07                pop es
0000017F  0FA1              pop fs
00000181  0FA9              pop gs
00000183  60                pusha
00000184  BE2600            mov si,0x26
00000187  8D2EB302          lea bp,[0x2b3]
0000018B  0FB63A            movzx di,[bp+si]
0000018E  0FB64328          movzx ax,[bp+di+0x28]
00000192  A3FF02            mov [0x2ff],ax
00000195  0FBE4332          movsx ax,[bp+di+0x32]
00000199  A30303            mov [0x303],ax
0000019C  0FBE433C          movsx ax,[bp+di+0x3c]
000001A0  03C3              add ax,bx
000001A2  A30103            mov [0x301],ax
000001A5  E8CC00            call 0x274
000001A8  A3FB02            mov [0x2fb],ax
000001AB  8916FD02          mov [0x2fd],dx
000001AF  0FB67A01          movzx di,[bp+si+0x1]
000001B3  0FB64328          movzx ax,[bp+di+0x28]
000001B7  A3FF02            mov [0x2ff],ax
000001BA  0FBE4332          movsx ax,[bp+di+0x32]
000001BE  A30303            mov [0x303],ax
000001C1  0FBE433C          movsx ax,[bp+di+0x3c]
000001C5  03C3              add ax,bx
000001C7  A30103            mov [0x301],ax
000001CA  E8A700            call 0x274
000001CD  60                pusha
000001CE  8BC8              mov cx,ax
000001D0  2B06FB02          sub ax,[0x2fb]
000001D4  BD0100            mov bp,0x1
000001D7  7904              jns 0x1dd
000001D9  F7D8              neg ax
000001DB  EB02              jmp short 0x1df
000001DD  F7DD              neg bp
000001DF  8BDA              mov bx,dx
000001E1  2B1EFD02          sub bx,[0x2fd]
000001E5  BE0100            mov si,0x1
000001E8  7904              jns 0x1ee
000001EA  F7DB              neg bx
000001EC  EB02              jmp short 0x1f0
000001EE  F7DE              neg si
000001F0  D1E0              shl ax,1
000001F2  D1E3              shl bx,1
000001F4  E87000            call 0x267
000001F7  3BC3              cmp ax,bx
000001F9  7620              jna 0x21b
000001FB  8BF8              mov di,ax
000001FD  D1EF              shr di,1
000001FF  F7DF              neg di
00000201  03FB              add di,bx
00000203  3B0EFB02          cmp cx,[0x2fb]
00000207  7432              jz 0x23b
00000209  83FF00            cmp di,byte +0x0
0000020C  7C04              jl 0x212
0000020E  03D6              add dx,si
00000210  2BF8              sub di,ax
00000212  03CD              add cx,bp
00000214  03FB              add di,bx
00000216  E84E00            call 0x267
00000219  EBE8              jmp short 0x203
0000021B  8BFB              mov di,bx
0000021D  D1EF              shr di,1
0000021F  F7DF              neg di
00000221  03F8              add di,ax
00000223  3B16FD02          cmp dx,[0x2fd]
00000227  7412              jz 0x23b
00000229  83FF00            cmp di,byte +0x0
0000022C  7C04              jl 0x232
0000022E  03CD              add cx,bp
00000230  2BFB              sub di,bx
00000232  03D6              add dx,si
00000234  03F8              add di,ax
00000236  E82E00            call 0x267
00000239  EBE8              jmp short 0x223
0000023B  61                popa
0000023C  4E                dec si
0000023D  4E                dec si
0000023E  0F8949FF          jns near 0x18b
00000242  61                popa
00000243  1E                push ds
00000244  06                push es
00000245  06                push es
00000246  6800A0            push word 0xa000
00000249  07                pop es
0000024A  1F                pop ds
0000024B  49                dec cx
0000024C  33FF              xor di,di
0000024E  F3A4              rep movsb
00000250  07                pop es
00000251  1F                pop ds
00000252  43                inc bx
00000253  891EF902          mov [0x2f9],bx
00000257  E460              in al,0x60
00000259  FEC8              dec al
0000025B  0F85DCFE          jnz near 0x13b
0000025F  CD16              int 0x16
00000261  B80300            mov ax,0x3
00000264  CD10              int 0x10
00000266  C3                ret
00000267  60                pusha
00000268  69F94001          imul di,cx,word 0x140
0000026C  03FA              add di,dx
0000026E  A1F902            mov ax,[0x2f9]
00000271  AA                stosb
00000272  61                popa
00000273  C3                ret
00000274  DF060103          fild word [0x301]
00000278  D9EB              fldpi
0000027A  DEC9              fmulp st1
0000027C  DF06B102          fild word [0x2b1]
00000280  DEF9              fdivp st1
00000282  D9FB              fsincos
00000284  DF06FF02          fild word [0x2ff]
00000288  DF06B302          fild word [0x2b3]
0000028C  DEF9              fdivp st1
0000028E  DEC9              fmulp st1
00000290  DF1E0703          fistp word [0x307]
00000294  DF06FF02          fild word [0x2ff]
00000298  DEC9              fmulp st1
0000029A  DF1E0503          fistp word [0x305]
0000029E  BAA000            mov dx,0xa0
000002A1  2B160503          sub dx,[0x305]
000002A5  B86400            mov ax,0x64
000002A8  2B060703          sub ax,[0x307]
000002AC  2B060303          sub ax,[0x303]
000002B0  C3                ret
000002B1  B400              mov ah,0x0
000002B3  0300              add ax,[bx+si]
000002B5  0102              add [bp+si],ax
000002B7  0203              add al,[bp+di]
000002B9  0001              add [bx+di],al
000002BB  0004              add [si],al
000002BD  0105              add [di],ax
000002BF  02060307          add al,[0x703]
000002C3  0405              add al,0x5
000002C5  050606            add ax,0x606
000002C8  07                pop es
000002C9  07                pop es
000002CA  0404              add al,0x4
000002CC  0805              or [di],al
000002CE  08060807          or [0x708],al
000002D2  0800              or [bx+si],al
000002D4  0901              or [bx+di],ax
000002D6  0902              or [bp+si],ax
000002D8  0903              or [bp+di],ax
000002DA  091E1E1E          or [0x1e1e],bx
000002DE  1E                push ds
000002DF  1E                push ds
000002E0  1E                push ds
000002E1  1E                push ds
000002E2  1E                push ds
000002E3  0000              add [bx+si],al
000002E5  0000              add [bx+si],al
000002E7  0000              add [bx+si],al
000002E9  1414              adc al,0x14
000002EB  1414              adc al,0x14
000002ED  28EC              sub ah,ch
000002EF  CB                retf
000002F0  257F81            and ax,0x817f
000002F3  CB                retf
000002F4  257F81            and ax,0x817f
000002F7  CB                retf
000002F8  CB                retf
