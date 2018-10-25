00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  8CC0              mov ax,es
00000106  050010            add ax,0x1000
00000109  8EC0              mov es,ax
0000010B  FEC7              inc bh
0000010D  8D4780            lea ax,[bx-0x80]
00000110  F6E8              imul al
00000112  92                xchg ax,dx
00000113  8D4480            lea ax,[si-0x80]
00000116  F6E8              imul al
00000118  03C2              add ax,dx
0000011A  8902              mov [bp+si],ax
0000011C  DF02              fild word [bp+si]
0000011E  D9FA              fsqrt
00000120  DF1A              fistp word [bp+si]
00000122  8B02              mov ax,[bp+si]
00000124  02C4              add al,ah
00000126  2C7D              sub al,0x7d
00000128  7201              jc 0x12b
0000012A  D6                salc
0000012B  F6E8              imul al
0000012D  86C4              xchg al,ah
0000012F  F6D0              not al
00000131  AA                stosb
00000132  4B                dec bx
00000133  75D8              jnz 0x10d
00000135  4E                dec si
00000136  75D3              jnz 0x10b
00000138  8CC0              mov ax,es
0000013A  050010            add ax,0x1000
0000013D  8ED8              mov ds,ax
0000013F  33C9              xor cx,cx
00000141  03F1              add si,cx
00000143  D3C6              rol si,cl
00000145  D1C9              ror cx,1
00000147  81C13412          add cx,0x1234
0000014B  8D00              lea ax,[bx+si]
0000014D  8805              mov [di],al
0000014F  47                inc di
00000150  4B                dec bx
00000151  75EE              jnz 0x141
00000153  93                xchg ax,bx
00000154  33C9              xor cx,cx
00000156  BD0300            mov bp,0x3
00000159  8A95BFFE          mov dl,[di-0x141]
0000015D  8A85C0FE          mov al,[di-0x140]
00000161  03D0              add dx,ax
00000163  8A85C1FE          mov al,[di-0x13f]
00000167  03D0              add dx,ax
00000169  8A45FF            mov al,[di-0x1]
0000016C  03D0              add dx,ax
0000016E  8A4501            mov al,[di+0x1]
00000171  03D0              add dx,ax
00000173  8A853F01          mov al,[di+0x13f]
00000177  03D0              add dx,ax
00000179  8A854001          mov al,[di+0x140]
0000017D  03D0              add dx,ax
0000017F  8A854101          mov al,[di+0x141]
00000183  03D0              add dx,ax
00000185  C1EA03            shr dx,byte 0x3
00000188  8815              mov [di],dl
0000018A  4F                dec di
0000018B  E2CC              loop 0x159
0000018D  4D                dec bp
0000018E  75C9              jnz 0x159
00000190  BAC803            mov dx,0x3c8
00000193  91                xchg ax,cx
00000194  EE                out dx,al
00000195  42                inc dx
00000196  EE                out dx,al
00000197  EE                out dx,al
00000198  EE                out dx,al
00000199  FEC8              dec al
0000019B  75F9              jnz 0x196
0000019D  B4A0              mov ah,0xa0
0000019F  8EE0              mov fs,ax
000001A1  1E                push ds
000001A2  0E                push cs
000001A3  1F                pop ds
000001A4  BF7FF7            mov di,0xf77f
000001A7  E86C00            call 0x216
000001AA  D9FF              fcos
000001AC  DE0E2302          fimul word [0x223]
000001B0  DF1D              fistp word [di]
000001B2  8B05              mov ax,[di]
000001B4  2D5A00            sub ax,0x5a
000001B7  E85C00            call 0x216
000001BA  D9FE              fsin
000001BC  DE0E2302          fimul word [0x223]
000001C0  DF1D              fistp word [di]
000001C2  8B2D              mov bp,[di]
000001C4  81ED9600          sub bp,0x96
000001C8  FF062502          inc word [0x225]
000001CC  1F                pop ds
000001CD  B1C8              mov cl,0xc8
000001CF  BE4001            mov si,0x140
000001D2  8A5D01            mov bl,[di+0x1]
000001D5  2A5DFF            sub bl,[di-0x1]
000001D8  1AFF              sbb bh,bh
000001DA  C1E302            shl bx,byte 0x2
000001DD  03DE              add bx,si
000001DF  2BD8              sub bx,ax
000001E1  8A954001          mov dl,[di+0x140]
000001E5  2A95C0FE          sub dl,[di-0x140]
000001E9  1AF6              sbb dh,dh
000001EB  C1E202            shl dx,byte 0x2
000001EE  03D1              add dx,cx
000001F0  2BD5              sub dx,bp
000001F2  7C10              jl 0x204
000001F4  D1EB              shr bx,1
000001F6  D1EA              shr dx,1
000001F8  0AFF              or bh,bh
000001FA  7508              jnz 0x204
000001FC  8AFA              mov bh,dl
000001FE  268A1F            mov bl,[es:bx]
00000201  64881D            mov [fs:di],bl
00000204  4F                dec di
00000205  4E                dec si
00000206  75CA              jnz 0x1d2
00000208  E2C5              loop 0x1cf
0000020A  B401              mov ah,0x1
0000020C  CD16              int 0x16
0000020E  7491              jz 0x1a1
00000210  B80300            mov ax,0x3
00000213  CD10              int 0x10
00000215  C3                ret
00000216  D9EB              fldpi
00000218  DE362102          fidiv word [0x221]
0000021C  DE0E2502          fimul word [0x225]
00000220  C3                ret
00000221  B400              mov ah,0x0
00000223  7800              js 0x225
00000225  0E                push cs
00000226  01                db 0x01
