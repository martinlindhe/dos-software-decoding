00000100  0E                push cs
00000101  58                pop ax
00000102  BF0403            mov di,0x304
00000105  B90300            mov cx,0x3
00000108  80C410            add ah,0x10
0000010B  AB                stosw
0000010C  E2FA              loop 0x108
0000010E  B81300            mov ax,0x13
00000111  CD10              int 0x10
00000113  8E1E0403          mov ds,[0x304]
00000117  33FF              xor di,di
00000119  2EA10003          mov ax,[cs:0x300]
0000011D  40                inc ax
0000011E  69C08F26          imul ax,ax,word 0x268f
00000122  86C4              xchg al,ah
00000124  2EA30003          mov [cs:0x300],ax
00000128  253F00            and ax,0x3f
0000012B  8805              mov [di],al
0000012D  47                inc di
0000012E  75E9              jnz 0x119
00000130  1E                push ds
00000131  B82411            mov ax,0x1124
00000134  CD10              int 0x10
00000136  1E                push ds
00000137  07                pop es
00000138  0E                push cs
00000139  1F                pop ds
0000013A  B409              mov ah,0x9
0000013C  BAE402            mov dx,0x2e4
0000013F  CD21              int 0x21
00000141  6800A0            push word 0xa000
00000144  1F                pop ds
00000145  33F6              xor si,si
00000147  BFD53E            mov di,0x3ed5
0000014A  BB2000            mov bx,0x20
0000014D  B93200            mov cx,0x32
00000150  6633C0            xor eax,eax
00000153  AC                lodsb
00000154  0AC0              or al,al
00000156  7406              jz 0x15e
00000158  66B83F3F3F3F      mov eax,0x3f3f3f3f
0000015E  BA0400            mov dx,0x4
00000161  66260105          add [es:di],eax
00000165  83C704            add di,byte +0x4
00000168  81C73C01          add di,0x13c
0000016C  4A                dec dx
0000016D  75F2              jnz 0x161
0000016F  81EFFC04          sub di,0x4fc
00000173  E2DB              loop 0x150
00000175  81C60E01          add si,0x10e
00000179  81C7F802          add di,0x2f8
0000017D  4B                dec bx
0000017E  75CD              jnz 0x14d
00000180  1F                pop ds
00000181  BD0A00            mov bp,0xa
00000184  1E                push ds
00000185  2E8E060603        mov es,[cs:0x306]
0000018A  33F6              xor si,si
0000018C  33FF              xor di,di
0000018E  33DB              xor bx,bx
00000190  8A1C              mov bl,[si]
00000192  8BC3              mov ax,bx
00000194  C1E002            shl ax,byte 0x2
00000197  8A9CC0FE          mov bl,[si-0x140]
0000019B  03C3              add ax,bx
0000019D  8A5CFF            mov bl,[si-0x1]
000001A0  03C3              add ax,bx
000001A2  8A5C01            mov bl,[si+0x1]
000001A5  03C3              add ax,bx
000001A7  8A9C4001          mov bl,[si+0x140]
000001AB  03C3              add ax,bx
000001AD  C1E803            shr ax,byte 0x3
000001B0  AA                stosb
000001B1  46                inc si
000001B2  75DC              jnz 0x190
000001B4  B9FF7F            mov cx,0x7fff
000001B7  06                push es
000001B8  1E                push ds
000001B9  07                pop es
000001BA  1F                pop ds
000001BB  F3A5              rep movsw
000001BD  1F                pop ds
000001BE  4D                dec bp
000001BF  75C3              jnz 0x184
000001C1  0E                push cs
000001C2  1F                pop ds
000001C3  B90001            mov cx,0x100
000001C6  9BDBE3            finit
000001C9  BF1203            mov di,0x312
000001CC  D9EB              fldpi
000001CE  DE0EF502          fimul word [0x2f5]
000001D2  DE36F302          fidiv word [0x2f3]
000001D6  D9FE              fsin
000001D8  DE0EF102          fimul word [0x2f1]
000001DC  DF1D              fistp word [di]
000001DE  800580            add byte [di],0x80
000001E1  47                inc di
000001E2  FF06F502          inc word [0x2f5]
000001E6  E2E4              loop 0x1cc
000001E8  BAC803            mov dx,0x3c8
000001EB  33C0              xor ax,ax
000001ED  EE                out dx,al
000001EE  42                inc dx
000001EF  B97F00            mov cx,0x7f
000001F2  8BC1              mov ax,cx
000001F4  2D7F00            sub ax,0x7f
000001F7  F7D8              neg ax
000001F9  D1E8              shr ax,1
000001FB  EE                out dx,al
000001FC  EE                out dx,al
000001FD  EE                out dx,al
000001FE  E2F2              loop 0x1f2
00000200  BD5E01            mov bp,0x15e
00000203  BB1203            mov bx,0x312
00000206  A0F802            mov al,[0x2f8]
00000209  D7                xlatb
0000020A  0FB6F0            movzx si,al
0000020D  81C610FF          add si,0xff10
00000211  8006F80202        add byte [0x2f8],0x2
00000216  E82200            call 0x23b
00000219  E86D00            call 0x289
0000021C  06                push es
0000021D  1F                pop ds
0000021E  6800A0            push word 0xa000
00000221  07                pop es
00000222  33FF              xor di,di
00000224  33F6              xor si,si
00000226  B9007D            mov cx,0x7d00
00000229  F3A5              rep movsw
0000022B  0E                push cs
0000022C  1F                pop ds
0000022D  FE06F702          inc byte [0x2f7]
00000231  4D                dec bp
00000232  75CF              jnz 0x203
00000234  B80300            mov ax,0x3
00000237  CD10              int 0x10
00000239  CD20              int 0x20
0000023B  802EF7020F        sub byte [0x2f7],0xf
00000240  8E060803          mov es,[0x308]
00000244  33FF              xor di,di
00000246  C70610030000      mov word [0x310],0x0
0000024C  89360A03          mov [0x30a],si
00000250  A11003            mov ax,[0x310]
00000253  2D6400            sub ax,0x64
00000256  33D2              xor dx,dx
00000258  F7E0              mul ax
0000025A  A30C03            mov [0x30c],ax
0000025D  B94001            mov cx,0x140
00000260  FF060A03          inc word [0x30a]
00000264  A10A03            mov ax,[0x30a]
00000267  01060C03          add [0x30c],ax
0000026B  A10C03            mov ax,[0x30c]
0000026E  C1E804            shr ax,byte 0x4
00000271  0206F702          add al,[0x2f7]
00000275  D7                xlatb
00000276  C0E802            shr al,byte 0x2
00000279  AA                stosb
0000027A  E2E4              loop 0x260
0000027C  FF061003          inc word [0x310]
00000280  813E1003C800      cmp word [0x310],0xc8
00000286  75C4              jnz 0x24c
00000288  C3                ret
00000289  8E2E0403          mov gs,[0x304]
0000028D  06                push es
0000028E  0FA1              pop fs
00000290  8E060603          mov es,[0x306]
00000294  BF4101            mov di,0x141
00000297  C70610030100      mov word [0x310],0x1
0000029D  C7060E030100      mov word [0x30e],0x1
000002A3  648A85C0FE        mov al,[fs:di-0x140]
000002A8  642A854001        sub al,[fs:di+0x140]
000002AD  98                cbw
000002AE  8B361003          mov si,[0x310]
000002B2  03F0              add si,ax
000002B4  69F64001          imul si,si,word 0x140
000002B8  03360E03          add si,[0x30e]
000002BC  648A4501          mov al,[fs:di+0x1]
000002C0  642A45FF          sub al,[fs:di-0x1]
000002C4  98                cbw
000002C5  03F0              add si,ax
000002C7  65AC              gs lodsb
000002C9  AA                stosb
000002CA  FF060E03          inc word [0x30e]
000002CE  813E0E034001      cmp word [0x30e],0x140
000002D4  75CD              jnz 0x2a3
000002D6  47                inc di
000002D7  FF061003          inc word [0x310]
000002DB  813E1003C700      cmp word [0x310],0xc7
000002E1  75BA              jnz 0x29d
000002E3  C3                ret
000002E4  47                inc di
000002E5  52                push dx
000002E6  694E440D0A        imul cx,[bp+0x44],word 0xa0d
000002EB  4B                dec bx
000002EC  694E472124        imul cx,[bp+0x47],word 0x2421
000002F1  7F00              jg 0x2f3
000002F3  800000            add byte [bx+si],0x0
000002F6  0000              add [bx+si],al
000002F8  7F4F              jg 0x349
000002FA  4C                dec sp
000002FB  4C                dec sp
000002FC  69                db 0x69
000002FD  45                inc bp
000002FE  3937              cmp [bx],si
