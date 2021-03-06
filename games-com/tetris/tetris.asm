00000100  F8                clc
00000101  7210              jc 0x113
00000103  BE0001            mov si,0x100
00000106  BF007C            mov di,0x7c00
00000109  B90002            mov cx,0x200
0000010C  F3A4              rep movsb
0000010E  91                xchg ax,cx
0000010F  E81600            call word 0x128
00000112  C3                ret
00000113  BCFFFF            mov sp,0xffff
00000116  0E                push cs
00000117  0E                push cs
00000118  1F                pop ds
00000119  07                pop es
0000011A  BAF203            mov dx,0x3f2
0000011D  31C0              xor ax,ax
0000011F  EE                out dx,al
00000120  E80500            call word 0x128
00000123  EA0000FFFF        jmp word 0xffff:0x0
00000128  40                inc ax
00000129  CD10              int 0x10
0000012B  B401              mov ah,0x1
0000012D  B90020            mov cx,0x2000
00000130  CD10              int 0x10
00000132  FA                cli
00000133  31C0              xor ax,ax
00000135  50                push ax
00000136  1E                push ds
00000137  8ED8              mov ds,ax
00000139  BE2000            mov si,0x20
0000013C  BF087E            mov di,0x7e08
0000013F  A5                movsw
00000140  A5                movsw
00000141  A5                movsw
00000142  A5                movsw
00000143  1F                pop ds
00000144  06                push es
00000145  8EC0              mov es,ax
00000147  BF2000            mov di,0x20
0000014A  BEFA7D            mov si,0x7dfa
0000014D  8CC8              mov ax,cs
0000014F  A5                movsw
00000150  AB                stosw
00000151  A5                movsw
00000152  AB                stosw
00000153  07                pop es
00000154  E89B00            call word 0x1f2
00000157  FB                sti
00000158  F4                hlt
00000159  803E287C40        cmp byte [0x7c28],0x40
0000015E  74F8              jz 0x158
00000160  FA                cli
00000161  BE087E            mov si,0x7e08
00000164  07                pop es
00000165  BF2000            mov di,0x20
00000168  A5                movsw
00000169  A5                movsw
0000016A  A5                movsw
0000016B  A5                movsw
0000016C  FB                sti
0000016D  B80300            mov ax,0x3
00000170  CD10              int 0x10
00000172  C3                ret
00000173  FE0E177C          dec byte [0x7c17]
00000177  7574              jnz 0x1ed
00000179  C606177C04        mov byte [0x7c17],0x4
0000017E  E8CF00            call word 0x250
00000181  FE06027E          inc byte [0x7e02]
00000185  E8AF00            call word 0x237
00000188  7263              jc 0x1ed
0000018A  E86500            call word 0x1f2
0000018D  EB5E              jmp short 0x1ed
0000018F  E8BE00            call word 0x250
00000192  E460              in al,0x60
00000194  3C48              cmp al,0x48
00000196  741A              jz 0x1b2
00000198  3C4B              cmp al,0x4b
0000019A  7432              jz 0x1ce
0000019C  3C4D              cmp al,0x4d
0000019E  7434              jz 0x1d4
000001A0  3C50              cmp al,0x50
000001A2  7436              jz 0x1da
000001A4  3C01              cmp al,0x1
000001A6  7405              jz 0x1ad
000001A8  E88C00            call word 0x237
000001AB  EB40              jmp short 0x1ed
000001AD  E86300            call word 0x213
000001B0  EBF6              jmp short 0x1a8
000001B2  95                xchg ax,bp
000001B3  3C00              cmp al,0x0
000001B5  7414              jz 0x1cb
000001B7  3C03              cmp al,0x3
000001B9  730B              jnc 0x1c6
000001BB  F6C401            test ah,0x1
000001BE  7506              jnz 0x1c6
000001C0  E85500            call word 0x218
000001C3  E85200            call word 0x218
000001C6  E84F00            call word 0x218
000001C9  FEC4              inc ah
000001CB  95                xchg ax,bp
000001CC  EBDA              jmp short 0x1a8
000001CE  FE0E037E          dec byte [0x7e03]
000001D2  EBD4              jmp short 0x1a8
000001D4  FE06037E          inc byte [0x7e03]
000001D8  EBCE              jmp short 0x1a8
000001DA  FE06027E          inc byte [0x7e02]
000001DE  E87D00            call word 0x25e
000001E1  72F7              jc 0x1da
000001E3  FE0E027E          dec byte [0x7e02]
000001E7  E86A00            call word 0x254
000001EA  E80500            call word 0x1f2
000001ED  B020              mov al,0x20
000001EF  E620              out 0x20,al
000001F1  CF                iretw
000001F2  E89800            call word 0x28d
000001F5  BF007E            mov di,0x7e00
000001F8  BEEC7D            mov si,0x7dec
000001FB  E540              in ax,0x40
000001FD  250700            and ax,0x7
00000200  48                dec ax
00000201  78F8              js 0x1fb
00000203  89C5              mov bp,ax
00000205  D1E0              shl ax,1
00000207  01C6              add si,ax
00000209  B80003            mov ax,0x300
0000020C  A5                movsw
0000020D  AB                stosw
0000020E  E82600            call word 0x237
00000211  7204              jc 0x217
00000213  FE0E287C          dec byte [0x7c28]
00000217  C3                ret
00000218  8B1E007E          mov bx,[0x7e00]
0000021C  B90400            mov cx,0x4
0000021F  D3C3              rol bx,cl
00000221  51                push cx
00000222  B90404            mov cx,0x404
00000225  D3C3              rol bx,cl
00000227  D1D2              rcl dx,1
00000229  FECD              dec ch
0000022B  75F8              jnz 0x225
0000022D  D1CB              ror bx,1
0000022F  59                pop cx
00000230  E2EF              loop 0x221
00000232  8916007E          mov [0x7e00],dx
00000236  C3                ret
00000237  E82400            call word 0x25e
0000023A  9C                pushfw
0000023B  E80500            call word 0x243
0000023E  E81300            call word 0x254
00000241  9D                popfw
00000242  C3                ret
00000243  BE047E            mov si,0x7e04
00000246  BF007E            mov di,0x7e00
00000249  7302              jnc 0x24d
0000024B  87F7              xchg si,di
0000024D  A5                movsw
0000024E  A5                movsw
0000024F  C3                ret
00000250  B308              mov bl,0x8
00000252  EB04              jmp short 0x258
00000254  B309              mov bl,0x9
00000256  01EB              add bx,bp
00000258  F9                stc
00000259  E8E7FF            call word 0x243
0000025C  EB01              jmp short 0x25f
0000025E  F8                clc
0000025F  9C                pushfw
00000260  B90F00            mov cx,0xf
00000263  B80100            mov ax,0x1
00000266  D3E0              shl ax,cl
00000268  8506007E          test [0x7e00],ax
0000026C  741A              jz 0x288
0000026E  89C8              mov ax,cx
00000270  B204              mov dl,0x4
00000272  F6F2              div dl
00000274  0306027E          add ax,[0x7e02]
00000278  FEC8              dec al
0000027A  92                xchg ax,dx
0000027B  9D                popfw
0000027C  9C                pushfw
0000027D  E84500            call word 0x2c5
00000280  7206              jc 0x288
00000282  3C08              cmp al,0x8
00000284  7402              jz 0x288
00000286  9D                popfw
00000287  C3                ret
00000288  E2D9              loop 0x263
0000028A  58                pop ax
0000028B  F9                stc
0000028C  C3                ret
0000028D  F8                clc
0000028E  B214              mov dl,0x14
00000290  FECA              dec dl
00000292  7830              js 0x2c4
00000294  B609              mov dh,0x9
00000296  720A              jc 0x2a2
00000298  E82A00            call word 0x2c5
0000029B  3C08              cmp al,0x8
0000029D  74F1              jz 0x290
0000029F  F8                clc
000002A0  EB13              jmp short 0x2b5
000002A2  FECA              dec dl
000002A4  7904              jns 0x2aa
000002A6  B008              mov al,0x8
000002A8  EB04              jmp short 0x2ae
000002AA  F8                clc
000002AB  E81700            call word 0x2c5
000002AE  FEC2              inc dl
000002B0  93                xchg ax,bx
000002B1  F9                stc
000002B2  E81000            call word 0x2c5
000002B5  FECE              dec dh
000002B7  79DD              jns 0x296
000002B9  72D5              jc 0x290
000002BB  52                push dx
000002BC  F9                stc
000002BD  E8D4FF            call word 0x294
000002C0  F8                clc
000002C1  5A                pop dx
000002C2  EBD0              jmp short 0x294
000002C4  C3                ret
000002C5  1E                push ds
000002C6  9C                pushfw
000002C7  B800B8            mov ax,0xb800
000002CA  8ED8              mov ds,ax
000002CC  88D0              mov al,dl
000002CE  B428              mov ah,0x28
000002D0  F6E4              mul ah
000002D2  00F0              add al,dh
000002D4  80D400            adc ah,0x0
000002D7  D1E0              shl ax,1
000002D9  05BE00            add ax,0xbe
000002DC  96                xchg ax,si
000002DD  9D                popfw
000002DE  7204              jc 0x2e4
000002E0  46                inc si
000002E1  AC                lodsb
000002E2  1F                pop ds
000002E3  C3                ret
000002E4  88DC              mov ah,bl
000002E6  B0DB              mov al,0xdb
000002E8  8904              mov [si],ax
000002EA  1F                pop ds
000002EB  C3                ret
000002EC  60                pushaw
000002ED  06                push es
000002EE  C006600CF0        rol byte [0xc60],byte 0xf0
000002F3  00E0              add al,ah
000002F5  02E0              add ah,al
000002F7  04E0              add al,0xe0
000002F9  08737C            or [bp+di+0x7c],dh
000002FC  8F                db 0x8f
000002FD  7C55              jl 0x354
000002FF  AA                stosb
