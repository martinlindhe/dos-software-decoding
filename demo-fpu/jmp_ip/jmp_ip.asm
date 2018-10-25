00000100  FC                cld
00000101  80C611            add dh,0x11
00000104  52                push dx
00000105  0FA1              pop fs
00000107  80C610            add dh,0x10
0000010A  52                push dx
0000010B  80C610            add dh,0x10
0000010E  52                push dx
0000010F  0FA9              pop gs
00000111  B013              mov al,0x13
00000113  CD10              int 0x10
00000115  B90001            mov cx,0x100
00000118  BF0020            mov di,0x2000
0000011B  D906ED02          fld dword [0x2ed]
0000011F  890C              mov [si],cx
00000121  DE0C              fimul word [si]
00000123  D9FE              fsin
00000125  D8C8              fmul st0
00000127  D8C8              fmul st0
00000129  D8C8              fmul st0
0000012B  DE0E6502          fimul word [0x265]
0000012F  DF5C02            fistp word [si+0x2]
00000132  8B4402            mov ax,[si+0x2]
00000135  AA                stosb
00000136  E2E3              loop 0x11b
00000138  33C9              xor cx,cx
0000013A  B720              mov bh,0x20
0000013C  8AD9              mov bl,cl
0000013E  8A07              mov al,[bx]
00000140  8ADD              mov bl,ch
00000142  8A27              mov ah,[bx]
00000144  F6E4              mul ah
00000146  8BD9              mov bx,cx
00000148  648827            mov [fs:bx],ah
0000014B  E2ED              loop 0x13a
0000014D  07                pop es
0000014E  33C9              xor cx,cx
00000150  8BF9              mov di,cx
00000152  E86901            call 0x2be
00000155  243F              and al,0x3f
00000157  0496              add al,0x96
00000159  AA                stosb
0000015A  E2F6              loop 0x152
0000015C  06                push es
0000015D  1F                pop ds
0000015E  B83011            mov ax,0x1130
00000161  B706              mov bh,0x6
00000163  CD10              int 0x10
00000165  BEF102            mov si,0x2f1
00000168  BBC03E            mov bx,0x3ec0
0000016B  EB39              jmp short 0x1a6
0000016D  60                pusha
0000016E  B410              mov ah,0x10
00000170  F6E4              mul ah
00000172  03C5              add ax,bp
00000174  8BF0              mov si,ax
00000176  B91000            mov cx,0x10
00000179  33C0              xor ax,ax
0000017B  26AC              es lodsb
0000017D  51                push cx
0000017E  B90800            mov cx,0x8
00000181  D0E0              shl al,1
00000183  7311              jnc 0x196
00000185  60                pusha
00000186  B108              mov cl,0x8
00000188  66C707FFFFFFFF    mov dword [bx],0xffffffff
0000018F  81C34001          add bx,0x140
00000193  E2F3              loop 0x188
00000195  61                popa
00000196  83C304            add bx,byte +0x4
00000199  E2E6              loop 0x181
0000019B  59                pop cx
0000019C  81C3E009          add bx,0x9e0
000001A0  E2D9              loop 0x17b
000001A2  61                popa
000001A3  83C323            add bx,byte +0x23
000001A6  2EAC              cs lodsb
000001A8  0AC0              or al,al
000001AA  75C1              jnz 0x16d
000001AC  0FA8              push gs
000001AE  07                pop es
000001AF  B590              mov ch,0x90
000001B1  33C0              xor ax,ax
000001B3  F3AB              rep stosw
000001B5  6800A0            push word 0xa000
000001B8  07                pop es
000001B9  E81101            call 0x2cd
000001BC  E80E01            call 0x2cd
000001BF  E80B01            call 0x2cd
000001C2  60                pusha
000001C3  B2C8              mov dl,0xc8
000001C5  B80100            mov ax,0x1
000001C8  EE                out dx,al
000001C9  42                inc dx
000001CA  B13F              mov cl,0x3f
000001CC  EE                out dx,al
000001CD  50                push ax
000001CE  52                push dx
000001CF  36F726F602        mul word [ss:0x2f6]
000001D4  BB4001            mov bx,0x140
000001D7  F7F3              div bx
000001D9  5A                pop dx
000001DA  EE                out dx,al
000001DB  58                pop ax
000001DC  50                push ax
000001DD  52                push dx
000001DE  36F726F802        mul word [ss:0x2f8]
000001E3  B3C8              mov bl,0xc8
000001E5  F6F3              div bl
000001E7  5A                pop dx
000001E8  EE                out dx,al
000001E9  58                pop ax
000001EA  40                inc ax
000001EB  E2DF              loop 0x1cc
000001ED  61                popa
000001EE  B9FF3F            mov cx,0x3fff
000001F1  33FF              xor di,di
000001F3  57                push di
000001F4  5E                pop si
000001F5  1E                push ds
000001F6  0FA8              push gs
000001F8  1F                pop ds
000001F9  F366A5            rep movsd
000001FC  0E                push cs
000001FD  1F                pop ds
000001FE  BFF402            mov di,0x2f4
00000201  BBC300            mov bx,0xc3
00000204  B90400            mov cx,0x4
00000207  47                inc di
00000208  47                inc di
00000209  81F3FC01          xor bx,0x1fc
0000020D  8B05              mov ax,[di]
0000020F  2B4504            sub ax,[di+0x4]
00000212  3BC3              cmp ax,bx
00000214  7704              ja 0x21a
00000216  8905              mov [di],ax
00000218  EB03              jmp short 0x21d
0000021A  F75D04            neg word [di+0x4]
0000021D  E2E8              loop 0x207
0000021F  8B1EF602          mov bx,[0x2f6]
00000223  8B2EF802          mov bp,[0x2f8]
00000227  1F                pop ds
00000228  83ED6F            sub bp,byte +0x6f
0000022B  BF92FF            mov di,0xff92
0000022E  45                inc bp
0000022F  81FDC800          cmp bp,0xc8
00000233  7352              jnc 0x287
00000235  69C54001          imul ax,bp,word 0x140
00000239  BE92FF            mov si,0xff92
0000023C  60                pusha
0000023D  03DE              add bx,si
0000023F  81FB4001          cmp bx,0x140
00000243  733B              jnc 0x280
00000245  03D8              add bx,ax
00000247  8A874001          mov al,[bx+0x140]
0000024B  2A87C0FE          sub al,[bx-0x140]
0000024F  1AE4              sbb ah,ah
00000251  2BC7              sub ax,di
00000253  E80E00            call 0x264
00000256  50                push ax
00000257  8A4701            mov al,[bx+0x1]
0000025A  2A47FF            sub al,[bx-0x1]
0000025D  1AE4              sbb ah,ah
0000025F  2BC6              sub ax,si
00000261  687502            push word 0x275
00000264  057F00            add ax,0x7f
00000267  3D0000            cmp ax,0x0
0000026A  7F02              jg 0x26e
0000026C  33C0              xor ax,ax
0000026E  0AE4              or ah,ah
00000270  7402              jz 0x274
00000272  B0FF              mov al,0xff
00000274  C3                ret
00000275  59                pop cx
00000276  8AE1              mov ah,cl
00000278  8BF0              mov si,ax
0000027A  648A24            mov ah,[fs:si]
0000027D  658827            mov [gs:bx],ah
00000280  61                popa
00000281  46                inc si
00000282  83FE6E            cmp si,byte +0x6e
00000285  75B5              jnz 0x23c
00000287  47                inc di
00000288  83FF6E            cmp di,byte +0x6e
0000028B  75A1              jnz 0x22e
0000028D  B93200            mov cx,0x32
00000290  BADA03            mov dx,0x3da
00000293  EC                in al,dx
00000294  A808              test al,0x8
00000296  75FB              jnz 0x293
00000298  EC                in al,dx
00000299  A808              test al,0x8
0000029B  74FB              jz 0x298
0000029D  B401              mov ah,0x1
0000029F  CD16              int 0x16
000002A1  0F841DFF          jz near 0x1c2
000002A5  0FA8              push gs
000002A7  1F                pop ds
000002A8  E82200            call 0x2cd
000002AB  60                pusha
000002AC  B90040            mov cx,0x4000
000002AF  8BF1              mov si,cx
000002B1  8BFE              mov di,si
000002B3  F366A5            rep movsd
000002B6  61                popa
000002B7  E2D7              loop 0x290
000002B9  B80300            mov ax,0x3
000002BC  CD10              int 0x10
000002BE  6669C58B2F9906    imul eax,ebp,dword 0x6992f8b
000002C5  668BE8            mov ebp,eax
000002C8  66C1D819          rcr eax,byte 0x19
000002CC  C3                ret
000002CD  33DB              xor bx,bx
000002CF  8A07              mov al,[bx]
000002D1  024701            add al,[bx+0x1]
000002D4  80D400            adc ah,0x0
000002D7  0247FF            add al,[bx-0x1]
000002DA  80D400            adc ah,0x0
000002DD  02874001          add al,[bx+0x140]
000002E1  80D400            adc ah,0x0
000002E4  C1E802            shr ax,byte 0x2
000002E7  8807              mov [bx],al
000002E9  4B                dec bx
000002EA  75E3              jnz 0x2cf
000002EC  C3                ret
000002ED  DB0F              fisttp dword [bx]
000002EF  49                dec cx
000002F0  3C4A              cmp al,0x4a
000002F2  4D                dec bp
000002F3  50                push ax
000002F4  204950            and [bx+di+0x50],cl
000002F7  005000            add [bx+si+0x0],dl
000002FA  0200              add al,[bx+si]
000002FC  0100              add [bx+si],ax
000002FE  00                db 0x00
