00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  B800A0            mov ax,0xa000
00000107  8EC0              mov es,ax
00000109  B1DE              mov cl,0xde
0000010B  8AC1              mov al,cl
0000010D  8AE1              mov ah,cl
0000010F  C0EC02            shr ah,byte 0x2
00000112  8AFC              mov bh,ah
00000114  B300              mov bl,0x0
00000116  E89F00            call word 0x1b8
00000119  E2F0              loop 0x10b
0000011B  B007              mov al,0x7
0000011D  B43F              mov ah,0x3f
0000011F  33DB              xor bx,bx
00000121  E89400            call word 0x1b8
00000124  B5FA              mov ch,0xfa
00000126  8B36FB01          mov si,[0x1fb]
0000012A  81C61027          add si,0x2710
0000012E  8BD9              mov bx,cx
00000130  8A00              mov al,[bx+si]
00000132  3C64              cmp al,0x64
00000134  727E              jc 0x1b4
00000136  90                nop
00000137  90                nop
00000138  268807            mov [es:bx],al
0000013B  E2F1              loop 0x12e
0000013D  B107              mov cl,0x7
0000013F  60                pushaw
00000140  8CDA              mov dx,ds
00000142  B800A0            mov ax,0xa000
00000145  8ED8              mov ds,ax
00000147  33F6              xor si,si
00000149  32E4              xor ah,ah
0000014B  32FF              xor bh,bh
0000014D  8A843F01          mov al,[si+0x13f]
00000151  8A9C4001          mov bl,[si+0x140]
00000155  03C3              add ax,bx
00000157  8A9C4101          mov bl,[si+0x141]
0000015B  03C3              add ax,bx
0000015D  8A1C              mov bl,[si]
0000015F  03C3              add ax,bx
00000161  C1E802            shr ax,byte 0x2
00000164  7404              jz 0x16a
00000166  90                nop
00000167  90                nop
00000168  FEC8              dec al
0000016A  8804              mov [si],al
0000016C  46                inc si
0000016D  75DA              jnz 0x149
0000016F  8EDA              mov ds,dx
00000171  61                popaw
00000172  E2CB              loop 0x13f
00000174  B118              mov cl,0x18
00000176  E84E00            call word 0x1c7
00000179  E85A00            call word 0x1d6
0000017C  E2F8              loop 0x176
0000017E  B117              mov cl,0x17
00000180  B402              mov ah,0x2
00000182  BB1700            mov bx,0x17
00000185  2BD9              sub bx,cx
00000187  8A97E401          mov dl,[bx+0x1e4]
0000018B  CD21              int 0x21
0000018D  E83700            call word 0x1c7
00000190  E84300            call word 0x1d6
00000193  B208              mov dl,0x8
00000195  CD21              int 0x21
00000197  E2E9              loop 0x182
00000199  33C0              xor ax,ax
0000019B  CD16              int 0x16
0000019D  B80300            mov ax,0x3
000001A0  CD10              int 0x10
000001A2  B119              mov cl,0x19
000001A4  B402              mov ah,0x2
000001A6  8BD9              mov bx,cx
000001A8  83EB02            sub bx,byte +0x2
000001AB  8A97E401          mov dl,[bx+0x1e4]
000001AF  CD21              int 0x21
000001B1  E2F3              loop 0x1a6
000001B3  C3                ret
000001B4  0478              add al,0x78
000001B6  EB80              jmp short 0x138
000001B8  BAC803            mov dx,0x3c8
000001BB  EE                out dx,al
000001BC  42                inc dx
000001BD  8AC4              mov al,ah
000001BF  EE                out dx,al
000001C0  8AC3              mov al,bl
000001C2  EE                out dx,al
000001C3  8AC7              mov al,bh
000001C5  EE                out dx,al
000001C6  C3                ret
000001C7  60                pushaw
000001C8  B42C              mov ah,0x2c
000001CA  CD21              int 0x21
000001CC  8ADA              mov bl,dl
000001CE  CD21              int 0x21
000001D0  3AD3              cmp dl,bl
000001D2  74FA              jz 0x1ce
000001D4  61                popaw
000001D5  C3                ret
000001D6  60                pushaw
000001D7  B80107            mov ax,0x701
000001DA  33C9              xor cx,cx
000001DC  B618              mov dh,0x18
000001DE  B200              mov dl,0x0
000001E0  CD10              int 0x10
000001E2  61                popaw
000001E3  C3                ret
000001E4  2A6475            sub ah,[si+0x75]
000001E7  6F                outsw
000001E8  6C                insb
000001E9  6320              arpl [bx+si],sp
000001EB  656C              gs insb
000001ED  7072              jo 0x261
000001EF  7570              jnz 0x261
000001F1  206C65            and [si+0x65],ch
000001F4  7474              jz 0x26a
000001F6  696C20412A        imul bp,[si+0x20],word 0x2a41
