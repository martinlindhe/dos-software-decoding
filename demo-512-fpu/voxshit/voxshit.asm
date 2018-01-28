00000100  BBF405            mov bx,0x5f4
00000103  C1EB04            shr bx,byte 0x4
00000106  B44A              mov ah,0x4a
00000108  CD21              int 0x21
0000010A  B448              mov ah,0x48
0000010C  BB0030            mov bx,0x3000
0000010F  CD21              int 0x21
00000111  8EE8              mov gs,ax
00000113  050010            add ax,0x1000
00000116  8EE0              mov fs,ax
00000118  050010            add ax,0x1000
0000011B  8EC0              mov es,ax
0000011D  B81300            mov ax,0x13
00000120  CD10              int 0x10
00000122  DBE3              fninit
00000124  33FF              xor di,di
00000126  B900FF            mov cx,0xff00
00000129  F6D9              neg cl
0000012B  880ED702          mov [0x2d7],cl
0000012F  F6D9              neg cl
00000131  DF06D702          fild word [0x2d7]
00000135  8AC5              mov al,ch
00000137  34FF              xor al,0xff
00000139  A2D702            mov [0x2d7],al
0000013C  DF06D702          fild word [0x2d7]
00000140  D80ED302          fmul dword [0x2d3]
00000144  D9FE              fsin
00000146  DEC9              fmulp st1
00000148  64DF1D            fistp word [fs:di]
0000014B  47                inc di
0000014C  E2DB              loop 0x129
0000014E  BF0003            mov di,0x300
00000151  B1FF              mov cl,0xff
00000153  6A4B              push byte +0x4b
00000155  67DF0424          fild word [dword esp]
00000159  51                push cx
0000015A  67DF0424          fild word [dword esp]
0000015E  6658              pop eax
00000160  D80ED302          fmul dword [0x2d3]
00000164  D9FE              fsin
00000166  D8C8              fmul st0
00000168  DEC9              fmulp st1
0000016A  DF1D              fistp word [di]
0000016C  47                inc di
0000016D  E2E4              loop 0x153
0000016F  BE0003            mov si,0x300
00000172  33DB              xor bx,bx
00000174  33FF              xor di,di
00000176  B5C8              mov ch,0xc8
00000178  8ADA              mov bl,dl
0000017A  8A00              mov al,[bx+si]
0000017C  8ADE              mov bl,dh
0000017E  8A20              mov ah,[bx+si]
00000180  51                push cx
00000181  8AD8              mov bl,al
00000183  8A08              mov cl,[bx+si]
00000185  8ADC              mov bl,ah
00000187  0208              add cl,[bx+si]
00000189  2AC8              sub cl,al
0000018B  02CC              add cl,ah
0000018D  8AD9              mov bl,cl
0000018F  8A18              mov bl,[bx+si]
00000191  65881D            mov [gs:di],bl
00000194  47                inc di
00000195  59                pop cx
00000196  2C02              sub al,0x2
00000198  FECC              dec ah
0000019A  FEC9              dec cl
0000019C  75E2              jnz 0x180
0000019E  80C602            add dh,0x2
000001A1  FECA              dec dl
000001A3  FECD              dec ch
000001A5  75D1              jnz 0x178
000001A7  BF2C05            mov di,0x52c
000001AA  B9C800            mov cx,0xc8
000001AD  E440              in al,0x40
000001AF  243F              and al,0x3f
000001B1  8805              mov [di],al
000001B3  E2F8              loop 0x1ad
000001B5  6A00              push byte +0x0
000001B7  BADA03            mov dx,0x3da
000001BA  EC                in al,dx
000001BB  2408              and al,0x8
000001BD  74FB              jz 0x1ba
000001BF  1E                push ds
000001C0  6800A0            push word 0xa000
000001C3  1F                pop ds
000001C4  B9803E            mov cx,0x3e80
000001C7  33F6              xor si,si
000001C9  8BFE              mov di,si
000001CB  66268B04          mov eax,[es:si]
000001CF  668905            mov [di],eax
000001D2  83C604            add si,byte +0x4
000001D5  E2F2              loop 0x1c9
000001D7  1F                pop ds
000001D8  5B                pop bx
000001D9  83C302            add bx,byte +0x2
000001DC  53                push bx
000001DD  BF2C04            mov di,0x42c
000001E0  B9FF00            mov cx,0xff
000001E3  68AF00            push word 0xaf
000001E6  67DF0424          fild word [dword esp]
000001EA  8BC3              mov ax,bx
000001EC  03C1              add ax,cx
000001EE  50                push ax
000001EF  67DF0424          fild word [dword esp]
000001F3  6658              pop eax
000001F5  D80ED302          fmul dword [0x2d3]
000001F9  D9FE              fsin
000001FB  DEC9              fmulp st1
000001FD  2EDF1D            fistp word [cs:di]
00000200  47                inc di
00000201  E2E0              loop 0x1e3
00000203  33FF              xor di,di
00000205  B9803E            mov cx,0x3e80
00000208  6633C0            xor eax,eax
0000020B  F366AB            rep stosd
0000020E  8B1ED902          mov bx,[0x2d9]
00000212  FEC3              inc bl
00000214  891ED902          mov [0x2d9],bx
00000218  BE2C05            mov si,0x52c
0000021B  B9C800            mov cx,0xc8
0000021E  53                push bx
0000021F  32F6              xor dh,dh
00000221  658A17            mov dl,[gs:bx]
00000224  D0E2              shl dl,1
00000226  8BC2              mov ax,dx
00000228  86E0              xchg ah,al
0000022A  C1E206            shl dx,byte 0x6
0000022D  03D0              add dx,ax
0000022F  8A04              mov al,[si]
00000231  02F8              add bh,al
00000233  46                inc si
00000234  32E4              xor ah,ah
00000236  658A07            mov al,[gs:bx]
00000239  C0E002            shl al,byte 0x2
0000023C  03D0              add dx,ax
0000023E  8BFA              mov di,dx
00000240  E87500            call 0x2b8
00000243  5B                pop bx
00000244  43                inc bx
00000245  E2D7              loop 0x21e
00000247  B102              mov cl,0x2
00000249  51                push cx
0000024A  2E8036920208      xor byte [cs:0x292],0x8
00000250  2E8036800208      xor byte [cs:0x280],0x8
00000256  2E8036600201      xor byte [cs:0x260],0x1
0000025C  682C04            push word 0x42c
0000025F  BFA000            mov di,0xa0
00000262  33DB              xor bx,bx
00000264  32D2              xor dl,dl
00000266  33C9              xor cx,cx
00000268  5E                pop si
00000269  2E8A1C            mov bl,[cs:si]
0000026C  46                inc si
0000026D  56                push si
0000026E  33F6              xor si,si
00000270  57                push di
00000271  B564              mov ch,0x64
00000273  6633C0            xor eax,eax
00000276  65678A23          mov ah,[gs:ebx]
0000027A  64678A3430        mov dh,[dword fs:eax+esi]
0000027F  FECB              dec bl
00000281  46                inc si
00000282  2AF1              sub dh,cl
00000284  7611              jna 0x297
00000286  02CE              add cl,dh
00000288  658A07            mov al,[gs:bx]
0000028B  241F              and al,0x1f
0000028D  0420              add al,0x20
0000028F  268805            mov [es:di],al
00000292  4F                dec di
00000293  FECE              dec dh
00000295  75F1              jnz 0x288
00000297  FECD              dec ch
00000299  75D8              jnz 0x273
0000029B  FEC7              inc bh
0000029D  5F                pop di
0000029E  81C74001          add di,0x140
000002A2  77C2              ja 0x266
000002A4  5E                pop si
000002A5  59                pop cx
000002A6  E2A1              loop 0x249
000002A8  E460              in al,0x60
000002AA  FEC8              dec al
000002AC  0F8507FF          jnz near 0x1b7
000002B0  B003              mov al,0x3
000002B2  CD10              int 0x10
000002B4  B44C              mov ah,0x4c
000002B6  CD21              int 0x21
000002B8  60                pusha
000002B9  81C71419          add di,0x1914
000002BD  BEDA02            mov si,0x2da
000002C0  B106              mov cl,0x6
000002C2  B506              mov ch,0x6
000002C4  A4                movsb
000002C5  FECD              dec ch
000002C7  75FB              jnz 0x2c4
000002C9  81C73A01          add di,0x13a
000002CD  FEC9              dec cl
000002CF  75F1              jnz 0x2c2
000002D1  61                popa
000002D2  C3                ret
000002D3  DA0F              fimul dword [bx]
000002D5  49                dec cx
000002D6  3C00              cmp al,0x0
000002D8  0000              add [bx+si],al
000002DA  0001              add [bx+di],al
000002DC  0101              add [bx+di],ax
000002DE  0100              add [bx+si],ax
000002E0  0101              add [bx+di],ax
000002E2  0202              add al,[bp+si]
000002E4  0101              add [bx+di],ax
000002E6  0102              add [bp+si],ax
000002E8  0303              add ax,[bp+di]
000002EA  0201              add al,[bx+di]
000002EC  0102              add [bp+si],ax
000002EE  0303              add ax,[bp+di]
000002F0  0201              add al,[bx+di]
000002F2  0101              add [bx+di],ax
000002F4  0202              add al,[bp+si]
000002F6  0101              add [bx+di],ax
000002F8  0001              add [bx+di],al
000002FA  0101              add [bx+di],ax
000002FC  0100              add [bx+si],ax
000002FE  44                inc sp
000002FF  54                push sp
