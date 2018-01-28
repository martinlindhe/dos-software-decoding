00000100  B81300            mov ax,0x13
00000103  CD10              int 0x10
00000105  BE2601            mov si,0x126
00000108  BF0503            mov di,0x305
0000010B  B91800            mov cx,0x18
0000010E  F3A5              rep movsw
00000110  6800A0            push word 0xa000
00000113  07                pop es
00000114  33D2              xor dx,dx
00000116  B90001            mov cx,0x100
00000119  E8A400            call 0x1c0
0000011C  B90700            mov cx,0x7
0000011F  BE0503            mov si,0x305
00000122  51                push cx
00000123  8BD9              mov bx,cx
00000125  80C308            add bl,0x8
00000128  8A5401            mov dl,[si+0x1]
0000012B  8A7404            mov dh,[si+0x4]
0000012E  B90100            mov cx,0x1
00000131  E82501            call 0x259
00000134  B102              mov cl,0x2
00000136  8B04              mov ax,[si]
00000138  0AE4              or ah,ah
0000013A  7406              jz 0x142
0000013C  FEC4              inc ah
0000013E  7402              jz 0x142
00000140  EB03              jmp short 0x145
00000142  F65C02            neg byte [si+0x2]
00000145  0FBE4402          movsx ax,[si+0x2]
00000149  0104              add [si],ax
0000014B  83C603            add si,byte +0x3
0000014E  E2E6              loop 0x136
00000150  59                pop cx
00000151  E2CF              loop 0x122
00000153  FF068502          inc word [0x285]
00000157  A18502            mov ax,[0x285]
0000015A  80FC02            cmp ah,0x2
0000015D  7706              ja 0x165
0000015F  BD8702            mov bp,0x287
00000162  B91800            mov cx,0x18
00000165  80FC03            cmp ah,0x3
00000168  7506              jnz 0x170
0000016A  BD9F02            mov bp,0x29f
0000016D  B91900            mov cx,0x19
00000170  80FC04            cmp ah,0x4
00000173  7506              jnz 0x17b
00000175  BDB802            mov bp,0x2b8
00000178  B91B00            mov cx,0x1b
0000017B  80FC05            cmp ah,0x5
0000017E  7506              jnz 0x186
00000180  BDD302            mov bp,0x2d3
00000183  B91500            mov cx,0x15
00000186  80FC06            cmp ah,0x6
00000189  7206              jc 0x191
0000018B  BDE802            mov bp,0x2e8
0000018E  B91800            mov cx,0x18
00000191  80FC0A            cmp ah,0xa
00000194  7424              jz 0x1ba
00000196  1E                push ds
00000197  07                pop es
00000198  BB0E00            mov bx,0xe
0000019B  C1D804            rcr ax,byte 0x4
0000019E  80D300            adc bl,0x0
000001A1  B80013            mov ax,0x1300
000001A4  BA0418            mov dx,0x1804
000001A7  CD10              int 0x10
000001A9  BADA03            mov dx,0x3da
000001AC  EC                in al,dx
000001AD  A808              test al,0x8
000001AF  74F8              jz 0x1a9
000001B1  E460              in al,0x60
000001B3  FEC8              dec al
000001B5  7403              jz 0x1ba
000001B7  E956FF            jmp 0x110
000001BA  B80300            mov ax,0x3
000001BD  CD10              int 0x10
000001BF  C3                ret
000001C0  60                pusha
000001C1  E84800            call 0x20c
000001C4  A00003            mov al,[0x300]
000001C7  49                dec cx
000001C8  7421              jz 0x1eb
000001CA  02D1              add dl,cl
000001CC  E83D00            call 0x20c
000001CF  3A060003          cmp al,[0x300]
000001D3  751F              jnz 0x1f4
000001D5  02F1              add dh,cl
000001D7  E83200            call 0x20c
000001DA  3A060003          cmp al,[0x300]
000001DE  7514              jnz 0x1f4
000001E0  2AD1              sub dl,cl
000001E2  E82700            call 0x20c
000001E5  3A060003          cmp al,[0x300]
000001E9  7509              jnz 0x1f4
000001EB  61                popa
000001EC  8A1E0003          mov bl,[0x300]
000001F0  E86600            call 0x259
000001F3  C3                ret
000001F4  61                popa
000001F5  60                pusha
000001F6  D1E9              shr cx,1
000001F8  E8C5FF            call 0x1c0
000001FB  02D1              add dl,cl
000001FD  E8C0FF            call 0x1c0
00000200  02F1              add dh,cl
00000202  E8BBFF            call 0x1c0
00000205  2AD1              sub dl,cl
00000207  E8B6FF            call 0x1c0
0000020A  61                popa
0000020B  C3                ret
0000020C  60                pusha
0000020D  BE0503            mov si,0x305
00000210  C606030364        mov byte [0x303],0x64
00000215  B90700            mov cx,0x7
00000218  50                push ax
00000219  660FB64401        movzx eax,byte [si+0x1]
0000021E  660FB6DA          movzx ebx,dl
00000222  662BC3            sub eax,ebx
00000225  52                push dx
00000226  66F7E8            imul eax
00000229  5A                pop dx
0000022A  668BF8            mov edi,eax
0000022D  660FB64404        movzx eax,byte [si+0x4]
00000232  660FB6DE          movzx ebx,dh
00000236  662BC3            sub eax,ebx
00000239  52                push dx
0000023A  66F7E8            imul eax
0000023D  5A                pop dx
0000023E  6603F8            add edi,eax
00000241  58                pop ax
00000242  663B3E0103        cmp edi,[0x301]
00000247  7309              jnc 0x252
00000249  66893E0103        mov [0x301],edi
0000024E  880E0003          mov [0x300],cl
00000252  83C606            add si,byte +0x6
00000255  E2C1              loop 0x218
00000257  61                popa
00000258  C3                ret
00000259  60                pusha
0000025A  80FEC8            cmp dh,0xc8
0000025D  7324              jnc 0x283
0000025F  8BFA              mov di,dx
00000261  83C720            add di,byte +0x20
00000264  8AC6              mov al,dh
00000266  B440              mov ah,0x40
00000268  F6E4              mul ah
0000026A  03F8              add di,ax
0000026C  8BD1              mov dx,cx
0000026E  51                push cx
0000026F  57                push di
00000270  8AC3              mov al,bl
00000272  F3AA              rep stosb
00000274  5F                pop di
00000275  59                pop cx
00000276  81C74001          add di,0x140
0000027A  81FF00FA          cmp di,0xfa00
0000027E  7303              jnc 0x283
00000280  4A                dec dx
00000281  75EB              jnz 0x26e
00000283  61                popa
00000284  C3                ret
00000285  0000              add [bx+si],al
00000287  9D                popf
00000288  E2AE              loop 0x238
0000028A  202D              and [di],ch
0000028C  20A4A8A0          and [si-0x5f58],ah
00000290  A3E0A0            mov [0xa0e0],ax
00000293  AC                lodsb
00000294  AC                lodsb
00000295  A02082            mov al,[0x8220]
00000298  AE                scasb
00000299  E0AE              loopne 0x249
0000029B  AD                lodsw
0000029C  AE                scasb
0000029D  A3AEAF            mov [0xafae],ax
000002A0  AE                scasb
000002A1  20ADA5A9          and [di-0x565b],ch
000002A5  20ACAEA6          and [si-0x5952],ch
000002A9  AD                lodsw
000002AA  AE                scasb
000002AB  20AEE7A5          and [bp-0x5a19],ch
000002AF  AD                lodsw
000002B0  EC                in al,dx
000002B1  20A1EBE1          and [bx+di-0x1e15],ah
000002B5  E2E0              loop 0x297
000002B7  AE                scasb
000002B8  E1E2              loope 0x29c
000002BA  E0AE              loopne 0x26a
000002BC  A8E2              test al,0xe2
000002BE  EC                in al,dx
000002BF  20E2              and dl,ah
000002C1  E0A8              loopne 0x26b
000002C3  A0ADA3            mov al,[0xa3ad]
000002C6  E3AB              jcxz 0x273
000002C8  EF                out dx,ax
000002C9  E6A8              out 0xa8,al
000002CB  EE                out dx,al
000002CC  2084A5AB          and [si-0x545b],al
000002D0  AE                scasb
000002D1  AD                lodsw
000002D2  A5                movsw
000002D3  8DAE20ED          lea bp,[bp-0x12e0]
000002D7  E2AE              loop 0x287
000002D9  20A5E9A5          and [di-0x5a17],ah
000002DD  20A820AA          and [bx+si-0x55e0],ch
000002E1  E0A0              loopne 0x283
000002E3  E1A8              loope 0x28d
000002E5  A2AE21            mov [0x21ae],al
000002E8  8020A2            and byte [bx+si],0xa2
000002EB  A0AC20            mov al,[0x20ac]
000002EE  E1AB              loope 0x29b
000002F0  A0A1AE            mov al,[0xaea1]
000002F3  20A22035          and [bp+si+0x3520],ah
000002F7  3132              xor [bp+si],si
000002F9  20A1A0A9          and [bx+di-0x5660],ah
000002FD  E23F              loop 0x33e
000002FF  21                db 0x21
