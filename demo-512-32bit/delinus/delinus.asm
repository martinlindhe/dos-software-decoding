00000100  E90601            jmp 0x209
00000103  42                inc dx
00000104  60                pusha
00000105  E53B              in ax,0x3b
00000107  42                inc dx
00000108  60                pusha
00000109  E5BB              in ax,0xbb
0000010B  50                push ax
0000010C  726F              jc 0x17d
0000010E  6D                insw
0000010F  696E656E54        imul bp,[bp+0x65],word 0x546e
00000114  0A0D              or cl,[di]
00000116  248C              and al,0x8c
00000118  C880C410          enter 0xc480,0x10
0000011C  8EE0              mov fs,ax
0000011E  80C410            add ah,0x10
00000121  8EE8              mov gs,ax
00000123  8EC0              mov es,ax
00000125  FC                cld
00000126  33FF              xor di,di
00000128  6633C0            xor eax,eax
0000012B  B90040            mov cx,0x4000
0000012E  F366AB            rep stosd
00000131  B81300            mov ax,0x13
00000134  CD10              int 0x10
00000136  BAC903            mov dx,0x3c9
00000139  32C0              xor al,al
0000013B  EE                out dx,al
0000013C  EE                out dx,al
0000013D  8AC1              mov al,cl
0000013F  EE                out dx,al
00000140  FEC1              inc cl
00000142  75F5              jnz 0x139
00000144  FA                cli
00000145  B036              mov al,0x36
00000147  E643              out 0x43,al
00000149  B000              mov al,0x0
0000014B  E640              out 0x40,al
0000014D  B090              mov al,0x90
0000014F  E640              out 0x40,al
00000151  FB                sti
00000152  C3                ret
00000153  1E                push ds
00000154  0FA8              push gs
00000156  1F                pop ds
00000157  33FF              xor di,di
00000159  8A85C0FE          mov al,[di-0x140]
0000015D  02854001          add al,[di+0x140]
00000161  0245FF            add al,[di-0x1]
00000164  024501            add al,[di+0x1]
00000167  C1E802            shr ax,byte 0x2
0000016A  8805              mov [di],al
0000016C  47                inc di
0000016D  75EA              jnz 0x159
0000016F  6800A0            push word 0xa000
00000172  07                pop es
00000173  33F6              xor si,si
00000175  B90040            mov cx,0x4000
00000178  F366A5            rep movsd
0000017B  1F                pop ds
0000017C  C3                ret
0000017D  33F6              xor si,si
0000017F  B98913            mov cx,0x1389
00000182  64D94404          fld dword [fs:si+0x4]
00000186  D9C0              fld st0
00000188  64D94408          fld dword [fs:si+0x8]
0000018C  D80E0301          fmul dword [0x103]
00000190  D9E0              fchs
00000192  DEC1              faddp st1
00000194  64D95C04          fstp dword [fs:si+0x4]
00000198  D80E0301          fmul dword [0x103]
0000019C  64D94408          fld dword [fs:si+0x8]
000001A0  DEC1              faddp st1
000001A2  64D95C08          fstp dword [fs:si+0x8]
000001A6  83C60C            add si,byte +0xc
000001A9  E2D7              loop 0x182
000001AB  C3                ret
000001AC  0000              add [bx+si],al
000001AE  B442              mov ah,0x42
000001B0  CDCC              int 0xcc
000001B2  CC                int3
000001B3  3E1B2F            sbb bp,[ds:bx]
000001B6  DD3D              fnstsw [di]
000001B8  0800              or [bx+si],al
000001BA  0FBA2EAE010F      bts word [0x1ae],0xf
000001C0  B98306            mov cx,0x683
000001C3  D906AC01          fld dword [0x1ac]
000001C7  D806B401          fadd dword [0x1b4]
000001CB  D916AC01          fst dword [0x1ac]
000001CF  64D95C01          fstp dword [fs:si+0x1]
000001D3  D906AC01          fld dword [0x1ac]
000001D7  DE36FB02          fidiv word [0x2fb]
000001DB  D9FE              fsin
000001DD  D9062001          fld dword [0x120]
000001E1  D806B001          fadd dword [0x1b0]
000001E5  D9162001          fst dword [0x120]
000001E9  D9C0              fld st0
000001EB  D9FE              fsin
000001ED  DE0EB801          fimul word [0x1b8]
000001F1  D8CA              fmul st2
000001F3  64D95C04          fstp dword [fs:si+0x4]
000001F7  D9FF              fcos
000001F9  DE0EB801          fimul word [0x1b8]
000001FD  DEC9              fmulp st1
000001FF  64D95C08          fstp dword [fs:si+0x8]
00000203  83C60C            add si,byte +0xc
00000206  E2BB              loop 0x1c3
00000208  C3                ret
00000209  E80BFF            call 0x117
0000020C  33F6              xor si,si
0000020E  C606D20100        mov byte [0x1d2],0x0
00000213  E8A4FF            call 0x1ba
00000216  C606D20108        mov byte [0x1d2],0x8
0000021B  C606020200        mov byte [0x202],0x0
00000220  E897FF            call 0x1ba
00000223  C606F60108        mov byte [0x1f6],0x8
00000228  C606D20104        mov byte [0x1d2],0x4
0000022D  E88AFF            call 0x1ba
00000230  33C0              xor ax,ax
00000232  CD1A              int 0x1a
00000234  8916D902          mov [0x2d9],dx
00000238  C606850104        mov byte [0x185],0x4
0000023D  C606970104        mov byte [0x197],0x4
00000242  C6068E0103        mov byte [0x18e],0x3
00000247  C6069A0103        mov byte [0x19a],0x3
0000024C  E82EFF            call 0x17d
0000024F  C606850100        mov byte [0x185],0x0
00000254  C606970100        mov byte [0x197],0x0
00000259  C6068E0107        mov byte [0x18e],0x7
0000025E  C6069A0107        mov byte [0x19a],0x7
00000263  E817FF            call 0x17d
00000266  33F6              xor si,si
00000268  64D904            fld dword [fs:si]
0000026B  DE065C01          fiadd word [0x15c]
0000026F  D9C0              fld st0
00000271  D9C0              fld st0
00000273  64D87C04          fdivr dword [fs:si+0x4]
00000277  DE0E5C01          fimul word [0x15c]
0000027B  D9FC              frndint
0000027D  DF1E8202          fistp word [0x282]
00000281  BB0000            mov bx,0x0
00000284  83C364            add bx,byte +0x64
00000287  64D87C08          fdivr dword [fs:si+0x8]
0000028B  DE0E5C01          fimul word [0x15c]
0000028F  D9FC              frndint
00000291  DF1E9602          fistp word [0x296]
00000295  B90000            mov cx,0x0
00000298  81C1A000          add cx,0xa0
0000029C  DE265C01          fisub word [0x15c]
000002A0  D9FC              frndint
000002A2  DF1EA702          fistp word [0x2a7]
000002A6  B80000            mov ax,0x0
000002A9  F7D0              not ax
000002AB  058200            add ax,0x82
000002AE  C1E802            shr ax,byte 0x2
000002B1  32D2              xor dl,dl
000002B3  8AF3              mov dh,bl
000002B5  C1E306            shl bx,byte 0x6
000002B8  03DA              add bx,dx
000002BA  03D9              add bx,cx
000002BC  658A0F            mov cl,[gs:bx]
000002BF  3AC1              cmp al,cl
000002C1  7F02              jg 0x2c5
000002C3  86C1              xchg al,cl
000002C5  658807            mov [gs:bx],al
000002C8  83C60C            add si,byte +0xc
000002CB  81FE6CEA          cmp si,0xea6c
000002CF  7597              jnz 0x268
000002D1  E87FFE            call 0x153
000002D4  33C0              xor ax,ax
000002D6  CD1A              int 0x1a
000002D8  BB0000            mov bx,0x0
000002DB  2BDA              sub bx,dx
000002DD  74F5              jz 0x2d4
000002DF  FEC4              inc ah
000002E1  CD16              int 0x16
000002E3  0F8449FF          jz near 0x230
000002E7  B80300            mov ax,0x3
000002EA  CD10              int 0x10
000002EC  BA0B01            mov dx,0x10b
000002EF  B409              mov ah,0x9
000002F1  CD21              int 0x21
000002F3  C6064E01FF        mov byte [0x14e],0xff
000002F8  E949FE            jmp 0x144
000002FB  1D                db 0x1d
000002FC  00                db 0x00
