00000100  B81300            mov ax,0x13
00000103  CD10              int 0x10
00000105  BDEF01            mov bp,0x1ef
00000108  BA2018            mov dx,0x1820
0000010B  BB4600            mov bx,0x46
0000010E  B90600            mov cx,0x6
00000111  B80013            mov ax,0x1300
00000114  CD10              int 0x10
00000116  680080            push word 0x8000
00000119  07                pop es
0000011A  33C9              xor cx,cx
0000011C  49                dec cx
0000011D  33FF              xor di,di
0000011F  32C0              xor al,al
00000121  F3AA              rep stosb
00000123  BAC803            mov dx,0x3c8
00000126  32C0              xor al,al
00000128  EE                out dx,al
00000129  42                inc dx
0000012A  EE                out dx,al
0000012B  50                push ax
0000012C  2C14              sub al,0x14
0000012E  7902              jns 0x132
00000130  32C0              xor al,al
00000132  EE                out dx,al
00000133  266E              es outsb
00000135  58                pop ax
00000136  FEC0              inc al
00000138  75F0              jnz 0x12a
0000013A  BF2000            mov di,0x20
0000013D  B180              mov cl,0x80
0000013F  B380              mov bl,0x80
00000141  2AD9              sub bl,cl
00000143  8BC1              mov ax,cx
00000145  F7E1              mul cx
00000147  F7E1              mul cx
00000149  E89E00            call word 0x1ea
0000014C  50                push ax
0000014D  8BC3              mov ax,bx
0000014F  E89400            call word 0x1e6
00000152  5D                pop bp
00000153  03C5              add ax,bp
00000155  F726F501          mul word [0x1f5]
00000159  0FACD00E          shrd ax,dx,0xe
0000015D  95                xchg ax,bp
0000015E  8BC1              mov ax,cx
00000160  F7E1              mul cx
00000162  E88300            call word 0x1e8
00000165  F726F701          mul word [0x1f7]
00000169  0FACD00C          shrd ax,dx,0xc
0000016D  03E8              add bp,ax
0000016F  8BC1              mov ax,cx
00000171  E87200            call word 0x1e6
00000174  F726F901          mul word [0x1f9]
00000178  0FACD00C          shrd ax,dx,0xc
0000017C  03C5              add ax,bp
0000017E  86E0              xchg ah,al
00000180  8BE8              mov bp,ax
00000182  C1E802            shr ax,byte 0x2
00000185  03E8              add bp,ax
00000187  26C7033F3F        mov word [es:bp+di],0x3f3f
0000018C  47                inc di
0000018D  47                inc di
0000018E  E2AF              loop 0x13f
00000190  BEF701            mov si,0x1f7
00000193  AD                lodsw
00000194  034402            add ax,[si+0x2]
00000197  8944FE            mov [si-0x2],ax
0000019A  3C92              cmp al,0x92
0000019C  7704              ja 0x1a2
0000019E  3C03              cmp al,0x3
000001A0  7303              jnc 0x1a5
000001A2  F75C02            neg word [si+0x2]
000001A5  80F101            xor cl,0x1
000001A8  75E9              jnz 0x193
000001AA  B980ED            mov cx,0xed80
000001AD  33FF              xor di,di
000001AF  268A05            mov al,[es:di]
000001B2  2602858002        add al,[es:di+0x280]
000001B7  2602854301        add al,[es:di+0x143]
000001BC  2602853D01        add al,[es:di+0x13d]
000001C1  C0E802            shr al,byte 0x2
000001C4  AA                stosb
000001C5  E2E8              loop 0x1af
000001C7  1E                push ds
000001C8  06                push es
000001C9  6800A0            push word 0xa000
000001CC  06                push es
000001CD  1F                pop ds
000001CE  07                pop es
000001CF  33F6              xor si,si
000001D1  8BFE              mov di,si
000001D3  B577              mov ch,0x77
000001D5  F3A5              rep movsw
000001D7  07                pop es
000001D8  1F                pop ds
000001D9  E460              in al,0x60
000001DB  3C01              cmp al,0x1
000001DD  0F8559FF          jnz word 0x13a
000001E1  B80300            mov ax,0x3
000001E4  CD10              int 0x10
000001E6  F7E3              mul bx
000001E8  F7E3              mul bx
000001EA  0FACD007          shrd ax,dx,0x7
000001EE  C3                ret
000001EF  62987465          bound bx,[bx+si+0x6574]
000001F3  61                popaw
000001F4  6D                insw
000001F5  6E                outsb
000001F6  0001              add [bx+di],al
000001F8  0001              add [bx+di],al
000001FA  0012              add [bp+si],dl
000001FC  0013              add [bp+di],dl
000001FE  00                db 0x00
