00000100  B80D00            mov ax,0xd
00000103  CD10              int 0x10
00000105  B409              mov ah,0x9
00000107  BAD402            mov dx,0x2d4
0000010A  CD21              int 0x21
0000010C  BAD403            mov dx,0x3d4
0000010F  B009              mov al,0x9
00000111  EE                out dx,al
00000112  42                inc dx
00000113  EE                out dx,al
00000114  B44A              mov ah,0x4a
00000116  BB0010            mov bx,0x1000
00000119  CD21              int 0x21
0000011B  B448              mov ah,0x48
0000011D  CD21              int 0x21
0000011F  8EC0              mov es,ax
00000121  B448              mov ah,0x48
00000123  CD21              int 0x21
00000125  8EE0              mov fs,ax
00000127  B9C4FF            mov cx,0xffc4
0000012A  51                push cx
0000012B  890E0003          mov [0x300],cx
0000012F  DF060003          fild word [0x300]
00000133  DF06FA02          fild word [0x2fa]
00000137  DEF9              fdivp st1
00000139  D9E8              fld1
0000013B  DEE9              fsubp st1
0000013D  D91E1003          fstp dword [0x310]
00000141  B983FF            mov cx,0xff83
00000144  51                push cx
00000145  890E0203          mov [0x302],cx
00000149  DF060203          fild word [0x302]
0000014D  DF06FA02          fild word [0x2fa]
00000151  DEF9              fdivp st1
00000153  D91E0C03          fstp dword [0x30c]
00000157  D9EE              fldz
00000159  D91E0403          fstp dword [0x304]
0000015D  D9EE              fldz
0000015F  D91E0803          fstp dword [0x308]
00000163  BD1800            mov bp,0x18
00000166  D9060403          fld dword [0x304]
0000016A  D91E1803          fstp dword [0x318]
0000016E  D9060803          fld dword [0x308]
00000172  D91E1403          fstp dword [0x314]
00000176  D9061803          fld dword [0x318]
0000017A  D8C8              fmul st0
0000017C  D9061403          fld dword [0x314]
00000180  D8C8              fmul st0
00000182  DEE9              fsubp st1
00000184  D9061003          fld dword [0x310]
00000188  DEC1              faddp st1
0000018A  D91E0403          fstp dword [0x304]
0000018E  D9061803          fld dword [0x318]
00000192  D9061403          fld dword [0x314]
00000196  DEC9              fmulp st1
00000198  D8C0              fadd st0
0000019A  D9060C03          fld dword [0x30c]
0000019E  DEC1              faddp st1
000001A0  D91E0803          fstp dword [0x308]
000001A4  45                inc bp
000001A5  D9060403          fld dword [0x304]
000001A9  D8C8              fmul st0
000001AB  D9060803          fld dword [0x308]
000001AF  D8C8              fmul st0
000001B1  DEC1              faddp st1
000001B3  D9EB              fldpi
000001B5  DED9              fcompp
000001B7  9BDFE0            fstsw ax
000001BA  F6C401            test ah,0x1
000001BD  7507              jnz 0x1c6
000001BF  83FD7C            cmp bp,byte +0x7c
000001C2  7F02              jg 0x1c6
000001C4  EBA0              jmp short 0x166
000001C6  A10003            mov ax,[0x300]
000001C9  053C00            add ax,0x3c
000001CC  86E0              xchg ah,al
000001CE  8BF8              mov di,ax
000001D0  03F9              add di,cx
000001D2  83C77D            add di,byte +0x7d
000001D5  8BC5              mov ax,bp
000001D7  AA                stosb
000001D8  59                pop cx
000001D9  41                inc cx
000001DA  81F98300          cmp cx,0x83
000001DE  0F8E62FF          jng near 0x144
000001E2  59                pop cx
000001E3  41                inc cx
000001E4  81F9C400          cmp cx,0xc4
000001E8  0F8E3EFF          jng near 0x12a
000001EC  B81300            mov ax,0x13
000001EF  CD10              int 0x10
000001F1  8306F80203        add word [0x2f8],byte +0x3
000001F6  06                push es
000001F7  0FA0              push fs
000001F9  0FA0              push fs
000001FB  0FA9              pop gs
000001FD  06                push es
000001FE  0FA1              pop fs
00000200  DF06F802          fild word [0x2f8]
00000204  D906FC02          fld dword [0x2fc]
00000208  DEC9              fmulp st1
0000020A  D9FE              fsin
0000020C  DF06F802          fild word [0x2f8]
00000210  DEC9              fmulp st1
00000212  DF1E0003          fistp word [0x300]
00000216  DF06F802          fild word [0x2f8]
0000021A  D906FC02          fld dword [0x2fc]
0000021E  DEC9              fmulp st1
00000220  D9FF              fcos
00000222  DF06F802          fild word [0x2f8]
00000226  DEC9              fmulp st1
00000228  DF1E0203          fistp word [0x302]
0000022C  33ED              xor bp,bp
0000022E  892E1C03          mov [0x31c],bp
00000232  B9C800            mov cx,0xc8
00000235  51                push cx
00000236  B8C800            mov ax,0xc8
00000239  2BC1              sub ax,cx
0000023B  86C4              xchg al,ah
0000023D  8BF8              mov di,ax
0000023F  C1EF02            shr di,byte 0x2
00000242  03F8              add di,ax
00000244  0FA8              push gs
00000246  07                pop es
00000247  B9A000            mov cx,0xa0
0000024A  33F6              xor si,si
0000024C  A10003            mov ax,[0x300]
0000024F  66C1E010          shl eax,byte 0x10
00000253  A10203            mov ax,[0x302]
00000256  668BF0            mov esi,eax
00000259  8BD5              mov dx,bp
0000025B  66C1E210          shl edx,byte 0x10
0000025F  8B161C03          mov dx,[0x31c]
00000263  6603D6            add edx,esi
00000266  668BDA            mov ebx,edx
00000269  66C1EB10          shr ebx,byte 0x10
0000026D  8ADE              mov bl,dh
0000026F  1E                push ds
00000270  0FA0              push fs
00000272  1F                pop ds
00000273  8A07              mov al,[bx]
00000275  6603D6            add edx,esi
00000278  668BDA            mov ebx,edx
0000027B  66C1EB10          shr ebx,byte 0x10
0000027F  8ADE              mov bl,dh
00000281  8A27              mov ah,[bx]
00000283  AB                stosw
00000284  1F                pop ds
00000285  E2DC              loop 0x263
00000287  032E0203          add bp,[0x302]
0000028B  A11C03            mov ax,[0x31c]
0000028E  2B060003          sub ax,[0x300]
00000292  A31C03            mov [0x31c],ax
00000295  59                pop cx
00000296  E29D              loop 0x235
00000298  0FA1              pop fs
0000029A  BADA03            mov dx,0x3da
0000029D  B408              mov ah,0x8
0000029F  EC                in al,dx
000002A0  22C4              and al,ah
000002A2  74FB              jz 0x29f
000002A4  1E                push ds
000002A5  6800A0            push word 0xa000
000002A8  07                pop es
000002A9  0FA0              push fs
000002AB  1F                pop ds
000002AC  33FF              xor di,di
000002AE  33F6              xor si,si
000002B0  B9803E            mov cx,0x3e80
000002B3  F366A5            rep movsd
000002B6  1F                pop ds
000002B7  07                pop es
000002B8  813EF802DC05      cmp word [0x2f8],0x5dc
000002BE  0F822FFF          jc near 0x1f1
000002C2  B80300            mov ax,0x3
000002C5  CD10              int 0x10
000002C7  B449              mov ah,0x49
000002C9  CD21              int 0x21
000002CB  0FA0              push fs
000002CD  07                pop es
000002CE  B449              mov ah,0x49
000002D0  CD21              int 0x21
000002D2  CD20              int 0x20
000002D4  43                inc bx
000002D5  7A79              jpe 0x350
000002D7  6A20              push byte +0x20
000002D9  746F              jz 0x34a
000002DB  206672            and [bp+0x72],ah
000002DE  61                popa
000002DF  6B74616C          imul si,[si+0x61],byte +0x6c
000002E3  3F                aas
000002E4  204B61            and [bp+di+0x61],cl
000002E7  726F              jc 0x358
000002E9  6C                insb
000002EA  207A6E            and [bp+si+0x6e],bh
000002ED  6F                outsw
000002EE  7775              ja 0x365
000002F0  207477            and [si+0x77],dh
000002F3  6F                outsw
000002F4  6A3F              push byte +0x3f
000002F6  3F                aas
000002F7  3F                aas
000002F8  2400              and al,0x0
000002FA  46                inc si
000002FB  0034              add [si],dh
000002FD  FA                cli
000002FE  8E3C              mov segr7,[si]
