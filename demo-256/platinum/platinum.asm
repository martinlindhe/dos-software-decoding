00000100  B81300            mov ax,0x13
00000103  CD10              int 0x10
00000105  BAC803            mov dx,0x3c8
00000108  32C0              xor al,al
0000010A  EE                out dx,al
0000010B  42                inc dx
0000010C  BB04FF            mov bx,0xff04
0000010F  B94000            mov cx,0x40
00000112  8AC1              mov al,cl
00000114  48                dec ax
00000115  7502              jnz 0x119
00000117  FEC0              inc al
00000119  F6E7              mul bh
0000011B  EE                out dx,al
0000011C  EE                out dx,al
0000011D  33C0              xor ax,ax
0000011F  EE                out dx,al
00000120  E2F0              loop 0x112
00000122  F6DF              neg bh
00000124  FECB              dec bl
00000126  75E7              jnz 0x10f
00000128  B102              mov cl,0x2
0000012A  BF0002            mov di,0x200
0000012D  BB60FF            mov bx,0xff60
00000130  BEA000            mov si,0xa0
00000133  8BEB              mov bp,bx
00000135  8BC5              mov ax,bp
00000137  F7ED              imul bp
00000139  AB                stosw
0000013A  45                inc bp
0000013B  3BEE              cmp bp,si
0000013D  75F6              jnz 0x135
0000013F  B39C              mov bl,0x9c
00000141  BE6400            mov si,0x64
00000144  E2ED              loop 0x133
00000146  6800A0            push word 0xa000
00000149  07                pop es
0000014A  B601              mov dh,0x1
0000014C  B102              mov cl,0x2
0000014E  E89300            call word 0x1e4
00000151  E2FB              loop 0x14e
00000153  33FF              xor di,di
00000155  BD8004            mov bp,0x480
00000158  B2C8              mov dl,0xc8
0000015A  87EE              xchg bp,si
0000015C  AD                lodsw
0000015D  87EE              xchg bp,si
0000015F  8BD8              mov bx,ax
00000161  BE0002            mov si,0x200
00000164  B94001            mov cx,0x140
00000167  AD                lodsw
00000168  03C3              add ax,bx
0000016A  51                push cx
0000016B  8ACE              mov cl,dh
0000016D  D3E8              shr ax,cl
0000016F  AA                stosb
00000170  59                pop cx
00000171  E2F4              loop 0x167
00000173  FECA              dec dl
00000175  75E3              jnz 0x15a
00000177  80FE0C            cmp dh,0xc
0000017A  A0FF01            mov al,[0x1ff]
0000017D  7502              jnz 0x181
0000017F  F6D8              neg al
00000181  80FE00            cmp dh,0x0
00000184  7502              jnz 0x188
00000186  F6D8              neg al
00000188  02F0              add dh,al
0000018A  A2FF01            mov [0x1ff],al
0000018D  E460              in al,0x60
0000018F  FEC8              dec al
00000191  75B9              jnz 0x14c
00000193  B15F              mov cl,0x5f
00000195  E84C00            call word 0x1e4
00000198  33FF              xor di,di
0000019A  268A85C0FE        mov al,[es:di-0x140]
0000019F  268AA54001        mov ah,[es:di+0x140]
000001A4  02C4              add al,ah
000001A6  D0E8              shr al,1
000001A8  AA                stosb
000001A9  268A45FF          mov al,[es:di-0x1]
000001AD  268A6501          mov ah,[es:di+0x1]
000001B1  02C4              add al,ah
000001B3  D0E8              shr al,1
000001B5  AA                stosb
000001B6  81FF00FA          cmp di,0xfa00
000001BA  75DE              jnz 0x19a
000001BC  E2D7              loop 0x195
000001BE  8A0EF401          mov cl,[0x1f4]
000001C2  C606F40101        mov byte [0x1f4],0x1
000001C7  B413              mov ah,0x13
000001C9  BB4600            mov bx,0x46
000001CC  51                push cx
000001CD  B10A              mov cl,0xa
000001CF  BA0F0C            mov dx,0xc0f
000001D2  BDF501            mov bp,0x1f5
000001D5  06                push es
000001D6  0E                push cs
000001D7  07                pop es
000001D8  CD10              int 0x10
000001DA  07                pop es
000001DB  59                pop cx
000001DC  E2B7              loop 0x195
000001DE  B80300            mov ax,0x3
000001E1  CD10              int 0x10
000001E3  C3                ret
000001E4  52                push dx
000001E5  BADA03            mov dx,0x3da
000001E8  EC                in al,dx
000001E9  2408              and al,0x8
000001EB  75FB              jnz 0x1e8
000001ED  EC                in al,dx
000001EE  2408              and al,0x8
000001F0  74FB              jz 0x1ed
000001F2  5A                pop dx
000001F3  C3                ret
000001F4  2204              and al,[si]
000001F6  50                push ax
000001F7  6C                insb
000001F8  61                popaw
000001F9  7469              jz 0x264
000001FB  6E                outsb
000001FC  756D              jnz 0x26b
000001FE  0401              add al,0x1
