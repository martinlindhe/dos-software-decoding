00000100  BB1101            mov bx,0x111
00000103  BA7A02            mov dx,0x27a
00000106  B8F8D4            mov ax,0xd4f8
00000109  3107              xor [bx],ax
0000010B  40                inc ax
0000010C  43                inc bx
0000010D  3BDA              cmp bx,dx
0000010F  75F8              jnz 0x109
00000111  40                inc ax
00000112  2D8EA1            sub ax,0xa18e
00000115  E89139            call word 0x3aa9
00000118  2B19              sub bx,[bx+di]
0000011A  C46E96            les bp,[bp-0x6a]
0000011D  D05B2A            rcr byte [bp+di+0x2a],1
00000120  9D                popfw
00000121  2A35              sub dh,[di]
00000123  DD1A              fstp qword [bp+si]
00000125  59                pop cx
00000126  3BD8              cmp bx,ax
00000128  2406              and al,0x6
0000012A  760F              jna 0x13b
0000012C  CA416A            retf 0x6a41
0000012F  42                inc dx
00000130  05F2CD            add ax,0xcdf2
00000133  CD0D              int 0xd
00000135  37                aaa
00000136  02BE3917          add bh,[bp+0x1739]
0000013A  17                pop ss
0000013B  46                inc si
0000013C  F24A              repne dec dx
0000013E  CB                retf
0000013F  F1                int1
00000140  A33BFA            mov [0xfa3b],ax
00000143  7CFC              jl 0x141
00000145  F9                stc
00000146  689B12            push word 0x129b
00000149  31E4              xor sp,sp
0000014B  0FADE1            shrd cx,sp,cl
0000014E  810B2FED          or word [bp+di],0xed2f
00000152  6D                insw
00000153  C16EEB6B          shr word [bp-0x15],byte 0x6b
00000157  E91493            jmp word 0x946e
0000015A  17                pop ss
0000015B  95                xchg ax,bp
0000015C  7EAB              jng 0x109
0000015E  90                nop
0000015F  6D                insw
00000160  9C                pushfw
00000161  1E                push ds
00000162  9E                sahf
00000163  DCC7              fadd to st7
00000165  7B41              jpo 0x1a8
00000167  61                popaw
00000168  6446              fs inc si
0000016A  3E5D              ds pop bp
0000016C  856D28            test [di+0x28],bp
0000016F  8BF7              mov si,di
00000171  7660              jna 0x1d3
00000173  27                daa
00000174  86FD              xchg bh,ch
00000176  7370              jnc 0x1e8
00000178  3A35              cmp dh,[di]
0000017A  3E7F04            ds jg 0x181
0000017D  795E              jns 0x1dd
0000017F  F1                int1
00000180  387CBE            cmp [si-0x42],bh
00000183  7C48              jl 0x1cd
00000185  6956897A4B        imul dx,[bp-0x77],word 0x4b7a
0000018A  4A                dec dx
0000018B  45                inc bp
0000018C  55                push bp
0000018D  15A16E            adc ax,0x6ea1
00000190  B4D9              mov ah,0xd9
00000192  7817              js 0x1ab
00000194  AD                lodsw
00000195  A965BB            test ax,0xbb65
00000198  69DF536B          imul bx,di,word 0x6b53
0000019C  56                push si
0000019D  25A961            and ax,0x61a9
000001A0  B6FE              mov dh,0xfe
000001A2  225D0D            and bl,[di+0xd]
000001A5  D26EDB            shr byte [bp-0x25],cl
000001A8  58                pop ax
000001A9  E43A              in al,0x3a
000001AB  45                inc bp
000001AC  87A143FC          xchg sp,[bx+di-0x3bd]
000001B0  2CB7              sub al,0xb7
000001B2  4F                dec di
000001B3  B7FC              mov bh,0xfc
000001B5  41                inc cx
000001B6  56                push si
000001B7  F34A              rep dec dx
000001B9  85FA              test dx,di
000001BB  AF                scasw
000001BC  FC                cld
000001BD  746F              jz 0x22e
000001BF  C57AAD            lds di,[bp+si-0x53]
000001C2  AC                lodsb
000001C3  0C57              or al,0x57
000001C5  E9E829            jmp word 0x2bb0
000001C8  F1                int1
000001C9  BBEF71            mov bx,0x71ef
000001CC  1A632A            sbb ah,[bp+di+0x2a]
000001CF  E86C17            call word 0x193e
000001D2  6E                outsb
000001D3  3F                aas
000001D4  CE                into
000001D5  EA6A4DE212        jmp word 0x12e2:0x4d6a
000001DA  4C                dec sp
000001DB  54                push sp
000001DC  F4                hlt
000001DD  E45A              in al,0x5a
000001DF  671E              push ds
000001E1  8D8C9EDD          lea cx,[si-0x2262]
000001E5  59                pop cx
000001E6  1930              sbb [bx+si],si
000001E8  047F              add al,0x7f
000001EA  06                push es
000001EB  EC                in al,dx
000001EC  E45B              in al,0x5b
000001EE  0335              add si,[di]
000001F0  780F              js 0x201
000001F2  F2C17BC24F        repne sar word [bp+di-0x3e],byte 0x4f
000001F7  AA                stosb
000001F8  7037              jo 0x231
000001FA  F5                cmc
000001FB  D7                xlatb
000001FC  351AC0            xor ax,0xc01a
000001FF  8B723C            mov si,[bp+si+0x3c]
00000202  B721              mov bh,0x21
00000204  42                inc dx
00000205  3B7369            cmp si,[bp+di+0x69]
00000208  CDC6              int 0xc6
0000020A  7E24              jng 0x230
0000020C  D6                salc
0000020D  DFEA              fucomip st2
0000020F  56                push si
00000210  87768C            xchg si,[bp-0x74]
00000213  AD                lodsw
00000214  2C1B              sub al,0x1b
00000216  CC                int3
00000217  2A2C              sub ch,[si]
00000219  55                push bp
0000021A  D597              aad 0x97
0000021C  3CA8              cmp al,0xa8
0000021E  2C5B              sub al,0x5b
00000220  D6                salc
00000221  7DA5              jnl 0x1c8
00000223  DE9E9950          ficomp word [bp+0x5099]
00000227  DF7ABA            fistp qword [bp+si-0x46]
0000022A  C5878648          lds ax,[bx+0x4886]
0000022E  C46243            les sp,[bp+si+0x43]
00000231  CC                int3
00000232  8C47CA            mov [bx-0x36],es
00000235  694BCA8AB5        imul cx,[bp+di-0x36],word 0xb58a
0000023A  34F2              xor al,0xf2
0000023C  F5                cmc
0000023D  F1                int1
0000023E  F3CC              rep int3
00000240  03EC              add bp,sp
00000242  BBB5BC            mov bx,0xbcb5
00000245  B6FB              mov dh,0xfb
00000247  FA                cli
00000248  F9                stc
00000249  E2E7              loop 0x232
0000024B  F031D7            lock xor di,dx
0000024E  C8D4D0C3          enter 0xd0d4,0xc3
00000252  DC                db 0xdc
00000253  DDDE              fstp st6
00000255  C7                db 0xc7
00000256  DBDA              fcmovnu st2
00000258  DEA5AFA1          fisub word [di-0x5e51]
0000025C  95                xchg ax,bp
0000025D  9A939391A2        call word 0xa291:0x9393
00000262  D9F8              fprem
00000264  DBD5              fcmovnbe st5
00000266  C9                leave
00000267  98                cbw
00000268  9D                popfw
00000269  868D84A5          xchg cl,[di-0x5a7c]
0000026D  40                inc ax
0000026E  0CD4              or al,0xd4
00000270  D3C7              rol di,cl
00000272  C0DCD9            rcr ah,byte 0xd9
00000275  C3                ret
00000276  C6                db 0xc6
00000277  DDC4              ffree st4
00000279  B6                db 0xb6
