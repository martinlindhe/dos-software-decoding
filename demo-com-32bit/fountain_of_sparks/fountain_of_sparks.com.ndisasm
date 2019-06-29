00000100  0E                push cs
00000101  17                pop ss
00000102  31E4              xor sp,sp
00000104  FC                cld
00000105  0E                push cs
00000106  1F                pop ds
00000107  B81300            mov ax,0x13
0000010A  CD10              int 0x10
0000010C  FA                cli
0000010D  BAC803            mov dx,0x3c8
00000110  31C0              xor ax,ax
00000112  EE                out dx,al
00000113  42                inc dx
00000114  8EE2              mov fs,dx
00000116  B91000            mov cx,0x10
00000119  31DB              xor bx,bx
0000011B  60                pusha
0000011C  B110              mov cl,0x10
0000011E  88F8              mov al,bh
00000120  E83B01            call 0x25e
00000123  88F8              mov al,bh
00000125  28E0              sub al,ah
00000127  E83401            call 0x25e
0000012A  88D8              mov al,bl
0000012C  EE                out dx,al
0000012D  43                inc bx
0000012E  43                inc bx
0000012F  E2ED              loop 0x11e
00000131  61                popa
00000132  80C704            add bh,0x4
00000135  FEC4              inc ah
00000137  E2E2              loop 0x11b
00000139  0E                push cs
0000013A  07                pop es
0000013B  B501              mov ch,0x1
0000013D  BF0090            mov di,0x9000
00000140  57                push di
00000141  88CF              mov bh,cl
00000143  B000              mov al,0x0
00000145  E82001            call 0x268
00000148  E2F7              loop 0x141
0000014A  07                pop es
0000014B  31C0              xor ax,ax
0000014D  97                xchg ax,di
0000014E  B5AA              mov ch,0xaa
00000150  F3AA              rep stosb
00000152  BB2400            mov bx,0x24
00000155  B860FF            mov ax,0xff60
00000158  B94001            mov cx,0x140
0000015B  60                pusha
0000015C  91                xchg ax,cx
0000015D  BA1000            mov dx,0x10
00000160  31C0              xor ax,ax
00000162  F7FB              idiv bx
00000164  89C3              mov bx,ax
00000166  99                cwd
00000167  F7E9              imul cx
00000169  0FAFD2            imul dx,dx
0000016C  C1FB08            sar bx,byte 0x8
0000016F  83EB4C            sub bx,byte +0x4c
00000172  0FAFDB            imul bx,bx
00000175  01D3              add bx,dx
00000177  E80C01            call 0x286
0000017A  01C3              add bx,ax
0000017C  B45F              mov ah,0x5f
0000017E  99                cwd
0000017F  F7FB              idiv bx
00000181  2D0C00            sub ax,0xc
00000184  7216              jc 0x19c
00000186  89C3              mov bx,ax
00000188  C1E804            shr ax,byte 0x4
0000018B  C1E30C            shl bx,byte 0xc
0000018E  011EFE8F          add [0x8ffe],bx
00000192  150000            adc ax,0x0
00000195  3C0F              cmp al,0xf
00000197  7605              jna 0x19e
00000199  B00F              mov al,0xf
0000019B  AA                stosb
0000019C  30C0              xor al,al
0000019E  AA                stosb
0000019F  61                popa
000001A0  47                inc di
000001A1  40                inc ax
000001A2  E2B7              loop 0x15b
000001A4  43                inc bx
000001A5  80FB64            cmp bl,0x64
000001A8  72AB              jc 0x155
000001AA  06                push es
000001AB  B501              mov ch,0x1
000001AD  5E                pop si
000001AE  56                push si
000001AF  51                push cx
000001B0  89F7              mov di,si
000001B2  AD                lodsw
000001B3  84C0              test al,al
000001B5  AD                lodsw
000001B6  93                xchg ax,bx
000001B7  AD                lodsw
000001B8  92                xchg ax,dx
000001B9  AD                lodsw
000001BA  91                xchg ax,cx
000001BB  7418              jz 0x1d5
000001BD  60                pusha
000001BE  8B6C06            mov bp,[si+0x6]
000001C1  E8CF00            call 0x293
000001C4  D1ED              shr bp,1
000001C6  89EF              mov di,bp
000001C8  D1EF              shr di,1
000001CA  29FD              sub bp,di
000001CC  F7DA              neg dx
000001CE  80C620            add dh,0x20
000001D1  E8BF00            call 0x293
000001D4  61                popa
000001D5  AD                lodsw
000001D6  0144F8            add [si-0x8],ax
000001D9  AD                lodsw
000001DA  01C2              add dx,ax
000001DC  80FE10            cmp dh,0x10
000001DF  7C0E              jl 0x1ef
000001E1  BA0010            mov dx,0x1000
000001E4  B102              mov cl,0x2
000001E6  D3F8              sar ax,cl
000001E8  D37CFC            sar word [si-0x4],cl
000001EB  D33C              sar word [si],cl
000001ED  F7D8              neg ax
000001EF  40                inc ax
000001F0  40                inc ax
000001F1  8954F8            mov [si-0x8],dx
000001F4  8944FE            mov [si-0x2],ax
000001F7  AD                lodsw
000001F8  0144F8            add [si-0x8],ax
000001FB  812CA000          sub word [si],0xa0
000001FF  AD                lodsw
00000200  730B              jnc 0x20d
00000202  06                push es
00000203  0E                push cs
00000204  07                pop es
00000205  B001              mov al,0x1
00000207  B7FF              mov bh,0xff
00000209  E85C00            call 0x268
0000020C  07                pop es
0000020D  59                pop cx
0000020E  E29F              loop 0x1af
00000210  BADA03            mov dx,0x3da
00000213  EC                in al,dx
00000214  A808              test al,0x8
00000216  75FB              jnz 0x213
00000218  EC                in al,dx
00000219  A808              test al,0x8
0000021B  74FB              jz 0x218
0000021D  06                push es
0000021E  1F                pop ds
0000021F  8EC6              mov es,si
00000221  31FF              xor di,di
00000223  31F6              xor si,si
00000225  B540              mov ch,0x40
00000227  89CD              mov bp,cx
00000229  F366A5            rep movsd
0000022C  B510              mov ch,0x10
0000022E  4E                dec si
0000022F  45                inc bp
00000230  45                inc bp
00000231  3932              cmp [bp+si],si
00000233  7505              jnz 0x23a
00000235  8D7D10            lea di,[di+0x10]
00000238  EB14              jmp short 0x24e
0000023A  BA0100            mov dx,0x1
0000023D  8A05              mov al,[di]
0000023F  2C10              sub al,0x10
00000241  7304              jnc 0x247
00000243  0912              or [bp+si],dx
00000245  0410              add al,0x10
00000247  8805              mov [di],al
00000249  47                inc di
0000024A  01D2              add dx,dx
0000024C  75EF              jnz 0x23d
0000024E  E2DF              loop 0x22f
00000250  0E                push cs
00000251  1F                pop ds
00000252  07                pop es
00000253  E464              in al,0x64
00000255  D0E8              shr al,1
00000257  0F834FFF          jnc near 0x1aa
0000025B  56                push si
0000025C  51                push cx
0000025D  CB                retf
0000025E  00D8              add al,bl
00000260  3C3F              cmp al,0x3f
00000262  7202              jc 0x266
00000264  B03F              mov al,0x3f
00000266  EE                out dx,al
00000267  C3                ret
00000268  AB                stosw
00000269  31C0              xor ax,ax
0000026B  AB                stosw
0000026C  B410              mov ah,0x10
0000026E  AB                stosw
0000026F  B44C              mov ah,0x4c
00000271  E80900            call 0x27d
00000274  B83CFF            mov ax,0xff3c
00000277  E80300            call 0x27d
0000027A  93                xchg ax,bx
0000027B  AB                stosw
0000027C  C3                ret
0000027D  AB                stosw
0000027E  E80500            call 0x286
00000281  2D2000            sub ax,0x20
00000284  AB                stosw
00000285  C3                ret
00000286  8CE0              mov ax,fs
00000288  6BC00D            imul ax,ax,byte +0xd
0000028B  86E0              xchg ah,al
0000028D  8EE0              mov fs,ax
0000028F  253F00            and ax,0x3f
00000292  C3                ret
00000293  60                pusha
00000294  92                xchg ax,dx
00000295  BF6400            mov di,0x64
00000298  E85100            call 0x2ec
0000029B  93                xchg ax,bx
0000029C  BFA000            mov di,0xa0
0000029F  E84A00            call 0x2ec
000002A2  0FAFDF            imul bx,di
000002A5  01C3              add bx,ax
000002A7  BEE07D            mov si,0x7de0
000002AA  B80400            mov ax,0x4
000002AD  95                xchg ax,bp
000002AE  B503              mov ch,0x3
000002B0  50                push ax
000002B1  53                push bx
000002B2  8A0C              mov cl,[si]
000002B4  D2EC              shr ah,cl
000002B6  80E4F0            and ah,0xf0
000002B9  268A07            mov al,[es:bx]
000002BC  38E0              cmp al,ah
000002BE  7306              jnc 0x2c6
000002C0  00E0              add al,ah
000002C2  7302              jnc 0x2c6
000002C4  0CF0              or al,0xf0
000002C6  268807            mov [es:bx],al
000002C9  C1EB03            shr bx,byte 0x3
000002CC  C687014000        mov byte [bx+0x4001],0x0
000002D1  5B                pop bx
000002D2  58                pop ax
000002D3  46                inc si
000002D4  43                inc bx
000002D5  FECD              dec ch
000002D7  75D7              jnz 0x2b0
000002D9  8D59FD            lea bx,[bx+di-0x3]
000002DC  4D                dec bp
000002DD  75CF              jnz 0x2ae
000002DF  61                popa
000002E0  C3                ret
000002E1  0103              add [bp+di],ax
000002E3  0100              add [bx+si],ax
000002E5  0101              add [bx+di],ax
000002E7  0101              add [bx+di],ax
000002E9  0302              add ax,[bp+si]
000002EB  039986C2          add bx,[bx+di-0x3d7a]
000002EF  86E2              xchg ah,dl
000002F1  F7F9              idiv cx
000002F3  01F8              add ax,di
000002F5  01FF              add di,di
000002F7  39F8              cmp ax,di
000002F9  7202              jc 0x2fd
000002FB  58                pop ax
000002FC  61                popa
000002FD  C3                ret
000002FE  55                push bp
000002FF  AA                stosb
