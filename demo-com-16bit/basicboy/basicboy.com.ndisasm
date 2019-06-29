00000100  C8040000          enter 0x4,0x0
00000104  B81300            mov ax,0x13
00000107  CD10              int 0x10
00000109  B409              mov ah,0x9
0000010B  BA2B04            mov dx,0x42b
0000010E  CD21              int 0x21
00000110  BFF404            mov di,0x4f4
00000113  E88E02            call 0x3a4
00000116  B81300            mov ax,0x13
00000119  CD10              int 0x10
0000011B  B409              mov ah,0x9
0000011D  BA6D04            mov dx,0x46d
00000120  CD21              int 0x21
00000122  BF042C            mov di,0x2c04
00000125  E87C02            call 0x3a4
00000128  B81300            mov ax,0x13
0000012B  CD10              int 0x10
0000012D  B409              mov ah,0x9
0000012F  BA9204            mov dx,0x492
00000132  CD21              int 0x21
00000134  BF247A            mov di,0x7a24
00000137  E86A02            call 0x3a4
0000013A  B81300            mov ax,0x13
0000013D  CD10              int 0x10
0000013F  B409              mov ah,0x9
00000141  BAB604            mov dx,0x4b6
00000144  CD21              int 0x21
00000146  BF34A1            mov di,0xa134
00000149  E85802            call 0x3a4
0000014C  B81300            mov ax,0x13
0000014F  CD10              int 0x10
00000151  BF1453            mov di,0x5314
00000154  E84D02            call 0x3a4
00000157  C746FE0000        mov word [bp-0x2],0x0
0000015C  EB1F              jmp short 0x17d
0000015E  6A00              push byte +0x0
00000160  8B46FE            mov ax,[bp-0x2]
00000163  C1F802            sar ax,byte 0x2
00000166  B220              mov dl,0x20
00000168  2AD0              sub dl,al
0000016A  52                push dx
0000016B  8B46FE            mov ax,[bp-0x2]
0000016E  D1F8              sar ax,1
00000170  50                push ax
00000171  FF76FE            push word [bp-0x2]
00000174  E82401            call 0x29b
00000177  83C408            add sp,byte +0x8
0000017A  FF46FE            inc word [bp-0x2]
0000017D  817EFE8000        cmp word [bp-0x2],0x80
00000182  7CDA              jl 0x15e
00000184  C746FE0000        mov word [bp-0x2],0x0
00000189  EB22              jmp short 0x1ad
0000018B  6A00              push byte +0x0
0000018D  8B46FE            mov ax,[bp-0x2]
00000190  C1F802            sar ax,byte 0x2
00000193  50                push ax
00000194  8B46FE            mov ax,[bp-0x2]
00000197  D1F8              sar ax,1
00000199  B23F              mov dl,0x3f
0000019B  2AD0              sub dl,al
0000019D  52                push dx
0000019E  8A46FE            mov al,[bp-0x2]
000001A1  0480              add al,0x80
000001A3  50                push ax
000001A4  E8F400            call 0x29b
000001A7  83C408            add sp,byte +0x8
000001AA  FF46FE            inc word [bp-0x2]
000001AD  817EFE8000        cmp word [bp-0x2],0x80
000001B2  7CD7              jl 0x18b
000001B4  BAC803            mov dx,0x3c8
000001B7  B000              mov al,0x0
000001B9  EE                out dx,al
000001BA  32C0              xor al,al
000001BC  42                inc dx
000001BD  B90200            mov cx,0x2
000001C0  EE                out dx,al
000001C1  EB00              jmp short 0x1c3
000001C3  EE                out dx,al
000001C4  EB00              jmp short 0x1c6
000001C6  EE                out dx,al
000001C7  49                dec cx
000001C8  75F6              jnz 0x1c0
000001CA  BB44C8            mov bx,0xc844
000001CD  B90000            mov cx,0x0
000001D0  880F              mov [bx],cl
000001D2  43                inc bx
000001D3  41                inc cx
000001D4  81F98000          cmp cx,0x80
000001D8  75F6              jnz 0x1d0
000001DA  880F              mov [bx],cl
000001DC  43                inc bx
000001DD  49                dec cx
000001DE  75FA              jnz 0x1da
000001E0  BE1453            mov si,0x5314
000001E3  B9B004            mov cx,0x4b0
000001E6  49                dec cx
000001E7  51                push cx
000001E8  56                push si
000001E9  E89E00            call 0x28a
000001EC  E89B00            call 0x28a
000001EF  E89800            call 0x28a
000001F2  E8C300            call 0x2b8
000001F5  5E                pop si
000001F6  56                push si
000001F7  E8E801            call 0x3e2
000001FA  5E                pop si
000001FB  59                pop cx
000001FC  81F98403          cmp cx,0x384
00000200  741B              jz 0x21d
00000202  90                nop
00000203  90                nop
00000204  81F95802          cmp cx,0x258
00000208  740D              jz 0x217
0000020A  90                nop
0000020B  90                nop
0000020C  81F9C201          cmp cx,0x1c2
00000210  7411              jz 0x223
00000212  90                nop
00000213  90                nop
00000214  EB10              jmp short 0x226
00000216  90                nop
00000217  BE1453            mov si,0x5314
0000021A  EB0A              jmp short 0x226
0000021C  90                nop
0000021D  BEF404            mov si,0x4f4
00000220  EB04              jmp short 0x226
00000222  90                nop
00000223  BE042C            mov si,0x2c04
00000226  81F90001          cmp cx,0x100
0000022A  7712              ja 0x23e
0000022C  90                nop
0000022D  90                nop
0000022E  BAC803            mov dx,0x3c8
00000231  8AC1              mov al,cl
00000233  EE                out dx,al
00000234  42                inc dx
00000235  32C0              xor al,al
00000237  EE                out dx,al
00000238  EB00              jmp short 0x23a
0000023A  EE                out dx,al
0000023B  EB00              jmp short 0x23d
0000023D  EE                out dx,al
0000023E  83F900            cmp cx,byte +0x0
00000241  75A3              jnz 0x1e6
00000243  E87200            call 0x2b8
00000246  BAC803            mov dx,0x3c8
00000249  B001              mov al,0x1
0000024B  EE                out dx,al
0000024C  B03F              mov al,0x3f
0000024E  42                inc dx
0000024F  EE                out dx,al
00000250  EB00              jmp short 0x252
00000252  EE                out dx,al
00000253  EB00              jmp short 0x255
00000255  EE                out dx,al
00000256  49                dec cx
00000257  BE247A            mov si,0x7a24
0000025A  E88501            call 0x3e2
0000025D  B92003            mov cx,0x320
00000260  E82700            call 0x28a
00000263  49                dec cx
00000264  75FA              jnz 0x260
00000266  E84F00            call 0x2b8
00000269  BE34A1            mov si,0xa134
0000026C  E87301            call 0x3e2
0000026F  B92003            mov cx,0x320
00000272  E81500            call 0x28a
00000275  49                dec cx
00000276  75FA              jnz 0x272
00000278  B80300            mov ax,0x3
0000027B  CD10              int 0x10
0000027D  B409              mov ah,0x9
0000027F  BADD04            mov dx,0x4dd
00000282  CD21              int 0x21
00000284  C9                leave
00000285  B8004C            mov ax,0x4c00
00000288  CD21              int 0x21
0000028A  51                push cx
0000028B  B9FFFF            mov cx,0xffff
0000028E  51                push cx
0000028F  59                pop cx
00000290  51                push cx
00000291  59                pop cx
00000292  51                push cx
00000293  59                pop cx
00000294  51                push cx
00000295  59                pop cx
00000296  49                dec cx
00000297  75F5              jnz 0x28e
00000299  59                pop cx
0000029A  C3                ret
0000029B  55                push bp
0000029C  8BEC              mov bp,sp
0000029E  32E4              xor ah,ah
000002A0  8A4604            mov al,[bp+0x4]
000002A3  BAC803            mov dx,0x3c8
000002A6  EE                out dx,al
000002A7  BAC903            mov dx,0x3c9
000002AA  8A4606            mov al,[bp+0x6]
000002AD  EE                out dx,al
000002AE  8A4608            mov al,[bp+0x8]
000002B1  EE                out dx,al
000002B2  8A460A            mov al,[bp+0xa]
000002B5  EE                out dx,al
000002B6  5D                pop bp
000002B7  C3                ret
000002B8  55                push bp
000002B9  8BEC              mov bp,sp
000002BB  6A00              push byte +0x0
000002BD  6A00              push byte +0x0
000002BF  83EC05            sub sp,byte +0x5
000002C2  56                push si
000002C3  57                push di
000002C4  06                push es
000002C5  B800A0            mov ax,0xa000
000002C8  8EC0              mov es,ax
000002CA  B90100            mov cx,0x1
000002CD  51                push cx
000002CE  32E4              xor ah,ah
000002D0  32FF              xor bh,bh
000002D2  8A1E2804          mov bl,[0x428]
000002D6  80C302            add bl,0x2
000002D9  881E2804          mov [0x428],bl
000002DD  8A8744C8          mov al,[bx-0x37bc]
000002E1  8846FC            mov [bp-0x4],al
000002E4  8A1E2904          mov bl,[0x429]
000002E8  80C304            add bl,0x4
000002EB  881E2904          mov [0x429],bl
000002EF  8A8744C8          mov al,[bx-0x37bc]
000002F3  8846FB            mov [bp-0x5],al
000002F6  8A1E2A04          mov bl,[0x42a]
000002FA  80C303            add bl,0x3
000002FD  881E2A04          mov [0x42a],bl
00000301  8A8744C8          mov al,[bx-0x37bc]
00000305  8846FA            mov [bp-0x6],al
00000308  33FF              xor di,di
0000030A  32E4              xor ah,ah
0000030C  32FF              xor bh,bh
0000030E  8A5EFC            mov bl,[bp-0x4]
00000311  80C302            add bl,0x2
00000314  885EFC            mov [bp-0x4],bl
00000317  8A8744C8          mov al,[bx-0x37bc]
0000031B  8846F9            mov [bp-0x7],al
0000031E  8A5EFB            mov bl,[bp-0x5]
00000321  80C303            add bl,0x3
00000324  885EFB            mov [bp-0x5],bl
00000327  8A8744C8          mov al,[bx-0x37bc]
0000032B  8846F8            mov [bp-0x8],al
0000032E  8A5EFA            mov bl,[bp-0x6]
00000331  80C302            add bl,0x2
00000334  885EFA            mov [bp-0x6],bl
00000337  8A8744C8          mov al,[bx-0x37bc]
0000033B  8846F7            mov [bp-0x9],al
0000033E  55                push bp
0000033F  32ED              xor ch,ch
00000341  8A5EF9            mov bl,[bp-0x7]
00000344  8A4EF8            mov cl,[bp-0x8]
00000347  8AC1              mov al,cl
00000349  8BF1              mov si,cx
0000034B  8A4EF7            mov cl,[bp-0x9]
0000034E  8BE9              mov bp,cx
00000350  B94001            mov cx,0x140
00000353  32FF              xor bh,bh
00000355  80C301            add bl,0x1
00000358  83C602            add si,byte +0x2
0000035B  83C502            add bp,byte +0x2
0000035E  81E5FF00          and bp,0xff
00000362  81E6FF00          and si,0xff
00000366  3E8AA644C8        mov ah,[ds:bp-0x37bc]
0000036B  02A744C8          add ah,[bx-0x37bc]
0000036F  02A444C8          add ah,[si-0x37bc]
00000373  02E0              add ah,al
00000375  740C              jz 0x383
00000377  90                nop
00000378  90                nop
00000379  80FC01            cmp ah,0x1
0000037C  7405              jz 0x383
0000037E  90                nop
0000037F  90                nop
00000380  268825            mov [es:di],ah
00000383  47                inc di
00000384  49                dec cx
00000385  75CE              jnz 0x355
00000387  5D                pop bp
00000388  81FF00FA          cmp di,0xfa00
0000038C  7705              ja 0x393
0000038E  90                nop
0000038F  90                nop
00000390  E977FF            jmp 0x30a
00000393  59                pop cx
00000394  49                dec cx
00000395  7405              jz 0x39c
00000397  90                nop
00000398  90                nop
00000399  E931FF            jmp 0x2cd
0000039C  07                pop es
0000039D  5F                pop di
0000039E  5E                pop si
0000039F  83C409            add sp,byte +0x9
000003A2  5D                pop bp
000003A3  C3                ret
000003A4  B800A0            mov ax,0xa000
000003A7  8EC0              mov es,ax
000003A9  BE0000            mov si,0x0
000003AC  B90000            mov cx,0x0
000003AF  268B04            mov ax,[es:si]
000003B2  8905              mov [di],ax
000003B4  83C602            add si,byte +0x2
000003B7  83C702            add di,byte +0x2
000003BA  41                inc cx
000003BB  83F928            cmp cx,byte +0x28
000003BE  75EF              jnz 0x3af
000003C0  83EE50            sub si,byte +0x50
000003C3  B90000            mov cx,0x0
000003C6  268B04            mov ax,[es:si]
000003C9  8905              mov [di],ax
000003CB  83C602            add si,byte +0x2
000003CE  83C702            add di,byte +0x2
000003D1  41                inc cx
000003D2  83F928            cmp cx,byte +0x28
000003D5  75EF              jnz 0x3c6
000003D7  81C6F000          add si,0xf0
000003DB  81FE8057          cmp si,0x5780
000003DF  72CB              jc 0x3ac
000003E1  C3                ret
000003E2  B800A0            mov ax,0xa000
000003E5  8EC0              mov es,ax
000003E7  BF0032            mov di,0x3200
000003EA  B90000            mov cx,0x0
000003ED  8A04              mov al,[si]
000003EF  3C00              cmp al,0x0
000003F1  7508              jnz 0x3fb
000003F3  90                nop
000003F4  90                nop
000003F5  83C702            add di,byte +0x2
000003F8  EB0E              jmp short 0x408
000003FA  90                nop
000003FB  26C7050101        mov word [es:di],0x101
00000400  83C702            add di,byte +0x2
00000403  26C7050101        mov word [es:di],0x101
00000408  83C702            add di,byte +0x2
0000040B  83C601            add si,byte +0x1
0000040E  41                inc cx
0000040F  81F91027          cmp cx,0x2710
00000413  75D8              jnz 0x3ed
00000415  C3                ret
00000416  BADA03            mov dx,0x3da
00000419  EC                in al,dx
0000041A  2408              and al,0x8
0000041C  3C00              cmp al,0x0
0000041E  74F9              jz 0x419
00000420  EC                in al,dx
00000421  2408              and al,0x8
00000423  3C00              cmp al,0x0
00000425  75F9              jnz 0x420
00000427  C3                ret
00000428  0000              add [bx+si],al
0000042A  0020              add [bx+si],ah
0000042C  20363430          and [0x3034],dh
00000430  206B62            and [bp+di+0x62],ch
00000433  0A0D              or cl,[di]
00000435  7368              jnc 0x49f
00000437  6F                outsw
00000438  756C              jnz 0x4a6
0000043A  64206265          and [fs:bp+si+0x65],ah
0000043E  0A0D              or cl,[di]
00000440  656E              gs outsb
00000442  6F                outsw
00000443  7567              jnz 0x4ac
00000445  682066            push word 0x6620
00000448  6F                outsw
00000449  720A              jc 0x455
0000044B  0D2065            or ax,0x6520
0000044E  7665              jna 0x4b5
00000450  7279              jc 0x4cb
00000452  6F                outsw
00000453  6E                outsb
00000454  650A0D            or cl,[gs:di]
00000457  0A0D              or cl,[di]
00000459  42                inc dx
0000045A  696C6C2047        imul bp,[si+0x6c],word 0x4720
0000045F  61                popa
00000460  7465              jz 0x4c7
00000462  730A              jnc 0x46e
00000464  0D2020            or ax,0x2020
00000467  7E31              jng 0x49a
00000469  3938              cmp [bx+si],di
0000046B  3224              xor ah,[si]
0000046D  0A0D              or cl,[di]
0000046F  0A0D              or cl,[di]
00000471  2031              and [bx+di],dh
00000473  206B62            and [bp+di+0x62],ch
00000476  206973            and [bx+di+0x73],ch
00000479  0A0D              or cl,[di]
0000047B  656E              gs outsb
0000047D  6F                outsw
0000047E  7567              jnz 0x4e7
00000480  682066            push word 0x6620
00000483  6F                outsw
00000484  720A              jc 0x490
00000486  0D2042            or ax,0x4220
00000489  61                popa
0000048A  7369              jnc 0x4f5
0000048C  63426F            arpl [bp+si+0x6f],ax
0000048F  7973              jns 0x504
00000491  240A              and al,0xa
00000493  0D4772            or ax,0x7247
00000496  65657473          gs jz 0x50d
0000049A  3A0A              cmp cl,[bp+si]
0000049C  0D0A0D            or ax,0xd0a
0000049F  2020              and [bx+si],ah
000004A1  2020              and [bx+si],ah
000004A3  20466C            and [bp+0x6c],al
000004A6  6F                outsw
000004A7  4F                dec di
000004A8  640A0D            or cl,[fs:di]
000004AB  42                inc dx
000004AC  7275              jc 0x523
000004AE  6E                outsb
000004AF  697361726E        imul si,[bp+di+0x61],word 0x6e72
000004B4  61                popa
000004B5  240A              and al,0xa
000004B7  0D4E6F            or ax,0x6f4e
000004BA  204772            and [bx+0x72],al
000004BD  65657473          gs jz 0x534
000004C1  3A0A              cmp cl,[bp+si]
000004C3  0D0A0D            or ax,0xd0a
000004C6  2020              and [bx+si],ah
000004C8  2020              and [bx+si],ah
000004CA  2020              and [bx+si],ah
000004CC  7069              jo 0x537
000004CE  6B650A0D          imul sp,[di+0xa],byte +0xd
000004D2  2020              and [bx+si],ah
000004D4  2020              and [bx+si],ah
000004D6  207769            and [bx+0x69],dh
000004D9  7A7A              jpe 0x555
000004DB  652442            gs and al,0x42
000004DE  61                popa
000004DF  7369              jnc 0x54a
000004E1  63426F            arpl [bp+si+0x6f],ax
000004E4  7973              jns 0x559
000004E6  206174            and [bx+di+0x74],ah
000004E9  204963            and [bx+di+0x63],cl
000004EC  696E672039        imul bp,[bp+0x67],word 0x3920
000004F1  3824              cmp [si],ah
