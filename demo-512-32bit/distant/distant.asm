00000100  B010              mov al,0x10
00000102  BB0010            mov bx,0x1000
00000105  B220              mov dl,0x20
00000107  8CC9              mov cx,cs
00000109  03CB              add cx,bx
0000010B  890E0010          mov [0x1000],cx
0000010F  890E0410          mov [0x1004],cx
00000113  03CB              add cx,bx
00000115  890E0210          mov [0x1002],cx
00000119  B92000            mov cx,0x20
0000011C  BF0003            mov di,0x300
0000011F  8805              mov [di],al
00000121  885560            mov [di+0x60],dl
00000124  47                inc di
00000125  883D              mov [di],bh
00000127  887D60            mov [di+0x60],bh
0000012A  47                inc di
0000012B  8815              mov [di],dl
0000012D  884560            mov [di+0x60],al
00000130  47                inc di
00000131  40                inc ax
00000132  81C38000          add bx,0x80
00000136  42                inc dx
00000137  E2E6              loop 0x11f
00000139  B81300            mov ax,0x13
0000013C  CD10              int 0x10
0000013E  B001              mov al,0x1
00000140  BAC803            mov dx,0x3c8
00000143  EE                out dx,al
00000144  B9FD02            mov cx,0x2fd
00000147  42                inc dx
00000148  BE0003            mov si,0x300
0000014B  F36E              rep outsb
0000014D  E8EB00            call 0x23b
00000150  B413              mov ah,0x13
00000152  BB2000            mov bx,0x20
00000155  B10B              mov cl,0xb
00000157  BA0600            mov dx,0x6
0000015A  BDE102            mov bp,0x2e1
0000015D  CD10              int 0x10
0000015F  33DB              xor bx,bx
00000161  33C9              xor cx,cx
00000163  A10010            mov ax,[0x1000]
00000166  8EC0              mov es,ax
00000168  8EE0              mov fs,ax
0000016A  E8F200            call 0x25f
0000016D  6800A0            push word 0xa000
00000170  07                pop es
00000171  BBB800            mov bx,0xb8
00000174  BE0014            mov si,0x1400
00000177  BF0814            mov di,0x1408
0000017A  B90001            mov cx,0x100
0000017D  64AC              fs lodsb
0000017F  2C20              sub al,0x20
00000181  AA                stosb
00000182  E2F9              loop 0x17d
00000184  83C740            add di,byte +0x40
00000187  4B                dec bx
00000188  75F0              jnz 0x17a
0000018A  C706FA028000      mov word [0x2fa],0x80
00000190  8E060210          mov es,[0x1002]
00000194  E8C800            call 0x25f
00000197  E8A100            call 0x23b
0000019A  8B1EFC02          mov bx,[0x2fc]
0000019E  8E870010          mov es,[bx+0x1000]
000001A2  8EA70210          mov fs,[bx+0x1002]
000001A6  8A3E0A10          mov bh,[0x100a]
000001AA  B501              mov ch,0x1
000001AC  E8B000            call 0x25f
000001AF  E87B00            call 0x22d
000001B2  6800A0            push word 0xa000
000001B5  07                pop es
000001B6  8B161210          mov dx,[0x1012]
000001BA  8A3E1410          mov bh,[0x1014]
000001BE  8B2E0E10          mov bp,[0x100e]
000001C2  8A261010          mov ah,[0x1010]
000001C6  B580              mov ch,0x80
000001C8  BFA03C            mov di,0x3ca0
000001CB  B180              mov cl,0x80
000001CD  8B361210          mov si,[0x1012]
000001D1  8A1E1410          mov bl,[0x1014]
000001D5  648A07            mov al,[fs:bx]
000001D8  03F5              add si,bp
000001DA  12DC              adc bl,ah
000001DC  AA                stosb
000001DD  FEC9              dec cl
000001DF  75F4              jnz 0x1d5
000001E1  03D5              add dx,bp
000001E3  12FC              adc bh,ah
000001E5  81C7C000          add di,0xc0
000001E9  FECD              dec ch
000001EB  75DE              jnz 0x1cb
000001ED  FE060A10          inc byte [0x100a]
000001F1  83060F1001        add word [0x100f],byte +0x1
000001F6  832E131040        sub word [0x1013],byte +0x40
000001FB  7508              jnz 0x205
000001FD  E83B00            call 0x23b
00000200  8336FC0202        xor word [0x2fc],byte +0x2
00000205  FF0EFE02          dec word [0x2fe]
00000209  758F              jnz 0x19a
0000020B  6800A0            push word 0xa000
0000020E  07                pop es
0000020F  B3C8              mov bl,0xc8
00000211  33FF              xor di,di
00000213  E81700            call 0x22d
00000216  33C0              xor ax,ax
00000218  B1A0              mov cl,0xa0
0000021A  F3AB              rep stosw
0000021C  FECB              dec bl
0000021E  75F3              jnz 0x213
00000220  B80300            mov ax,0x3
00000223  CD10              int 0x10
00000225  B409              mov ah,0x9
00000227  BAEC02            mov dx,0x2ec
0000022A  CD21              int 0x21
0000022C  C3                ret
0000022D  BADA03            mov dx,0x3da
00000230  EC                in al,dx
00000231  A808              test al,0x8
00000233  75FB              jnz 0x230
00000235  EC                in al,dx
00000236  A808              test al,0x8
00000238  74FB              jz 0x235
0000023A  C3                ret
0000023B  1E                push ds
0000023C  07                pop es
0000023D  33C0              xor ax,ax
0000023F  BF0A10            mov di,0x100a
00000242  B91000            mov cx,0x10
00000245  F3AA              rep stosb
00000247  C606101001        mov byte [0x1010],0x1
0000024C  C606141040        mov byte [0x1014],0x40
00000251  D126FA02          shl word [0x2fa],1
00000255  C3                ret
00000256  F7ED              imul bp
00000258  8AC4              mov al,ah
0000025A  8AE2              mov ah,dl
0000025C  2BC7              sub ax,di
0000025E  C3                ret
0000025F  B300              mov bl,0x0
00000261  8B3EFA02          mov di,[0x2fa]
00000265  8BEF              mov bp,di
00000267  03ED              add bp,bp
00000269  0FB6C3            movzx ax,bl
0000026C  E8E7FF            call 0x256
0000026F  057000            add ax,0x70
00000272  660FBFF0          movsx esi,ax
00000276  660FB6C7          movzx eax,bh
0000027A  E8D9FF            call 0x256
0000027D  052000            add ax,0x20
00000280  660FBFF8          movsx edi,ax
00000284  B121              mov cl,0x21
00000286  668BD6            mov edx,esi
00000289  660FAFD6          imul edx,esi
0000028D  668BC7            mov eax,edi
00000290  660FAFC7          imul eax,edi
00000294  662BD0            sub edx,eax
00000297  66C1FA0C          sar edx,byte 0xc
0000029B  6681C252040000    add edx,0x452
000002A2  660FAFFE          imul edi,esi
000002A6  66C1FF0B          sar edi,byte 0xb
000002AA  668BF2            mov esi,edx
000002AD  6681C7C3090000    add edi,0x9c3
000002B4  660FAFD2          imul edx,edx
000002B8  668BC7            mov eax,edi
000002BB  660FAFC0          imul eax,eax
000002BF  6603C2            add eax,edx
000002C2  FEC1              inc cl
000002C4  663D00000004      cmp eax,0x4000000
000002CA  7D05              jnl 0x2d1
000002CC  80F940            cmp cl,0x40
000002CF  72B5              jc 0x286
000002D1  26880F            mov [es:bx],cl
000002D4  FEC3              inc bl
000002D6  7589              jnz 0x261
000002D8  FEC7              inc bh
000002DA  FECD              dec ch
000002DC  7581              jnz 0x25f
000002DE  90                nop
000002DF  90                nop
000002E0  C3                ret
000002E1  AA                stosb
000002E2  204469            and [si+0x69],al
000002E5  7374              jnc 0x35b
000002E7  61                popa
000002E8  6E                outsb
000002E9  7420              jz 0x30b
000002EB  A90A43            test ax,0x430a
000002EE  6F                outsw
000002EF  646564206279      and [fs:bp+si+0x79],ah
000002F5  205A65            and [bp+si+0x65],bl
000002F8  642400            fs and al,0x0
000002FB  0C00              or al,0x0
000002FD  00D6              add dh,dl
000002FF  06                push es
