00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  680090            push word 0x9000
00000107  07                pop es
00000108  B9B004            mov cx,0x4b0
0000010B  89CE              mov si,cx
0000010D  D1E6              shl si,1
0000010F  E86201            call 0x274
00000112  E2F7              loop 0x10b
00000114  B9B004            mov cx,0x4b0
00000117  89CE              mov si,cx
00000119  D1E6              shl si,1
0000011B  803E9F0204        cmp byte [0x29f],0x4
00000120  7306              jnc 0x128
00000122  FE8CA222          dec byte [si+0x22a2]
00000126  EB04              jmp short 0x12c
00000128  FE84A222          inc byte [si+0x22a2]
0000012C  7503              jnz 0x131
0000012E  E84301            call 0x274
00000131  80BCA23228        cmp byte [si+0x32a2],0x28
00000136  8094A23200        adc byte [si+0x32a2],0x0
0000013B  DBE3              fninit
0000013D  D9EB              fldpi
0000013F  DE0E9D02          fimul word [0x29d]
00000143  DE369B02          fidiv word [0x29b]
00000147  D9FB              fsincos
00000149  D9C1              fld st1
0000014B  DE8CA212          fimul word [si+0x12a2]
0000014F  D9C1              fld st1
00000151  DE8CA202          fimul word [si+0x2a2]
00000155  D8E1              fsub st1
00000157  DF94A242          fist word [si+0x42a2]
0000015B  D9CA              fxch st2
0000015D  DE8CA212          fimul word [si+0x12a2]
00000161  D9C3              fld st3
00000163  DE8CA202          fimul word [si+0x2a2]
00000167  D8C1              fadd st1
00000169  DF94A252          fist word [si+0x52a2]
0000016D  B86400            mov ax,0x64
00000170  F7ACA242          imul word [si+0x42a2]
00000174  F7BCA222          idiv word [si+0x22a2]
00000178  05A000            add ax,0xa0
0000017B  A3A262            mov [0x62a2],ax
0000017E  B86400            mov ax,0x64
00000181  F7ACA252          imul word [si+0x52a2]
00000185  F7BCA222          idiv word [si+0x22a2]
00000189  83C064            add ax,byte +0x64
0000018C  A3A462            mov [0x62a4],ax
0000018F  B84001            mov ax,0x140
00000192  F72EA462          imul word [0x62a4]
00000196  0306A262          add ax,[0x62a2]
0000019A  89C7              mov di,ax
0000019C  813EA2623F01      cmp word [0x62a2],0x13f
000001A2  771B              ja 0x1bf
000001A4  813EA462C700      cmp word [0x62a4],0xc7
000001AA  7713              ja 0x1bf
000001AC  8A84A232          mov al,[si+0x32a2]
000001B0  AA                stosb
000001B1  803EA10201        cmp byte [0x2a1],0x1
000001B6  7507              jnz 0x1bf
000001B8  AA                stosb
000001B9  81C73E01          add di,0x13e
000001BD  AA                stosb
000001BE  AA                stosb
000001BF  49                dec cx
000001C0  0F8553FF          jnz near 0x117
000001C4  803E9F0202        cmp byte [0x29f],0x2
000001C9  7410              jz 0x1db
000001CB  803E9F0203        cmp byte [0x29f],0x3
000001D0  7409              jz 0x1db
000001D2  803E9F0206        cmp byte [0x29f],0x6
000001D7  7316              jnc 0x1ef
000001D9  EB20              jmp short 0x1fb
000001DB  FF069D02          inc word [0x29d]
000001DF  813E9D026901      cmp word [0x29d],0x169
000001E5  7214              jc 0x1fb
000001E7  C7069D020100      mov word [0x29d],0x1
000001ED  EB0C              jmp short 0x1fb
000001EF  FF0E9D02          dec word [0x29d]
000001F3  7506              jnz 0x1fb
000001F5  C7069D026801      mov word [0x29d],0x168
000001FB  BADA03            mov dx,0x3da
000001FE  EC                in al,dx
000001FF  A808              test al,0x8
00000201  74FB              jz 0x1fe
00000203  B31E              mov bl,0x1e
00000205  BA0500            mov dx,0x5
00000208  31FF              xor di,di
0000020A  B128              mov cl,0x28
0000020C  268A85AA19        mov al,[es:di+0x19aa]
00000211  3C00              cmp al,0x0
00000213  7402              jz 0x217
00000215  00D0              add al,dl
00000217  AA                stosb
00000218  E2F2              loop 0x20c
0000021A  81C71801          add di,0x118
0000021E  FECB              dec bl
00000220  75E8              jnz 0x20a
00000222  B31E              mov bl,0x1e
00000224  81C7C008          add di,0x8c0
00000228  4A                dec dx
00000229  75DF              jnz 0x20a
0000022B  1E                push ds
0000022C  6800A0            push word 0xa000
0000022F  07                pop es
00000230  680090            push word 0x9000
00000233  1F                pop ds
00000234  49                dec cx
00000235  89F7              mov di,si
00000237  F3A5              rep movsw
00000239  1F                pop ds
0000023A  680090            push word 0x9000
0000023D  07                pop es
0000023E  49                dec cx
0000023F  31C0              xor ax,ax
00000241  F3AB              rep stosw
00000243  B401              mov ah,0x1
00000245  CD16              int 0x16
00000247  751D              jnz 0x266
00000249  FE06A002          inc byte [0x2a0]
0000024D  7514              jnz 0x263
0000024F  FE069F02          inc byte [0x29f]
00000253  F61EA102          neg byte [0x2a1]
00000257  803E9F0208        cmp byte [0x29f],0x8
0000025C  7205              jc 0x263
0000025E  802E9F0208        sub byte [0x29f],0x8
00000263  E9AEFE            jmp 0x114
00000266  B80300            mov ax,0x3
00000269  CD10              int 0x10
0000026B  C3                ret
0000026C  E440              in al,0x40
0000026E  31D2              xor dx,dx
00000270  F7FB              idiv bx
00000272  42                inc dx
00000273  C3                ret
00000274  C684A2320F        mov byte [si+0x32a2],0xf
00000279  BB6400            mov bx,0x64
0000027C  E8EDFF            call 0x26c
0000027F  83EA32            sub dx,byte +0x32
00000282  8994A202          mov [si+0x2a2],dx
00000286  E8E3FF            call 0x26c
00000289  83EA32            sub dx,byte +0x32
0000028C  8994A212          mov [si+0x12a2],dx
00000290  BBFE00            mov bx,0xfe
00000293  E8D6FF            call 0x26c
00000296  8994A222          mov [si+0x22a2],dx
0000029A  C3                ret
0000029B  B400              mov ah,0x0
0000029D  1B00              sbb ax,[bx+si]
0000029F  0000              add [bx+si],al
000002A1  FF                db 0xff
