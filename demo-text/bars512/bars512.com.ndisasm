00000100  B003              mov al,0x3
00000102  CD10              int 0x10
00000104  06                push es
00000105  6800B8            push word 0xb800
00000108  07                pop es
00000109  BB6402            mov bx,0x264
0000010C  BE7802            mov si,0x278
0000010F  BF0C02            mov di,0x20c
00000112  E8E500            call 0x1fa
00000115  C647FF07          mov byte [bx-0x1],0x7
00000119  C60703            mov byte [bx],0x3
0000011C  C6470104          mov byte [bx+0x1],0x4
00000120  C6470278          mov byte [bx+0x2],0x78
00000124  BFF608            mov di,0x8f6
00000127  E8D000            call 0x1fa
0000012A  B407              mov ah,0x7
0000012C  B108              mov cl,0x8
0000012E  81EF1603          sub di,0x316
00000132  8A04              mov al,[si]
00000134  46                inc si
00000135  AB                stosw
00000136  E0FA              loopne 0x132
00000138  07                pop es
00000139  FA                cli
0000013A  BB6902            mov bx,0x269
0000013D  B90300            mov cx,0x3
00000140  8B5701            mov dx,[bx+0x1]
00000143  035703            add dx,[bx+0x3]
00000146  83FA70            cmp dx,byte +0x70
00000149  7606              jna 0x151
0000014B  81FA1301          cmp dx,0x113
0000014F  7203              jc 0x154
00000151  F75F03            neg word [bx+0x3]
00000154  895701            mov [bx+0x1],dx
00000157  83C305            add bx,byte +0x5
0000015A  E0E4              loopne 0x140
0000015C  BADA03            mov dx,0x3da
0000015F  EC                in al,dx
00000160  A808              test al,0x8
00000162  74FB              jz 0x15f
00000164  EC                in al,dx
00000165  D0D8              rcr al,1
00000167  72FB              jc 0x164
00000169  BF9A01            mov di,0x19a
0000016C  BB6902            mov bx,0x269
0000016F  B103              mov cl,0x3
00000171  B83F00            mov ax,0x3f
00000174  8B5701            mov dx,[bx+0x1]
00000177  2BD7              sub dx,di
00000179  83FA00            cmp dx,byte +0x0
0000017C  7D06              jnl 0x184
0000017E  F7DA              neg dx
00000180  3BD0              cmp dx,ax
00000182  7F0A              jg 0x18e
00000184  3BD0              cmp dx,ax
00000186  7F06              jg 0x18e
00000188  2BC2              sub ax,dx
0000018A  8807              mov [bx],al
0000018C  EB03              jmp short 0x191
0000018E  C60700            mov byte [bx],0x0
00000191  83C305            add bx,byte +0x5
00000194  E0DB              loopne 0x171
00000196  BAC803            mov dx,0x3c8
00000199  B001              mov al,0x1
0000019B  EE                out dx,al
0000019C  BADA03            mov dx,0x3da
0000019F  EC                in al,dx
000001A0  D0D8              rcr al,1
000001A2  73FB              jnc 0x19f
000001A4  BAC903            mov dx,0x3c9
000001A7  A06902            mov al,[0x269]
000001AA  EE                out dx,al
000001AB  A06E02            mov al,[0x26e]
000001AE  EE                out dx,al
000001AF  A07302            mov al,[0x273]
000001B2  EE                out dx,al
000001B3  4F                dec di
000001B4  75B6              jnz 0x16c
000001B6  BADA03            mov dx,0x3da
000001B9  33C9              xor cx,cx
000001BB  BE6702            mov si,0x267
000001BE  8A0C              mov cl,[si]
000001C0  024C01            add cl,[si+0x1]
000001C3  880C              mov [si],cl
000001C5  80F901            cmp cl,0x1
000001C8  7605              jna 0x1cf
000001CA  80F92D            cmp cl,0x2d
000001CD  7203              jc 0x1d2
000001CF  F65C01            neg byte [si+0x1]
000001D2  EC                in al,dx
000001D3  2401              and al,0x1
000001D5  75FB              jnz 0x1d2
000001D7  EC                in al,dx
000001D8  2401              and al,0x1
000001DA  74FB              jz 0x1d7
000001DC  E0F4              loopne 0x1d2
000001DE  BEFA02            mov si,0x2fa
000001E1  B706              mov bh,0x6
000001E3  8A1C              mov bl,[si]
000001E5  46                inc si
000001E6  E84800            call 0x231
000001E9  FECF              dec bh
000001EB  75F6              jnz 0x1e3
000001ED  E460              in al,0x60
000001EF  48                dec ax
000001F0  0F8546FF          jnz near 0x13a
000001F4  FB                sti
000001F5  B003              mov al,0x3
000001F7  CD10              int 0x10
000001F9  C3                ret
000001FA  8A37              mov dh,[bx]
000001FC  8A4F01            mov cl,[bx+0x1]
000001FF  52                push dx
00000200  8B14              mov dx,[si]
00000202  51                push cx
00000203  53                push bx
00000204  B10C              mov cl,0xc
00000206  BB0500            mov bx,0x5
00000209  8BC2              mov ax,dx
0000020B  D3E8              shr ax,cl
0000020D  80E903            sub cl,0x3
00000210  2407              and al,0x7
00000212  7502              jnz 0x216
00000214  0425              add al,0x25
00000216  04DA              add al,0xda
00000218  8A266302          mov ah,[0x263]
0000021C  AB                stosw
0000021D  4B                dec bx
0000021E  75E9              jnz 0x209
00000220  5B                pop bx
00000221  59                pop cx
00000222  46                inc si
00000223  46                inc si
00000224  E0DA              loopne 0x200
00000226  8A4F02            mov cl,[bx+0x2]
00000229  03F9              add di,cx
0000022B  5A                pop dx
0000022C  FECE              dec dh
0000022E  75CC              jnz 0x1fc
00000230  C3                ret
00000231  33C9              xor cx,cx
00000233  E80D00            call 0x243
00000236  41                inc cx
00000237  80F93F            cmp cl,0x3f
0000023A  72F7              jc 0x233
0000023C  E80400            call 0x243
0000023F  49                dec cx
00000240  E0FA              loopne 0x23c
00000242  C3                ret
00000243  BAC803            mov dx,0x3c8
00000246  B000              mov al,0x0
00000248  EE                out dx,al
00000249  42                inc dx
0000024A  F6C304            test bl,0x4
0000024D  7402              jz 0x251
0000024F  8AC1              mov al,cl
00000251  EE                out dx,al
00000252  F6C302            test bl,0x2
00000255  7402              jz 0x259
00000257  8AC1              mov al,cl
00000259  EE                out dx,al
0000025A  F6C301            test bl,0x1
0000025D  7402              jz 0x261
0000025F  8AC1              mov al,cl
00000261  EE                out dx,al
00000262  C3                ret
00000263  0107              add [bx],ax
00000265  07                pop es
00000266  5A                pop dx
00000267  0101              add [bx+di],ax
00000269  00C0              add al,al
0000026B  00FE              add dh,bh
0000026D  FF00              inc word [bx+si]
0000026F  C000FD            rol byte [bx+si],byte 0xfd
00000272  FF00              inc word [bx+si]
00000274  C000FC            rol byte [bx+si],byte 0xfc
00000277  FF4D04            dec word [di+0x4]
0000027A  80521100          adc byte [bp+si+0x11],0x0
0000027E  50                push ax
0000027F  5A                pop dx
00000280  0004              add [si],al
00000282  40                inc ax
00000283  0000              add [bx+si],al
00000285  004042            add [bx+si+0x42],al
00000288  40                inc ax
00000289  094B00            or [bp+di+0x0],cx
0000028C  0B00              or ax,[bx+si]
0000028E  C00248            rol byte [bp+si],byte 0x48
00000291  0800              or [bx+si],al
00000293  004A0A            add [bp+si+0xa],cl
00000296  0000              add [bx+si],al
00000298  48                dec ax
00000299  00880040          add [bx+si+0x4000],cl
0000029D  42                inc dx
0000029E  4B                dec bx
0000029F  0200              add al,[bx+si]
000002A1  0029              add [bx+di],ch
000002A3  00801248          add [bx+si+0x4812],al
000002A7  004023            add [bx+si+0x23],al
000002AA  58                pop ax
000002AB  0A0B              or cl,[bp+di]
000002AD  2200              and al,[bx+si]
000002AF  0000              add [bx+si],al
000002B1  004A0A            add [bp+si+0xa],cl
000002B4  49                dec cx
000002B5  0000              add [bx+si],al
000002B7  50                push ax
000002B8  49                dec cx
000002B9  010B              add [bp+di],cx
000002BB  1B00              sbb ax,[bx+si]
000002BD  0080144D          add [bx+si+0x4d14],al
000002C1  044B              add al,0x4b
000002C3  0000              add [bx+si],al
000002C5  00800448          add [bx+si+0x4804],al
000002C9  0000              add [bx+si],al
000002CB  004A0A            add [bp+si+0xa],cl
000002CE  40                inc ax
000002CF  134827            adc cx,[bx+si+0x27]
000002D2  1300              adc ax,[bx+si]
000002D4  4A                dec dx
000002D5  014223            add [bp+si+0x23],ax
000002D8  0030              add [bx+si],dh
000002DA  681B02            push word 0x21b
000002DD  22505B            and dl,[bx+si+0x5b]
000002E0  6A03              push byte +0x3
000002E2  50                push ax
000002E3  5B                pop bx
000002E4  0002              add [bp+si],al
000002E6  A824              test al,0x24
000002E8  6A03              push byte +0x3
000002EA  A824              test al,0x24
000002EC  81229024          and word [bp+si],0x2490
000002F0  95                xchg ax,bp
000002F1  027072            add dh,[bx+si+0x72]
000002F4  657365            gs jnc 0x35c
000002F7  6E                outsb
000002F8  7473              jz 0x36d
000002FA  0102              add [bp+si],ax
000002FC  0404              add al,0x4
000002FE  0201              add al,[bx+di]
