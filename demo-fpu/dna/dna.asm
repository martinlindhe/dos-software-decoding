00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  B83011            mov ax,0x1130
00000107  B706              mov bh,0x6
00000109  CD10              int 0x10
0000010B  8C060803          mov [0x308],es
0000010F  892E0A03          mov [0x30a],bp
00000113  BAC803            mov dx,0x3c8
00000116  33C0              xor ax,ax
00000118  EE                out dx,al
00000119  42                inc dx
0000011A  33C9              xor cx,cx
0000011C  EE                out dx,al
0000011D  EE                out dx,al
0000011E  91                xchg ax,cx
0000011F  EE                out dx,al
00000120  91                xchg ax,cx
00000121  41                inc cx
00000122  83F940            cmp cx,byte +0x40
00000125  75F5              jnz 0x11c
00000127  B1C0              mov cl,0xc0
00000129  49                dec cx
0000012A  EE                out dx,al
0000012B  EE                out dx,al
0000012C  EE                out dx,al
0000012D  E2FA              loop 0x129
0000012F  BB00A0            mov bx,0xa000
00000132  8EC3              mov es,bx
00000134  B7FA              mov bh,0xfa
00000136  4B                dec bx
00000137  C6870C0300        mov byte [bx+0x30c],0x0
0000013C  75F8              jnz 0x136
0000013E  FF06F002          inc word [0x2f0]
00000142  1E                push ds
00000143  33C0              xor ax,ax
00000145  8ED8              mov ds,ax
00000147  A16C04            mov ax,[0x46c]
0000014A  40                inc ax
0000014B  8B1E6C04          mov bx,[0x46c]
0000014F  3BC3              cmp ax,bx
00000151  77F8              ja 0x14b
00000153  1F                pop ds
00000154  B9C600            mov cx,0xc6
00000157  890EF202          mov [0x2f2],cx
0000015B  8B1EF002          mov bx,[0x2f0]
0000015F  03D9              add bx,cx
00000161  891EF402          mov [0x2f4],bx
00000165  D9EB              fldpi
00000167  DE36EC02          fidiv word [0x2ec]
0000016B  DE0EF402          fimul word [0x2f4]
0000016F  D9160003          fst dword [0x300]
00000173  DF06F002          fild word [0x2f0]
00000177  DE36FE02          fidiv word [0x2fe]
0000017B  DEC1              faddp st1
0000017D  D9FF              fcos
0000017F  DE0EFA02          fimul word [0x2fa]
00000183  DF06F202          fild word [0x2f2]
00000187  DE36F602          fidiv word [0x2f6]
0000018B  D9FE              fsin
0000018D  DE0EF802          fimul word [0x2f8]
00000191  DEC1              faddp st1
00000193  DF1E0603          fistp word [0x306]
00000197  D9060003          fld dword [0x300]
0000019B  DF06F002          fild word [0x2f0]
0000019F  DE36FE02          fidiv word [0x2fe]
000001A3  DEC1              faddp st1
000001A5  D9FE              fsin
000001A7  DE0EFC02          fimul word [0x2fc]
000001AB  DF1E0403          fistp word [0x304]
000001AF  EB04              jmp short 0x1b5
000001B1  E2A4              loop 0x157
000001B3  EB2B              jmp short 0x1e0
000001B5  B84001            mov ax,0x140
000001B8  F7E1              mul cx
000001BA  058700            add ax,0x87
000001BD  03060403          add ax,[0x304]
000001C1  8BD8              mov bx,ax
000001C3  A10603            mov ax,[0x306]
000001C6  052000            add ax,0x20
000001C9  E8AA00            call 0x276
000001CC  2B1E0403          sub bx,[0x304]
000001D0  2B1E0403          sub bx,[0x304]
000001D4  B82000            mov ax,0x20
000001D7  2B060603          sub ax,[0x306]
000001DB  E89800            call 0x276
000001DE  EBD1              jmp short 0x1b1
000001E0  B90300            mov cx,0x3
000001E3  51                push cx
000001E4  B044              mov al,0x44
000001E6  BB3C4B            mov bx,0x4b3c
000001E9  E89D00            call 0x289
000001EC  B04E              mov al,0x4e
000001EE  BB784B            mov bx,0x4b78
000001F1  E89500            call 0x289
000001F4  B041              mov al,0x41
000001F6  BBB44B            mov bx,0x4bb4
000001F9  E88D00            call 0x289
000001FC  B980F7            mov cx,0xf780
000001FF  BF4C04            mov di,0x44c
00000202  8A25              mov ah,[di]
00000204  D0EC              shr ah,1
00000206  8A45FF            mov al,[di-0x1]
00000209  024501            add al,[di+0x1]
0000020C  0285C0FE          add al,[di-0x140]
00000210  02854001          add al,[di+0x140]
00000214  C0E803            shr al,byte 0x3
00000217  02E0              add ah,al
00000219  8825              mov [di],ah
0000021B  47                inc di
0000021C  E2E4              loop 0x202
0000021E  59                pop cx
0000021F  E2C2              loop 0x1e3
00000221  B900FA            mov cx,0xfa00
00000224  33DB              xor bx,bx
00000226  8A870C03          mov al,[bx+0x30c]
0000022A  268807            mov [es:bx],al
0000022D  43                inc bx
0000022E  E2F6              loop 0x226
00000230  8B16EC02          mov dx,[0x2ec]
00000234  83FA00            cmp dx,byte +0x0
00000237  7F06              jg 0x23f
00000239  FF06FC02          inc word [0x2fc]
0000023D  EB1C              jmp short 0x25b
0000023F  81FAFA00          cmp dx,0xfa
00000243  7F06              jg 0x24b
00000245  FF0EFC02          dec word [0x2fc]
00000249  EB10              jmp short 0x25b
0000024B  FE06EB02          inc byte [0x2eb]
0000024F  803EEB0223        cmp byte [0x2eb],0x23
00000254  7505              jnz 0x25b
00000256  42                inc dx
00000257  FE0EEB02          dec byte [0x2eb]
0000025B  42                inc dx
0000025C  83FA00            cmp dx,byte +0x0
0000025F  7501              jnz 0x262
00000261  42                inc dx
00000262  8916EC02          mov [0x2ec],dx
00000266  E460              in al,0x60
00000268  FEC8              dec al
0000026A  7403              jz 0x26f
0000026C  E9CFFE            jmp 0x13e
0000026F  B80300            mov ax,0x3
00000272  CD10              int 0x10
00000274  C3                ret
00000275  0051B9            add [bx+di-0x47],dl
00000278  1400              adc al,0x0
0000027A  38870C03          cmp [bx+0x30c],al
0000027E  7304              jnc 0x284
00000280  88870C03          mov [bx+0x30c],al
00000284  43                inc bx
00000285  E2F3              loop 0x27a
00000287  59                pop cx
00000288  C3                ret
00000289  B410              mov ah,0x10
0000028B  F6E4              mul ah
0000028D  8BE8              mov bp,ax
0000028F  06                push es
00000290  A10803            mov ax,[0x308]
00000293  8EC0              mov es,ax
00000295  032E0A03          add bp,[0x30a]
00000299  33C9              xor cx,cx
0000029B  B110              mov cl,0x10
0000029D  8A16EB02          mov dl,[0x2eb]
000002A1  BF0C03            mov di,0x30c
000002A4  33C0              xor ax,ax
000002A6  268A4600          mov al,[es:bp+0x0]
000002AA  51                push cx
000002AB  B109              mov cl,0x9
000002AD  49                dec cx
000002AE  0FA3C8            bt ax,cx
000002B1  7327              jnc 0x2da
000002B3  53                push bx
000002B4  51                push cx
000002B5  B108              mov cl,0x8
000002B7  3811              cmp [bx+di],dl
000002B9  7317              jnc 0x2d2
000002BB  8811              mov [bx+di],dl
000002BD  885101            mov [bx+di+0x1],dl
000002C0  885102            mov [bx+di+0x2],dl
000002C3  885103            mov [bx+di+0x3],dl
000002C6  885104            mov [bx+di+0x4],dl
000002C9  885105            mov [bx+di+0x5],dl
000002CC  885106            mov [bx+di+0x6],dl
000002CF  885107            mov [bx+di+0x7],dl
000002D2  81C34001          add bx,0x140
000002D6  E2DF              loop 0x2b7
000002D8  59                pop cx
000002D9  5B                pop bx
000002DA  83C308            add bx,byte +0x8
000002DD  0BC9              or cx,cx
000002DF  75CC              jnz 0x2ad
000002E1  59                pop cx
000002E2  45                inc bp
000002E3  81C37803          add bx,0x378
000002E7  E2BD              loop 0x2a6
000002E9  07                pop es
000002EA  C3                ret
000002EB  0080FF46          add [bx+si+0x46ff],al
000002EF  0000              add [bx+si],al
000002F1  0000              add [bx+si],al
000002F3  0000              add [bx+si],al
000002F5  0005              add [di],al
000002F7  000A              add [bp+si],cl
000002F9  00160014          add [0x1400],dl
000002FD  000A              add [bp+si],cl
000002FF  00                db 0x00
