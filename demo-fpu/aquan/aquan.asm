00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  BAC803            mov dx,0x3c8
00000107  EE                out dx,al
00000108  42                inc dx
00000109  50                push ax
0000010A  B000              mov al,0x0
0000010C  EE                out dx,al
0000010D  58                pop ax
0000010E  EE                out dx,al
0000010F  EE                out dx,al
00000110  40                inc ax
00000111  75F6              jnz 0x109
00000113  680090            push word 0x9000
00000116  07                pop es
00000117  06                push es
00000118  0FA1              pop fs
0000011A  97                xchg ax,di
0000011B  B701              mov bh,0x1
0000011D  8D4780            lea ax,[bx-0x80]
00000120  F6E8              imul al
00000122  92                xchg ax,dx
00000123  8D4480            lea ax,[si-0x80]
00000126  F6E8              imul al
00000128  03C2              add ax,dx
0000012A  A30002            mov [0x200],ax
0000012D  DF060002          fild word [0x200]
00000131  D9FA              fsqrt
00000133  DF1E0002          fistp word [0x200]
00000137  A10002            mov ax,[0x200]
0000013A  02C4              add al,ah
0000013C  F6D0              not al
0000013E  047F              add al,0x7f
00000140  7203              jc 0x145
00000142  B000              mov al,0x0
00000144  A9D0E8            test ax,0xe8d0
00000147  AA                stosb
00000148  4B                dec bx
00000149  75D2              jnz 0x11d
0000014B  4E                dec si
0000014C  75CD              jnz 0x11b
0000014E  93                xchg ax,bx
0000014F  FF067A01          inc word [0x17a]
00000153  FF068D01          inc word [0x18d]
00000157  50                push ax
00000158  BF0004            mov di,0x400
0000015B  B164              mov cl,0x64
0000015D  BDD4FE            mov bp,0xfed4
00000160  51                push cx
00000161  B94001            mov cx,0x140
00000164  BE20FE            mov si,0xfe20
00000167  56                push si
00000168  51                push cx
00000169  55                push bp
0000016A  B1F0              mov cl,0xf0
0000016C  8BC6              mov ax,si
0000016E  F7ED              imul bp
00000170  55                push bp
00000171  0FACD007          shrd ax,dx,0x7
00000175  96                xchg ax,si
00000176  F7E8              imul ax
00000178  8DAC24FF          lea bp,[si-0xdc]
0000017C  0FACD008          shrd ax,dx,0x8
00000180  5E                pop si
00000181  96                xchg ax,si
00000182  F7E8              imul ax
00000184  8BDE              mov bx,si
00000186  0FACD008          shrd ax,dx,0x8
0000018A  03D8              add bx,ax
0000018C  2DD8FD            sub ax,0xfdd8
0000018F  2BF0              sub si,ax
00000191  80FF04            cmp bh,0x4
00000194  7304              jnc 0x19a
00000196  FEC1              inc cl
00000198  75D2              jnz 0x16c
0000019A  C0E104            shl cl,byte 0x4
0000019D  BBFF01            mov bx,0x1ff
000001A0  2BDF              sub bx,di
000001A2  880D              mov [di],cl
000001A4  880F              mov [bx],cl
000001A6  47                inc di
000001A7  5D                pop bp
000001A8  59                pop cx
000001A9  5E                pop si
000001AA  83C603            add si,byte +0x3
000001AD  E2B8              loop 0x167
000001AF  59                pop cx
000001B0  83C503            add bp,byte +0x3
000001B3  E2AB              loop 0x160
000001B5  6800A0            push word 0xa000
000001B8  07                pop es
000001B9  33FF              xor di,di
000001BB  BE1C00            mov si,0x1c
000001BE  B1C7              mov cl,0xc7
000001C0  5D                pop bp
000001C1  55                push bp
000001C2  51                push cx
000001C3  B94001            mov cx,0x140
000001C6  8B850004          mov ax,[di+0x400]
000001CA  8BD8              mov bx,ax
000001CC  2AC4              sub al,ah
000001CE  98                cbw
000001CF  03C5              add ax,bp
000001D1  FEC4              inc ah
000001D3  750F              jnz 0x1e4
000001D5  93                xchg ax,bx
000001D6  2A854005          sub al,[di+0x540]
000001DA  98                cbw
000001DB  03C6              add ax,si
000001DD  0AE4              or ah,ah
000001DF  7503              jnz 0x1e4
000001E1  8AF8              mov bh,al
000001E3  A933DB            test ax,0xdb33
000001E6  648A07            mov al,[fs:bx]
000001E9  AA                stosb
000001EA  45                inc bp
000001EB  E2D9              loop 0x1c6
000001ED  59                pop cx
000001EE  46                inc si
000001EF  E2CF              loop 0x1c0
000001F1  58                pop ax
000001F2  48                dec ax
000001F3  3DC0FD            cmp ax,0xfdc0
000001F6  0F8555FF          jnz word 0x14f
000001FA  B80300            mov ax,0x3
000001FD  CD10              int 0x10
000001FF  C3                ret
