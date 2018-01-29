00000100  B760              mov bh,0x60
00000102  B44A              mov ah,0x4a
00000104  CD21              int 0x21
00000106  0F821C01          jc near 0x226
0000010A  D92EE602          fldcw [0x2e6]
0000010E  BF0003            mov di,0x300
00000111  57                push di
00000112  33C0              xor ax,ax
00000114  8BCB              mov cx,bx
00000116  F3AA              rep stosb
00000118  5F                pop di
00000119  BEEC02            mov si,0x2ec
0000011C  8BCB              mov cx,bx
0000011E  AC                lodsb
0000011F  AB                stosw
00000120  E2FC              loop 0x11e
00000122  8CC2              mov dx,es
00000124  80C610            add dh,0x10
00000127  89163003          mov [0x330],dx
0000012B  BD0300            mov bp,0x3
0000012E  8EC2              mov es,dx
00000130  33FF              xor di,di
00000132  B98000            mov cx,0x80
00000135  E8EF00            call 0x227
00000138  80C610            add dh,0x10
0000013B  4D                dec bp
0000013C  75F0              jnz 0x12e
0000013E  8EC2              mov es,dx
00000140  89163203          mov [0x332],dx
00000144  33FF              xor di,di
00000146  B91027            mov cx,0x2710
00000149  893C              mov [si],di
0000014B  DF04              fild word [si]
0000014D  DE361003          fidiv word [0x310]
00000151  D9FF              fcos
00000153  E88101            call 0x2d7
00000156  DE361403          fidiv word [0x314]
0000015A  D9FE              fsin
0000015C  E85C01            call 0x2bb
0000015F  AB                stosw
00000160  DF04              fild word [si]
00000162  DE361A03          fidiv word [0x31a]
00000166  D9FE              fsin
00000168  E86C01            call 0x2d7
0000016B  DE361C03          fidiv word [0x31c]
0000016F  D9FF              fcos
00000171  E84701            call 0x2bb
00000174  262B45FE          sub ax,[es:di-0x2]
00000178  AB                stosw
00000179  FF04              inc word [si]
0000017B  E2CE              loop 0x14b
0000017D  8CC2              mov dx,es
0000017F  80C610            add dh,0x10
00000182  8EC2              mov es,dx
00000184  89163403          mov [0x334],dx
00000188  33FF              xor di,di
0000018A  B528              mov ch,0x28
0000018C  893C              mov [si],di
0000018E  BB0A03            mov bx,0x30a
00000191  B81E03            mov ax,0x31e
00000194  E80301            call 0x29a
00000197  BB2203            mov bx,0x322
0000019A  B82403            mov ax,0x324
0000019D  E8FA00            call 0x29a
000001A0  BB2603            mov bx,0x326
000001A3  B80003            mov ax,0x300
000001A6  E8F100            call 0x29a
000001A9  FF04              inc word [si]
000001AB  E2E1              loop 0x18e
000001AD  B81300            mov ax,0x13
000001B0  CD10              int 0x10
000001B2  B800A0            mov ax,0xa000
000001B5  8EC0              mov es,ax
000001B7  33C0              xor ax,ax
000001B9  8BEE              mov bp,si
000001BB  894600            mov [bp+0x0],ax
000001BE  BADA03            mov dx,0x3da
000001C1  EC                in al,dx
000001C2  A808              test al,0x8
000001C4  74F8              jz 0x1be
000001C6  8B7600            mov si,[bp+0x0]
000001C9  D1E6              shl si,1
000001CB  037600            add si,[bp+0x0]
000001CE  BAC803            mov dx,0x3c8
000001D1  B001              mov al,0x1
000001D3  EE                out dx,al
000001D4  42                inc dx
000001D5  B9FD02            mov cx,0x2fd
000001D8  1E                push ds
000001D9  8E1E3403          mov ds,[0x334]
000001DD  F36E              rep outsb
000001DF  1F                pop ds
000001E0  8B7E00            mov di,[bp+0x0]
000001E3  C1E702            shl di,byte 0x2
000001E6  1E                push ds
000001E7  8E1E3203          mov ds,[0x332]
000001EB  8B35              mov si,[di]
000001ED  8B5D02            mov bx,[di+0x2]
000001F0  1F                pop ds
000001F1  1E                push ds
000001F2  8E1E3003          mov ds,[0x330]
000001F6  33FF              xor di,di
000001F8  B5C8              mov ch,0xc8
000001FA  B150              mov cl,0x50
000001FC  66AD              lodsd
000001FE  660300            add eax,[bx+si]
00000201  66AB              stosd
00000203  FEC9              dec cl
00000205  75F5              jnz 0x1fc
00000207  81EE4001          sub si,0x140
0000020B  8CDA              mov dx,ds
0000020D  83C220            add dx,byte +0x20
00000210  8EDA              mov ds,dx
00000212  FECD              dec ch
00000214  75E4              jnz 0x1fa
00000216  1F                pop ds
00000217  FF4600            inc word [bp+0x0]
0000021A  817E001027        cmp word [bp+0x0],0x2710
0000021F  759D              jnz 0x1be
00000221  B80300            mov ax,0x3
00000224  CD10              int 0x10
00000226  C3                ret
00000227  BE2803            mov si,0x328
0000022A  BB2A03            mov bx,0x32a
0000022D  C7040000          mov word [si],0x0
00000231  DF04              fild word [si]
00000233  DE360003          fidiv word [0x300]
00000237  D9FE              fsin
00000239  DF07              fild word [bx]
0000023B  DE360203          fidiv word [0x302]
0000023F  D9FF              fcos
00000241  DF04              fild word [si]
00000243  DE360403          fidiv word [0x304]
00000247  D9FF              fcos
00000249  DF07              fild word [bx]
0000024B  DE360603          fidiv word [0x306]
0000024F  D9FE              fsin
00000251  DF04              fild word [si]
00000253  DE07              fiadd word [bx]
00000255  DE360803          fidiv word [0x308]
00000259  D9FE              fsin
0000025B  DF06E802          fild word [0x2e8]
0000025F  DE24              fisub word [si]
00000261  D8C8              fmul st0
00000263  DF06EA02          fild word [0x2ea]
00000267  DE27              fisub word [bx]
00000269  D8C8              fmul st0
0000026B  DEC1              faddp st1
0000026D  D9FA              fsqrt
0000026F  DE360A03          fidiv word [0x30a]
00000273  D9FF              fcos
00000275  B80500            mov ax,0x5
00000278  DEC1              faddp st1
0000027A  48                dec ax
0000027B  75FB              jnz 0x278
0000027D  DE0E0C03          fimul word [0x30c]
00000281  DE060E03          fiadd word [0x30e]
00000285  DF1E2C03          fistp word [0x32c]
00000289  A02C03            mov al,[0x32c]
0000028C  AA                stosb
0000028D  FF04              inc word [si]
0000028F  813C0002          cmp word [si],0x200
00000293  729C              jc 0x231
00000295  FF07              inc word [bx]
00000297  E294              loop 0x22d
00000299  C3                ret
0000029A  DF04              fild word [si]
0000029C  DE37              fidiv word [bx]
0000029E  D9FE              fsin
000002A0  DF04              fild word [si]
000002A2  8BD8              mov bx,ax
000002A4  DE37              fidiv word [bx]
000002A6  D9FE              fsin
000002A8  DE0E2003          fimul word [0x320]
000002AC  DEC9              fmulp st1
000002AE  DE062003          fiadd word [0x320]
000002B2  DB1E2C03          fistp dword [0x32c]
000002B6  A02C03            mov al,[0x32c]
000002B9  AA                stosb
000002BA  C3                ret
000002BB  D9FF              fcos
000002BD  DE0E1603          fimul word [0x316]
000002C1  DE061803          fiadd word [0x318]
000002C5  DB1E2C03          fistp dword [0x32c]
000002C9  A12C03            mov ax,[0x32c]
000002CC  BA0002            mov dx,0x200
000002CF  F7E2              mul dx
000002D1  03C3              add ax,bx
000002D3  056000            add ax,0x60
000002D6  C3                ret
000002D7  DE0E1203          fimul word [0x312]
000002DB  DB1E2C03          fistp dword [0x32c]
000002DF  8B1E2C03          mov bx,[0x32c]
000002E3  DF04              fild word [si]
000002E5  C3                ret
000002E6  7F0F              jg 0x2f7
000002E8  0001              add [bx+di],al
000002EA  96                xchg ax,si
000002EB  001E2E25          add [0x252e],bl
000002EF  46                inc si
000002F0  2B14              sub dx,[si]
000002F2  0A4020            or al,[bx+si+0x20]
000002F5  5C                pop sp
000002F6  102F              adc [bx],ch
000002F8  2F                das
000002F9  15180F            adc ax,0xf18
000002FC  1F                pop ds
000002FD  23                db 0x23
000002FE  16                push ss
000002FF  0D                db 0x0d
