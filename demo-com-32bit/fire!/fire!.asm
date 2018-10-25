00000100  BFFDFB            mov di,0xfbfd
00000103  33C0              xor ax,ax
00000105  BB00FF            mov bx,0xff00
00000108  BA003F            mov dx,0x3f00
0000010B  AB                stosw
0000010C  881D              mov [di],bl
0000010E  47                inc di
0000010F  80F907            cmp cl,0x7
00000112  7705              ja 0x119
00000114  80C303            add bl,0x3
00000117  EB4B              jmp short 0x164
00000119  80F90F            cmp cl,0xf
0000011C  7707              ja 0x125
0000011E  0402              add al,0x2
00000120  80EB03            sub bl,0x3
00000123  EB3F              jmp short 0x164
00000125  80F927            cmp cl,0x27
00000128  7704              ja 0x12e
0000012A  FEC0              inc al
0000012C  EB36              jmp short 0x164
0000012E  80F98A            cmp cl,0x8a
00000131  7718              ja 0x14b
00000133  3AC6              cmp al,dh
00000135  7304              jnc 0x13b
00000137  FEC0              inc al
00000139  EB02              jmp short 0x13d
0000013B  8AC6              mov al,dh
0000013D  0AD2              or dl,dl
0000013F  7506              jnz 0x147
00000141  FEC4              inc ah
00000143  B201              mov dl,0x1
00000145  EB1D              jmp short 0x164
00000147  FECA              dec dl
00000149  EB19              jmp short 0x164
0000014B  80F9C0            cmp cl,0xc0
0000014E  7712              ja 0x162
00000150  3AE6              cmp ah,dh
00000152  7410              jz 0x164
00000154  0AD2              or dl,dl
00000156  7506              jnz 0x15e
00000158  FEC4              inc ah
0000015A  B203              mov dl,0x3
0000015C  EB06              jmp short 0x164
0000015E  FECA              dec dl
00000160  EB02              jmp short 0x164
00000162  FEC3              inc bl
00000164  FEC1              inc cl
00000166  3ACF              cmp cl,bh
00000168  75A1              jnz 0x10b
0000016A  B81300            mov ax,0x13
0000016D  CD10              int 0x10
0000016F  BAC803            mov dx,0x3c8
00000172  33C0              xor ax,ax
00000174  EE                out dx,al
00000175  FEC2              inc dl
00000177  BEFDFB            mov si,0xfbfd
0000017A  B90003            mov cx,0x300
0000017D  F36E              rep outsb
0000017F  BFFD01            mov di,0x1fd
00000182  B9807E            mov cx,0x7e80
00000185  33C0              xor ax,ax
00000187  F3AB              rep stosw
00000189  6800A0            push word 0xa000
0000018C  07                pop es
0000018D  8CDD              mov bp,ds
0000018F  66BA6DC90E00      mov edx,0xec96d
00000195  B98002            mov cx,0x280
00000198  BEBDFA            mov si,0xfabd
0000019B  660FAFEA          imul ebp,edx
0000019F  6645              inc ebp
000001A1  8BC5              mov ax,bp
000001A3  C1F810            sar ax,byte 0x10
000001A6  8804              mov [si],al
000001A8  46                inc si
000001A9  E2F0              loop 0x19b
000001AB  B940BA            mov cx,0xba40
000001AE  33DB              xor bx,bx
000001B0  BF7D40            mov di,0x407d
000001B3  33C0              xor ax,ax
000001B5  8A9D4001          mov bl,[di+0x140]
000001B9  8A858002          mov al,[di+0x280]
000001BD  03C3              add ax,bx
000001BF  C1E004            shl ax,byte 0x4
000001C2  2BC3              sub ax,bx
000001C4  2BC3              sub ax,bx
000001C6  8A9D4101          mov bl,[di+0x141]
000001CA  03C3              add ax,bx
000001CC  8A9D3F01          mov bl,[di+0x13f]
000001D0  03C3              add ax,bx
000001D2  C1E805            shr ax,byte 0x5
000001D5  7402              jz 0x1d9
000001D7  FEC8              dec al
000001D9  8805              mov [di],al
000001DB  47                inc di
000001DC  E2D5              loop 0x1b3
000001DE  BADA03            mov dx,0x3da
000001E1  EC                in al,dx
000001E2  A808              test al,0x8
000001E4  74FB              jz 0x1e1
000001E6  BE7D40            mov si,0x407d
000001E9  BF803E            mov di,0x3e80
000001EC  B9402E            mov cx,0x2e40
000001EF  F366A5            rep movsd
000001F2  E460              in al,0x60
000001F4  3C01              cmp al,0x1
000001F6  7597              jnz 0x18f
000001F8  B003              mov al,0x3
000001FA  CD10              int 0x10
000001FC  C3                ret
