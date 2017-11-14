00000100  CD03              int 0x3
00000102  BB0040            mov bx,0x4000
00000105  BE8040            mov si,0x4080
00000108  88D8              mov al,bl
0000010A  D0E8              shr al,1
0000010C  00D8              add al,bl
0000010E  89C1              mov cx,ax
00000110  F7E1              mul cx
00000112  F7E1              mul cx
00000114  BF0060            mov di,0x6000
00000117  F7F7              div di
00000119  29C1              sub cx,ax
0000011B  880F              mov [bx],cl
0000011D  880C              mov [si],cl
0000011F  F6D9              neg cl
00000121  888F8000          mov [bx+0x80],cl
00000125  888C8000          mov [si+0x80],cl
00000129  FEC3              inc bl
0000012B  4E                dec si
0000012C  80FB40            cmp bl,0x40
0000012F  76D7              jna 0x108
00000131  B013              mov al,0x13
00000133  CD10              int 0x10
00000135  B800A0            mov ax,0xa000
00000138  8ED8              mov ds,ax
0000013A  8EC0              mov es,ax
0000013C  31FF              xor di,di
0000013E  882D              mov [di],ch
00000140  88AD7C01          mov [di+0x17c],ch
00000144  BE7D01            mov si,0x17d
00000147  29FE              sub si,di
00000149  882C              mov [si],ch
0000014B  88AC7C01          mov [si+0x17c],ch
0000014F  83C703            add di,byte +0x3
00000152  FEC5              inc ch
00000154  80FD40            cmp ch,0x40
00000157  72E5              jc 0x13e
00000159  31F6              xor si,si
0000015B  BAC803            mov dx,0x3c8
0000015E  EE                out dx,al
0000015F  42                inc dx
00000160  B90003            mov cx,0x300
00000163  F36E              rep outsb
00000165  8CC8              mov ax,cs
00000167  8ED8              mov ds,ax
00000169  FEC2              inc dl
0000016B  30C9              xor cl,cl
0000016D  31FF              xor di,di
0000016F  88CB              mov bl,cl
00000171  00D3              add bl,dl
00000173  8A37              mov dh,[bx]
00000175  30ED              xor ch,ch
00000177  88F3              mov bl,dh
00000179  8A07              mov al,[bx]
0000017B  28C8              sub al,cl
0000017D  88C4              mov ah,al
0000017F  00F4              add ah,dh
00000181  29C8              sub ax,cx
00000183  F6C101            test cl,0x1
00000186  7402              jz 0x18a
00000188  86E0              xchg ah,al
0000018A  AB                stosw
0000018B  FEC3              inc bl
0000018D  FEC5              inc ch
0000018F  80FDA0            cmp ch,0xa0
00000192  72E5              jc 0x179
00000194  FEC1              inc cl
00000196  80F9C8            cmp cl,0xc8
00000199  72D4              jc 0x16f
0000019B  E460              in al,0x60
0000019D  3C01              cmp al,0x1
0000019F  75C8              jnz 0x169
000001A1  B80300            mov ax,0x3
000001A4  CD10              int 0x10
000001A6  C3                ret
