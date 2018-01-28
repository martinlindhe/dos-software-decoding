00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  B800A0            mov ax,0xa000
00000107  8EE8              mov gs,ax
00000109  8CC8              mov ax,cs
0000010B  80C410            add ah,0x10
0000010E  8EC0              mov es,ax
00000110  E87C00            call 0x18f
00000113  80762408          xor byte [bp+0x24],0x8
00000117  806E3C03          sub byte [bp+0x3c],0x3
0000011B  C6465CFF          mov byte [bp+0x5c],0xff
0000011F  FFD5              call bp
00000121  C64673FD          mov byte [bp+0x73],0xfd
00000125  80762A08          xor byte [bp+0x2a],0x8
00000129  80762701          xor byte [bp+0x27],0x1
0000012D  C606F70202        mov byte [0x2f7],0x2
00000132  FFD5              call bp
00000134  80761E08          xor byte [bp+0x1e],0x8
00000138  80762101          xor byte [bp+0x21],0x1
0000013C  C6467001          mov byte [bp+0x70],0x1
00000140  C606F50280        mov byte [0x2f5],0x80
00000145  FFD5              call bp
00000147  80762408          xor byte [bp+0x24],0x8
0000014B  80762D01          xor byte [bp+0x2d],0x1
0000014F  C6465CFE          mov byte [bp+0x5c],0xfe
00000153  C606F70206        mov byte [0x2f7],0x6
00000158  FFD5              call bp
0000015A  80463C03          add byte [bp+0x3c],0x3
0000015E  80762A08          xor byte [bp+0x2a],0x8
00000162  80762D01          xor byte [bp+0x2d],0x1
00000166  C606F90230        mov byte [0x2f9],0x30
0000016B  C606F502C0        mov byte [0x2f5],0xc0
00000170  C6466D03          mov byte [bp+0x6d],0x3
00000174  FFD5              call bp
00000176  80762A08          xor byte [bp+0x2a],0x8
0000017A  80762101          xor byte [bp+0x21],0x1
0000017E  C606F50280        mov byte [0x2f5],0x80
00000183  C64649FF          mov byte [bp+0x49],0xff
00000187  FFD5              call bp
00000189  B80300            mov ax,0x3
0000018C  CD10              int 0x10
0000018E  C3                ret
0000018F  29C0              sub ax,ax
00000191  29FF              sub di,di
00000193  B57D              mov ch,0x7d
00000195  F3AB              rep stosw
00000197  88C8              mov al,cl
00000199  BAC803            mov dx,0x3c8
0000019C  EE                out dx,al
0000019D  FEC2              inc dl
0000019F  D0E8              shr al,1
000001A1  88C5              mov ch,al
000001A3  80F980            cmp cl,0x80
000001A6  7204              jc 0x1ac
000001A8  88EC              mov ah,ch
000001AA  B53F              mov ch,0x3f
000001AC  88E0              mov al,ah
000001AE  C0E801            shr al,byte 0x1
000001B1  EE                out dx,al
000001B2  88E0              mov al,ah
000001B4  C0E800            shr al,byte 0x0
000001B7  EE                out dx,al
000001B8  88E8              mov al,ch
000001BA  C0E800            shr al,byte 0x0
000001BD  EE                out dx,al
000001BE  FEC1              inc cl
000001C0  75D5              jnz 0x197
000001C2  B97F00            mov cx,0x7f
000001C5  29C0              sub ax,ax
000001C7  E90C01            jmp 0x2d6
000001CA  E8E200            call 0x2af
000001CD  58                pop ax
000001CE  59                pop cx
000001CF  7402              jz 0x1d3
000001D1  E2F4              loop 0x1c7
000001D3  C3                ret
000001D4  8B4600            mov ax,[bp+0x0]
000001D7  0401              add al,0x1
000001D9  894600            mov [bp+0x0],ax
000001DC  8B4602            mov ax,[bp+0x2]
000001DF  04FF              add al,0xff
000001E1  894602            mov [bp+0x2],ax
000001E4  31C0              xor ax,ax
000001E6  31D2              xor dx,dx
000001E8  B730              mov bh,0x30
000001EA  0401              add al,0x1
000001EC  80C201            add dl,0x1
000001EF  894604            mov [bp+0x4],ax
000001F2  895606            mov [bp+0x6],dx
000001F5  80460802          add byte [bp+0x8],0x2
000001F9  80460A02          add byte [bp+0xa],0x2
000001FD  60                pusha
000001FE  04FE              add al,0xfe
00000200  80C201            add dl,0x1
00000203  60                pusha
00000204  89460C            mov [bp+0xc],ax
00000207  89560E            mov [bp+0xe],dx
0000020A  DBE3              fninit
0000020C  D9EB              fldpi
0000020E  DE76FB            fidiv word [bp-0x5]
00000211  DF4604            fild word [bp+0x4]
00000214  DE4600            fiadd word [bp+0x0]
00000217  D8C9              fmul st1
00000219  D9FE              fsin
0000021B  DE4E08            fimul word [bp+0x8]
0000021E  DE46F9            fiadd word [bp-0x7]
00000221  DF460C            fild word [bp+0xc]
00000224  D8CA              fmul st2
00000226  D9FF              fcos
00000228  DEC9              fmulp st1
0000022A  DF4606            fild word [bp+0x6]
0000022D  DE4602            fiadd word [bp+0x2]
00000230  D8CA              fmul st2
00000232  D9FF              fcos
00000234  DE4E0A            fimul word [bp+0xa]
00000237  DE46FB            fiadd word [bp-0x5]
0000023A  DF460E            fild word [bp+0xe]
0000023D  D8CB              fmul st3
0000023F  D9FE              fsin
00000241  DEC9              fmulp st1
00000243  DF46F7            fild word [bp-0x9]
00000246  D8FB              fdivr st3
00000248  DF460A            fild word [bp+0xa]
0000024B  D8C2              fadd st2
0000024D  D8C3              fadd st3
0000024F  D8CC              fmul st4
00000251  D9FE              fsin
00000253  DE4EF9            fimul word [bp-0x7]
00000256  D8C3              fadd st3
00000258  B104              mov cl,0x4
0000025A  D9C0              fld st0
0000025C  D8CA              fmul st2
0000025E  D9FB              fsincos
00000260  D8CC              fmul st4
00000262  DF5E10            fistp word [bp+0x10]
00000265  D8CB              fmul st3
00000267  DF5E12            fistp word [bp+0x12]
0000026A  8B4612            mov ax,[bp+0x12]
0000026D  056400            add ax,0x64
00000270  3DC700            cmp ax,0xc7
00000273  7720              ja 0x295
00000275  BE4001            mov si,0x140
00000278  F7E6              mul si
0000027A  8B7610            mov si,[bp+0x10]
0000027D  81C6A000          add si,0xa0
00000281  81FE3F01          cmp si,0x13f
00000285  770E              ja 0x295
00000287  01C6              add si,ax
00000289  268A04            mov al,[es:si]
0000028C  0430              add al,0x30
0000028E  7302              jnc 0x292
00000290  B0FF              mov al,0xff
00000292  268804            mov [es:si],al
00000295  DE46F5            fiadd word [bp-0xb]
00000298  E2C0              loop 0x25a
0000029A  61                popa
0000029B  FECB              dec bl
0000029D  0F855DFF          jnz near 0x1fe
000002A1  61                popa
000002A2  FECF              dec bh
000002A4  0F8542FF          jnz near 0x1ea
000002A8  C3                ret
000002A9  E828FF            call 0x1d4
000002AC  E825FF            call 0x1d4
000002AF  E822FF            call 0x1d4
000002B2  BD8F01            mov bp,0x18f
000002B5  BADA03            mov dx,0x3da
000002B8  EC                in al,dx
000002B9  A808              test al,0x8
000002BB  74FB              jz 0x2b8
000002BD  EC                in al,dx
000002BE  A808              test al,0x8
000002C0  75FB              jnz 0x2bd
000002C2  31FF              xor di,di
000002C4  B5FA              mov ch,0xfa
000002C6  268A05            mov al,[es:di]
000002C9  658805            mov [gs:di],al
000002CC  D0E8              shr al,1
000002CE  AA                stosb
000002CF  E2F5              loop 0x2c6
000002D1  E460              in al,0x60
000002D3  FEC8              dec al
000002D5  C3                ret
000002D6  BD0003            mov bp,0x300
000002D9  04FD              add al,0xfd
000002DB  80C401            add ah,0x1
000002DE  884600            mov [bp+0x0],al
000002E1  886602            mov [bp+0x2],ah
000002E4  51                push cx
000002E5  50                push ax
000002E6  31C0              xor ax,ax
000002E8  66894608          mov [bp+0x8],eax
000002EC  E9DBFE            jmp 0x1ca
000002EF  C8006400          enter 0x6400,0x0
000002F3  A00000            mov al,[0x0]
000002F6  0104              add [si],ax
000002F8  004000            add [bx+si+0x0],al
000002FB  800044            add byte [bx+si],0x44
000002FE  7274              jc 0x374
