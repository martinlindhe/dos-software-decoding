00000100  B81300            mov ax,0x13
00000103  CD10              int 0x10
00000105  680090            push word 0x9000
00000108  07                pop es
00000109  B90008            mov cx,0x800
0000010C  E83F01            call 0x24e
0000010F  E2FB              loop 0x10c
00000111  B90008            mov cx,0x800
00000114  8BF1              mov si,cx
00000116  D1E6              shl si,1
00000118  803EFC0204        cmp byte [0x2fc],0x4
0000011D  7308              jnc 0x127
0000011F  FF8C0023          dec word [si+0x2300]
00000123  7511              jnz 0x136
00000125  EB0C              jmp short 0x133
00000127  FF840023          inc word [si+0x2300]
0000012B  81BC0023C800      cmp word [si+0x2300],0xc8
00000131  7203              jc 0x136
00000133  E81801            call 0x24e
00000136  80BC003328        cmp byte [si+0x3300],0x28
0000013B  7404              jz 0x141
0000013D  FE840033          inc byte [si+0x3300]
00000141  FFB40033          push word [si+0x3300]
00000145  8F060A63          pop word [0x630a]
00000149  DBE3              fninit
0000014B  D9EB              fldpi
0000014D  DE0EFA02          fimul word [0x2fa]
00000151  DE36F802          fidiv word [0x2f8]
00000155  D9FB              fsincos
00000157  D9C1              fld st1
00000159  DE8C0013          fimul word [si+0x1300]
0000015D  D9C1              fld st1
0000015F  DE8C0003          fimul word [si+0x300]
00000163  D8E1              fsub st1
00000165  DF940043          fist word [si+0x4300]
00000169  D9CA              fxch st2
0000016B  DE8C0013          fimul word [si+0x1300]
0000016F  D9C3              fld st3
00000171  DE8C0003          fimul word [si+0x300]
00000175  D8C1              fadd st1
00000177  DF940053          fist word [si+0x5300]
0000017B  E8FF00            call 0x27d
0000017E  E294              loop 0x114
00000180  803EFC0202        cmp byte [0x2fc],0x2
00000185  7410              jz 0x197
00000187  803EFC0203        cmp byte [0x2fc],0x3
0000018C  7409              jz 0x197
0000018E  803EFC0206        cmp byte [0x2fc],0x6
00000193  7316              jnc 0x1ab
00000195  EB20              jmp short 0x1b7
00000197  FF06FA02          inc word [0x2fa]
0000019B  813EFA026901      cmp word [0x2fa],0x169
000001A1  7214              jc 0x1b7
000001A3  C706FA020100      mov word [0x2fa],0x1
000001A9  EB0C              jmp short 0x1b7
000001AB  FF0EFA02          dec word [0x2fa]
000001AF  7506              jnz 0x1b7
000001B1  C706FA026801      mov word [0x2fa],0x168
000001B7  BADA03            mov dx,0x3da
000001BA  EC                in al,dx
000001BB  A808              test al,0x8
000001BD  75FB              jnz 0x1ba
000001BF  EC                in al,dx
000001C0  A808              test al,0x8
000001C2  74FB              jz 0x1bf
000001C4  BB1E00            mov bx,0x1e
000001C7  BA0300            mov dx,0x3
000001CA  33FF              xor di,di
000001CC  B92800            mov cx,0x28
000001CF  268A85B44B        mov al,[es:di+0x4bb4]
000001D4  3C00              cmp al,0x0
000001D6  7402              jz 0x1da
000001D8  0434              add al,0x34
000001DA  88850B63          mov [di+0x630b],al
000001DE  AA                stosb
000001DF  E2EE              loop 0x1cf
000001E1  81C71801          add di,0x118
000001E5  4B                dec bx
000001E6  75E4              jnz 0x1cc
000001E8  BB1E00            mov bx,0x1e
000001EB  81C7C008          add di,0x8c0
000001EF  4A                dec dx
000001F0  75DA              jnz 0x1cc
000001F2  1E                push ds
000001F3  6800A0            push word 0xa000
000001F6  1F                pop ds
000001F7  06                push es
000001F8  1E                push ds
000001F9  07                pop es
000001FA  1F                pop ds
000001FB  B9007D            mov cx,0x7d00
000001FE  33FF              xor di,di
00000200  33F6              xor si,si
00000202  F3A5              rep movsw
00000204  06                push es
00000205  1E                push ds
00000206  07                pop es
00000207  1F                pop ds
00000208  1F                pop ds
00000209  B9007D            mov cx,0x7d00
0000020C  33FF              xor di,di
0000020E  33C0              xor ax,ax
00000210  F3AB              rep stosw
00000212  B401              mov ah,0x1
00000214  CD16              int 0x16
00000216  741F              jz 0x237
00000218  B400              mov ah,0x0
0000021A  CD16              int 0x16
0000021C  3C1B              cmp al,0x1b
0000021E  741A              jz 0x23a
00000220  FE06FC02          inc byte [0x2fc]
00000224  803EFC0202        cmp byte [0x2fc],0x2
00000229  720C              jc 0x237
0000022B  803EFC0208        cmp byte [0x2fc],0x8
00000230  7205              jc 0x237
00000232  C606FC0200        mov byte [0x2fc],0x0
00000237  E9D7FE            jmp 0x111
0000023A  B80300            mov ax,0x3
0000023D  CD10              int 0x10
0000023F  C3                ret
00000240  E440              in al,0x40
00000242  02E0              add ah,al
00000244  E440              in al,0x40
00000246  33D2              xor dx,dx
00000248  BB6400            mov bx,0x64
0000024B  F7FB              idiv bx
0000024D  C3                ret
0000024E  51                push cx
0000024F  5E                pop si
00000250  D1E6              shl si,1
00000252  C68400330F        mov byte [si+0x3300],0xf
00000257  E8E6FF            call 0x240
0000025A  83EA32            sub dx,byte +0x32
0000025D  89940003          mov [si+0x300],dx
00000261  E8DCFF            call 0x240
00000264  83EA32            sub dx,byte +0x32
00000267  89940013          mov [si+0x1300],dx
0000026B  E8D2FF            call 0x240
0000026E  803EFC0204        cmp byte [0x2fc],0x4
00000273  7303              jnc 0x278
00000275  83C264            add dx,byte +0x64
00000278  89940023          mov [si+0x2300],dx
0000027C  C3                ret
0000027D  83BC002300        cmp word [si+0x2300],byte +0x0
00000282  7504              jnz 0x288
00000284  FF840023          inc word [si+0x2300]
00000288  B86400            mov ax,0x64
0000028B  8B9C0043          mov bx,[si+0x4300]
0000028F  F7EB              imul bx
00000291  8B9C0023          mov bx,[si+0x2300]
00000295  F7FB              idiv bx
00000297  05A000            add ax,0xa0
0000029A  A30663            mov [0x6306],ax
0000029D  B86400            mov ax,0x64
000002A0  8B9C0053          mov bx,[si+0x5300]
000002A4  F7EB              imul bx
000002A6  8B9C0023          mov bx,[si+0x2300]
000002AA  F7FB              idiv bx
000002AC  056400            add ax,0x64
000002AF  A30863            mov [0x6308],ax
000002B2  A10863            mov ax,[0x6308]
000002B5  BB4001            mov bx,0x140
000002B8  F7EB              imul bx
000002BA  03060663          add ax,[0x6306]
000002BE  8BF8              mov di,ax
000002C0  813E06633F01      cmp word [0x6306],0x13f
000002C6  772F              ja 0x2f7
000002C8  813E0863C700      cmp word [0x6308],0xc7
000002CE  7727              ja 0x2f7
000002D0  A00A63            mov al,[0x630a]
000002D3  AA                stosb
000002D4  803EFC0200        cmp byte [0x2fc],0x0
000002D9  741C              jz 0x2f7
000002DB  803EFC0203        cmp byte [0x2fc],0x3
000002E0  7415              jz 0x2f7
000002E2  803EFC0204        cmp byte [0x2fc],0x4
000002E7  740E              jz 0x2f7
000002E9  803EFC0207        cmp byte [0x2fc],0x7
000002EE  7407              jz 0x2f7
000002F0  AA                stosb
000002F1  81C73E01          add di,0x13e
000002F5  AA                stosb
000002F6  AA                stosb
000002F7  C3                ret
000002F8  B400              mov ah,0x0
000002FA  1B00              sbb ax,[bx+si]
000002FC  0010              add [bx+si],dl
000002FE  0000              add [bx+si],al
