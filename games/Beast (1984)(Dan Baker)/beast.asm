00000100  B8A528            mov ax,0x28a5
00000103  8BE0              mov sp,ax
00000105  E80508            call word 0x90d
00000108  C7065C06B403      mov word [0x65c],0x3b4
0000010E  B800B0            mov ax,0xb000
00000111  C606600601        mov byte [0x660],0x1
00000116  90                nop
00000117  8EC0              mov es,ax
00000119  B40F              mov ah,0xf
0000011B  CD10              int 0x10
0000011D  3C07              cmp al,0x7
0000011F  7475              jz 0x196
00000121  B800B8            mov ax,0xb800
00000124  C606600600        mov byte [0x660],0x0
00000129  90                nop
0000012A  C7065C06D403      mov word [0x65c],0x3d4
00000130  8EC0              mov es,ax
00000132  C606A3030C        mov byte [0x3a3],0xc
00000137  C606A5030C        mov byte [0x3a5],0xc
0000013C  C606A70305        mov byte [0x3a7],0x5
00000141  C606A90305        mov byte [0x3a9],0x5
00000146  C606AB030C        mov byte [0x3ab],0xc
0000014B  C606AD030C        mov byte [0x3ad],0xc
00000150  C606AF0305        mov byte [0x3af],0x5
00000155  C606B10305        mov byte [0x3b1],0x5
0000015A  C606B3030C        mov byte [0x3b3],0xc
0000015F  C606B5030C        mov byte [0x3b5],0xc
00000164  C606B70305        mov byte [0x3b7],0x5
00000169  C606B90305        mov byte [0x3b9],0x5
0000016E  C606BB030C        mov byte [0x3bb],0xc
00000173  C606BD030C        mov byte [0x3bd],0xc
00000178  C606BF030B        mov byte [0x3bf],0xb
0000017D  C606C1030B        mov byte [0x3c1],0xb
00000182  C606C70302        mov byte [0x3c7],0x2
00000187  C606C90302        mov byte [0x3c9],0x2
0000018C  C606CB030E        mov byte [0x3cb],0xe
00000191  C606CD030E        mov byte [0x3cd],0xe
00000196  C606590645        mov byte [0x659],0x45
0000019B  90                nop
0000019C  BE8100            mov si,0x81
0000019F  8A04              mov al,[si]
000001A1  46                inc si
000001A2  3C0D              cmp al,0xd
000001A4  7417              jz 0x1bd
000001A6  3C20              cmp al,0x20
000001A8  74F5              jz 0x19f
000001AA  3C2F              cmp al,0x2f
000001AC  750A              jnz 0x1b8
000001AE  8A04              mov al,[si]
000001B0  3C51              cmp al,0x51
000001B2  75ED              jnz 0x1a1
000001B4  46                inc si
000001B5  EB09              jmp short 0x1c0
000001B7  90                nop
000001B8  245F              and al,0x5f
000001BA  A25906            mov [0x659],al
000001BD  E94305            jmp word 0x703
000001C0  52                push dx
000001C1  AC                lodsb
000001C2  3C53              cmp al,0x53
000001C4  7524              jnz 0x1ea
000001C6  AC                lodsb
000001C7  3C3D              cmp al,0x3d
000001C9  751F              jnz 0x1ea
000001CB  E81F00            call word 0x1ed
000001CE  80FB2C            cmp bl,0x2c
000001D1  7517              jnz 0x1ea
000001D3  A33602            mov [0x236],ax
000001D6  46                inc si
000001D7  E81300            call word 0x1ed
000001DA  80FB2C            cmp bl,0x2c
000001DD  750B              jnz 0x1ea
000001DF  A33802            mov [0x238],ax
000001E2  46                inc si
000001E3  AC                lodsb
000001E4  A23502            mov [0x235],al
000001E7  E82D00            call word 0x217
000001EA  5A                pop dx
000001EB  EBD0              jmp short 0x1bd
000001ED  51                push cx
000001EE  52                push dx
000001EF  57                push di
000001F0  33C0              xor ax,ax
000001F2  8BD8              mov bx,ax
000001F4  8BD0              mov dx,ax
000001F6  B90A00            mov cx,0xa
000001F9  AC                lodsb
000001FA  3C39              cmp al,0x39
000001FC  770E              ja 0x20c
000001FE  3C30              cmp al,0x30
00000200  720A              jc 0x20c
00000202  2C30              sub al,0x30
00000204  93                xchg ax,bx
00000205  F7E1              mul cx
00000207  93                xchg ax,bx
00000208  03D8              add bx,ax
0000020A  EBED              jmp short 0x1f9
0000020C  8AD0              mov dl,al
0000020E  8BC3              mov ax,bx
00000210  8ADA              mov bl,dl
00000212  4E                dec si
00000213  5F                pop di
00000214  5A                pop dx
00000215  59                pop cx
00000216  C3                ret
00000217  50                push ax
00000218  53                push bx
00000219  06                push es
0000021A  8CCB              mov bx,cs
0000021C  8EC3              mov es,bx
0000021E  BB504B            mov bx,0x4b50
00000221  81C31001          add bx,0x110
00000225  D1EB              shr bx,1
00000227  D1EB              shr bx,1
00000229  D1EB              shr bx,1
0000022B  D1EB              shr bx,1
0000022D  B44A              mov ah,0x4a
0000022F  CD21              int 0x21
00000231  07                pop es
00000232  5B                pop bx
00000233  58                pop ax
00000234  C3                ret
00000235  0000              add [bx+si],al
00000237  0000              add [bx+si],al
00000239  0000              add [bx+si],al
0000023B  0000              add [bx+si],al
0000023D  0000              add [bx+si],al
0000023F  0000              add [bx+si],al
00000241  0000              add [bx+si],al
00000243  0000              add [bx+si],al
00000245  0000              add [bx+si],al
00000247  0000              add [bx+si],al
00000249  0000              add [bx+si],al
0000024B  0000              add [bx+si],al
0000024D  0000              add [bx+si],al
0000024F  0000              add [bx+si],al
00000251  0000              add [bx+si],al
00000253  0000              add [bx+si],al
00000255  0000              add [bx+si],al
00000257  0000              add [bx+si],al
00000259  0000              add [bx+si],al
0000025B  0000              add [bx+si],al
0000025D  0000              add [bx+si],al
0000025F  0000              add [bx+si],al
00000261  0000              add [bx+si],al
00000263  0000              add [bx+si],al
00000265  0000              add [bx+si],al
00000267  0000              add [bx+si],al
00000269  0000              add [bx+si],al
0000026B  0000              add [bx+si],al
0000026D  0000              add [bx+si],al
0000026F  0000              add [bx+si],al
00000271  0000              add [bx+si],al
00000273  0000              add [bx+si],al
00000275  0000              add [bx+si],al
00000277  0000              add [bx+si],al
00000279  0000              add [bx+si],al
0000027B  0000              add [bx+si],al
0000027D  0000              add [bx+si],al
0000027F  0000              add [bx+si],al
00000281  0000              add [bx+si],al
00000283  0000              add [bx+si],al
00000285  0000              add [bx+si],al
00000287  0000              add [bx+si],al
00000289  0000              add [bx+si],al
0000028B  0000              add [bx+si],al
0000028D  0000              add [bx+si],al
0000028F  0000              add [bx+si],al
00000291  0000              add [bx+si],al
00000293  0000              add [bx+si],al
00000295  0000              add [bx+si],al
00000297  0000              add [bx+si],al
00000299  0000              add [bx+si],al
0000029B  0000              add [bx+si],al
0000029D  0000              add [bx+si],al
0000029F  0000              add [bx+si],al
000002A1  0000              add [bx+si],al
000002A3  0000              add [bx+si],al
000002A5  0000              add [bx+si],al
000002A7  0000              add [bx+si],al
000002A9  0000              add [bx+si],al
000002AB  0000              add [bx+si],al
000002AD  0000              add [bx+si],al
000002AF  0000              add [bx+si],al
000002B1  0000              add [bx+si],al
000002B3  0000              add [bx+si],al
000002B5  0000              add [bx+si],al
000002B7  0000              add [bx+si],al
000002B9  0000              add [bx+si],al
000002BB  0000              add [bx+si],al
000002BD  0000              add [bx+si],al
000002BF  0000              add [bx+si],al
000002C1  0000              add [bx+si],al
000002C3  0000              add [bx+si],al
000002C5  0000              add [bx+si],al
000002C7  0000              add [bx+si],al
000002C9  0000              add [bx+si],al
000002CB  0000              add [bx+si],al
000002CD  0000              add [bx+si],al
000002CF  0000              add [bx+si],al
000002D1  0000              add [bx+si],al
000002D3  0000              add [bx+si],al
000002D5  0000              add [bx+si],al
000002D7  0000              add [bx+si],al
000002D9  0000              add [bx+si],al
000002DB  0000              add [bx+si],al
000002DD  0000              add [bx+si],al
000002DF  0000              add [bx+si],al
000002E1  0000              add [bx+si],al
000002E3  0000              add [bx+si],al
000002E5  0000              add [bx+si],al
000002E7  0000              add [bx+si],al
000002E9  0000              add [bx+si],al
000002EB  0000              add [bx+si],al
000002ED  0000              add [bx+si],al
000002EF  0000              add [bx+si],al
000002F1  0000              add [bx+si],al
000002F3  0000              add [bx+si],al
000002F5  0000              add [bx+si],al
000002F7  0000              add [bx+si],al
000002F9  0000              add [bx+si],al
000002FB  0000              add [bx+si],al
000002FD  0000              add [bx+si],al
000002FF  0000              add [bx+si],al
00000301  0000              add [bx+si],al
00000303  0000              add [bx+si],al
00000305  0000              add [bx+si],al
00000307  0000              add [bx+si],al
00000309  0000              add [bx+si],al
0000030B  0000              add [bx+si],al
0000030D  0000              add [bx+si],al
0000030F  0000              add [bx+si],al
00000311  0000              add [bx+si],al
00000313  0000              add [bx+si],al
00000315  0000              add [bx+si],al
00000317  0000              add [bx+si],al
00000319  0000              add [bx+si],al
0000031B  0000              add [bx+si],al
0000031D  0000              add [bx+si],al
0000031F  0000              add [bx+si],al
00000321  0000              add [bx+si],al
00000323  0000              add [bx+si],al
00000325  0000              add [bx+si],al
00000327  0000              add [bx+si],al
00000329  0000              add [bx+si],al
0000032B  0000              add [bx+si],al
0000032D  0000              add [bx+si],al
0000032F  0000              add [bx+si],al
00000331  0000              add [bx+si],al
00000333  0000              add [bx+si],al
00000335  0000              add [bx+si],al
00000337  0000              add [bx+si],al
00000339  0000              add [bx+si],al
0000033B  0000              add [bx+si],al
0000033D  0000              add [bx+si],al
0000033F  0000              add [bx+si],al
00000341  0000              add [bx+si],al
00000343  0000              add [bx+si],al
00000345  0000              add [bx+si],al
00000347  0000              add [bx+si],al
00000349  0000              add [bx+si],al
0000034B  0000              add [bx+si],al
0000034D  0000              add [bx+si],al
0000034F  0000              add [bx+si],al
00000351  0000              add [bx+si],al
00000353  0000              add [bx+si],al
00000355  0000              add [bx+si],al
00000357  0000              add [bx+si],al
00000359  0000              add [bx+si],al
0000035B  0000              add [bx+si],al
0000035D  0000              add [bx+si],al
0000035F  0000              add [bx+si],al
00000361  0000              add [bx+si],al
00000363  0000              add [bx+si],al
00000365  0000              add [bx+si],al
00000367  0000              add [bx+si],al
00000369  0000              add [bx+si],al
0000036B  0000              add [bx+si],al
0000036D  0000              add [bx+si],al
0000036F  0000              add [bx+si],al
00000371  0000              add [bx+si],al
00000373  0000              add [bx+si],al
00000375  0000              add [bx+si],al
00000377  0000              add [bx+si],al
00000379  0000              add [bx+si],al
0000037B  0000              add [bx+si],al
0000037D  0000              add [bx+si],al
0000037F  0000              add [bx+si],al
00000381  0000              add [bx+si],al
00000383  0000              add [bx+si],al
00000385  0000              add [bx+si],al
00000387  0000              add [bx+si],al
00000389  0000              add [bx+si],al
0000038B  0000              add [bx+si],al
0000038D  0000              add [bx+si],al
0000038F  0000              add [bx+si],al
00000391  0000              add [bx+si],al
00000393  0000              add [bx+si],al
00000395  0000              add [bx+si],al
00000397  0000              add [bx+si],al
00000399  0000              add [bx+si],al
0000039B  0000              add [bx+si],al
0000039D  0000              add [bx+si],al
0000039F  0000              add [bx+si],al
000003A1  00C3              add bl,al
000003A3  0FB40F            lfs cx,[bx]
000003A6  C3                ret
000003A7  07                pop es
000003A8  B407              mov ah,0x7
000003AA  C7                db 0xc7
000003AB  0FB60F            movzx cx,[bx]
000003AE  C707B607          mov word [bx],0x7b6
000003B2  090F              or [bx],cx
000003B4  090F              or [bx],cx
000003B6  0907              or [bx],ax
000003B8  0907              or [bx],ax
000003BA  CE                into
000003BB  0F                db 0x0f
000003BC  CE                into
000003BD  0F110F            movups oword [bx],xmm1
000003C0  100F              adc [bx],cl
000003C2  7F0F              jg 0x3d3
000003C4  7F0F              jg 0x3d5
000003C6  B107              mov cl,0x7
000003C8  B107              mov cl,0x7
000003CA  DB0F              fisttp dword [bx]
000003CC  DB0F              fisttp dword [bx]
000003CE  2007              and [bx],al
000003D0  2007              and [bx],al
000003D2  A02020            mov al,[0x2020]
000003D5  4C                dec sp
000003D6  697665733A        imul si,[bp+0x65],word 0x3a73
000003DB  2020              and [bx+si],ah
000003DD  205363            and [bp+di+0x63],dl
000003E0  6F                outsw
000003E1  7265              jc 0x448
000003E3  3A20              cmp ah,[bx+si]
000003E5  2020              and [bx+si],ah
000003E7  2020              and [bx+si],ah
000003E9  2020              and [bx+si],ah
000003EB  42                inc dx
000003EC  6561              gs popaw
000003EE  7374              jnc 0x464
000003F0  733A              jnc 0x42c
000003F2  2020              and [bx+si],ah
000003F4  2020              and [bx+si],ah
000003F6  4C                dec sp
000003F7  657665            gs jna 0x45f
000003FA  6C                insb
000003FB  3A20              cmp ah,[bx+si]
000003FD  2020              and [bx+si],ah
000003FF  2020              and [bx+si],ah
00000401  54                push sp
00000402  696D653A20        imul bp,[di+0x65],word 0x203a
00000407  2020              and [bx+si],ah
00000409  3A20              cmp ah,[bx+si]
0000040B  2020              and [bx+si],ah
0000040D  4C                dec sp
0000040E  697665733A        imul si,[bp+0x65],word 0x3a73
00000413  2020              and [bx+si],ah
00000415  205363            and [bp+di+0x63],dl
00000418  6F                outsw
00000419  7265              jc 0x480
0000041B  3A20              cmp ah,[bx+si]
0000041D  2020              and [bx+si],ah
0000041F  2020              and [bx+si],ah
00000421  2020              and [bx+si],ah
00000423  2420              and al,0x20
00000425  2020              and [bx+si],ah
00000427  2020              and [bx+si],ah
00000429  2020              and [bx+si],ah
0000042B  2020              and [bx+si],ah
0000042D  2020              and [bx+si],ah
0000042F  2020              and [bx+si],ah
00000431  2020              and [bx+si],ah
00000433  2020              and [bx+si],ah
00000435  2020              and [bx+si],ah
00000437  2020              and [bx+si],ah
00000439  2020              and [bx+si],ah
0000043B  204265            and [bp+si+0x65],al
0000043E  61                popaw
0000043F  7374              jnc 0x4b5
00000441  733A              jnc 0x47d
00000443  2020              and [bx+si],ah
00000445  2020              and [bx+si],ah
00000447  4C                dec sp
00000448  657665            gs jna 0x4b0
0000044B  6C                insb
0000044C  3A20              cmp ah,[bx+si]
0000044E  2020              and [bx+si],ah
00000450  2020              and [bx+si],ah
00000452  54                push sp
00000453  696D653A20        imul bp,[di+0x65],word 0x203a
00000458  2020              and [bx+si],ah
0000045A  3A20              cmp ah,[bx+si]
0000045C  2020              and [bx+si],ah
0000045E  4C                dec sp
0000045F  697665733A        imul si,[bp+0x65],word 0x3a73
00000464  2020              and [bx+si],ah
00000466  205363            and [bp+di+0x63],dl
00000469  6F                outsw
0000046A  7265              jc 0x4d1
0000046C  3A20              cmp ah,[bx+si]
0000046E  2020              and [bx+si],ah
00000470  2020              and [bx+si],ah
00000472  2020              and [bx+si],ah
00000474  2420              and al,0x20
00000476  2020              and [bx+si],ah
00000478  205072            and [bx+si+0x72],dl
0000047B  657061            gs jo 0x4df
0000047E  7265              jc 0x4e5
00000480  20466F            and [bp+0x6f],al
00000483  7220              jc 0x4a5
00000485  4E                dec si
00000486  657874            gs js 0x4fd
00000489  204C65            and [si+0x65],cl
0000048C  7665              jna 0x4f3
0000048E  6C                insb
0000048F  2020              and [bx+si],ah
00000491  2020              and [bx+si],ah
00000493  2024              and [si],ah
00000495  2020              and [bx+si],ah
00000497  20434F            and [bp+di+0x4f],al
0000049A  4E                dec si
0000049B  54                push sp
0000049C  52                push dx
0000049D  4F                dec di
0000049E  4C                dec sp
0000049F  2D4252            sub ax,0x5242
000004A2  45                inc bp
000004A3  41                inc cx
000004A4  4B                dec bx
000004A5  202E2E2E          and [0x2e2e],ch
000004A9  204142            and [bx+di+0x42],al
000004AC  4F                dec di
000004AD  52                push dx
000004AE  54                push sp
000004AF  45                inc bp
000004B0  44                inc sp
000004B1  2020              and [bx+si],ah
000004B3  2024              and [si],ah
000004B5  2020              and [bx+si],ah
000004B7  2020              and [bx+si],ah
000004B9  2020              and [bx+si],ah
000004BB  2020              and [bx+si],ah
000004BD  2020              and [bx+si],ah
000004BF  2020              and [bx+si],ah
000004C1  2020              and [bx+si],ah
000004C3  2020              and [bx+si],ah
000004C5  2020              and [bx+si],ah
000004C7  2020              and [bx+si],ah
000004C9  2020              and [bx+si],ah
000004CB  2020              and [bx+si],ah
000004CD  2020              and [bx+si],ah
000004CF  2020              and [bx+si],ah
000004D1  2020              and [bx+si],ah
000004D3  2020              and [bx+si],ah
000004D5  2020              and [bx+si],ah
000004D7  2020              and [bx+si],ah
000004D9  2020              and [bx+si],ah
000004DB  2020              and [bx+si],ah
000004DD  2020              and [bx+si],ah
000004DF  2020              and [bx+si],ah
000004E1  2020              and [bx+si],ah
000004E3  2020              and [bx+si],ah
000004E5  2020              and [bx+si],ah
000004E7  2020              and [bx+si],ah
000004E9  2020              and [bx+si],ah
000004EB  2020              and [bx+si],ah
000004ED  2020              and [bx+si],ah
000004EF  2020              and [bx+si],ah
000004F1  2020              and [bx+si],ah
000004F3  2020              and [bx+si],ah
000004F5  2020              and [bx+si],ah
000004F7  2020              and [bx+si],ah
000004F9  2020              and [bx+si],ah
000004FB  2020              and [bx+si],ah
000004FD  2020              and [bx+si],ah
000004FF  2020              and [bx+si],ah
00000501  2020              and [bx+si],ah
00000503  2020              and [bx+si],ah
00000505  2420              and al,0x20
00000507  2020              and [bx+si],ah
00000509  48                dec ax
0000050A  6974205350        imul si,[si+0x20],word 0x5053
0000050F  41                inc cx
00000510  43                inc bx
00000511  45                inc bp
00000512  204241            and [bp+si+0x41],al
00000515  52                push dx
00000516  20746F            and [si+0x6f],dh
00000519  20636F            and [bp+di+0x6f],ah
0000051C  6E                outsb
0000051D  7469              jz 0x588
0000051F  6E                outsb
00000520  7565              jnz 0x587
00000522  2020              and [bx+si],ah
00000524  2020              and [bx+si],ah
00000526  2020              and [bx+si],ah
00000528  59                pop cx
00000529  6F                outsw
0000052A  7520              jnz 0x54c
0000052C  4C                dec sp
0000052D  4F                dec di
0000052E  53                push bx
0000052F  54                push sp
00000530  202E2E2E          and [0x2e2e],ch
00000534  205468            and [si+0x68],dl
00000537  65204245          and [gs:bp+si+0x45],al
0000053B  41                inc cx
0000053C  53                push bx
0000053D  54                push sp
0000053E  49                dec cx
0000053F  45                inc bp
00000540  53                push bx
00000541  206861            and [bx+si+0x61],ch
00000544  7665              jna 0x5ab
00000546  20436F            and [bp+di+0x6f],al
00000549  6E                outsb
0000054A  7472              jz 0x5be
0000054C  6F                outsw
0000054D  6C                insb
0000054E  2020              and [bx+si],ah
00000550  2020              and [bx+si],ah
00000552  2020              and [bx+si],ah
00000554  2020              and [bx+si],ah
00000556  2420              and al,0x20
00000558  2020              and [bx+si],ah
0000055A  202D              and [di],ch
0000055C  2D2D3E            sub ax,0x3e2d
0000055F  2020              and [bx+si],ah
00000561  204C45            and [si+0x45],cl
00000564  56                push si
00000565  45                inc bp
00000566  4C                dec sp
00000567  20434F            and [bp+di+0x4f],al
0000056A  4D                dec bp
0000056B  50                push ax
0000056C  4C                dec sp
0000056D  45                inc bp
0000056E  54                push sp
0000056F  45                inc bp
00000570  44                inc sp
00000571  2020              and [bx+si],ah
00000573  3C2D              cmp al,0x2d
00000575  2D2D20            sub ax,0x202d
00000578  2020              and [bx+si],ah
0000057A  2020              and [bx+si],ah
0000057C  2020              and [bx+si],ah
0000057E  2020              and [bx+si],ah
00000580  2020              and [bx+si],ah
00000582  2020              and [bx+si],ah
00000584  2020              and [bx+si],ah
00000586  2020              and [bx+si],ah
00000588  2020              and [bx+si],ah
0000058A  2020              and [bx+si],ah
0000058C  2020              and [bx+si],ah
0000058E  2020              and [bx+si],ah
00000590  2020              and [bx+si],ah
00000592  2020              and [bx+si],ah
00000594  2020              and [bx+si],ah
00000596  2020              and [bx+si],ah
00000598  2020              and [bx+si],ah
0000059A  2020              and [bx+si],ah
0000059C  2020              and [bx+si],ah
0000059E  2020              and [bx+si],ah
000005A0  2020              and [bx+si],ah
000005A2  2020              and [bx+si],ah
000005A4  2020              and [bx+si],ah
000005A6  2024              and [si],ah
000005A8  2020              and [bx+si],ah
000005AA  204869            and [bx+si+0x69],cl
000005AD  7420              jz 0x5cf
000005AF  53                push bx
000005B0  50                push ax
000005B1  41                inc cx
000005B2  43                inc bx
000005B3  45                inc bp
000005B4  204241            and [bp+si+0x41],al
000005B7  52                push dx
000005B8  20746F            and [si+0x6f],dh
000005BB  20636F            and [bp+di+0x6f],ah
000005BE  6E                outsb
000005BF  7469              jz 0x62a
000005C1  6E                outsb
000005C2  7565              jnz 0x629
000005C4  2020              and [bx+si],ah
000005C6  2020              and [bx+si],ah
000005C8  2020              and [bx+si],ah
000005CA  20574F            and [bx+0x4f],dl
000005CD  57                push di
000005CE  202D              and [di],ch
000005D0  2D2059            sub ax,0x5920
000005D3  6F                outsw
000005D4  7520              jnz 0x5f6
000005D6  48                dec ax
000005D7  61                popaw
000005D8  7665              jna 0x63f
000005DA  205472            and [si+0x72],dl
000005DD  69756D7068        imul si,[di+0x6d],word 0x6870
000005E2  6564206F76        and [fs:bx+0x76],ch
000005E7  657220            gs jc 0x60a
000005EA  7468              jz 0x654
000005EC  65204265          and [gs:bp+si+0x65],al
000005F0  61                popaw
000005F1  7374              jnc 0x667
000005F3  6965732020        imul sp,[di+0x73],word 0x2020
000005F8  2420              and al,0x20
000005FA  53                push bx
000005FB  50                push ax
000005FC  41                inc cx
000005FD  43                inc bx
000005FE  45                inc bp
000005FF  203D              and [di],bh
00000601  20706C            and [bx+si+0x6c],dh
00000604  61                popaw
00000605  7920              jns 0x627
00000607  2F                das
00000608  204C65            and [si+0x65],cl
0000060B  7474              jz 0x681
0000060D  657220            gs jc 0x630
00000610  3D2063            cmp ax,0x6320
00000613  68616E            push word 0x6e61
00000616  6765206C6576      and [dword gs:ebp+0x76],ch
0000061C  656C              gs insb
0000061E  7320              jnc 0x640
00000620  2F                das
00000621  204631            and [bp+0x31],al
00000624  203D              and [di],bh
00000626  205363            and [bp+di+0x63],dl
00000629  6F                outsw
0000062A  7265              jc 0x691
0000062C  7320              jnc 0x64e
0000062E  2F                das
0000062F  204632            and [bp+0x32],al
00000632  203D              and [di],bh
00000634  205370            and [bp+di+0x70],dl
00000637  656564202F        and [fs:bx],ch
0000063C  204631            and [bp+0x31],al
0000063F  3020              xor [bx+si],ah
00000641  3D2051            cmp ax,0x5120
00000644  7569              jnz 0x6af
00000646  7420              jz 0x668
00000648  2024              and [si],ah
0000064A  0000              add [bx+si],al
0000064C  0000              add [bx+si],al
0000064E  0000              add [bx+si],al
00000650  0000              add [bx+si],al
00000652  0123              add [bp+di],sp
00000654  C8000032          enter 0x0,0x32
00000658  0000              add [bx+si],al
0000065A  0000              add [bx+si],al
0000065C  0000              add [bx+si],al
0000065E  0000              add [bx+si],al
00000660  0000              add [bx+si],al
00000662  0000              add [bx+si],al
00000664  0000              add [bx+si],al
00000666  0000              add [bx+si],al
00000668  0000              add [bx+si],al
0000066A  004000            add [bx+si+0x0],al
0000066D  0000              add [bx+si],al
0000066F  0000              add [bx+si],al
00000671  0000              add [bx+si],al
00000673  0000              add [bx+si],al
00000675  0F0000            sldt [bx+si]
00000678  0000              add [bx+si],al
0000067A  0000              add [bx+si],al
0000067C  0000              add [bx+si],al
0000067E  0000              add [bx+si],al
00000680  0000              add [bx+si],al
00000682  0000              add [bx+si],al
00000684  0000              add [bx+si],al
00000686  0000              add [bx+si],al
00000688  0000              add [bx+si],al
0000068A  0000              add [bx+si],al
0000068C  0000              add [bx+si],al
0000068E  0000              add [bx+si],al
00000690  0000              add [bx+si],al
00000692  0000              add [bx+si],al
00000694  0000              add [bx+si],al
00000696  0000              add [bx+si],al
00000698  0000              add [bx+si],al
0000069A  0000              add [bx+si],al
0000069C  0000              add [bx+si],al
0000069E  0000              add [bx+si],al
000006A0  0000              add [bx+si],al
000006A2  0B04              or ax,[si]
000006A4  0A04              or al,[si]
000006A6  0D0600            or ax,0x6
000006A9  0000              add [bx+si],al
000006AB  0000              add [bx+si],al
000006AD  0000              add [bx+si],al
000006AF  0000              add [bx+si],al
000006B1  0000              add [bx+si],al
000006B3  0000              add [bx+si],al
000006B5  0000              add [bx+si],al
000006B7  0000              add [bx+si],al
000006B9  0000              add [bx+si],al
000006BB  0000              add [bx+si],al
000006BD  0000              add [bx+si],al
000006BF  0000              add [bx+si],al
000006C1  0000              add [bx+si],al
000006C3  0000              add [bx+si],al
000006C5  0000              add [bx+si],al
000006C7  0000              add [bx+si],al
000006C9  0000              add [bx+si],al
000006CB  0000              add [bx+si],al
000006CD  0000              add [bx+si],al
000006CF  0000              add [bx+si],al
000006D1  0000              add [bx+si],al
000006D3  0000              add [bx+si],al
000006D5  0000              add [bx+si],al
000006D7  0000              add [bx+si],al
000006D9  0000              add [bx+si],al
000006DB  0000              add [bx+si],al
000006DD  0000              add [bx+si],al
000006DF  0000              add [bx+si],al
000006E1  0000              add [bx+si],al
000006E3  0000              add [bx+si],al
000006E5  0000              add [bx+si],al
000006E7  0000              add [bx+si],al
000006E9  0000              add [bx+si],al
000006EB  0000              add [bx+si],al
000006ED  0000              add [bx+si],al
000006EF  0000              add [bx+si],al
000006F1  0000              add [bx+si],al
000006F3  0000              add [bx+si],al
000006F5  0000              add [bx+si],al
000006F7  0000              add [bx+si],al
000006F9  0000              add [bx+si],al
000006FB  0000              add [bx+si],al
000006FD  0000              add [bx+si],al
000006FF  0000              add [bx+si],al
00000701  0000              add [bx+si],al
00000703  06                push es
00000704  B84000            mov ax,0x40
00000707  8EC0              mov es,ax
00000709  26A16300          mov ax,[es:0x63]
0000070D  050400            add ax,0x4
00000710  A36106            mov [0x661],ax
00000713  26A06500          mov al,[es:0x65]
00000717  24F7              and al,0xf7
00000719  A26406            mov [0x664],al
0000071C  0C08              or al,0x8
0000071E  A26306            mov [0x663],al
00000721  07                pop es
00000722  803E350261        cmp byte [0x235],0x61
00000727  7211              jc 0x73a
00000729  802E350220        sub byte [0x235],0x20
0000072E  32C0              xor al,al
00000730  E86E01            call word 0x8a1
00000733  3C02              cmp al,0x2
00000735  7503              jnz 0x73a
00000737  E90E01            jmp word 0x848
0000073A  E81329            call word 0x3050
0000073D  E89B1B            call word 0x22db
00000740  B8A528            mov ax,0x28a5
00000743  8BE0              mov sp,ax
00000745  E82609            call word 0x106e
00000748  E8AB09            call word 0x10f6
0000074B  BEF905            mov si,0x5f9
0000074E  E83B29            call word 0x308c
00000751  E86C2A            call word 0x31c0
00000754  803E700600        cmp byte [0x670],0x0
00000759  7403              jz 0x75e
0000075B  E9EA00            jmp word 0x848
0000075E  E80D09            call word 0x106e
00000761  C70681060000      mov word [0x681],0x0
00000767  C7068B060000      mov word [0x68b],0x0
0000076D  E8E028            call word 0x3050
00000770  E88309            call word 0x10f6
00000773  BEB504            mov si,0x4b5
00000776  E81329            call word 0x308c
00000779  803E790600        cmp byte [0x679],0x0
0000077E  7403              jz 0x783
00000780  E9B000            jmp word 0x833
00000783  E88942            call word 0x4a0f
00000786  E80C0B            call word 0x1295
00000789  E8CC06            call word 0xe58
0000078C  B8C800            mov ax,0xc8
0000078F  E8283C            call word 0x43ba
00000792  E8DA03            call word 0xb6f
00000795  E8F103            call word 0xb89
00000798  C606840601        mov byte [0x684],0x1
0000079D  C6068E0601        mov byte [0x68e],0x1
000007A2  E8CA00            call word 0x86f
000007A5  E85229            call word 0x30fa
000007A8  803E700600        cmp byte [0x670],0x0
000007AD  7591              jnz 0x740
000007AF  8B0EA006          mov cx,[0x6a0]
000007B3  90                nop
000007B4  90                nop
000007B5  E2FC              loop 0x7b3
000007B7  E8CA41            call word 0x4984
000007BA  E83402            call word 0x9f1
000007BD  E8EA02            call word 0xaaa
000007C0  803EA90600        cmp byte [0x6a9],0x0
000007C5  7503              jnz 0x7ca
000007C7  EB2D              jmp short 0x7f6
000007C9  90                nop
000007CA  E8F336            call word 0x3ec0
000007CD  803E830600        cmp byte [0x683],0x0
000007D2  750E              jnz 0x7e2
000007D4  803E520601        cmp byte [0x652],0x1
000007D9  7409              jz 0x7e4
000007DB  803E8D0600        cmp byte [0x68d],0x0
000007E0  7402              jz 0x7e4
000007E2  EBBE              jmp short 0x7a2
000007E4  BE0605            mov si,0x506
000007E7  E89A41            call word 0x4984
000007EA  E89F28            call word 0x308c
000007ED  E8F73E            call word 0x46e7
000007F0  E8B933            call word 0x3bac
000007F3  E94AFF            jmp word 0x740
000007F6  BE5705            mov si,0x557
000007F9  E89028            call word 0x308c
000007FC  E85906            call word 0xe58
000007FF  E8C43E            call word 0x46c6
00000802  E83501            call word 0x93a
00000805  B87017            mov ax,0x1770
00000808  E83328            call word 0x303e
0000080B  BEB504            mov si,0x4b5
0000080E  E87B28            call word 0x308c
00000811  803E790600        cmp byte [0x679],0x0
00000816  7518              jnz 0x830
00000818  E83528            call word 0x3050
0000081B  E8D808            call word 0x10f6
0000081E  BE7504            mov si,0x475
00000821  E86828            call word 0x308c
00000824  B87017            mov ax,0x1770
00000827  E81428            call word 0x303e
0000082A  BEB504            mov si,0x4b5
0000082D  E85C28            call word 0x308c
00000830  E940FF            jmp word 0x773
00000833  E84E41            call word 0x4984
00000836  BEA805            mov si,0x5a8
00000839  E85028            call word 0x308c
0000083C  E86D33            call word 0x3bac
0000083F  E9FEFE            jmp word 0x740
00000842  E80B28            call word 0x3050
00000845  EB01              jmp short 0x848
00000847  90                nop
00000848  803E350200        cmp byte [0x235],0x0
0000084D  740F              jz 0x85e
0000084F  B006              mov al,0x6
00000851  E84D00            call word 0x8a1
00000854  3C00              cmp al,0x0
00000856  7506              jnz 0x85e
00000858  E8F527            call word 0x3050
0000085B  E9E2FE            jmp word 0x740
0000085E  B402              mov ah,0x2
00000860  B618              mov dh,0x18
00000862  32D2              xor dl,dl
00000864  32FF              xor bh,bh
00000866  CD10              int 0x10
00000868  E88400            call word 0x8ef
0000086B  CD20              int 0x20
0000086D  EBD9              jmp short 0x848
0000086F  50                push ax
00000870  57                push di
00000871  803E350200        cmp byte [0x235],0x0
00000876  7426              jz 0x89e
00000878  BF1D00            mov di,0x1d
0000087B  8A85AE06          mov al,[di+0x6ae]
0000087F  A801              test al,0x1
00000881  741B              jz 0x89e
00000883  BF3B00            mov di,0x3b
00000886  80BDAE0600        cmp byte [di+0x6ae],0x0
0000088B  7411              jz 0x89e
0000088D  E82D00            call word 0x8bd
00000890  32C0              xor al,al
00000892  E80C00            call word 0x8a1
00000895  3C02              cmp al,0x2
00000897  7502              jnz 0x89b
00000899  EBAD              jmp short 0x848
0000089B  E83E00            call word 0x8dc
0000089E  5F                pop di
0000089F  58                pop ax
000008A0  C3                ret
000008A1  53                push bx
000008A2  803E350200        cmp byte [0x235],0x0
000008A7  7412              jz 0x8bb
000008A9  E84300            call word 0x8ef
000008AC  8A263502          mov ah,[0x235]
000008B0  80EC41            sub ah,0x41
000008B3  BB3602            mov bx,0x236
000008B6  FF1F              call word far [bx]
000008B8  E85200            call word 0x90d
000008BB  5B                pop bx
000008BC  C3                ret
000008BD  50                push ax
000008BE  51                push cx
000008BF  56                push si
000008C0  57                push di
000008C1  06                push es
000008C2  1E                push ds
000008C3  B9D007            mov cx,0x7d0
000008C6  33F6              xor si,si
000008C8  8CC0              mov ax,es
000008CA  8ED8              mov ds,ax
000008CC  BF3B13            mov di,0x133b
000008CF  8CC8              mov ax,cs
000008D1  8EC0              mov es,ax
000008D3  F3A5              rep movsw
000008D5  1F                pop ds
000008D6  07                pop es
000008D7  5F                pop di
000008D8  5E                pop si
000008D9  59                pop cx
000008DA  58                pop ax
000008DB  C3                ret
000008DC  50                push ax
000008DD  51                push cx
000008DE  56                push si
000008DF  57                push di
000008E0  B9D007            mov cx,0x7d0
000008E3  BE3B13            mov si,0x133b
000008E6  33FF              xor di,di
000008E8  F3A5              rep movsw
000008EA  5F                pop di
000008EB  5E                pop si
000008EC  59                pop cx
000008ED  58                pop ax
000008EE  C3                ret
000008EF  50                push ax
000008F0  57                push di
000008F1  06                push es
000008F2  FA                cli
000008F3  B80000            mov ax,0x0
000008F6  8EC0              mov es,ax
000008F8  BF2400            mov di,0x24
000008FB  A1AA06            mov ax,[0x6aa]
000008FE  268905            mov [es:di],ax
00000901  A1AC06            mov ax,[0x6ac]
00000904  26894502          mov [es:di+0x2],ax
00000908  FB                sti
00000909  07                pop es
0000090A  5F                pop di
0000090B  58                pop ax
0000090C  C3                ret
0000090D  50                push ax
0000090E  57                push di
0000090F  06                push es
00000910  B80000            mov ax,0x0
00000913  8EC0              mov es,ax
00000915  FA                cli
00000916  BF2400            mov di,0x24
00000919  268B05            mov ax,[es:di]
0000091C  A3AA06            mov [0x6aa],ax
0000091F  268B4502          mov ax,[es:di+0x2]
00000923  A3AC06            mov [0x6ac],ax
00000926  B8AA28            mov ax,0x28aa
00000929  268905            mov [es:di],ax
0000092C  8CC8              mov ax,cs
0000092E  26894502          mov [es:di+0x2],ax
00000932  FB                sti
00000933  E87628            call word 0x31ac
00000936  07                pop es
00000937  5F                pop di
00000938  58                pop ax
00000939  C3                ret
0000093A  50                push ax
0000093B  53                push bx
0000093C  A05906            mov al,[0x659]
0000093F  2C40              sub al,0x40
00000941  D0E8              shr al,1
00000943  D0E8              shr al,1
00000945  02067806          add al,[0x678]
00000949  32E4              xor ah,ah
0000094B  D1E0              shl ax,1
0000094D  D1E0              shl ax,1
0000094F  40                inc ax
00000950  803E830600        cmp byte [0x683],0x0
00000955  7404              jz 0x95b
00000957  01068106          add [0x681],ax
0000095B  803E8D0600        cmp byte [0x68d],0x0
00000960  7404              jz 0x966
00000962  01068B06          add [0x68b],ax
00000966  A07506            mov al,[0x675]
00000969  38067806          cmp [0x678],al
0000096D  7508              jnz 0x977
0000096F  C606790603        mov byte [0x679],0x3
00000974  EB78              jmp short 0x9ee
00000976  90                nop
00000977  FE067806          inc byte [0x678]
0000097B  803EA80623        cmp byte [0x6a8],0x23
00000980  7705              ja 0x987
00000982  8006A80602        add byte [0x6a8],0x2
00000987  803E6606FA        cmp byte [0x666],0xfa
0000098C  770B              ja 0x999
0000098E  8006660602        add byte [0x666],0x2
00000993  812E73060101      sub word [0x673],0x101
00000999  A05306            mov al,[0x653]
0000099C  38069D06          cmp [0x69d],al
000009A0  7605              jna 0x9a7
000009A2  802E9D0603        sub byte [0x69d],0x3
000009A7  A19E06            mov ax,[0x69e]
000009AA  BB0A00            mov bx,0xa
000009AD  3BC3              cmp ax,bx
000009AF  7E08              jng 0x9b9
000009B1  2BC3              sub ax,bx
000009B3  A39E06            mov [0x69e],ax
000009B6  A3A006            mov [0x6a0],ax
000009B9  803E7C060A        cmp byte [0x67c],0xa
000009BE  7304              jnc 0x9c4
000009C0  FE0E7C06          dec byte [0x67c]
000009C4  803E500600        cmp byte [0x650],0x0
000009C9  7413              jz 0x9de
000009CB  FE0EA806          dec byte [0x6a8]
000009CF  803EA80628        cmp byte [0x6a8],0x28
000009D4  7308              jnc 0x9de
000009D6  FE065806          inc byte [0x658]
000009DA  FE06A806          inc byte [0x6a8]
000009DE  B003              mov al,0x3
000009E0  A27F06            mov [0x67f],al
000009E3  B007              mov al,0x7
000009E5  A28006            mov [0x680],al
000009E8  B86C04            mov ax,0x46c
000009EB  A37D06            mov [0x67d],ax
000009EE  5B                pop bx
000009EF  58                pop ax
000009F0  C3                ret
000009F1  50                push ax
000009F2  56                push si
000009F3  803E830600        cmp byte [0x683],0x0
000009F8  7503              jnz 0x9fd
000009FA  E9AA00            jmp word 0xaa7
000009FD  8B368506          mov si,[0x685]
00000A01  268A04            mov al,[es:si]
00000A04  3C11              cmp al,0x11
00000A06  7403              jz 0xa0b
00000A08  EB56              jmp short 0xa60
00000A0A  90                nop
00000A0B  FE0E8406          dec byte [0x684]
00000A0F  E85304            call word 0xe65
00000A12  80FC00            cmp ah,0x0
00000A15  7405              jz 0xa1c
00000A17  C606840600        mov byte [0x684],0x0
00000A1C  803E840600        cmp byte [0x684],0x0
00000A21  7403              jz 0xa26
00000A23  E98100            jmp word 0xaa7
00000A26  A07C06            mov al,[0x67c]
00000A29  A28406            mov [0x684],al
00000A2C  A18506            mov ax,[0x685]
00000A2F  A37D06            mov [0x67d],ax
00000A32  A18706            mov ax,[0x687]
00000A35  A37F06            mov [0x67f],ax
00000A38  C6067A0600        mov byte [0x67a],0x0
00000A3D  C70676060000      mov word [0x676],0x0
00000A43  E85D01            call word 0xba3
00000A46  A17606            mov ax,[0x676]
00000A49  01068106          add [0x681],ax
00000A4D  A17D06            mov ax,[0x67d]
00000A50  A38506            mov [0x685],ax
00000A53  A17F06            mov ax,[0x67f]
00000A56  A38706            mov [0x687],ax
00000A59  803E7A0600        cmp byte [0x67a],0x0
00000A5E  7444              jz 0xaa4
00000A60  FE0E8306          dec byte [0x683]
00000A64  E81D3F            call word 0x4984
00000A67  E8A53B            call word 0x460f
00000A6A  B8B80B            mov ax,0xbb8
00000A6D  E8CE25            call word 0x303e
00000A70  803E830600        cmp byte [0x683],0x0
00000A75  7430              jz 0xaa7
00000A77  C6066A06FF        mov byte [0x66a],0xff
00000A7C  A19E06            mov ax,[0x69e]
00000A7F  A3A006            mov [0x6a0],ax
00000A82  E8BE3E            call word 0x4943
00000A85  A17D06            mov ax,[0x67d]
00000A88  A38506            mov [0x685],ax
00000A8B  A17F06            mov ax,[0x67f]
00000A8E  A38706            mov [0x687],ax
00000A91  E8CE07            call word 0x1262
00000A94  E8D800            call word 0xb6f
00000A97  E8BE03            call word 0xe58
00000A9A  C606840601        mov byte [0x684],0x1
00000A9F  C6068E0602        mov byte [0x68e],0x2
00000AA4  E8BB07            call word 0x1262
00000AA7  5E                pop si
00000AA8  58                pop ax
00000AA9  C3                ret
00000AAA  50                push ax
00000AAB  56                push si
00000AAC  803E520601        cmp byte [0x652],0x1
00000AB1  7607              jna 0xaba
00000AB3  803E8D0600        cmp byte [0x68d],0x0
00000AB8  7503              jnz 0xabd
00000ABA  E9AF00            jmp word 0xb6c
00000ABD  8B368F06          mov si,[0x68f]
00000AC1  268A04            mov al,[es:si]
00000AC4  3C7F              cmp al,0x7f
00000AC6  7403              jz 0xacb
00000AC8  EB56              jmp short 0xb20
00000ACA  90                nop
00000ACB  FE0E8E06          dec byte [0x68e]
00000ACF  E8A204            call word 0xf74
00000AD2  80FC00            cmp ah,0x0
00000AD5  7405              jz 0xadc
00000AD7  C6068E0600        mov byte [0x68e],0x0
00000ADC  803E8E0600        cmp byte [0x68e],0x0
00000AE1  7403              jz 0xae6
00000AE3  E98600            jmp word 0xb6c
00000AE6  A07C06            mov al,[0x67c]
00000AE9  A28E06            mov [0x68e],al
00000AEC  A18F06            mov ax,[0x68f]
00000AEF  A37D06            mov [0x67d],ax
00000AF2  A19106            mov ax,[0x691]
00000AF5  A37F06            mov [0x67f],ax
00000AF8  C6067A0600        mov byte [0x67a],0x0
00000AFD  C70676060000      mov word [0x676],0x0
00000B03  E89D00            call word 0xba3
00000B06  A17606            mov ax,[0x676]
00000B09  01068B06          add [0x68b],ax
00000B0D  A17D06            mov ax,[0x67d]
00000B10  A38F06            mov [0x68f],ax
00000B13  A17F06            mov ax,[0x67f]
00000B16  A39106            mov [0x691],ax
00000B19  803E7A0600        cmp byte [0x67a],0x0
00000B1E  7449              jz 0xb69
00000B20  C6067A0600        mov byte [0x67a],0x0
00000B25  FE0E8D06          dec byte [0x68d]
00000B29  E8583E            call word 0x4984
00000B2C  E8E03A            call word 0x460f
00000B2F  B8B80B            mov ax,0xbb8
00000B32  E80925            call word 0x303e
00000B35  803E8D0600        cmp byte [0x68d],0x0
00000B3A  7430              jz 0xb6c
00000B3C  C6066A06FF        mov byte [0x66a],0xff
00000B41  A19E06            mov ax,[0x69e]
00000B44  A3A006            mov [0x6a0],ax
00000B47  E8F93D            call word 0x4943
00000B4A  A17D06            mov ax,[0x67d]
00000B4D  A38F06            mov [0x68f],ax
00000B50  A17F06            mov ax,[0x67f]
00000B53  A39106            mov [0x691],ax
00000B56  E81F07            call word 0x1278
00000B59  E82D00            call word 0xb89
00000B5C  E8F902            call word 0xe58
00000B5F  C6068E0601        mov byte [0x68e],0x1
00000B64  C606840602        mov byte [0x684],0x2
00000B69  E80C07            call word 0x1278
00000B6C  5E                pop si
00000B6D  58                pop ax
00000B6E  C3                ret
00000B6F  803E830600        cmp byte [0x683],0x0
00000B74  7501              jnz 0xb77
00000B76  C3                ret
00000B77  50                push ax
00000B78  A18506            mov ax,[0x685]
00000B7B  A37D06            mov [0x67d],ax
00000B7E  B8FA00            mov ax,0xfa
00000B81  E80E3C            call word 0x4792
00000B84  E8DB06            call word 0x1262
00000B87  58                pop ax
00000B88  C3                ret
00000B89  803E8D0600        cmp byte [0x68d],0x0
00000B8E  7501              jnz 0xb91
00000B90  C3                ret
00000B91  50                push ax
00000B92  A18F06            mov ax,[0x68f]
00000B95  A37D06            mov [0x67d],ax
00000B98  B8FA00            mov ax,0xfa
00000B9B  E8F43B            call word 0x4792
00000B9E  E8D706            call word 0x1278
00000BA1  58                pop ax
00000BA2  C3                ret
00000BA3  50                push ax
00000BA4  57                push di
00000BA5  56                push si
00000BA6  803E990600        cmp byte [0x699],0x0
00000BAB  7507              jnz 0xbb4
00000BAD  803E9A0600        cmp byte [0x69a],0x0
00000BB2  7438              jz 0xbec
00000BB4  E83900            call word 0xbf0
00000BB7  7233              jc 0xbec
00000BB9  BECE03            mov si,0x3ce
00000BBC  8B3E7D06          mov di,[0x67d]
00000BC0  E85406            call word 0x1217
00000BC3  803E4B0600        cmp byte [0x64b],0x0
00000BC8  7410              jz 0xbda
00000BCA  BF3900            mov di,0x39
00000BCD  8A85AE06          mov al,[di+0x6ae]
00000BD1  2401              and al,0x1
00000BD3  3C00              cmp al,0x0
00000BD5  7403              jz 0xbda
00000BD7  E8D700            call word 0xcb1
00000BDA  A19506            mov ax,[0x695]
00000BDD  A37D06            mov [0x67d],ax
00000BE0  A09706            mov al,[0x697]
00000BE3  A27F06            mov [0x67f],al
00000BE6  A09806            mov al,[0x698]
00000BE9  A28006            mov [0x680],al
00000BEC  5E                pop si
00000BED  5F                pop di
00000BEE  58                pop ax
00000BEF  C3                ret
00000BF0  50                push ax
00000BF1  A17D06            mov ax,[0x67d]
00000BF4  A39506            mov [0x695],ax
00000BF7  A07F06            mov al,[0x67f]
00000BFA  02069906          add al,[0x699]
00000BFE  A29706            mov [0x697],al
00000C01  A08006            mov al,[0x680]
00000C04  02069A06          add al,[0x69a]
00000C08  A29806            mov [0x698],al
00000C0B  A09906            mov al,[0x699]
00000C0E  3C01              cmp al,0x1
00000C10  740C              jz 0xc1e
00000C12  3CFF              cmp al,0xff
00000C14  750D              jnz 0xc23
00000C16  832E950604        sub word [0x695],byte +0x4
00000C1B  EB06              jmp short 0xc23
00000C1D  90                nop
00000C1E  8306950604        add word [0x695],byte +0x4
00000C23  A09A06            mov al,[0x69a]
00000C26  3C01              cmp al,0x1
00000C28  740D              jz 0xc37
00000C2A  3CFF              cmp al,0xff
00000C2C  750F              jnz 0xc3d
00000C2E  812E9506A000      sub word [0x695],0xa0
00000C34  EB07              jmp short 0xc3d
00000C36  90                nop
00000C37  81069506A000      add word [0x695],0xa0
00000C3D  E80200            call word 0xc42
00000C40  58                pop ax
00000C41  C3                ret
00000C42  50                push ax
00000C43  56                push si
00000C44  57                push di
00000C45  A09706            mov al,[0x697]
00000C48  3C00              cmp al,0x0
00000C4A  7F03              jg 0xc4f
00000C4C  EB5E              jmp short 0xcac
00000C4E  90                nop
00000C4F  3C27              cmp al,0x27
00000C51  7C03              jl 0xc56
00000C53  EB57              jmp short 0xcac
00000C55  90                nop
00000C56  A09806            mov al,[0x698]
00000C59  3C00              cmp al,0x0
00000C5B  7F03              jg 0xc60
00000C5D  EB4D              jmp short 0xcac
00000C5F  90                nop
00000C60  3C16              cmp al,0x16
00000C62  7C03              jl 0xc67
00000C64  EB46              jmp short 0xcac
00000C66  90                nop
00000C67  8B3E9506          mov di,[0x695]
00000C6B  268A05            mov al,[es:di]
00000C6E  3CC7              cmp al,0xc7
00000C70  7408              jz 0xc7a
00000C72  3CC3              cmp al,0xc3
00000C74  7404              jz 0xc7a
00000C76  3CCE              cmp al,0xce
00000C78  7511              jnz 0xc8b
00000C7A  FE067A06          inc byte [0x67a]
00000C7E  8B3E7D06          mov di,[0x67d]
00000C82  BECE03            mov si,0x3ce
00000C85  E88F05            call word 0x1217
00000C88  EB22              jmp short 0xcac
00000C8A  90                nop
00000C8B  3CB1              cmp al,0xb1
00000C8D  7413              jz 0xca2
00000C8F  3CDB              cmp al,0xdb
00000C91  740F              jz 0xca2
00000C93  3C09              cmp al,0x9
00000C95  7415              jz 0xcac
00000C97  3C11              cmp al,0x11
00000C99  7411              jz 0xcac
00000C9B  3C7F              cmp al,0x7f
00000C9D  740D              jz 0xcac
00000C9F  EB07              jmp short 0xca8
00000CA1  90                nop
00000CA2  E8CF00            call word 0xd74
00000CA5  EB06              jmp short 0xcad
00000CA7  90                nop
00000CA8  F8                clc
00000CA9  EB02              jmp short 0xcad
00000CAB  90                nop
00000CAC  F9                stc
00000CAD  5F                pop di
00000CAE  5E                pop si
00000CAF  58                pop ax
00000CB0  C3                ret
00000CB1  50                push ax
00000CB2  53                push bx
00000CB3  51                push cx
00000CB4  57                push di
00000CB5  56                push si
00000CB6  8B3E7D06          mov di,[0x67d]
00000CBA  803E9906FF        cmp byte [0x699],0xff
00000CBF  7503              jnz 0xcc4
00000CC1  83C704            add di,byte +0x4
00000CC4  803E990601        cmp byte [0x699],0x1
00000CC9  7503              jnz 0xcce
00000CCB  83EF04            sub di,byte +0x4
00000CCE  803E9A06FF        cmp byte [0x69a],0xff
00000CD3  7504              jnz 0xcd9
00000CD5  81C7A000          add di,0xa0
00000CD9  803E9A0601        cmp byte [0x69a],0x1
00000CDE  7504              jnz 0xce4
00000CE0  81EFA000          sub di,0xa0
00000CE4  268A855CFF        mov al,[es:di-0xa4]
00000CE9  3CC7              cmp al,0xc7
00000CEB  742A              jz 0xd17
00000CED  3CC3              cmp al,0xc3
00000CEF  7426              jz 0xd17
00000CF1  268A8560FF        mov al,[es:di-0xa0]
00000CF6  3CC3              cmp al,0xc3
00000CF8  741D              jz 0xd17
00000CFA  3CC7              cmp al,0xc7
00000CFC  7419              jz 0xd17
00000CFE  268A8564FF        mov al,[es:di-0x9c]
00000D03  3CC3              cmp al,0xc3
00000D05  7410              jz 0xd17
00000D07  3CC7              cmp al,0xc7
00000D09  740C              jz 0xd17
00000D0B  268A45FC          mov al,[es:di-0x4]
00000D0F  3CC3              cmp al,0xc3
00000D11  7404              jz 0xd17
00000D13  3CC7              cmp al,0xc7
00000D15  7503              jnz 0xd1a
00000D17  EB55              jmp short 0xd6e
00000D19  90                nop
00000D1A  268A4504          mov al,[es:di+0x4]
00000D1E  3CC3              cmp al,0xc3
00000D20  74F5              jz 0xd17
00000D22  3CC7              cmp al,0xc7
00000D24  74F1              jz 0xd17
00000D26  268A85A400        mov al,[es:di+0xa4]
00000D2B  3CC3              cmp al,0xc3
00000D2D  743F              jz 0xd6e
00000D2F  3CC7              cmp al,0xc7
00000D31  743B              jz 0xd6e
00000D33  268A85A000        mov al,[es:di+0xa0]
00000D38  3CC3              cmp al,0xc3
00000D3A  7432              jz 0xd6e
00000D3C  3CC7              cmp al,0xc7
00000D3E  742E              jz 0xd6e
00000D40  268A859C00        mov al,[es:di+0x9c]
00000D45  3CC3              cmp al,0xc3
00000D47  7425              jz 0xd6e
00000D49  3CC7              cmp al,0xc7
00000D4B  7421              jz 0xd6e
00000D4D  268A4501          mov al,[es:di+0x1]
00000D51  3A06A606          cmp al,[0x6a6]
00000D55  7417              jz 0xd6e
00000D57  268A05            mov al,[es:di]
00000D5A  3CB1              cmp al,0xb1
00000D5C  7510              jnz 0xd6e
00000D5E  BECE03            mov si,0x3ce
00000D61  E8B304            call word 0x1217
00000D64  8B3E7D06          mov di,[0x67d]
00000D68  BEC603            mov si,0x3c6
00000D6B  E8A904            call word 0x1217
00000D6E  5E                pop si
00000D6F  5F                pop di
00000D70  59                pop cx
00000D71  5B                pop bx
00000D72  58                pop ax
00000D73  C3                ret
00000D74  50                push ax
00000D75  53                push bx
00000D76  51                push cx
00000D77  57                push di
00000D78  56                push si
00000D79  B700              mov bh,0x0
00000D7B  883E6506          mov [0x665],bh
00000D7F  8A3E9706          mov bh,[0x697]
00000D83  8A1E9806          mov bl,[0x698]
00000D87  8A2E9906          mov ch,[0x699]
00000D8B  8A0E9A06          mov cl,[0x69a]
00000D8F  268A05            mov al,[es:di]
00000D92  3CDB              cmp al,0xdb
00000D94  751B              jnz 0xdb1
00000D96  803E4C0600        cmp byte [0x64c],0x0
00000D9B  7411              jz 0xdae
00000D9D  BECE03            mov si,0x3ce
00000DA0  8B3E7D06          mov di,[0x67d]
00000DA4  E87004            call word 0x1217
00000DA7  E8DF39            call word 0x4789
00000DAA  FE067A06          inc byte [0x67a]
00000DAE  E9A000            jmp word 0xe51
00000DB1  80FDFF            cmp ch,0xff
00000DB4  7505              jnz 0xdbb
00000DB6  83EF04            sub di,byte +0x4
00000DB9  FECF              dec bh
00000DBB  80FD01            cmp ch,0x1
00000DBE  7505              jnz 0xdc5
00000DC0  83C704            add di,byte +0x4
00000DC3  FEC7              inc bh
00000DC5  80F9FF            cmp cl,0xff
00000DC8  7506              jnz 0xdd0
00000DCA  81EFA000          sub di,0xa0
00000DCE  FECB              dec bl
00000DD0  80F901            cmp cl,0x1
00000DD3  7506              jnz 0xddb
00000DD5  81C7A000          add di,0xa0
00000DD9  FEC3              inc bl
00000DDB  803E650600        cmp byte [0x665],0x0
00000DE0  753B              jnz 0xe1d
00000DE2  80FF27            cmp bh,0x27
00000DE5  7F6A              jg 0xe51
00000DE7  80FF00            cmp bh,0x0
00000DEA  7C65              jl 0xe51
00000DEC  80FB16            cmp bl,0x16
00000DEF  7F60              jg 0xe51
00000DF1  80FB00            cmp bl,0x0
00000DF4  7C5B              jl 0xe51
00000DF6  268A05            mov al,[es:di]
00000DF9  3CB1              cmp al,0xb1
00000DFB  74B4              jz 0xdb1
00000DFD  3CDB              cmp al,0xdb
00000DFF  7510              jnz 0xe11
00000E01  803E4C0600        cmp byte [0x64c],0x0
00000E06  7406              jz 0xe0e
00000E08  E87E39            call word 0x4789
00000E0B  EB40              jmp short 0xe4d
00000E0D  90                nop
00000E0E  EB41              jmp short 0xe51
00000E10  90                nop
00000E11  3C20              cmp al,0x20
00000E13  7432              jz 0xe47
00000E15  57                push di
00000E16  50                push ax
00000E17  FE066506          inc byte [0x665]
00000E1B  EB94              jmp short 0xdb1
00000E1D  58                pop ax
00000E1E  86E0              xchg ah,al
00000E20  268A05            mov al,[es:di]
00000E23  3CDB              cmp al,0xdb
00000E25  740D              jz 0xe34
00000E27  80FCC7            cmp ah,0xc7
00000E2A  7404              jz 0xe30
00000E2C  3CB1              cmp al,0xb1
00000E2E  7404              jz 0xe34
00000E30  5F                pop di
00000E31  EB1E              jmp short 0xe51
00000E33  90                nop
00000E34  5F                pop di
00000E35  8306760602        add word [0x676],byte +0x2
00000E3A  80FCC7            cmp ah,0xc7
00000E3D  7505              jnz 0xe44
00000E3F  8306760603        add word [0x676],byte +0x3
00000E44  E8BD38            call word 0x4704
00000E47  BEC603            mov si,0x3c6
00000E4A  E8CA03            call word 0x1217
00000E4D  F8                clc
00000E4E  EB02              jmp short 0xe52
00000E50  90                nop
00000E51  F9                stc
00000E52  5E                pop si
00000E53  5F                pop di
00000E54  59                pop cx
00000E55  5B                pop bx
00000E56  58                pop ax
00000E57  C3                ret
00000E58  E80A00            call word 0xe65
00000E5B  E81601            call word 0xf74
00000E5E  E80400            call word 0xe65
00000E61  E81001            call word 0xf74
00000E64  C3                ret
00000E65  57                push di
00000E66  C70699060000      mov word [0x699],0x0
00000E6C  BF4800            mov di,0x48
00000E6F  8A85AE06          mov al,[di+0x6ae]
00000E73  3C00              cmp al,0x0
00000E75  740A              jz 0xe81
00000E77  C6069A06FF        mov byte [0x69a],0xff
00000E7C  80A5AE06FD        and byte [di+0x6ae],0xfd
00000E81  BF4D00            mov di,0x4d
00000E84  8A85AE06          mov al,[di+0x6ae]
00000E88  3C00              cmp al,0x0
00000E8A  740A              jz 0xe96
00000E8C  C606990601        mov byte [0x699],0x1
00000E91  80A5AE06FD        and byte [di+0x6ae],0xfd
00000E96  BF5000            mov di,0x50
00000E99  8A85AE06          mov al,[di+0x6ae]
00000E9D  3C00              cmp al,0x0
00000E9F  750B              jnz 0xeac
00000EA1  BF4C00            mov di,0x4c
00000EA4  8A85AE06          mov al,[di+0x6ae]
00000EA8  3C00              cmp al,0x0
00000EAA  740A              jz 0xeb6
00000EAC  C6069A0601        mov byte [0x69a],0x1
00000EB1  80A5AE06FD        and byte [di+0x6ae],0xfd
00000EB6  BF4B00            mov di,0x4b
00000EB9  8A85AE06          mov al,[di+0x6ae]
00000EBD  3C00              cmp al,0x0
00000EBF  750B              jnz 0xecc
00000EC1  BF2400            mov di,0x24
00000EC4  8A85AE06          mov al,[di+0x6ae]
00000EC8  3C00              cmp al,0x0
00000ECA  740A              jz 0xed6
00000ECC  C6069906FF        mov byte [0x699],0xff
00000ED1  80A5AE06FD        and byte [di+0x6ae],0xfd
00000ED6  BF4700            mov di,0x47
00000ED9  8A85AE06          mov al,[di+0x6ae]
00000EDD  3C00              cmp al,0x0
00000EDF  740F              jz 0xef0
00000EE1  C6069906FF        mov byte [0x699],0xff
00000EE6  C6069A06FF        mov byte [0x69a],0xff
00000EEB  80A5AE06FD        and byte [di+0x6ae],0xfd
00000EF0  BF4900            mov di,0x49
00000EF3  8A85AE06          mov al,[di+0x6ae]
00000EF7  3C00              cmp al,0x0
00000EF9  740F              jz 0xf0a
00000EFB  C606990601        mov byte [0x699],0x1
00000F00  C6069A06FF        mov byte [0x69a],0xff
00000F05  80A5AE06FD        and byte [di+0x6ae],0xfd
00000F0A  BF4F00            mov di,0x4f
00000F0D  8A85AE06          mov al,[di+0x6ae]
00000F11  3C00              cmp al,0x0
00000F13  740F              jz 0xf24
00000F15  C6069906FF        mov byte [0x699],0xff
00000F1A  C6069A0601        mov byte [0x69a],0x1
00000F1F  80A5AE06FD        and byte [di+0x6ae],0xfd
00000F24  BF5100            mov di,0x51
00000F27  8A85AE06          mov al,[di+0x6ae]
00000F2B  3C00              cmp al,0x0
00000F2D  740F              jz 0xf3e
00000F2F  C606990601        mov byte [0x699],0x1
00000F34  C6069A0601        mov byte [0x69a],0x1
00000F39  80A5AE06FD        and byte [di+0x6ae],0xfd
00000F3E  803E5F0601        cmp byte [0x65f],0x1
00000F43  7503              jnz 0xf48
00000F45  E86422            call word 0x31ac
00000F48  32E4              xor ah,ah
00000F4A  A09A06            mov al,[0x69a]
00000F4D  38068A06          cmp [0x68a],al
00000F51  7509              jnz 0xf5c
00000F53  A09906            mov al,[0x699]
00000F56  38068906          cmp [0x689],al
00000F5A  7416              jz 0xf72
00000F5C  A19906            mov ax,[0x699]
00000F5F  A38906            mov [0x689],ax
00000F62  803E990600        cmp byte [0x699],0x0
00000F67  7507              jnz 0xf70
00000F69  803E9A0600        cmp byte [0x69a],0x0
00000F6E  7402              jz 0xf72
00000F70  B401              mov ah,0x1
00000F72  5F                pop di
00000F73  C3                ret
00000F74  57                push di
00000F75  C70699060000      mov word [0x699],0x0
00000F7B  BF1100            mov di,0x11
00000F7E  8A85AE06          mov al,[di+0x6ae]
00000F82  3C00              cmp al,0x0
00000F84  740A              jz 0xf90
00000F86  C6069A06FF        mov byte [0x69a],0xff
00000F8B  80A5AE06FD        and byte [di+0x6ae],0xfd
00000F90  BF2000            mov di,0x20
00000F93  8A85AE06          mov al,[di+0x6ae]
00000F97  3C00              cmp al,0x0
00000F99  740A              jz 0xfa5
00000F9B  C606990601        mov byte [0x699],0x1
00000FA0  80A5AE06FD        and byte [di+0x6ae],0xfd
00000FA5  BF2D00            mov di,0x2d
00000FA8  8A85AE06          mov al,[di+0x6ae]
00000FAC  3C00              cmp al,0x0
00000FAE  750B              jnz 0xfbb
00000FB0  BF1F00            mov di,0x1f
00000FB3  8A85AE06          mov al,[di+0x6ae]
00000FB7  3C00              cmp al,0x0
00000FB9  740A              jz 0xfc5
00000FBB  C6069A0601        mov byte [0x69a],0x1
00000FC0  80A5AE06FD        and byte [di+0x6ae],0xfd
00000FC5  BF1E00            mov di,0x1e
00000FC8  8A85AE06          mov al,[di+0x6ae]
00000FCC  3C00              cmp al,0x0
00000FCE  740A              jz 0xfda
00000FD0  C6069906FF        mov byte [0x699],0xff
00000FD5  80A5AE06FD        and byte [di+0x6ae],0xfd
00000FDA  BF1000            mov di,0x10
00000FDD  8A85AE06          mov al,[di+0x6ae]
00000FE1  3C00              cmp al,0x0
00000FE3  740F              jz 0xff4
00000FE5  C6069906FF        mov byte [0x699],0xff
00000FEA  C6069A06FF        mov byte [0x69a],0xff
00000FEF  80A5AE06FD        and byte [di+0x6ae],0xfd
00000FF4  BF1200            mov di,0x12
00000FF7  8A85AE06          mov al,[di+0x6ae]
00000FFB  3C00              cmp al,0x0
00000FFD  740F              jz 0x100e
00000FFF  C606990601        mov byte [0x699],0x1
00001004  C6069A06FF        mov byte [0x69a],0xff
00001009  80A5AE06FD        and byte [di+0x6ae],0xfd
0000100E  BF2C00            mov di,0x2c
00001011  8A85AE06          mov al,[di+0x6ae]
00001015  3C00              cmp al,0x0
00001017  740F              jz 0x1028
00001019  C6069906FF        mov byte [0x699],0xff
0000101E  C6069A0601        mov byte [0x69a],0x1
00001023  80A5AE06FD        and byte [di+0x6ae],0xfd
00001028  BF2E00            mov di,0x2e
0000102B  8A85AE06          mov al,[di+0x6ae]
0000102F  3C00              cmp al,0x0
00001031  740F              jz 0x1042
00001033  C606990601        mov byte [0x699],0x1
00001038  C6069A0601        mov byte [0x69a],0x1
0000103D  80A5AE06FD        and byte [di+0x6ae],0xfd
00001042  32E4              xor ah,ah
00001044  A09A06            mov al,[0x69a]
00001047  38069406          cmp [0x694],al
0000104B  7509              jnz 0x1056
0000104D  A09906            mov al,[0x699]
00001050  38069306          cmp [0x693],al
00001054  7416              jz 0x106c
00001056  A19906            mov ax,[0x699]
00001059  A39306            mov [0x693],ax
0000105C  803E990600        cmp byte [0x699],0x0
00001061  7507              jnz 0x106a
00001063  803E9A0600        cmp byte [0x69a],0x0
00001068  7402              jz 0x106c
0000106A  B401              mov ah,0x1
0000106C  5F                pop di
0000106D  C3                ret
0000106E  50                push ax
0000106F  E8B01E            call word 0x2f22
00001072  B003              mov al,0x3
00001074  A28706            mov [0x687],al
00001077  B007              mov al,0x7
00001079  A28806            mov [0x688],al
0000107C  B86C04            mov ax,0x46c
0000107F  A38506            mov [0x685],ax
00001082  B003              mov al,0x3
00001084  A29106            mov [0x691],al
00001087  B00E              mov al,0xe
00001089  A29206            mov [0x692],al
0000108C  B8CC08            mov ax,0x8cc
0000108F  A38F06            mov [0x68f],ax
00001092  B005              mov al,0x5
00001094  A28306            mov [0x683],al
00001097  C6068D0600        mov byte [0x68d],0x0
0000109C  803E520601        cmp byte [0x652],0x1
000010A1  7603              jna 0x10a6
000010A3  A28D06            mov [0x68d],al
000010A6  C606840601        mov byte [0x684],0x1
000010AB  C6068E0601        mov byte [0x68e],0x1
000010B0  B8E0E9            mov ax,0xe9e0
000010B3  A37306            mov [0x673],ax
000010B6  A0A806            mov al,[0x6a8]
000010B9  A2A906            mov [0x6a9],al
000010BC  A05306            mov al,[0x653]
000010BF  A27C06            mov [0x67c],al
000010C2  A05406            mov al,[0x654]
000010C5  A29D06            mov [0x69d],al
000010C8  A15506            mov ax,[0x655]
000010CB  A39E06            mov [0x69e],ax
000010CE  A3A006            mov [0x6a0],ax
000010D1  B00A              mov al,0xa
000010D3  A26606            mov [0x666],al
000010D6  C6067A0600        mov byte [0x67a],0x0
000010DB  C606790600        mov byte [0x679],0x0
000010E0  C606780601        mov byte [0x678],0x1
000010E5  C606700600        mov byte [0x670],0x0
000010EA  A05006            mov al,[0x650]
000010ED  A25806            mov [0x658],al
000010F0  0006A806          add [0x6a8],al
000010F4  58                pop ax
000010F5  C3                ret
000010F6  50                push ax
000010F7  51                push cx
000010F8  57                push di
000010F9  A1CA03            mov ax,[0x3ca]
000010FC  B95000            mov cx,0x50
000010FF  33FF              xor di,di
00001101  50                push ax
00001102  53                push bx
00001103  52                push dx
00001104  8BD8              mov bx,ax
00001106  803E600601        cmp byte [0x660],0x1
0000110B  740E              jz 0x111b
0000110D  BADA03            mov dx,0x3da
00001110  EC                in al,dx
00001111  A801              test al,0x1
00001113  75FB              jnz 0x1110
00001115  FA                cli
00001116  EC                in al,dx
00001117  A801              test al,0x1
00001119  74FB              jz 0x1116
0000111B  26891D            mov [es:di],bx
0000111E  FB                sti
0000111F  5A                pop dx
00001120  5B                pop bx
00001121  58                pop ax
00001122  83C702            add di,byte +0x2
00001125  E2DA              loop 0x1101
00001127  B9C00D            mov cx,0xdc0
0000112A  8BF9              mov di,cx
0000112C  B95000            mov cx,0x50
0000112F  50                push ax
00001130  53                push bx
00001131  52                push dx
00001132  8BD8              mov bx,ax
00001134  803E600601        cmp byte [0x660],0x1
00001139  740E              jz 0x1149
0000113B  BADA03            mov dx,0x3da
0000113E  EC                in al,dx
0000113F  A801              test al,0x1
00001141  75FB              jnz 0x113e
00001143  FA                cli
00001144  EC                in al,dx
00001145  A801              test al,0x1
00001147  74FB              jz 0x1144
00001149  26891D            mov [es:di],bx
0000114C  FB                sti
0000114D  5A                pop dx
0000114E  5B                pop bx
0000114F  58                pop ax
00001150  83C702            add di,byte +0x2
00001153  E2DA              loop 0x112f
00001155  B99C00            mov cx,0x9c
00001158  8BF9              mov di,cx
0000115A  B91600            mov cx,0x16
0000115D  50                push ax
0000115E  53                push bx
0000115F  52                push dx
00001160  8BD8              mov bx,ax
00001162  803E600601        cmp byte [0x660],0x1
00001167  740E              jz 0x1177
00001169  BADA03            mov dx,0x3da
0000116C  EC                in al,dx
0000116D  A801              test al,0x1
0000116F  75FB              jnz 0x116c
00001171  FA                cli
00001172  EC                in al,dx
00001173  A801              test al,0x1
00001175  74FB              jz 0x1172
00001177  26891D            mov [es:di],bx
0000117A  FB                sti
0000117B  5A                pop dx
0000117C  5B                pop bx
0000117D  58                pop ax
0000117E  50                push ax
0000117F  53                push bx
00001180  52                push dx
00001181  8BD8              mov bx,ax
00001183  803E600601        cmp byte [0x660],0x1
00001188  740E              jz 0x1198
0000118A  BADA03            mov dx,0x3da
0000118D  EC                in al,dx
0000118E  A801              test al,0x1
00001190  75FB              jnz 0x118d
00001192  FA                cli
00001193  EC                in al,dx
00001194  A801              test al,0x1
00001196  74FB              jz 0x1193
00001198  26895D02          mov [es:di+0x2],bx
0000119C  FB                sti
0000119D  5A                pop dx
0000119E  5B                pop bx
0000119F  58                pop ax
000011A0  50                push ax
000011A1  53                push bx
000011A2  52                push dx
000011A3  8BD8              mov bx,ax
000011A5  803E600601        cmp byte [0x660],0x1
000011AA  740E              jz 0x11ba
000011AC  BADA03            mov dx,0x3da
000011AF  EC                in al,dx
000011B0  A801              test al,0x1
000011B2  75FB              jnz 0x11af
000011B4  FA                cli
000011B5  EC                in al,dx
000011B6  A801              test al,0x1
000011B8  74FB              jz 0x11b5
000011BA  26895D04          mov [es:di+0x4],bx
000011BE  FB                sti
000011BF  5A                pop dx
000011C0  5B                pop bx
000011C1  58                pop ax
000011C2  50                push ax
000011C3  53                push bx
000011C4  52                push dx
000011C5  8BD8              mov bx,ax
000011C7  803E600601        cmp byte [0x660],0x1
000011CC  740E              jz 0x11dc
000011CE  BADA03            mov dx,0x3da
000011D1  EC                in al,dx
000011D2  A801              test al,0x1
000011D4  75FB              jnz 0x11d1
000011D6  FA                cli
000011D7  EC                in al,dx
000011D8  A801              test al,0x1
000011DA  74FB              jz 0x11d7
000011DC  26895D06          mov [es:di+0x6],bx
000011E0  FB                sti
000011E1  5A                pop dx
000011E2  5B                pop bx
000011E3  58                pop ax
000011E4  81C7A000          add di,0xa0
000011E8  49                dec cx
000011E9  7403              jz 0x11ee
000011EB  E96FFF            jmp word 0x115d
000011EE  BE2404            mov si,0x424
000011F1  803E520601        cmp byte [0x652],0x1
000011F6  7403              jz 0x11fb
000011F8  BED303            mov si,0x3d3
000011FB  BF600E            mov di,0xe60
000011FE  E8851E            call word 0x3086
00001201  BF600E            mov di,0xe60
00001204  BEC203            mov si,0x3c2
00001207  E80D00            call word 0x1217
0000120A  BFFC0E            mov di,0xefc
0000120D  BEBE03            mov si,0x3be
00001210  E80400            call word 0x1217
00001213  5F                pop di
00001214  59                pop cx
00001215  58                pop ax
00001216  C3                ret
00001217  50                push ax
00001218  8B04              mov ax,[si]
0000121A  50                push ax
0000121B  53                push bx
0000121C  52                push dx
0000121D  8BD8              mov bx,ax
0000121F  803E600601        cmp byte [0x660],0x1
00001224  740E              jz 0x1234
00001226  BADA03            mov dx,0x3da
00001229  EC                in al,dx
0000122A  A801              test al,0x1
0000122C  75FB              jnz 0x1229
0000122E  FA                cli
0000122F  EC                in al,dx
00001230  A801              test al,0x1
00001232  74FB              jz 0x122f
00001234  26891D            mov [es:di],bx
00001237  FB                sti
00001238  5A                pop dx
00001239  5B                pop bx
0000123A  58                pop ax
0000123B  8B4402            mov ax,[si+0x2]
0000123E  50                push ax
0000123F  53                push bx
00001240  52                push dx
00001241  8BD8              mov bx,ax
00001243  803E600601        cmp byte [0x660],0x1
00001248  740E              jz 0x1258
0000124A  BADA03            mov dx,0x3da
0000124D  EC                in al,dx
0000124E  A801              test al,0x1
00001250  75FB              jnz 0x124d
00001252  FA                cli
00001253  EC                in al,dx
00001254  A801              test al,0x1
00001256  74FB              jz 0x1253
00001258  26895D02          mov [es:di+0x2],bx
0000125C  FB                sti
0000125D  5A                pop dx
0000125E  5B                pop bx
0000125F  58                pop ax
00001260  58                pop ax
00001261  C3                ret
00001262  803E830600        cmp byte [0x683],0x0
00001267  740E              jz 0x1277
00001269  56                push si
0000126A  57                push di
0000126B  BEBE03            mov si,0x3be
0000126E  8B3E8506          mov di,[0x685]
00001272  E8A2FF            call word 0x1217
00001275  5F                pop di
00001276  5E                pop si
00001277  C3                ret
00001278  803E8D0600        cmp byte [0x68d],0x0
0000127D  7415              jz 0x1294
0000127F  803E520601        cmp byte [0x652],0x1
00001284  760E              jna 0x1294
00001286  56                push si
00001287  57                push di
00001288  BEC203            mov si,0x3c2
0000128B  8B3E8F06          mov di,[0x68f]
0000128F  E885FF            call word 0x1217
00001292  5F                pop di
00001293  5E                pop si
00001294  C3                ret
00001295  50                push ax
00001296  53                push bx
00001297  51                push cx
00001298  57                push di
00001299  56                push si
0000129A  B90000            mov cx,0x0
0000129D  8B1E7306          mov bx,[0x673]
000012A1  BEC603            mov si,0x3c6
000012A4  BFA000            mov di,0xa0
000012A7  E8501E            call word 0x30fa
000012AA  41                inc cx
000012AB  80FD00            cmp ch,0x0
000012AE  7509              jnz 0x12b9
000012B0  81066D06F00F      add word [0x66d],0xff0
000012B6  B90000            mov cx,0x0
000012B9  83C704            add di,byte +0x4
000012BC  81FFC00D          cmp di,0xdc0
000012C0  7508              jnz 0x12ca
000012C2  80FB00            cmp bl,0x0
000012C5  75DD              jnz 0x12a4
000012C7  EB30              jmp short 0x12f9
000012C9  90                nop
000012CA  E8011E            call word 0x30ce
000012CD  A16D06            mov ax,[0x66d]
000012D0  24E3              and al,0xe3
000012D2  3C03              cmp al,0x3
000012D4  77D4              ja 0x12aa
000012D6  268A05            mov al,[es:di]
000012D9  3CB1              cmp al,0xb1
000012DB  74CD              jz 0x12aa
000012DD  3CDB              cmp al,0xdb
000012DF  74C9              jz 0x12aa
000012E1  B90000            mov cx,0x0
000012E4  E830FF            call word 0x1217
000012E7  80FB00            cmp bl,0x0
000012EA  7403              jz 0x12ef
000012EC  80EB01            sub bl,0x1
000012EF  80EF01            sub bh,0x1
000012F2  80FF00            cmp bh,0x0
000012F5  7402              jz 0x12f9
000012F7  EBB1              jmp short 0x12aa
000012F9  8A3E6606          mov bh,[0x666]
000012FD  BECA03            mov si,0x3ca
00001300  B425              mov ah,0x25
00001302  E8E11D            call word 0x30e6
00001305  FEC0              inc al
00001307  32E4              xor ah,ah
00001309  B102              mov cl,0x2
0000130B  D3E0              shl ax,cl
0000130D  8BC8              mov cx,ax
0000130F  B414              mov ah,0x14
00001311  E8D21D            call word 0x30e6
00001314  FEC0              inc al
00001316  F626D203          mul byte [0x3d2]
0000131A  03C1              add ax,cx
0000131C  8BF8              mov di,ax
0000131E  268A05            mov al,[es:di]
00001321  3CB1              cmp al,0xb1
00001323  74DB              jz 0x1300
00001325  3CDB              cmp al,0xdb
00001327  74D7              jz 0x1300
00001329  E8EBFE            call word 0x1217
0000132C  FECF              dec bh
0000132E  80FF00            cmp bh,0x0
00001331  7402              jz 0x1335
00001333  EBCB              jmp short 0x1300
00001335  5E                pop si
00001336  5F                pop di
00001337  59                pop cx
00001338  5B                pop bx
00001339  58                pop ax
0000133A  C3                ret
0000133B  0000              add [bx+si],al
0000133D  0000              add [bx+si],al
0000133F  0000              add [bx+si],al
00001341  0000              add [bx+si],al
00001343  0000              add [bx+si],al
00001345  0000              add [bx+si],al
00001347  0000              add [bx+si],al
00001349  0000              add [bx+si],al
0000134B  0000              add [bx+si],al
0000134D  0000              add [bx+si],al
0000134F  0000              add [bx+si],al
00001351  0000              add [bx+si],al
00001353  0000              add [bx+si],al
00001355  0000              add [bx+si],al
00001357  0000              add [bx+si],al
00001359  0000              add [bx+si],al
0000135B  0000              add [bx+si],al
0000135D  0000              add [bx+si],al
0000135F  0000              add [bx+si],al
00001361  0000              add [bx+si],al
00001363  0000              add [bx+si],al
00001365  0000              add [bx+si],al
00001367  0000              add [bx+si],al
00001369  0000              add [bx+si],al
0000136B  0000              add [bx+si],al
0000136D  0000              add [bx+si],al
0000136F  0000              add [bx+si],al
00001371  0000              add [bx+si],al
00001373  0000              add [bx+si],al
00001375  0000              add [bx+si],al
00001377  0000              add [bx+si],al
00001379  0000              add [bx+si],al
0000137B  0000              add [bx+si],al
0000137D  0000              add [bx+si],al
0000137F  0000              add [bx+si],al
00001381  0000              add [bx+si],al
00001383  0000              add [bx+si],al
00001385  0000              add [bx+si],al
00001387  0000              add [bx+si],al
00001389  0000              add [bx+si],al
0000138B  0000              add [bx+si],al
0000138D  0000              add [bx+si],al
0000138F  0000              add [bx+si],al
00001391  0000              add [bx+si],al
00001393  0000              add [bx+si],al
00001395  0000              add [bx+si],al
00001397  0000              add [bx+si],al
00001399  0000              add [bx+si],al
0000139B  0000              add [bx+si],al
0000139D  0000              add [bx+si],al
0000139F  0000              add [bx+si],al
000013A1  0000              add [bx+si],al
000013A3  0000              add [bx+si],al
000013A5  0000              add [bx+si],al
000013A7  0000              add [bx+si],al
000013A9  0000              add [bx+si],al
000013AB  0000              add [bx+si],al
000013AD  0000              add [bx+si],al
000013AF  0000              add [bx+si],al
000013B1  0000              add [bx+si],al
000013B3  0000              add [bx+si],al
000013B5  0000              add [bx+si],al
000013B7  0000              add [bx+si],al
000013B9  0000              add [bx+si],al
000013BB  0000              add [bx+si],al
000013BD  0000              add [bx+si],al
000013BF  0000              add [bx+si],al
000013C1  0000              add [bx+si],al
000013C3  0000              add [bx+si],al
000013C5  0000              add [bx+si],al
000013C7  0000              add [bx+si],al
000013C9  0000              add [bx+si],al
000013CB  0000              add [bx+si],al
000013CD  0000              add [bx+si],al
000013CF  0000              add [bx+si],al
000013D1  0000              add [bx+si],al
000013D3  0000              add [bx+si],al
000013D5  0000              add [bx+si],al
000013D7  0000              add [bx+si],al
000013D9  0000              add [bx+si],al
000013DB  0000              add [bx+si],al
000013DD  0000              add [bx+si],al
000013DF  0000              add [bx+si],al
000013E1  0000              add [bx+si],al
000013E3  0000              add [bx+si],al
000013E5  0000              add [bx+si],al
000013E7  0000              add [bx+si],al
000013E9  0000              add [bx+si],al
000013EB  0000              add [bx+si],al
000013ED  0000              add [bx+si],al
000013EF  0000              add [bx+si],al
000013F1  0000              add [bx+si],al
000013F3  0000              add [bx+si],al
000013F5  0000              add [bx+si],al
000013F7  0000              add [bx+si],al
000013F9  0000              add [bx+si],al
000013FB  0000              add [bx+si],al
000013FD  0000              add [bx+si],al
000013FF  0000              add [bx+si],al
00001401  0000              add [bx+si],al
00001403  0000              add [bx+si],al
00001405  0000              add [bx+si],al
00001407  0000              add [bx+si],al
00001409  0000              add [bx+si],al
0000140B  0000              add [bx+si],al
0000140D  0000              add [bx+si],al
0000140F  0000              add [bx+si],al
00001411  0000              add [bx+si],al
00001413  0000              add [bx+si],al
00001415  0000              add [bx+si],al
00001417  0000              add [bx+si],al
00001419  0000              add [bx+si],al
0000141B  0000              add [bx+si],al
0000141D  0000              add [bx+si],al
0000141F  0000              add [bx+si],al
00001421  0000              add [bx+si],al
00001423  0000              add [bx+si],al
00001425  0000              add [bx+si],al
00001427  0000              add [bx+si],al
00001429  0000              add [bx+si],al
0000142B  0000              add [bx+si],al
0000142D  0000              add [bx+si],al
0000142F  0000              add [bx+si],al
00001431  0000              add [bx+si],al
00001433  0000              add [bx+si],al
00001435  0000              add [bx+si],al
00001437  0000              add [bx+si],al
00001439  0000              add [bx+si],al
0000143B  0000              add [bx+si],al
0000143D  0000              add [bx+si],al
0000143F  0000              add [bx+si],al
00001441  0000              add [bx+si],al
00001443  0000              add [bx+si],al
00001445  0000              add [bx+si],al
00001447  0000              add [bx+si],al
00001449  0000              add [bx+si],al
0000144B  0000              add [bx+si],al
0000144D  0000              add [bx+si],al
0000144F  0000              add [bx+si],al
00001451  0000              add [bx+si],al
00001453  0000              add [bx+si],al
00001455  0000              add [bx+si],al
00001457  0000              add [bx+si],al
00001459  0000              add [bx+si],al
0000145B  0000              add [bx+si],al
0000145D  0000              add [bx+si],al
0000145F  0000              add [bx+si],al
00001461  0000              add [bx+si],al
00001463  0000              add [bx+si],al
00001465  0000              add [bx+si],al
00001467  0000              add [bx+si],al
00001469  0000              add [bx+si],al
0000146B  0000              add [bx+si],al
0000146D  0000              add [bx+si],al
0000146F  0000              add [bx+si],al
00001471  0000              add [bx+si],al
00001473  0000              add [bx+si],al
00001475  0000              add [bx+si],al
00001477  0000              add [bx+si],al
00001479  0000              add [bx+si],al
0000147B  0000              add [bx+si],al
0000147D  0000              add [bx+si],al
0000147F  0000              add [bx+si],al
00001481  0000              add [bx+si],al
00001483  0000              add [bx+si],al
00001485  0000              add [bx+si],al
00001487  0000              add [bx+si],al
00001489  0000              add [bx+si],al
0000148B  0000              add [bx+si],al
0000148D  0000              add [bx+si],al
0000148F  0000              add [bx+si],al
00001491  0000              add [bx+si],al
00001493  0000              add [bx+si],al
00001495  0000              add [bx+si],al
00001497  0000              add [bx+si],al
00001499  0000              add [bx+si],al
0000149B  0000              add [bx+si],al
0000149D  0000              add [bx+si],al
0000149F  0000              add [bx+si],al
000014A1  0000              add [bx+si],al
000014A3  0000              add [bx+si],al
000014A5  0000              add [bx+si],al
000014A7  0000              add [bx+si],al
000014A9  0000              add [bx+si],al
000014AB  0000              add [bx+si],al
000014AD  0000              add [bx+si],al
000014AF  0000              add [bx+si],al
000014B1  0000              add [bx+si],al
000014B3  0000              add [bx+si],al
000014B5  0000              add [bx+si],al
000014B7  0000              add [bx+si],al
000014B9  0000              add [bx+si],al
000014BB  0000              add [bx+si],al
000014BD  0000              add [bx+si],al
000014BF  0000              add [bx+si],al
000014C1  0000              add [bx+si],al
000014C3  0000              add [bx+si],al
000014C5  0000              add [bx+si],al
000014C7  0000              add [bx+si],al
000014C9  0000              add [bx+si],al
000014CB  0000              add [bx+si],al
000014CD  0000              add [bx+si],al
000014CF  0000              add [bx+si],al
000014D1  0000              add [bx+si],al
000014D3  0000              add [bx+si],al
000014D5  0000              add [bx+si],al
000014D7  0000              add [bx+si],al
000014D9  0000              add [bx+si],al
000014DB  0000              add [bx+si],al
000014DD  0000              add [bx+si],al
000014DF  0000              add [bx+si],al
000014E1  0000              add [bx+si],al
000014E3  0000              add [bx+si],al
000014E5  0000              add [bx+si],al
000014E7  0000              add [bx+si],al
000014E9  0000              add [bx+si],al
000014EB  0000              add [bx+si],al
000014ED  0000              add [bx+si],al
000014EF  0000              add [bx+si],al
000014F1  0000              add [bx+si],al
000014F3  0000              add [bx+si],al
000014F5  0000              add [bx+si],al
000014F7  0000              add [bx+si],al
000014F9  0000              add [bx+si],al
000014FB  0000              add [bx+si],al
000014FD  0000              add [bx+si],al
000014FF  0000              add [bx+si],al
00001501  0000              add [bx+si],al
00001503  0000              add [bx+si],al
00001505  0000              add [bx+si],al
00001507  0000              add [bx+si],al
00001509  0000              add [bx+si],al
0000150B  0000              add [bx+si],al
0000150D  0000              add [bx+si],al
0000150F  0000              add [bx+si],al
00001511  0000              add [bx+si],al
00001513  0000              add [bx+si],al
00001515  0000              add [bx+si],al
00001517  0000              add [bx+si],al
00001519  0000              add [bx+si],al
0000151B  0000              add [bx+si],al
0000151D  0000              add [bx+si],al
0000151F  0000              add [bx+si],al
00001521  0000              add [bx+si],al
00001523  0000              add [bx+si],al
00001525  0000              add [bx+si],al
00001527  0000              add [bx+si],al
00001529  0000              add [bx+si],al
0000152B  0000              add [bx+si],al
0000152D  0000              add [bx+si],al
0000152F  0000              add [bx+si],al
00001531  0000              add [bx+si],al
00001533  0000              add [bx+si],al
00001535  0000              add [bx+si],al
00001537  0000              add [bx+si],al
00001539  0000              add [bx+si],al
0000153B  0000              add [bx+si],al
0000153D  0000              add [bx+si],al
0000153F  0000              add [bx+si],al
00001541  0000              add [bx+si],al
00001543  0000              add [bx+si],al
00001545  0000              add [bx+si],al
00001547  0000              add [bx+si],al
00001549  0000              add [bx+si],al
0000154B  0000              add [bx+si],al
0000154D  0000              add [bx+si],al
0000154F  0000              add [bx+si],al
00001551  0000              add [bx+si],al
00001553  0000              add [bx+si],al
00001555  0000              add [bx+si],al
00001557  0000              add [bx+si],al
00001559  0000              add [bx+si],al
0000155B  0000              add [bx+si],al
0000155D  0000              add [bx+si],al
0000155F  0000              add [bx+si],al
00001561  0000              add [bx+si],al
00001563  0000              add [bx+si],al
00001565  0000              add [bx+si],al
00001567  0000              add [bx+si],al
00001569  0000              add [bx+si],al
0000156B  0000              add [bx+si],al
0000156D  0000              add [bx+si],al
0000156F  0000              add [bx+si],al
00001571  0000              add [bx+si],al
00001573  0000              add [bx+si],al
00001575  0000              add [bx+si],al
00001577  0000              add [bx+si],al
00001579  0000              add [bx+si],al
0000157B  0000              add [bx+si],al
0000157D  0000              add [bx+si],al
0000157F  0000              add [bx+si],al
00001581  0000              add [bx+si],al
00001583  0000              add [bx+si],al
00001585  0000              add [bx+si],al
00001587  0000              add [bx+si],al
00001589  0000              add [bx+si],al
0000158B  0000              add [bx+si],al
0000158D  0000              add [bx+si],al
0000158F  0000              add [bx+si],al
00001591  0000              add [bx+si],al
00001593  0000              add [bx+si],al
00001595  0000              add [bx+si],al
00001597  0000              add [bx+si],al
00001599  0000              add [bx+si],al
0000159B  0000              add [bx+si],al
0000159D  0000              add [bx+si],al
0000159F  0000              add [bx+si],al
000015A1  0000              add [bx+si],al
000015A3  0000              add [bx+si],al
000015A5  0000              add [bx+si],al
000015A7  0000              add [bx+si],al
000015A9  0000              add [bx+si],al
000015AB  0000              add [bx+si],al
000015AD  0000              add [bx+si],al
000015AF  0000              add [bx+si],al
000015B1  0000              add [bx+si],al
000015B3  0000              add [bx+si],al
000015B5  0000              add [bx+si],al
000015B7  0000              add [bx+si],al
000015B9  0000              add [bx+si],al
000015BB  0000              add [bx+si],al
000015BD  0000              add [bx+si],al
000015BF  0000              add [bx+si],al
000015C1  0000              add [bx+si],al
000015C3  0000              add [bx+si],al
000015C5  0000              add [bx+si],al
000015C7  0000              add [bx+si],al
000015C9  0000              add [bx+si],al
000015CB  0000              add [bx+si],al
000015CD  0000              add [bx+si],al
000015CF  0000              add [bx+si],al
000015D1  0000              add [bx+si],al
000015D3  0000              add [bx+si],al
000015D5  0000              add [bx+si],al
000015D7  0000              add [bx+si],al
000015D9  0000              add [bx+si],al
000015DB  0000              add [bx+si],al
000015DD  0000              add [bx+si],al
000015DF  0000              add [bx+si],al
000015E1  0000              add [bx+si],al
000015E3  0000              add [bx+si],al
000015E5  0000              add [bx+si],al
000015E7  0000              add [bx+si],al
000015E9  0000              add [bx+si],al
000015EB  0000              add [bx+si],al
000015ED  0000              add [bx+si],al
000015EF  0000              add [bx+si],al
000015F1  0000              add [bx+si],al
000015F3  0000              add [bx+si],al
000015F5  0000              add [bx+si],al
000015F7  0000              add [bx+si],al
000015F9  0000              add [bx+si],al
000015FB  0000              add [bx+si],al
000015FD  0000              add [bx+si],al
000015FF  0000              add [bx+si],al
00001601  0000              add [bx+si],al
00001603  0000              add [bx+si],al
00001605  0000              add [bx+si],al
00001607  0000              add [bx+si],al
00001609  0000              add [bx+si],al
0000160B  0000              add [bx+si],al
0000160D  0000              add [bx+si],al
0000160F  0000              add [bx+si],al
00001611  0000              add [bx+si],al
00001613  0000              add [bx+si],al
00001615  0000              add [bx+si],al
00001617  0000              add [bx+si],al
00001619  0000              add [bx+si],al
0000161B  0000              add [bx+si],al
0000161D  0000              add [bx+si],al
0000161F  0000              add [bx+si],al
00001621  0000              add [bx+si],al
00001623  0000              add [bx+si],al
00001625  0000              add [bx+si],al
00001627  0000              add [bx+si],al
00001629  0000              add [bx+si],al
0000162B  0000              add [bx+si],al
0000162D  0000              add [bx+si],al
0000162F  0000              add [bx+si],al
00001631  0000              add [bx+si],al
00001633  0000              add [bx+si],al
00001635  0000              add [bx+si],al
00001637  0000              add [bx+si],al
00001639  0000              add [bx+si],al
0000163B  0000              add [bx+si],al
0000163D  0000              add [bx+si],al
0000163F  0000              add [bx+si],al
00001641  0000              add [bx+si],al
00001643  0000              add [bx+si],al
00001645  0000              add [bx+si],al
00001647  0000              add [bx+si],al
00001649  0000              add [bx+si],al
0000164B  0000              add [bx+si],al
0000164D  0000              add [bx+si],al
0000164F  0000              add [bx+si],al
00001651  0000              add [bx+si],al
00001653  0000              add [bx+si],al
00001655  0000              add [bx+si],al
00001657  0000              add [bx+si],al
00001659  0000              add [bx+si],al
0000165B  0000              add [bx+si],al
0000165D  0000              add [bx+si],al
0000165F  0000              add [bx+si],al
00001661  0000              add [bx+si],al
00001663  0000              add [bx+si],al
00001665  0000              add [bx+si],al
00001667  0000              add [bx+si],al
00001669  0000              add [bx+si],al
0000166B  0000              add [bx+si],al
0000166D  0000              add [bx+si],al
0000166F  0000              add [bx+si],al
00001671  0000              add [bx+si],al
00001673  0000              add [bx+si],al
00001675  0000              add [bx+si],al
00001677  0000              add [bx+si],al
00001679  0000              add [bx+si],al
0000167B  0000              add [bx+si],al
0000167D  0000              add [bx+si],al
0000167F  0000              add [bx+si],al
00001681  0000              add [bx+si],al
00001683  0000              add [bx+si],al
00001685  0000              add [bx+si],al
00001687  0000              add [bx+si],al
00001689  0000              add [bx+si],al
0000168B  0000              add [bx+si],al
0000168D  0000              add [bx+si],al
0000168F  0000              add [bx+si],al
00001691  0000              add [bx+si],al
00001693  0000              add [bx+si],al
00001695  0000              add [bx+si],al
00001697  0000              add [bx+si],al
00001699  0000              add [bx+si],al
0000169B  0000              add [bx+si],al
0000169D  0000              add [bx+si],al
0000169F  0000              add [bx+si],al
000016A1  0000              add [bx+si],al
000016A3  0000              add [bx+si],al
000016A5  0000              add [bx+si],al
000016A7  0000              add [bx+si],al
000016A9  0000              add [bx+si],al
000016AB  0000              add [bx+si],al
000016AD  0000              add [bx+si],al
000016AF  0000              add [bx+si],al
000016B1  0000              add [bx+si],al
000016B3  0000              add [bx+si],al
000016B5  0000              add [bx+si],al
000016B7  0000              add [bx+si],al
000016B9  0000              add [bx+si],al
000016BB  0000              add [bx+si],al
000016BD  0000              add [bx+si],al
000016BF  0000              add [bx+si],al
000016C1  0000              add [bx+si],al
000016C3  0000              add [bx+si],al
000016C5  0000              add [bx+si],al
000016C7  0000              add [bx+si],al
000016C9  0000              add [bx+si],al
000016CB  0000              add [bx+si],al
000016CD  0000              add [bx+si],al
000016CF  0000              add [bx+si],al
000016D1  0000              add [bx+si],al
000016D3  0000              add [bx+si],al
000016D5  0000              add [bx+si],al
000016D7  0000              add [bx+si],al
000016D9  0000              add [bx+si],al
000016DB  0000              add [bx+si],al
000016DD  0000              add [bx+si],al
000016DF  0000              add [bx+si],al
000016E1  0000              add [bx+si],al
000016E3  0000              add [bx+si],al
000016E5  0000              add [bx+si],al
000016E7  0000              add [bx+si],al
000016E9  0000              add [bx+si],al
000016EB  0000              add [bx+si],al
000016ED  0000              add [bx+si],al
000016EF  0000              add [bx+si],al
000016F1  0000              add [bx+si],al
000016F3  0000              add [bx+si],al
000016F5  0000              add [bx+si],al
000016F7  0000              add [bx+si],al
000016F9  0000              add [bx+si],al
000016FB  0000              add [bx+si],al
000016FD  0000              add [bx+si],al
000016FF  0000              add [bx+si],al
00001701  0000              add [bx+si],al
00001703  0000              add [bx+si],al
00001705  0000              add [bx+si],al
00001707  0000              add [bx+si],al
00001709  0000              add [bx+si],al
0000170B  0000              add [bx+si],al
0000170D  0000              add [bx+si],al
0000170F  0000              add [bx+si],al
00001711  0000              add [bx+si],al
00001713  0000              add [bx+si],al
00001715  0000              add [bx+si],al
00001717  0000              add [bx+si],al
00001719  0000              add [bx+si],al
0000171B  0000              add [bx+si],al
0000171D  0000              add [bx+si],al
0000171F  0000              add [bx+si],al
00001721  0000              add [bx+si],al
00001723  0000              add [bx+si],al
00001725  0000              add [bx+si],al
00001727  0000              add [bx+si],al
00001729  0000              add [bx+si],al
0000172B  0000              add [bx+si],al
0000172D  0000              add [bx+si],al
0000172F  0000              add [bx+si],al
00001731  0000              add [bx+si],al
00001733  0000              add [bx+si],al
00001735  0000              add [bx+si],al
00001737  0000              add [bx+si],al
00001739  0000              add [bx+si],al
0000173B  0000              add [bx+si],al
0000173D  0000              add [bx+si],al
0000173F  0000              add [bx+si],al
00001741  0000              add [bx+si],al
00001743  0000              add [bx+si],al
00001745  0000              add [bx+si],al
00001747  0000              add [bx+si],al
00001749  0000              add [bx+si],al
0000174B  0000              add [bx+si],al
0000174D  0000              add [bx+si],al
0000174F  0000              add [bx+si],al
00001751  0000              add [bx+si],al
00001753  0000              add [bx+si],al
00001755  0000              add [bx+si],al
00001757  0000              add [bx+si],al
00001759  0000              add [bx+si],al
0000175B  0000              add [bx+si],al
0000175D  0000              add [bx+si],al
0000175F  0000              add [bx+si],al
00001761  0000              add [bx+si],al
00001763  0000              add [bx+si],al
00001765  0000              add [bx+si],al
00001767  0000              add [bx+si],al
00001769  0000              add [bx+si],al
0000176B  0000              add [bx+si],al
0000176D  0000              add [bx+si],al
0000176F  0000              add [bx+si],al
00001771  0000              add [bx+si],al
00001773  0000              add [bx+si],al
00001775  0000              add [bx+si],al
00001777  0000              add [bx+si],al
00001779  0000              add [bx+si],al
0000177B  0000              add [bx+si],al
0000177D  0000              add [bx+si],al
0000177F  0000              add [bx+si],al
00001781  0000              add [bx+si],al
00001783  0000              add [bx+si],al
00001785  0000              add [bx+si],al
00001787  0000              add [bx+si],al
00001789  0000              add [bx+si],al
0000178B  0000              add [bx+si],al
0000178D  0000              add [bx+si],al
0000178F  0000              add [bx+si],al
00001791  0000              add [bx+si],al
00001793  0000              add [bx+si],al
00001795  0000              add [bx+si],al
00001797  0000              add [bx+si],al
00001799  0000              add [bx+si],al
0000179B  0000              add [bx+si],al
0000179D  0000              add [bx+si],al
0000179F  0000              add [bx+si],al
000017A1  0000              add [bx+si],al
000017A3  0000              add [bx+si],al
000017A5  0000              add [bx+si],al
000017A7  0000              add [bx+si],al
000017A9  0000              add [bx+si],al
000017AB  0000              add [bx+si],al
000017AD  0000              add [bx+si],al
000017AF  0000              add [bx+si],al
000017B1  0000              add [bx+si],al
000017B3  0000              add [bx+si],al
000017B5  0000              add [bx+si],al
000017B7  0000              add [bx+si],al
000017B9  0000              add [bx+si],al
000017BB  0000              add [bx+si],al
000017BD  0000              add [bx+si],al
000017BF  0000              add [bx+si],al
000017C1  0000              add [bx+si],al
000017C3  0000              add [bx+si],al
000017C5  0000              add [bx+si],al
000017C7  0000              add [bx+si],al
000017C9  0000              add [bx+si],al
000017CB  0000              add [bx+si],al
000017CD  0000              add [bx+si],al
000017CF  0000              add [bx+si],al
000017D1  0000              add [bx+si],al
000017D3  0000              add [bx+si],al
000017D5  0000              add [bx+si],al
000017D7  0000              add [bx+si],al
000017D9  0000              add [bx+si],al
000017DB  0000              add [bx+si],al
000017DD  0000              add [bx+si],al
000017DF  0000              add [bx+si],al
000017E1  0000              add [bx+si],al
000017E3  0000              add [bx+si],al
000017E5  0000              add [bx+si],al
000017E7  0000              add [bx+si],al
000017E9  0000              add [bx+si],al
000017EB  0000              add [bx+si],al
000017ED  0000              add [bx+si],al
000017EF  0000              add [bx+si],al
000017F1  0000              add [bx+si],al
000017F3  0000              add [bx+si],al
000017F5  0000              add [bx+si],al
000017F7  0000              add [bx+si],al
000017F9  0000              add [bx+si],al
000017FB  0000              add [bx+si],al
000017FD  0000              add [bx+si],al
000017FF  0000              add [bx+si],al
00001801  0000              add [bx+si],al
00001803  0000              add [bx+si],al
00001805  0000              add [bx+si],al
00001807  0000              add [bx+si],al
00001809  0000              add [bx+si],al
0000180B  0000              add [bx+si],al
0000180D  0000              add [bx+si],al
0000180F  0000              add [bx+si],al
00001811  0000              add [bx+si],al
00001813  0000              add [bx+si],al
00001815  0000              add [bx+si],al
00001817  0000              add [bx+si],al
00001819  0000              add [bx+si],al
0000181B  0000              add [bx+si],al
0000181D  0000              add [bx+si],al
0000181F  0000              add [bx+si],al
00001821  0000              add [bx+si],al
00001823  0000              add [bx+si],al
00001825  0000              add [bx+si],al
00001827  0000              add [bx+si],al
00001829  0000              add [bx+si],al
0000182B  0000              add [bx+si],al
0000182D  0000              add [bx+si],al
0000182F  0000              add [bx+si],al
00001831  0000              add [bx+si],al
00001833  0000              add [bx+si],al
00001835  0000              add [bx+si],al
00001837  0000              add [bx+si],al
00001839  0000              add [bx+si],al
0000183B  0000              add [bx+si],al
0000183D  0000              add [bx+si],al
0000183F  0000              add [bx+si],al
00001841  0000              add [bx+si],al
00001843  0000              add [bx+si],al
00001845  0000              add [bx+si],al
00001847  0000              add [bx+si],al
00001849  0000              add [bx+si],al
0000184B  0000              add [bx+si],al
0000184D  0000              add [bx+si],al
0000184F  0000              add [bx+si],al
00001851  0000              add [bx+si],al
00001853  0000              add [bx+si],al
00001855  0000              add [bx+si],al
00001857  0000              add [bx+si],al
00001859  0000              add [bx+si],al
0000185B  0000              add [bx+si],al
0000185D  0000              add [bx+si],al
0000185F  0000              add [bx+si],al
00001861  0000              add [bx+si],al
00001863  0000              add [bx+si],al
00001865  0000              add [bx+si],al
00001867  0000              add [bx+si],al
00001869  0000              add [bx+si],al
0000186B  0000              add [bx+si],al
0000186D  0000              add [bx+si],al
0000186F  0000              add [bx+si],al
00001871  0000              add [bx+si],al
00001873  0000              add [bx+si],al
00001875  0000              add [bx+si],al
00001877  0000              add [bx+si],al
00001879  0000              add [bx+si],al
0000187B  0000              add [bx+si],al
0000187D  0000              add [bx+si],al
0000187F  0000              add [bx+si],al
00001881  0000              add [bx+si],al
00001883  0000              add [bx+si],al
00001885  0000              add [bx+si],al
00001887  0000              add [bx+si],al
00001889  0000              add [bx+si],al
0000188B  0000              add [bx+si],al
0000188D  0000              add [bx+si],al
0000188F  0000              add [bx+si],al
00001891  0000              add [bx+si],al
00001893  0000              add [bx+si],al
00001895  0000              add [bx+si],al
00001897  0000              add [bx+si],al
00001899  0000              add [bx+si],al
0000189B  0000              add [bx+si],al
0000189D  0000              add [bx+si],al
0000189F  0000              add [bx+si],al
000018A1  0000              add [bx+si],al
000018A3  0000              add [bx+si],al
000018A5  0000              add [bx+si],al
000018A7  0000              add [bx+si],al
000018A9  0000              add [bx+si],al
000018AB  0000              add [bx+si],al
000018AD  0000              add [bx+si],al
000018AF  0000              add [bx+si],al
000018B1  0000              add [bx+si],al
000018B3  0000              add [bx+si],al
000018B5  0000              add [bx+si],al
000018B7  0000              add [bx+si],al
000018B9  0000              add [bx+si],al
000018BB  0000              add [bx+si],al
000018BD  0000              add [bx+si],al
000018BF  0000              add [bx+si],al
000018C1  0000              add [bx+si],al
000018C3  0000              add [bx+si],al
000018C5  0000              add [bx+si],al
000018C7  0000              add [bx+si],al
000018C9  0000              add [bx+si],al
000018CB  0000              add [bx+si],al
000018CD  0000              add [bx+si],al
000018CF  0000              add [bx+si],al
000018D1  0000              add [bx+si],al
000018D3  0000              add [bx+si],al
000018D5  0000              add [bx+si],al
000018D7  0000              add [bx+si],al
000018D9  0000              add [bx+si],al
000018DB  0000              add [bx+si],al
000018DD  0000              add [bx+si],al
000018DF  0000              add [bx+si],al
000018E1  0000              add [bx+si],al
000018E3  0000              add [bx+si],al
000018E5  0000              add [bx+si],al
000018E7  0000              add [bx+si],al
000018E9  0000              add [bx+si],al
000018EB  0000              add [bx+si],al
000018ED  0000              add [bx+si],al
000018EF  0000              add [bx+si],al
000018F1  0000              add [bx+si],al
000018F3  0000              add [bx+si],al
000018F5  0000              add [bx+si],al
000018F7  0000              add [bx+si],al
000018F9  0000              add [bx+si],al
000018FB  0000              add [bx+si],al
000018FD  0000              add [bx+si],al
000018FF  0000              add [bx+si],al
00001901  0000              add [bx+si],al
00001903  0000              add [bx+si],al
00001905  0000              add [bx+si],al
00001907  0000              add [bx+si],al
00001909  0000              add [bx+si],al
0000190B  0000              add [bx+si],al
0000190D  0000              add [bx+si],al
0000190F  0000              add [bx+si],al
00001911  0000              add [bx+si],al
00001913  0000              add [bx+si],al
00001915  0000              add [bx+si],al
00001917  0000              add [bx+si],al
00001919  0000              add [bx+si],al
0000191B  0000              add [bx+si],al
0000191D  0000              add [bx+si],al
0000191F  0000              add [bx+si],al
00001921  0000              add [bx+si],al
00001923  0000              add [bx+si],al
00001925  0000              add [bx+si],al
00001927  0000              add [bx+si],al
00001929  0000              add [bx+si],al
0000192B  0000              add [bx+si],al
0000192D  0000              add [bx+si],al
0000192F  0000              add [bx+si],al
00001931  0000              add [bx+si],al
00001933  0000              add [bx+si],al
00001935  0000              add [bx+si],al
00001937  0000              add [bx+si],al
00001939  0000              add [bx+si],al
0000193B  0000              add [bx+si],al
0000193D  0000              add [bx+si],al
0000193F  0000              add [bx+si],al
00001941  0000              add [bx+si],al
00001943  0000              add [bx+si],al
00001945  0000              add [bx+si],al
00001947  0000              add [bx+si],al
00001949  0000              add [bx+si],al
0000194B  0000              add [bx+si],al
0000194D  0000              add [bx+si],al
0000194F  0000              add [bx+si],al
00001951  0000              add [bx+si],al
00001953  0000              add [bx+si],al
00001955  0000              add [bx+si],al
00001957  0000              add [bx+si],al
00001959  0000              add [bx+si],al
0000195B  0000              add [bx+si],al
0000195D  0000              add [bx+si],al
0000195F  0000              add [bx+si],al
00001961  0000              add [bx+si],al
00001963  0000              add [bx+si],al
00001965  0000              add [bx+si],al
00001967  0000              add [bx+si],al
00001969  0000              add [bx+si],al
0000196B  0000              add [bx+si],al
0000196D  0000              add [bx+si],al
0000196F  0000              add [bx+si],al
00001971  0000              add [bx+si],al
00001973  0000              add [bx+si],al
00001975  0000              add [bx+si],al
00001977  0000              add [bx+si],al
00001979  0000              add [bx+si],al
0000197B  0000              add [bx+si],al
0000197D  0000              add [bx+si],al
0000197F  0000              add [bx+si],al
00001981  0000              add [bx+si],al
00001983  0000              add [bx+si],al
00001985  0000              add [bx+si],al
00001987  0000              add [bx+si],al
00001989  0000              add [bx+si],al
0000198B  0000              add [bx+si],al
0000198D  0000              add [bx+si],al
0000198F  0000              add [bx+si],al
00001991  0000              add [bx+si],al
00001993  0000              add [bx+si],al
00001995  0000              add [bx+si],al
00001997  0000              add [bx+si],al
00001999  0000              add [bx+si],al
0000199B  0000              add [bx+si],al
0000199D  0000              add [bx+si],al
0000199F  0000              add [bx+si],al
000019A1  0000              add [bx+si],al
000019A3  0000              add [bx+si],al
000019A5  0000              add [bx+si],al
000019A7  0000              add [bx+si],al
000019A9  0000              add [bx+si],al
000019AB  0000              add [bx+si],al
000019AD  0000              add [bx+si],al
000019AF  0000              add [bx+si],al
000019B1  0000              add [bx+si],al
000019B3  0000              add [bx+si],al
000019B5  0000              add [bx+si],al
000019B7  0000              add [bx+si],al
000019B9  0000              add [bx+si],al
000019BB  0000              add [bx+si],al
000019BD  0000              add [bx+si],al
000019BF  0000              add [bx+si],al
000019C1  0000              add [bx+si],al
000019C3  0000              add [bx+si],al
000019C5  0000              add [bx+si],al
000019C7  0000              add [bx+si],al
000019C9  0000              add [bx+si],al
000019CB  0000              add [bx+si],al
000019CD  0000              add [bx+si],al
000019CF  0000              add [bx+si],al
000019D1  0000              add [bx+si],al
000019D3  0000              add [bx+si],al
000019D5  0000              add [bx+si],al
000019D7  0000              add [bx+si],al
000019D9  0000              add [bx+si],al
000019DB  0000              add [bx+si],al
000019DD  0000              add [bx+si],al
000019DF  0000              add [bx+si],al
000019E1  0000              add [bx+si],al
000019E3  0000              add [bx+si],al
000019E5  0000              add [bx+si],al
000019E7  0000              add [bx+si],al
000019E9  0000              add [bx+si],al
000019EB  0000              add [bx+si],al
000019ED  0000              add [bx+si],al
000019EF  0000              add [bx+si],al
000019F1  0000              add [bx+si],al
000019F3  0000              add [bx+si],al
000019F5  0000              add [bx+si],al
000019F7  0000              add [bx+si],al
000019F9  0000              add [bx+si],al
000019FB  0000              add [bx+si],al
000019FD  0000              add [bx+si],al
000019FF  0000              add [bx+si],al
00001A01  0000              add [bx+si],al
00001A03  0000              add [bx+si],al
00001A05  0000              add [bx+si],al
00001A07  0000              add [bx+si],al
00001A09  0000              add [bx+si],al
00001A0B  0000              add [bx+si],al
00001A0D  0000              add [bx+si],al
00001A0F  0000              add [bx+si],al
00001A11  0000              add [bx+si],al
00001A13  0000              add [bx+si],al
00001A15  0000              add [bx+si],al
00001A17  0000              add [bx+si],al
00001A19  0000              add [bx+si],al
00001A1B  0000              add [bx+si],al
00001A1D  0000              add [bx+si],al
00001A1F  0000              add [bx+si],al
00001A21  0000              add [bx+si],al
00001A23  0000              add [bx+si],al
00001A25  0000              add [bx+si],al
00001A27  0000              add [bx+si],al
00001A29  0000              add [bx+si],al
00001A2B  0000              add [bx+si],al
00001A2D  0000              add [bx+si],al
00001A2F  0000              add [bx+si],al
00001A31  0000              add [bx+si],al
00001A33  0000              add [bx+si],al
00001A35  0000              add [bx+si],al
00001A37  0000              add [bx+si],al
00001A39  0000              add [bx+si],al
00001A3B  0000              add [bx+si],al
00001A3D  0000              add [bx+si],al
00001A3F  0000              add [bx+si],al
00001A41  0000              add [bx+si],al
00001A43  0000              add [bx+si],al
00001A45  0000              add [bx+si],al
00001A47  0000              add [bx+si],al
00001A49  0000              add [bx+si],al
00001A4B  0000              add [bx+si],al
00001A4D  0000              add [bx+si],al
00001A4F  0000              add [bx+si],al
00001A51  0000              add [bx+si],al
00001A53  0000              add [bx+si],al
00001A55  0000              add [bx+si],al
00001A57  0000              add [bx+si],al
00001A59  0000              add [bx+si],al
00001A5B  0000              add [bx+si],al
00001A5D  0000              add [bx+si],al
00001A5F  0000              add [bx+si],al
00001A61  0000              add [bx+si],al
00001A63  0000              add [bx+si],al
00001A65  0000              add [bx+si],al
00001A67  0000              add [bx+si],al
00001A69  0000              add [bx+si],al
00001A6B  0000              add [bx+si],al
00001A6D  0000              add [bx+si],al
00001A6F  0000              add [bx+si],al
00001A71  0000              add [bx+si],al
00001A73  0000              add [bx+si],al
00001A75  0000              add [bx+si],al
00001A77  0000              add [bx+si],al
00001A79  0000              add [bx+si],al
00001A7B  0000              add [bx+si],al
00001A7D  0000              add [bx+si],al
00001A7F  0000              add [bx+si],al
00001A81  0000              add [bx+si],al
00001A83  0000              add [bx+si],al
00001A85  0000              add [bx+si],al
00001A87  0000              add [bx+si],al
00001A89  0000              add [bx+si],al
00001A8B  0000              add [bx+si],al
00001A8D  0000              add [bx+si],al
00001A8F  0000              add [bx+si],al
00001A91  0000              add [bx+si],al
00001A93  0000              add [bx+si],al
00001A95  0000              add [bx+si],al
00001A97  0000              add [bx+si],al
00001A99  0000              add [bx+si],al
00001A9B  0000              add [bx+si],al
00001A9D  0000              add [bx+si],al
00001A9F  0000              add [bx+si],al
00001AA1  0000              add [bx+si],al
00001AA3  0000              add [bx+si],al
00001AA5  0000              add [bx+si],al
00001AA7  0000              add [bx+si],al
00001AA9  0000              add [bx+si],al
00001AAB  0000              add [bx+si],al
00001AAD  0000              add [bx+si],al
00001AAF  0000              add [bx+si],al
00001AB1  0000              add [bx+si],al
00001AB3  0000              add [bx+si],al
00001AB5  0000              add [bx+si],al
00001AB7  0000              add [bx+si],al
00001AB9  0000              add [bx+si],al
00001ABB  0000              add [bx+si],al
00001ABD  0000              add [bx+si],al
00001ABF  0000              add [bx+si],al
00001AC1  0000              add [bx+si],al
00001AC3  0000              add [bx+si],al
00001AC5  0000              add [bx+si],al
00001AC7  0000              add [bx+si],al
00001AC9  0000              add [bx+si],al
00001ACB  0000              add [bx+si],al
00001ACD  0000              add [bx+si],al
00001ACF  0000              add [bx+si],al
00001AD1  0000              add [bx+si],al
00001AD3  0000              add [bx+si],al
00001AD5  0000              add [bx+si],al
00001AD7  0000              add [bx+si],al
00001AD9  0000              add [bx+si],al
00001ADB  0000              add [bx+si],al
00001ADD  0000              add [bx+si],al
00001ADF  0000              add [bx+si],al
00001AE1  0000              add [bx+si],al
00001AE3  0000              add [bx+si],al
00001AE5  0000              add [bx+si],al
00001AE7  0000              add [bx+si],al
00001AE9  0000              add [bx+si],al
00001AEB  0000              add [bx+si],al
00001AED  0000              add [bx+si],al
00001AEF  0000              add [bx+si],al
00001AF1  0000              add [bx+si],al
00001AF3  0000              add [bx+si],al
00001AF5  0000              add [bx+si],al
00001AF7  0000              add [bx+si],al
00001AF9  0000              add [bx+si],al
00001AFB  0000              add [bx+si],al
00001AFD  0000              add [bx+si],al
00001AFF  0000              add [bx+si],al
00001B01  0000              add [bx+si],al
00001B03  0000              add [bx+si],al
00001B05  0000              add [bx+si],al
00001B07  0000              add [bx+si],al
00001B09  0000              add [bx+si],al
00001B0B  0000              add [bx+si],al
00001B0D  0000              add [bx+si],al
00001B0F  0000              add [bx+si],al
00001B11  0000              add [bx+si],al
00001B13  0000              add [bx+si],al
00001B15  0000              add [bx+si],al
00001B17  0000              add [bx+si],al
00001B19  0000              add [bx+si],al
00001B1B  0000              add [bx+si],al
00001B1D  0000              add [bx+si],al
00001B1F  0000              add [bx+si],al
00001B21  0000              add [bx+si],al
00001B23  0000              add [bx+si],al
00001B25  0000              add [bx+si],al
00001B27  0000              add [bx+si],al
00001B29  0000              add [bx+si],al
00001B2B  0000              add [bx+si],al
00001B2D  0000              add [bx+si],al
00001B2F  0000              add [bx+si],al
00001B31  0000              add [bx+si],al
00001B33  0000              add [bx+si],al
00001B35  0000              add [bx+si],al
00001B37  0000              add [bx+si],al
00001B39  0000              add [bx+si],al
00001B3B  0000              add [bx+si],al
00001B3D  0000              add [bx+si],al
00001B3F  0000              add [bx+si],al
00001B41  0000              add [bx+si],al
00001B43  0000              add [bx+si],al
00001B45  0000              add [bx+si],al
00001B47  0000              add [bx+si],al
00001B49  0000              add [bx+si],al
00001B4B  0000              add [bx+si],al
00001B4D  0000              add [bx+si],al
00001B4F  0000              add [bx+si],al
00001B51  0000              add [bx+si],al
00001B53  0000              add [bx+si],al
00001B55  0000              add [bx+si],al
00001B57  0000              add [bx+si],al
00001B59  0000              add [bx+si],al
00001B5B  0000              add [bx+si],al
00001B5D  0000              add [bx+si],al
00001B5F  0000              add [bx+si],al
00001B61  0000              add [bx+si],al
00001B63  0000              add [bx+si],al
00001B65  0000              add [bx+si],al
00001B67  0000              add [bx+si],al
00001B69  0000              add [bx+si],al
00001B6B  0000              add [bx+si],al
00001B6D  0000              add [bx+si],al
00001B6F  0000              add [bx+si],al
00001B71  0000              add [bx+si],al
00001B73  0000              add [bx+si],al
00001B75  0000              add [bx+si],al
00001B77  0000              add [bx+si],al
00001B79  0000              add [bx+si],al
00001B7B  0000              add [bx+si],al
00001B7D  0000              add [bx+si],al
00001B7F  0000              add [bx+si],al
00001B81  0000              add [bx+si],al
00001B83  0000              add [bx+si],al
00001B85  0000              add [bx+si],al
00001B87  0000              add [bx+si],al
00001B89  0000              add [bx+si],al
00001B8B  0000              add [bx+si],al
00001B8D  0000              add [bx+si],al
00001B8F  0000              add [bx+si],al
00001B91  0000              add [bx+si],al
00001B93  0000              add [bx+si],al
00001B95  0000              add [bx+si],al
00001B97  0000              add [bx+si],al
00001B99  0000              add [bx+si],al
00001B9B  0000              add [bx+si],al
00001B9D  0000              add [bx+si],al
00001B9F  0000              add [bx+si],al
00001BA1  0000              add [bx+si],al
00001BA3  0000              add [bx+si],al
00001BA5  0000              add [bx+si],al
00001BA7  0000              add [bx+si],al
00001BA9  0000              add [bx+si],al
00001BAB  0000              add [bx+si],al
00001BAD  0000              add [bx+si],al
00001BAF  0000              add [bx+si],al
00001BB1  0000              add [bx+si],al
00001BB3  0000              add [bx+si],al
00001BB5  0000              add [bx+si],al
00001BB7  0000              add [bx+si],al
00001BB9  0000              add [bx+si],al
00001BBB  0000              add [bx+si],al
00001BBD  0000              add [bx+si],al
00001BBF  0000              add [bx+si],al
00001BC1  0000              add [bx+si],al
00001BC3  0000              add [bx+si],al
00001BC5  0000              add [bx+si],al
00001BC7  0000              add [bx+si],al
00001BC9  0000              add [bx+si],al
00001BCB  0000              add [bx+si],al
00001BCD  0000              add [bx+si],al
00001BCF  0000              add [bx+si],al
00001BD1  0000              add [bx+si],al
00001BD3  0000              add [bx+si],al
00001BD5  0000              add [bx+si],al
00001BD7  0000              add [bx+si],al
00001BD9  0000              add [bx+si],al
00001BDB  0000              add [bx+si],al
00001BDD  0000              add [bx+si],al
00001BDF  0000              add [bx+si],al
00001BE1  0000              add [bx+si],al
00001BE3  0000              add [bx+si],al
00001BE5  0000              add [bx+si],al
00001BE7  0000              add [bx+si],al
00001BE9  0000              add [bx+si],al
00001BEB  0000              add [bx+si],al
00001BED  0000              add [bx+si],al
00001BEF  0000              add [bx+si],al
00001BF1  0000              add [bx+si],al
00001BF3  0000              add [bx+si],al
00001BF5  0000              add [bx+si],al
00001BF7  0000              add [bx+si],al
00001BF9  0000              add [bx+si],al
00001BFB  0000              add [bx+si],al
00001BFD  0000              add [bx+si],al
00001BFF  0000              add [bx+si],al
00001C01  0000              add [bx+si],al
00001C03  0000              add [bx+si],al
00001C05  0000              add [bx+si],al
00001C07  0000              add [bx+si],al
00001C09  0000              add [bx+si],al
00001C0B  0000              add [bx+si],al
00001C0D  0000              add [bx+si],al
00001C0F  0000              add [bx+si],al
00001C11  0000              add [bx+si],al
00001C13  0000              add [bx+si],al
00001C15  0000              add [bx+si],al
00001C17  0000              add [bx+si],al
00001C19  0000              add [bx+si],al
00001C1B  0000              add [bx+si],al
00001C1D  0000              add [bx+si],al
00001C1F  0000              add [bx+si],al
00001C21  0000              add [bx+si],al
00001C23  0000              add [bx+si],al
00001C25  0000              add [bx+si],al
00001C27  0000              add [bx+si],al
00001C29  0000              add [bx+si],al
00001C2B  0000              add [bx+si],al
00001C2D  0000              add [bx+si],al
00001C2F  0000              add [bx+si],al
00001C31  0000              add [bx+si],al
00001C33  0000              add [bx+si],al
00001C35  0000              add [bx+si],al
00001C37  0000              add [bx+si],al
00001C39  0000              add [bx+si],al
00001C3B  0000              add [bx+si],al
00001C3D  0000              add [bx+si],al
00001C3F  0000              add [bx+si],al
00001C41  0000              add [bx+si],al
00001C43  0000              add [bx+si],al
00001C45  0000              add [bx+si],al
00001C47  0000              add [bx+si],al
00001C49  0000              add [bx+si],al
00001C4B  0000              add [bx+si],al
00001C4D  0000              add [bx+si],al
00001C4F  0000              add [bx+si],al
00001C51  0000              add [bx+si],al
00001C53  0000              add [bx+si],al
00001C55  0000              add [bx+si],al
00001C57  0000              add [bx+si],al
00001C59  0000              add [bx+si],al
00001C5B  0000              add [bx+si],al
00001C5D  0000              add [bx+si],al
00001C5F  0000              add [bx+si],al
00001C61  0000              add [bx+si],al
00001C63  0000              add [bx+si],al
00001C65  0000              add [bx+si],al
00001C67  0000              add [bx+si],al
00001C69  0000              add [bx+si],al
00001C6B  0000              add [bx+si],al
00001C6D  0000              add [bx+si],al
00001C6F  0000              add [bx+si],al
00001C71  0000              add [bx+si],al
00001C73  0000              add [bx+si],al
00001C75  0000              add [bx+si],al
00001C77  0000              add [bx+si],al
00001C79  0000              add [bx+si],al
00001C7B  0000              add [bx+si],al
00001C7D  0000              add [bx+si],al
00001C7F  0000              add [bx+si],al
00001C81  0000              add [bx+si],al
00001C83  0000              add [bx+si],al
00001C85  0000              add [bx+si],al
00001C87  0000              add [bx+si],al
00001C89  0000              add [bx+si],al
00001C8B  0000              add [bx+si],al
00001C8D  0000              add [bx+si],al
00001C8F  0000              add [bx+si],al
00001C91  0000              add [bx+si],al
00001C93  0000              add [bx+si],al
00001C95  0000              add [bx+si],al
00001C97  0000              add [bx+si],al
00001C99  0000              add [bx+si],al
00001C9B  0000              add [bx+si],al
00001C9D  0000              add [bx+si],al
00001C9F  0000              add [bx+si],al
00001CA1  0000              add [bx+si],al
00001CA3  0000              add [bx+si],al
00001CA5  0000              add [bx+si],al
00001CA7  0000              add [bx+si],al
00001CA9  0000              add [bx+si],al
00001CAB  0000              add [bx+si],al
00001CAD  0000              add [bx+si],al
00001CAF  0000              add [bx+si],al
00001CB1  0000              add [bx+si],al
00001CB3  0000              add [bx+si],al
00001CB5  0000              add [bx+si],al
00001CB7  0000              add [bx+si],al
00001CB9  0000              add [bx+si],al
00001CBB  0000              add [bx+si],al
00001CBD  0000              add [bx+si],al
00001CBF  0000              add [bx+si],al
00001CC1  0000              add [bx+si],al
00001CC3  0000              add [bx+si],al
00001CC5  0000              add [bx+si],al
00001CC7  0000              add [bx+si],al
00001CC9  0000              add [bx+si],al
00001CCB  0000              add [bx+si],al
00001CCD  0000              add [bx+si],al
00001CCF  0000              add [bx+si],al
00001CD1  0000              add [bx+si],al
00001CD3  0000              add [bx+si],al
00001CD5  0000              add [bx+si],al
00001CD7  0000              add [bx+si],al
00001CD9  0000              add [bx+si],al
00001CDB  0000              add [bx+si],al
00001CDD  0000              add [bx+si],al
00001CDF  0000              add [bx+si],al
00001CE1  0000              add [bx+si],al
00001CE3  0000              add [bx+si],al
00001CE5  0000              add [bx+si],al
00001CE7  0000              add [bx+si],al
00001CE9  0000              add [bx+si],al
00001CEB  0000              add [bx+si],al
00001CED  0000              add [bx+si],al
00001CEF  0000              add [bx+si],al
00001CF1  0000              add [bx+si],al
00001CF3  0000              add [bx+si],al
00001CF5  0000              add [bx+si],al
00001CF7  0000              add [bx+si],al
00001CF9  0000              add [bx+si],al
00001CFB  0000              add [bx+si],al
00001CFD  0000              add [bx+si],al
00001CFF  0000              add [bx+si],al
00001D01  0000              add [bx+si],al
00001D03  0000              add [bx+si],al
00001D05  0000              add [bx+si],al
00001D07  0000              add [bx+si],al
00001D09  0000              add [bx+si],al
00001D0B  0000              add [bx+si],al
00001D0D  0000              add [bx+si],al
00001D0F  0000              add [bx+si],al
00001D11  0000              add [bx+si],al
00001D13  0000              add [bx+si],al
00001D15  0000              add [bx+si],al
00001D17  0000              add [bx+si],al
00001D19  0000              add [bx+si],al
00001D1B  0000              add [bx+si],al
00001D1D  0000              add [bx+si],al
00001D1F  0000              add [bx+si],al
00001D21  0000              add [bx+si],al
00001D23  0000              add [bx+si],al
00001D25  0000              add [bx+si],al
00001D27  0000              add [bx+si],al
00001D29  0000              add [bx+si],al
00001D2B  0000              add [bx+si],al
00001D2D  0000              add [bx+si],al
00001D2F  0000              add [bx+si],al
00001D31  0000              add [bx+si],al
00001D33  0000              add [bx+si],al
00001D35  0000              add [bx+si],al
00001D37  0000              add [bx+si],al
00001D39  0000              add [bx+si],al
00001D3B  0000              add [bx+si],al
00001D3D  0000              add [bx+si],al
00001D3F  0000              add [bx+si],al
00001D41  0000              add [bx+si],al
00001D43  0000              add [bx+si],al
00001D45  0000              add [bx+si],al
00001D47  0000              add [bx+si],al
00001D49  0000              add [bx+si],al
00001D4B  0000              add [bx+si],al
00001D4D  0000              add [bx+si],al
00001D4F  0000              add [bx+si],al
00001D51  0000              add [bx+si],al
00001D53  0000              add [bx+si],al
00001D55  0000              add [bx+si],al
00001D57  0000              add [bx+si],al
00001D59  0000              add [bx+si],al
00001D5B  0000              add [bx+si],al
00001D5D  0000              add [bx+si],al
00001D5F  0000              add [bx+si],al
00001D61  0000              add [bx+si],al
00001D63  0000              add [bx+si],al
00001D65  0000              add [bx+si],al
00001D67  0000              add [bx+si],al
00001D69  0000              add [bx+si],al
00001D6B  0000              add [bx+si],al
00001D6D  0000              add [bx+si],al
00001D6F  0000              add [bx+si],al
00001D71  0000              add [bx+si],al
00001D73  0000              add [bx+si],al
00001D75  0000              add [bx+si],al
00001D77  0000              add [bx+si],al
00001D79  0000              add [bx+si],al
00001D7B  0000              add [bx+si],al
00001D7D  0000              add [bx+si],al
00001D7F  0000              add [bx+si],al
00001D81  0000              add [bx+si],al
00001D83  0000              add [bx+si],al
00001D85  0000              add [bx+si],al
00001D87  0000              add [bx+si],al
00001D89  0000              add [bx+si],al
00001D8B  0000              add [bx+si],al
00001D8D  0000              add [bx+si],al
00001D8F  0000              add [bx+si],al
00001D91  0000              add [bx+si],al
00001D93  0000              add [bx+si],al
00001D95  0000              add [bx+si],al
00001D97  0000              add [bx+si],al
00001D99  0000              add [bx+si],al
00001D9B  0000              add [bx+si],al
00001D9D  0000              add [bx+si],al
00001D9F  0000              add [bx+si],al
00001DA1  0000              add [bx+si],al
00001DA3  0000              add [bx+si],al
00001DA5  0000              add [bx+si],al
00001DA7  0000              add [bx+si],al
00001DA9  0000              add [bx+si],al
00001DAB  0000              add [bx+si],al
00001DAD  0000              add [bx+si],al
00001DAF  0000              add [bx+si],al
00001DB1  0000              add [bx+si],al
00001DB3  0000              add [bx+si],al
00001DB5  0000              add [bx+si],al
00001DB7  0000              add [bx+si],al
00001DB9  0000              add [bx+si],al
00001DBB  0000              add [bx+si],al
00001DBD  0000              add [bx+si],al
00001DBF  0000              add [bx+si],al
00001DC1  0000              add [bx+si],al
00001DC3  0000              add [bx+si],al
00001DC5  0000              add [bx+si],al
00001DC7  0000              add [bx+si],al
00001DC9  0000              add [bx+si],al
00001DCB  0000              add [bx+si],al
00001DCD  0000              add [bx+si],al
00001DCF  0000              add [bx+si],al
00001DD1  0000              add [bx+si],al
00001DD3  0000              add [bx+si],al
00001DD5  0000              add [bx+si],al
00001DD7  0000              add [bx+si],al
00001DD9  0000              add [bx+si],al
00001DDB  0000              add [bx+si],al
00001DDD  0000              add [bx+si],al
00001DDF  0000              add [bx+si],al
00001DE1  0000              add [bx+si],al
00001DE3  0000              add [bx+si],al
00001DE5  0000              add [bx+si],al
00001DE7  0000              add [bx+si],al
00001DE9  0000              add [bx+si],al
00001DEB  0000              add [bx+si],al
00001DED  0000              add [bx+si],al
00001DEF  0000              add [bx+si],al
00001DF1  0000              add [bx+si],al
00001DF3  0000              add [bx+si],al
00001DF5  0000              add [bx+si],al
00001DF7  0000              add [bx+si],al
00001DF9  0000              add [bx+si],al
00001DFB  0000              add [bx+si],al
00001DFD  0000              add [bx+si],al
00001DFF  0000              add [bx+si],al
00001E01  0000              add [bx+si],al
00001E03  0000              add [bx+si],al
00001E05  0000              add [bx+si],al
00001E07  0000              add [bx+si],al
00001E09  0000              add [bx+si],al
00001E0B  0000              add [bx+si],al
00001E0D  0000              add [bx+si],al
00001E0F  0000              add [bx+si],al
00001E11  0000              add [bx+si],al
00001E13  0000              add [bx+si],al
00001E15  0000              add [bx+si],al
00001E17  0000              add [bx+si],al
00001E19  0000              add [bx+si],al
00001E1B  0000              add [bx+si],al
00001E1D  0000              add [bx+si],al
00001E1F  0000              add [bx+si],al
00001E21  0000              add [bx+si],al
00001E23  0000              add [bx+si],al
00001E25  0000              add [bx+si],al
00001E27  0000              add [bx+si],al
00001E29  0000              add [bx+si],al
00001E2B  0000              add [bx+si],al
00001E2D  0000              add [bx+si],al
00001E2F  0000              add [bx+si],al
00001E31  0000              add [bx+si],al
00001E33  0000              add [bx+si],al
00001E35  0000              add [bx+si],al
00001E37  0000              add [bx+si],al
00001E39  0000              add [bx+si],al
00001E3B  0000              add [bx+si],al
00001E3D  0000              add [bx+si],al
00001E3F  0000              add [bx+si],al
00001E41  0000              add [bx+si],al
00001E43  0000              add [bx+si],al
00001E45  0000              add [bx+si],al
00001E47  0000              add [bx+si],al
00001E49  0000              add [bx+si],al
00001E4B  0000              add [bx+si],al
00001E4D  0000              add [bx+si],al
00001E4F  0000              add [bx+si],al
00001E51  0000              add [bx+si],al
00001E53  0000              add [bx+si],al
00001E55  0000              add [bx+si],al
00001E57  0000              add [bx+si],al
00001E59  0000              add [bx+si],al
00001E5B  0000              add [bx+si],al
00001E5D  0000              add [bx+si],al
00001E5F  0000              add [bx+si],al
00001E61  0000              add [bx+si],al
00001E63  0000              add [bx+si],al
00001E65  0000              add [bx+si],al
00001E67  0000              add [bx+si],al
00001E69  0000              add [bx+si],al
00001E6B  0000              add [bx+si],al
00001E6D  0000              add [bx+si],al
00001E6F  0000              add [bx+si],al
00001E71  0000              add [bx+si],al
00001E73  0000              add [bx+si],al
00001E75  0000              add [bx+si],al
00001E77  0000              add [bx+si],al
00001E79  0000              add [bx+si],al
00001E7B  0000              add [bx+si],al
00001E7D  0000              add [bx+si],al
00001E7F  0000              add [bx+si],al
00001E81  0000              add [bx+si],al
00001E83  0000              add [bx+si],al
00001E85  0000              add [bx+si],al
00001E87  0000              add [bx+si],al
00001E89  0000              add [bx+si],al
00001E8B  0000              add [bx+si],al
00001E8D  0000              add [bx+si],al
00001E8F  0000              add [bx+si],al
00001E91  0000              add [bx+si],al
00001E93  0000              add [bx+si],al
00001E95  0000              add [bx+si],al
00001E97  0000              add [bx+si],al
00001E99  0000              add [bx+si],al
00001E9B  0000              add [bx+si],al
00001E9D  0000              add [bx+si],al
00001E9F  0000              add [bx+si],al
00001EA1  0000              add [bx+si],al
00001EA3  0000              add [bx+si],al
00001EA5  0000              add [bx+si],al
00001EA7  0000              add [bx+si],al
00001EA9  0000              add [bx+si],al
00001EAB  0000              add [bx+si],al
00001EAD  0000              add [bx+si],al
00001EAF  0000              add [bx+si],al
00001EB1  0000              add [bx+si],al
00001EB3  0000              add [bx+si],al
00001EB5  0000              add [bx+si],al
00001EB7  0000              add [bx+si],al
00001EB9  0000              add [bx+si],al
00001EBB  0000              add [bx+si],al
00001EBD  0000              add [bx+si],al
00001EBF  0000              add [bx+si],al
00001EC1  0000              add [bx+si],al
00001EC3  0000              add [bx+si],al
00001EC5  0000              add [bx+si],al
00001EC7  0000              add [bx+si],al
00001EC9  0000              add [bx+si],al
00001ECB  0000              add [bx+si],al
00001ECD  0000              add [bx+si],al
00001ECF  0000              add [bx+si],al
00001ED1  0000              add [bx+si],al
00001ED3  0000              add [bx+si],al
00001ED5  0000              add [bx+si],al
00001ED7  0000              add [bx+si],al
00001ED9  0000              add [bx+si],al
00001EDB  0000              add [bx+si],al
00001EDD  0000              add [bx+si],al
00001EDF  0000              add [bx+si],al
00001EE1  0000              add [bx+si],al
00001EE3  0000              add [bx+si],al
00001EE5  0000              add [bx+si],al
00001EE7  0000              add [bx+si],al
00001EE9  0000              add [bx+si],al
00001EEB  0000              add [bx+si],al
00001EED  0000              add [bx+si],al
00001EEF  0000              add [bx+si],al
00001EF1  0000              add [bx+si],al
00001EF3  0000              add [bx+si],al
00001EF5  0000              add [bx+si],al
00001EF7  0000              add [bx+si],al
00001EF9  0000              add [bx+si],al
00001EFB  0000              add [bx+si],al
00001EFD  0000              add [bx+si],al
00001EFF  0000              add [bx+si],al
00001F01  0000              add [bx+si],al
00001F03  0000              add [bx+si],al
00001F05  0000              add [bx+si],al
00001F07  0000              add [bx+si],al
00001F09  0000              add [bx+si],al
00001F0B  0000              add [bx+si],al
00001F0D  0000              add [bx+si],al
00001F0F  0000              add [bx+si],al
00001F11  0000              add [bx+si],al
00001F13  0000              add [bx+si],al
00001F15  0000              add [bx+si],al
00001F17  0000              add [bx+si],al
00001F19  0000              add [bx+si],al
00001F1B  0000              add [bx+si],al
00001F1D  0000              add [bx+si],al
00001F1F  0000              add [bx+si],al
00001F21  0000              add [bx+si],al
00001F23  0000              add [bx+si],al
00001F25  0000              add [bx+si],al
00001F27  0000              add [bx+si],al
00001F29  0000              add [bx+si],al
00001F2B  0000              add [bx+si],al
00001F2D  0000              add [bx+si],al
00001F2F  0000              add [bx+si],al
00001F31  0000              add [bx+si],al
00001F33  0000              add [bx+si],al
00001F35  0000              add [bx+si],al
00001F37  0000              add [bx+si],al
00001F39  0000              add [bx+si],al
00001F3B  0000              add [bx+si],al
00001F3D  0000              add [bx+si],al
00001F3F  0000              add [bx+si],al
00001F41  0000              add [bx+si],al
00001F43  0000              add [bx+si],al
00001F45  0000              add [bx+si],al
00001F47  0000              add [bx+si],al
00001F49  0000              add [bx+si],al
00001F4B  0000              add [bx+si],al
00001F4D  0000              add [bx+si],al
00001F4F  0000              add [bx+si],al
00001F51  0000              add [bx+si],al
00001F53  0000              add [bx+si],al
00001F55  0000              add [bx+si],al
00001F57  0000              add [bx+si],al
00001F59  0000              add [bx+si],al
00001F5B  0000              add [bx+si],al
00001F5D  0000              add [bx+si],al
00001F5F  0000              add [bx+si],al
00001F61  0000              add [bx+si],al
00001F63  0000              add [bx+si],al
00001F65  0000              add [bx+si],al
00001F67  0000              add [bx+si],al
00001F69  0000              add [bx+si],al
00001F6B  0000              add [bx+si],al
00001F6D  0000              add [bx+si],al
00001F6F  0000              add [bx+si],al
00001F71  0000              add [bx+si],al
00001F73  0000              add [bx+si],al
00001F75  0000              add [bx+si],al
00001F77  0000              add [bx+si],al
00001F79  0000              add [bx+si],al
00001F7B  0000              add [bx+si],al
00001F7D  0000              add [bx+si],al
00001F7F  0000              add [bx+si],al
00001F81  0000              add [bx+si],al
00001F83  0000              add [bx+si],al
00001F85  0000              add [bx+si],al
00001F87  0000              add [bx+si],al
00001F89  0000              add [bx+si],al
00001F8B  0000              add [bx+si],al
00001F8D  0000              add [bx+si],al
00001F8F  0000              add [bx+si],al
00001F91  0000              add [bx+si],al
00001F93  0000              add [bx+si],al
00001F95  0000              add [bx+si],al
00001F97  0000              add [bx+si],al
00001F99  0000              add [bx+si],al
00001F9B  0000              add [bx+si],al
00001F9D  0000              add [bx+si],al
00001F9F  0000              add [bx+si],al
00001FA1  0000              add [bx+si],al
00001FA3  0000              add [bx+si],al
00001FA5  0000              add [bx+si],al
00001FA7  0000              add [bx+si],al
00001FA9  0000              add [bx+si],al
00001FAB  0000              add [bx+si],al
00001FAD  0000              add [bx+si],al
00001FAF  0000              add [bx+si],al
00001FB1  0000              add [bx+si],al
00001FB3  0000              add [bx+si],al
00001FB5  0000              add [bx+si],al
00001FB7  0000              add [bx+si],al
00001FB9  0000              add [bx+si],al
00001FBB  0000              add [bx+si],al
00001FBD  0000              add [bx+si],al
00001FBF  0000              add [bx+si],al
00001FC1  0000              add [bx+si],al
00001FC3  0000              add [bx+si],al
00001FC5  0000              add [bx+si],al
00001FC7  0000              add [bx+si],al
00001FC9  0000              add [bx+si],al
00001FCB  0000              add [bx+si],al
00001FCD  0000              add [bx+si],al
00001FCF  0000              add [bx+si],al
00001FD1  0000              add [bx+si],al
00001FD3  0000              add [bx+si],al
00001FD5  0000              add [bx+si],al
00001FD7  0000              add [bx+si],al
00001FD9  0000              add [bx+si],al
00001FDB  0000              add [bx+si],al
00001FDD  0000              add [bx+si],al
00001FDF  0000              add [bx+si],al
00001FE1  0000              add [bx+si],al
00001FE3  0000              add [bx+si],al
00001FE5  0000              add [bx+si],al
00001FE7  0000              add [bx+si],al
00001FE9  0000              add [bx+si],al
00001FEB  0000              add [bx+si],al
00001FED  0000              add [bx+si],al
00001FEF  0000              add [bx+si],al
00001FF1  0000              add [bx+si],al
00001FF3  0000              add [bx+si],al
00001FF5  0000              add [bx+si],al
00001FF7  0000              add [bx+si],al
00001FF9  0000              add [bx+si],al
00001FFB  0000              add [bx+si],al
00001FFD  0000              add [bx+si],al
00001FFF  0000              add [bx+si],al
00002001  0000              add [bx+si],al
00002003  0000              add [bx+si],al
00002005  0000              add [bx+si],al
00002007  0000              add [bx+si],al
00002009  0000              add [bx+si],al
0000200B  0000              add [bx+si],al
0000200D  0000              add [bx+si],al
0000200F  0000              add [bx+si],al
00002011  0000              add [bx+si],al
00002013  0000              add [bx+si],al
00002015  0000              add [bx+si],al
00002017  0000              add [bx+si],al
00002019  0000              add [bx+si],al
0000201B  0000              add [bx+si],al
0000201D  0000              add [bx+si],al
0000201F  0000              add [bx+si],al
00002021  0000              add [bx+si],al
00002023  0000              add [bx+si],al
00002025  0000              add [bx+si],al
00002027  0000              add [bx+si],al
00002029  0000              add [bx+si],al
0000202B  0000              add [bx+si],al
0000202D  0000              add [bx+si],al
0000202F  0000              add [bx+si],al
00002031  0000              add [bx+si],al
00002033  0000              add [bx+si],al
00002035  0000              add [bx+si],al
00002037  0000              add [bx+si],al
00002039  0000              add [bx+si],al
0000203B  0000              add [bx+si],al
0000203D  0000              add [bx+si],al
0000203F  0000              add [bx+si],al
00002041  0000              add [bx+si],al
00002043  0000              add [bx+si],al
00002045  0000              add [bx+si],al
00002047  0000              add [bx+si],al
00002049  0000              add [bx+si],al
0000204B  0000              add [bx+si],al
0000204D  0000              add [bx+si],al
0000204F  0000              add [bx+si],al
00002051  0000              add [bx+si],al
00002053  0000              add [bx+si],al
00002055  0000              add [bx+si],al
00002057  0000              add [bx+si],al
00002059  0000              add [bx+si],al
0000205B  0000              add [bx+si],al
0000205D  0000              add [bx+si],al
0000205F  0000              add [bx+si],al
00002061  0000              add [bx+si],al
00002063  0000              add [bx+si],al
00002065  0000              add [bx+si],al
00002067  0000              add [bx+si],al
00002069  0000              add [bx+si],al
0000206B  0000              add [bx+si],al
0000206D  0000              add [bx+si],al
0000206F  0000              add [bx+si],al
00002071  0000              add [bx+si],al
00002073  0000              add [bx+si],al
00002075  0000              add [bx+si],al
00002077  0000              add [bx+si],al
00002079  0000              add [bx+si],al
0000207B  0000              add [bx+si],al
0000207D  0000              add [bx+si],al
0000207F  0000              add [bx+si],al
00002081  0000              add [bx+si],al
00002083  0000              add [bx+si],al
00002085  0000              add [bx+si],al
00002087  0000              add [bx+si],al
00002089  0000              add [bx+si],al
0000208B  0000              add [bx+si],al
0000208D  0000              add [bx+si],al
0000208F  0000              add [bx+si],al
00002091  0000              add [bx+si],al
00002093  0000              add [bx+si],al
00002095  0000              add [bx+si],al
00002097  0000              add [bx+si],al
00002099  0000              add [bx+si],al
0000209B  0000              add [bx+si],al
0000209D  0000              add [bx+si],al
0000209F  0000              add [bx+si],al
000020A1  0000              add [bx+si],al
000020A3  0000              add [bx+si],al
000020A5  0000              add [bx+si],al
000020A7  0000              add [bx+si],al
000020A9  0000              add [bx+si],al
000020AB  0000              add [bx+si],al
000020AD  0000              add [bx+si],al
000020AF  0000              add [bx+si],al
000020B1  0000              add [bx+si],al
000020B3  0000              add [bx+si],al
000020B5  0000              add [bx+si],al
000020B7  0000              add [bx+si],al
000020B9  0000              add [bx+si],al
000020BB  0000              add [bx+si],al
000020BD  0000              add [bx+si],al
000020BF  0000              add [bx+si],al
000020C1  0000              add [bx+si],al
000020C3  0000              add [bx+si],al
000020C5  0000              add [bx+si],al
000020C7  0000              add [bx+si],al
000020C9  0000              add [bx+si],al
000020CB  0000              add [bx+si],al
000020CD  0000              add [bx+si],al
000020CF  0000              add [bx+si],al
000020D1  0000              add [bx+si],al
000020D3  0000              add [bx+si],al
000020D5  0000              add [bx+si],al
000020D7  0000              add [bx+si],al
000020D9  0000              add [bx+si],al
000020DB  0000              add [bx+si],al
000020DD  0000              add [bx+si],al
000020DF  0000              add [bx+si],al
000020E1  0000              add [bx+si],al
000020E3  0000              add [bx+si],al
000020E5  0000              add [bx+si],al
000020E7  0000              add [bx+si],al
000020E9  0000              add [bx+si],al
000020EB  0000              add [bx+si],al
000020ED  0000              add [bx+si],al
000020EF  0000              add [bx+si],al
000020F1  0000              add [bx+si],al
000020F3  0000              add [bx+si],al
000020F5  0000              add [bx+si],al
000020F7  0000              add [bx+si],al
000020F9  0000              add [bx+si],al
000020FB  0000              add [bx+si],al
000020FD  0000              add [bx+si],al
000020FF  0000              add [bx+si],al
00002101  0000              add [bx+si],al
00002103  0000              add [bx+si],al
00002105  0000              add [bx+si],al
00002107  0000              add [bx+si],al
00002109  0000              add [bx+si],al
0000210B  0000              add [bx+si],al
0000210D  0000              add [bx+si],al
0000210F  0000              add [bx+si],al
00002111  0000              add [bx+si],al
00002113  0000              add [bx+si],al
00002115  0000              add [bx+si],al
00002117  0000              add [bx+si],al
00002119  0000              add [bx+si],al
0000211B  0000              add [bx+si],al
0000211D  0000              add [bx+si],al
0000211F  0000              add [bx+si],al
00002121  0000              add [bx+si],al
00002123  0000              add [bx+si],al
00002125  0000              add [bx+si],al
00002127  0000              add [bx+si],al
00002129  0000              add [bx+si],al
0000212B  0000              add [bx+si],al
0000212D  0000              add [bx+si],al
0000212F  0000              add [bx+si],al
00002131  0000              add [bx+si],al
00002133  0000              add [bx+si],al
00002135  0000              add [bx+si],al
00002137  0000              add [bx+si],al
00002139  0000              add [bx+si],al
0000213B  0000              add [bx+si],al
0000213D  0000              add [bx+si],al
0000213F  0000              add [bx+si],al
00002141  0000              add [bx+si],al
00002143  0000              add [bx+si],al
00002145  0000              add [bx+si],al
00002147  0000              add [bx+si],al
00002149  0000              add [bx+si],al
0000214B  0000              add [bx+si],al
0000214D  0000              add [bx+si],al
0000214F  0000              add [bx+si],al
00002151  0000              add [bx+si],al
00002153  0000              add [bx+si],al
00002155  0000              add [bx+si],al
00002157  0000              add [bx+si],al
00002159  0000              add [bx+si],al
0000215B  0000              add [bx+si],al
0000215D  0000              add [bx+si],al
0000215F  0000              add [bx+si],al
00002161  0000              add [bx+si],al
00002163  0000              add [bx+si],al
00002165  0000              add [bx+si],al
00002167  0000              add [bx+si],al
00002169  0000              add [bx+si],al
0000216B  0000              add [bx+si],al
0000216D  0000              add [bx+si],al
0000216F  0000              add [bx+si],al
00002171  0000              add [bx+si],al
00002173  0000              add [bx+si],al
00002175  0000              add [bx+si],al
00002177  0000              add [bx+si],al
00002179  0000              add [bx+si],al
0000217B  0000              add [bx+si],al
0000217D  0000              add [bx+si],al
0000217F  0000              add [bx+si],al
00002181  0000              add [bx+si],al
00002183  0000              add [bx+si],al
00002185  0000              add [bx+si],al
00002187  0000              add [bx+si],al
00002189  0000              add [bx+si],al
0000218B  0000              add [bx+si],al
0000218D  0000              add [bx+si],al
0000218F  0000              add [bx+si],al
00002191  0000              add [bx+si],al
00002193  0000              add [bx+si],al
00002195  0000              add [bx+si],al
00002197  0000              add [bx+si],al
00002199  0000              add [bx+si],al
0000219B  0000              add [bx+si],al
0000219D  0000              add [bx+si],al
0000219F  0000              add [bx+si],al
000021A1  0000              add [bx+si],al
000021A3  0000              add [bx+si],al
000021A5  0000              add [bx+si],al
000021A7  0000              add [bx+si],al
000021A9  0000              add [bx+si],al
000021AB  0000              add [bx+si],al
000021AD  0000              add [bx+si],al
000021AF  0000              add [bx+si],al
000021B1  0000              add [bx+si],al
000021B3  0000              add [bx+si],al
000021B5  0000              add [bx+si],al
000021B7  0000              add [bx+si],al
000021B9  0000              add [bx+si],al
000021BB  0000              add [bx+si],al
000021BD  0000              add [bx+si],al
000021BF  0000              add [bx+si],al
000021C1  0000              add [bx+si],al
000021C3  0000              add [bx+si],al
000021C5  0000              add [bx+si],al
000021C7  0000              add [bx+si],al
000021C9  0000              add [bx+si],al
000021CB  0000              add [bx+si],al
000021CD  0000              add [bx+si],al
000021CF  0000              add [bx+si],al
000021D1  0000              add [bx+si],al
000021D3  0000              add [bx+si],al
000021D5  0000              add [bx+si],al
000021D7  0000              add [bx+si],al
000021D9  0000              add [bx+si],al
000021DB  0000              add [bx+si],al
000021DD  0000              add [bx+si],al
000021DF  0000              add [bx+si],al
000021E1  0000              add [bx+si],al
000021E3  0000              add [bx+si],al
000021E5  0000              add [bx+si],al
000021E7  0000              add [bx+si],al
000021E9  0000              add [bx+si],al
000021EB  0000              add [bx+si],al
000021ED  0000              add [bx+si],al
000021EF  0000              add [bx+si],al
000021F1  0000              add [bx+si],al
000021F3  0000              add [bx+si],al
000021F5  0000              add [bx+si],al
000021F7  0000              add [bx+si],al
000021F9  0000              add [bx+si],al
000021FB  0000              add [bx+si],al
000021FD  0000              add [bx+si],al
000021FF  0000              add [bx+si],al
00002201  0000              add [bx+si],al
00002203  0000              add [bx+si],al
00002205  0000              add [bx+si],al
00002207  0000              add [bx+si],al
00002209  0000              add [bx+si],al
0000220B  0000              add [bx+si],al
0000220D  0000              add [bx+si],al
0000220F  0000              add [bx+si],al
00002211  0000              add [bx+si],al
00002213  0000              add [bx+si],al
00002215  0000              add [bx+si],al
00002217  0000              add [bx+si],al
00002219  0000              add [bx+si],al
0000221B  0000              add [bx+si],al
0000221D  0000              add [bx+si],al
0000221F  0000              add [bx+si],al
00002221  0000              add [bx+si],al
00002223  0000              add [bx+si],al
00002225  0000              add [bx+si],al
00002227  0000              add [bx+si],al
00002229  0000              add [bx+si],al
0000222B  0000              add [bx+si],al
0000222D  0000              add [bx+si],al
0000222F  0000              add [bx+si],al
00002231  0000              add [bx+si],al
00002233  0000              add [bx+si],al
00002235  0000              add [bx+si],al
00002237  0000              add [bx+si],al
00002239  0000              add [bx+si],al
0000223B  0000              add [bx+si],al
0000223D  0000              add [bx+si],al
0000223F  0000              add [bx+si],al
00002241  0000              add [bx+si],al
00002243  0000              add [bx+si],al
00002245  0000              add [bx+si],al
00002247  0000              add [bx+si],al
00002249  0000              add [bx+si],al
0000224B  0000              add [bx+si],al
0000224D  0000              add [bx+si],al
0000224F  0000              add [bx+si],al
00002251  0000              add [bx+si],al
00002253  0000              add [bx+si],al
00002255  0000              add [bx+si],al
00002257  0000              add [bx+si],al
00002259  0000              add [bx+si],al
0000225B  0000              add [bx+si],al
0000225D  0000              add [bx+si],al
0000225F  0000              add [bx+si],al
00002261  0000              add [bx+si],al
00002263  0000              add [bx+si],al
00002265  0000              add [bx+si],al
00002267  0000              add [bx+si],al
00002269  0000              add [bx+si],al
0000226B  0000              add [bx+si],al
0000226D  0000              add [bx+si],al
0000226F  0000              add [bx+si],al
00002271  0000              add [bx+si],al
00002273  0000              add [bx+si],al
00002275  0000              add [bx+si],al
00002277  0000              add [bx+si],al
00002279  0000              add [bx+si],al
0000227B  0000              add [bx+si],al
0000227D  0000              add [bx+si],al
0000227F  0000              add [bx+si],al
00002281  0000              add [bx+si],al
00002283  0000              add [bx+si],al
00002285  0000              add [bx+si],al
00002287  0000              add [bx+si],al
00002289  0000              add [bx+si],al
0000228B  0000              add [bx+si],al
0000228D  0000              add [bx+si],al
0000228F  0000              add [bx+si],al
00002291  0000              add [bx+si],al
00002293  0000              add [bx+si],al
00002295  0000              add [bx+si],al
00002297  0000              add [bx+si],al
00002299  0000              add [bx+si],al
0000229B  0000              add [bx+si],al
0000229D  0000              add [bx+si],al
0000229F  0000              add [bx+si],al
000022A1  0000              add [bx+si],al
000022A3  0000              add [bx+si],al
000022A5  0000              add [bx+si],al
000022A7  0000              add [bx+si],al
000022A9  0000              add [bx+si],al
000022AB  0000              add [bx+si],al
000022AD  0000              add [bx+si],al
000022AF  0000              add [bx+si],al
000022B1  0000              add [bx+si],al
000022B3  0000              add [bx+si],al
000022B5  0000              add [bx+si],al
000022B7  0000              add [bx+si],al
000022B9  0000              add [bx+si],al
000022BB  0000              add [bx+si],al
000022BD  0000              add [bx+si],al
000022BF  0000              add [bx+si],al
000022C1  0000              add [bx+si],al
000022C3  0000              add [bx+si],al
000022C5  0000              add [bx+si],al
000022C7  0000              add [bx+si],al
000022C9  0000              add [bx+si],al
000022CB  0000              add [bx+si],al
000022CD  0000              add [bx+si],al
000022CF  0000              add [bx+si],al
000022D1  0000              add [bx+si],al
000022D3  0000              add [bx+si],al
000022D5  0000              add [bx+si],al
000022D7  0000              add [bx+si],al
000022D9  0000              add [bx+si],al
000022DB  56                push si
000022DC  57                push di
000022DD  E8700D            call word 0x3050
000022E0  BEEF22            mov si,0x22ef
000022E3  BF4001            mov di,0x140
000022E6  E89D0D            call word 0x3086
000022E9  E80AEE            call word 0x10f6
000022EC  5F                pop di
000022ED  5E                pop si
000022EE  C3                ret
000022EF  2020              and [bx+si],ah
000022F1  2020              and [bx+si],ah
000022F3  2020              and [bx+si],ah
000022F5  C3                ret
000022F6  B4C3              mov ah,0xc3
000022F8  B4C3              mov ah,0xc3
000022FA  B4C3              mov ah,0xc3
000022FC  B420              mov ah,0x20
000022FE  2020              and [bx+si],ah
00002300  2020              and [bx+si],ah
00002302  20C3              and bl,al
00002304  B4C3              mov ah,0xc3
00002306  B4C3              mov ah,0xc3
00002308  B4C3              mov ah,0xc3
0000230A  B4C3              mov ah,0xc3
0000230C  B420              mov ah,0x20
0000230E  2020              and [bx+si],ah
00002310  2020              and [bx+si],ah
00002312  20C3              and bl,al
00002314  B4C3              mov ah,0xc3
00002316  B4C3              mov ah,0xc3
00002318  B420              mov ah,0x20
0000231A  2020              and [bx+si],ah
0000231C  2020              and [bx+si],ah
0000231E  2020              and [bx+si],ah
00002320  20C3              and bl,al
00002322  B4C3              mov ah,0xc3
00002324  B4C3              mov ah,0xc3
00002326  B4C3              mov ah,0xc3
00002328  B420              mov ah,0x20
0000232A  2020              and [bx+si],ah
0000232C  20C3              and bl,al
0000232E  B4C3              mov ah,0xc3
00002330  B4C3              mov ah,0xc3
00002332  B4C3              mov ah,0xc3
00002334  B4C3              mov ah,0xc3
00002336  B420              mov ah,0x20
00002338  2020              and [bx+si],ah
0000233A  2020              and [bx+si],ah
0000233C  2020              and [bx+si],ah
0000233E  2020              and [bx+si],ah
00002340  2020              and [bx+si],ah
00002342  2020              and [bx+si],ah
00002344  20C3              and bl,al
00002346  B420              mov ah,0x20
00002348  2020              and [bx+si],ah
0000234A  2020              and [bx+si],ah
0000234C  20C3              and bl,al
0000234E  B420              mov ah,0x20
00002350  2020              and [bx+si],ah
00002352  20C3              and bl,al
00002354  B420              mov ah,0x20
00002356  2020              and [bx+si],ah
00002358  2020              and [bx+si],ah
0000235A  2020              and [bx+si],ah
0000235C  2020              and [bx+si],ah
0000235E  2020              and [bx+si],ah
00002360  20C3              and bl,al
00002362  B420              mov ah,0x20
00002364  2020              and [bx+si],ah
00002366  2020              and [bx+si],ah
00002368  20C3              and bl,al
0000236A  B420              mov ah,0x20
0000236C  2020              and [bx+si],ah
0000236E  20C3              and bl,al
00002370  B420              mov ah,0x20
00002372  2020              and [bx+si],ah
00002374  2020              and [bx+si],ah
00002376  2020              and [bx+si],ah
00002378  2020              and [bx+si],ah
0000237A  2020              and [bx+si],ah
0000237C  2020              and [bx+si],ah
0000237E  2020              and [bx+si],ah
00002380  20C3              and bl,al
00002382  B420              mov ah,0x20
00002384  2020              and [bx+si],ah
00002386  2020              and [bx+si],ah
00002388  2020              and [bx+si],ah
0000238A  2020              and [bx+si],ah
0000238C  2020              and [bx+si],ah
0000238E  2020              and [bx+si],ah
00002390  2020              and [bx+si],ah
00002392  2020              and [bx+si],ah
00002394  20C3              and bl,al
00002396  B420              mov ah,0x20
00002398  2020              and [bx+si],ah
0000239A  2020              and [bx+si],ah
0000239C  20C3              and bl,al
0000239E  B420              mov ah,0x20
000023A0  2020              and [bx+si],ah
000023A2  20C3              and bl,al
000023A4  B420              mov ah,0x20
000023A6  2020              and [bx+si],ah
000023A8  2020              and [bx+si],ah
000023AA  2020              and [bx+si],ah
000023AC  2020              and [bx+si],ah
000023AE  2020              and [bx+si],ah
000023B0  20C3              and bl,al
000023B2  B420              mov ah,0x20
000023B4  2020              and [bx+si],ah
000023B6  2020              and [bx+si],ah
000023B8  20C3              and bl,al
000023BA  B420              mov ah,0x20
000023BC  2020              and [bx+si],ah
000023BE  20C3              and bl,al
000023C0  B420              mov ah,0x20
000023C2  2020              and [bx+si],ah
000023C4  2020              and [bx+si],ah
000023C6  2020              and [bx+si],ah
000023C8  2020              and [bx+si],ah
000023CA  2020              and [bx+si],ah
000023CC  2020              and [bx+si],ah
000023CE  2020              and [bx+si],ah
000023D0  20C3              and bl,al
000023D2  B420              mov ah,0x20
000023D4  2020              and [bx+si],ah
000023D6  2020              and [bx+si],ah
000023D8  2020              and [bx+si],ah
000023DA  2020              and [bx+si],ah
000023DC  2020              and [bx+si],ah
000023DE  2020              and [bx+si],ah
000023E0  2020              and [bx+si],ah
000023E2  2020              and [bx+si],ah
000023E4  20C3              and bl,al
000023E6  B4C3              mov ah,0xc3
000023E8  B4C3              mov ah,0xc3
000023EA  B4C3              mov ah,0xc3
000023EC  B420              mov ah,0x20
000023EE  2020              and [bx+si],ah
000023F0  2020              and [bx+si],ah
000023F2  20C3              and bl,al
000023F4  B4C3              mov ah,0xc3
000023F6  B4C3              mov ah,0xc3
000023F8  B420              mov ah,0x20
000023FA  2020              and [bx+si],ah
000023FC  2020              and [bx+si],ah
000023FE  2020              and [bx+si],ah
00002400  20C3              and bl,al
00002402  B4C3              mov ah,0xc3
00002404  B4C3              mov ah,0xc3
00002406  B4C3              mov ah,0xc3
00002408  B4C3              mov ah,0xc3
0000240A  B420              mov ah,0x20
0000240C  2020              and [bx+si],ah
0000240E  2020              and [bx+si],ah
00002410  20C3              and bl,al
00002412  B4C3              mov ah,0xc3
00002414  B4C3              mov ah,0xc3
00002416  B420              mov ah,0x20
00002418  2020              and [bx+si],ah
0000241A  2020              and [bx+si],ah
0000241C  2020              and [bx+si],ah
0000241E  2020              and [bx+si],ah
00002420  20C3              and bl,al
00002422  B420              mov ah,0x20
00002424  2020              and [bx+si],ah
00002426  2020              and [bx+si],ah
00002428  2020              and [bx+si],ah
0000242A  2020              and [bx+si],ah
0000242C  2020              and [bx+si],ah
0000242E  2020              and [bx+si],ah
00002430  2020              and [bx+si],ah
00002432  2020              and [bx+si],ah
00002434  20C3              and bl,al
00002436  B420              mov ah,0x20
00002438  2020              and [bx+si],ah
0000243A  2020              and [bx+si],ah
0000243C  20C3              and bl,al
0000243E  B420              mov ah,0x20
00002440  2020              and [bx+si],ah
00002442  20C3              and bl,al
00002444  B420              mov ah,0x20
00002446  2020              and [bx+si],ah
00002448  2020              and [bx+si],ah
0000244A  2020              and [bx+si],ah
0000244C  2020              and [bx+si],ah
0000244E  2020              and [bx+si],ah
00002450  20C3              and bl,al
00002452  B420              mov ah,0x20
00002454  2020              and [bx+si],ah
00002456  2020              and [bx+si],ah
00002458  20C3              and bl,al
0000245A  B420              mov ah,0x20
0000245C  2020              and [bx+si],ah
0000245E  2020              and [bx+si],ah
00002460  2020              and [bx+si],ah
00002462  2020              and [bx+si],ah
00002464  2020              and [bx+si],ah
00002466  20C3              and bl,al
00002468  B420              mov ah,0x20
0000246A  2020              and [bx+si],ah
0000246C  2020              and [bx+si],ah
0000246E  2020              and [bx+si],ah
00002470  20C3              and bl,al
00002472  B420              mov ah,0x20
00002474  2020              and [bx+si],ah
00002476  2020              and [bx+si],ah
00002478  2020              and [bx+si],ah
0000247A  2020              and [bx+si],ah
0000247C  2020              and [bx+si],ah
0000247E  2020              and [bx+si],ah
00002480  2020              and [bx+si],ah
00002482  2020              and [bx+si],ah
00002484  20C3              and bl,al
00002486  B420              mov ah,0x20
00002488  2020              and [bx+si],ah
0000248A  2020              and [bx+si],ah
0000248C  20C3              and bl,al
0000248E  B420              mov ah,0x20
00002490  2020              and [bx+si],ah
00002492  20C3              and bl,al
00002494  B420              mov ah,0x20
00002496  2020              and [bx+si],ah
00002498  2020              and [bx+si],ah
0000249A  2020              and [bx+si],ah
0000249C  2020              and [bx+si],ah
0000249E  2020              and [bx+si],ah
000024A0  20C3              and bl,al
000024A2  B420              mov ah,0x20
000024A4  2020              and [bx+si],ah
000024A6  2020              and [bx+si],ah
000024A8  20C3              and bl,al
000024AA  B420              mov ah,0x20
000024AC  2020              and [bx+si],ah
000024AE  2020              and [bx+si],ah
000024B0  2020              and [bx+si],ah
000024B2  2020              and [bx+si],ah
000024B4  2020              and [bx+si],ah
000024B6  20C3              and bl,al
000024B8  B420              mov ah,0x20
000024BA  2020              and [bx+si],ah
000024BC  2020              and [bx+si],ah
000024BE  2020              and [bx+si],ah
000024C0  20C3              and bl,al
000024C2  B420              mov ah,0x20
000024C4  2020              and [bx+si],ah
000024C6  2020              and [bx+si],ah
000024C8  2020              and [bx+si],ah
000024CA  2020              and [bx+si],ah
000024CC  2020              and [bx+si],ah
000024CE  2020              and [bx+si],ah
000024D0  2020              and [bx+si],ah
000024D2  2020              and [bx+si],ah
000024D4  20C3              and bl,al
000024D6  B4C3              mov ah,0xc3
000024D8  B4C3              mov ah,0xc3
000024DA  B4C3              mov ah,0xc3
000024DC  B420              mov ah,0x20
000024DE  2020              and [bx+si],ah
000024E0  2020              and [bx+si],ah
000024E2  20C3              and bl,al
000024E4  B4C3              mov ah,0xc3
000024E6  B4C3              mov ah,0xc3
000024E8  B4C3              mov ah,0xc3
000024EA  B4C3              mov ah,0xc3
000024EC  B420              mov ah,0x20
000024EE  2020              and [bx+si],ah
000024F0  20C3              and bl,al
000024F2  B420              mov ah,0x20
000024F4  2020              and [bx+si],ah
000024F6  2020              and [bx+si],ah
000024F8  20C3              and bl,al
000024FA  B420              mov ah,0x20
000024FC  2020              and [bx+si],ah
000024FE  20C3              and bl,al
00002500  B4C3              mov ah,0xc3
00002502  B4C3              mov ah,0xc3
00002504  B4C3              mov ah,0xc3
00002506  B420              mov ah,0x20
00002508  2020              and [bx+si],ah
0000250A  2020              and [bx+si],ah
0000250C  2020              and [bx+si],ah
0000250E  2020              and [bx+si],ah
00002510  20C3              and bl,al
00002512  B420              mov ah,0x20
00002514  2020              and [bx+si],ah
00002516  2020              and [bx+si],ah
00002518  2020              and [bx+si],ah
0000251A  2020              and [bx+si],ah
0000251C  2020              and [bx+si],ah
0000251E  2020              and [bx+si],ah
00002520  2020              and [bx+si],ah
00002522  2020              and [bx+si],ah
00002524  2020              and [bx+si],ah
00002526  2020              and [bx+si],ah
00002528  2020              and [bx+si],ah
0000252A  2020              and [bx+si],ah
0000252C  2020              and [bx+si],ah
0000252E  2020              and [bx+si],ah
00002530  2020              and [bx+si],ah
00002532  2020              and [bx+si],ah
00002534  2020              and [bx+si],ah
00002536  2020              and [bx+si],ah
00002538  2020              and [bx+si],ah
0000253A  2020              and [bx+si],ah
0000253C  2020              and [bx+si],ah
0000253E  2020              and [bx+si],ah
00002540  2020              and [bx+si],ah
00002542  2020              and [bx+si],ah
00002544  2020              and [bx+si],ah
00002546  2020              and [bx+si],ah
00002548  2020              and [bx+si],ah
0000254A  2020              and [bx+si],ah
0000254C  2020              and [bx+si],ah
0000254E  2020              and [bx+si],ah
00002550  2020              and [bx+si],ah
00002552  2020              and [bx+si],ah
00002554  2020              and [bx+si],ah
00002556  2020              and [bx+si],ah
00002558  2020              and [bx+si],ah
0000255A  2020              and [bx+si],ah
0000255C  2020              and [bx+si],ah
0000255E  2020              and [bx+si],ah
00002560  2020              and [bx+si],ah
00002562  2020              and [bx+si],ah
00002564  2020              and [bx+si],ah
00002566  2020              and [bx+si],ah
00002568  2020              and [bx+si],ah
0000256A  2020              and [bx+si],ah
0000256C  2020              and [bx+si],ah
0000256E  2020              and [bx+si],ah
00002570  2020              and [bx+si],ah
00002572  2020              and [bx+si],ah
00002574  2020              and [bx+si],ah
00002576  2020              and [bx+si],ah
00002578  2020              and [bx+si],ah
0000257A  2020              and [bx+si],ah
0000257C  2020              and [bx+si],ah
0000257E  2020              and [bx+si],ah
00002580  2020              and [bx+si],ah
00002582  2020              and [bx+si],ah
00002584  2020              and [bx+si],ah
00002586  2020              and [bx+si],ah
00002588  2020              and [bx+si],ah
0000258A  2020              and [bx+si],ah
0000258C  2020              and [bx+si],ah
0000258E  2020              and [bx+si],ah
00002590  2020              and [bx+si],ah
00002592  2020              and [bx+si],ah
00002594  2020              and [bx+si],ah
00002596  2020              and [bx+si],ah
00002598  2020              and [bx+si],ah
0000259A  2020              and [bx+si],ah
0000259C  2020              and [bx+si],ah
0000259E  2020              and [bx+si],ah
000025A0  2020              and [bx+si],ah
000025A2  2020              and [bx+si],ah
000025A4  2020              and [bx+si],ah
000025A6  2020              and [bx+si],ah
000025A8  2020              and [bx+si],ah
000025AA  2020              and [bx+si],ah
000025AC  2020              and [bx+si],ah
000025AE  2020              and [bx+si],ah
000025B0  2020              and [bx+si],ah
000025B2  2020              and [bx+si],ah
000025B4  2020              and [bx+si],ah
000025B6  2020              and [bx+si],ah
000025B8  2020              and [bx+si],ah
000025BA  2020              and [bx+si],ah
000025BC  2020              and [bx+si],ah
000025BE  2020              and [bx+si],ah
000025C0  2020              and [bx+si],ah
000025C2  2020              and [bx+si],ah
000025C4  2020              and [bx+si],ah
000025C6  2020              and [bx+si],ah
000025C8  2020              and [bx+si],ah
000025CA  2020              and [bx+si],ah
000025CC  2020              and [bx+si],ah
000025CE  2020              and [bx+si],ah
000025D0  2020              and [bx+si],ah
000025D2  2020              and [bx+si],ah
000025D4  205772            and [bx+0x72],dl
000025D7  697474656E        imul si,[si+0x74],word 0x6e65
000025DC  20616E            and [bx+di+0x6e],ah
000025DF  64204465          and [fs:si+0x65],al
000025E3  7665              jna 0x264a
000025E5  6C                insb
000025E6  6F                outsw
000025E7  7065              jo 0x264e
000025E9  64206279          and [fs:bp+si+0x79],ah
000025ED  207468            and [si+0x68],dh
000025F0  6520666F          and [gs:bp+0x6f],ah
000025F4  6C                insb
000025F5  6C                insb
000025F6  6F                outsw
000025F7  7769              ja 0x2662
000025F9  6E                outsb
000025FA  672020            and [eax],ah
000025FD  2020              and [bx+si],ah
000025FF  2020              and [bx+si],ah
00002601  2020              and [bx+si],ah
00002603  2020              and [bx+si],ah
00002605  2020              and [bx+si],ah
00002607  2020              and [bx+si],ah
00002609  2020              and [bx+si],ah
0000260B  2020              and [bx+si],ah
0000260D  2020              and [bx+si],ah
0000260F  2020              and [bx+si],ah
00002611  2020              and [bx+si],ah
00002613  2020              and [bx+si],ah
00002615  2020              and [bx+si],ah
00002617  2020              and [bx+si],ah
00002619  2020              and [bx+si],ah
0000261B  204461            and [si+0x61],al
0000261E  6E                outsb
0000261F  204261            and [bp+si+0x61],al
00002622  6B657220          imul sp,[di+0x72],byte +0x20
00002626  2C20              sub al,0x20
00002628  41                inc cx
00002629  6C                insb
0000262A  61                popaw
0000262B  6E                outsb
0000262C  204272            and [bp+si+0x72],al
0000262F  6F                outsw
00002630  776E              ja 0x26a0
00002632  202C              and [si],ch
00002634  204D61            and [di+0x61],cl
00002637  726B              jc 0x26a4
00002639  204861            and [bx+si+0x61],cl
0000263C  6D                insw
0000263D  696C746F6E        imul bp,[si+0x74],word 0x6e6f
00002642  202C              and [si],ch
00002644  204465            and [si+0x65],al
00002647  7272              jc 0x26bb
00002649  69636B2053        imul sp,[bp+di+0x6b],word 0x5320
0000264E  686164            push word 0x6461
00002651  656C              gs insb
00002653  2020              and [bx+si],ah
00002655  2020              and [bx+si],ah
00002657  2020              and [bx+si],ah
00002659  2020              and [bx+si],ah
0000265B  2020              and [bx+si],ah
0000265D  2020              and [bx+si],ah
0000265F  2020              and [bx+si],ah
00002661  2020              and [bx+si],ah
00002663  2020              and [bx+si],ah
00002665  2020              and [bx+si],ah
00002667  2020              and [bx+si],ah
00002669  2020              and [bx+si],ah
0000266B  2020              and [bx+si],ah
0000266D  2020              and [bx+si],ah
0000266F  2020              and [bx+si],ah
00002671  2020              and [bx+si],ah
00002673  2020              and [bx+si],ah
00002675  2020              and [bx+si],ah
00002677  2020              and [bx+si],ah
00002679  2020              and [bx+si],ah
0000267B  2020              and [bx+si],ah
0000267D  2020              and [bx+si],ah
0000267F  2020              and [bx+si],ah
00002681  2020              and [bx+si],ah
00002683  2020              and [bx+si],ah
00002685  2020              and [bx+si],ah
00002687  2020              and [bx+si],ah
00002689  2020              and [bx+si],ah
0000268B  2020              and [bx+si],ah
0000268D  2020              and [bx+si],ah
0000268F  2020              and [bx+si],ah
00002691  2020              and [bx+si],ah
00002693  2020              and [bx+si],ah
00002695  2020              and [bx+si],ah
00002697  2020              and [bx+si],ah
00002699  2020              and [bx+si],ah
0000269B  2020              and [bx+si],ah
0000269D  2020              and [bx+si],ah
0000269F  2020              and [bx+si],ah
000026A1  2020              and [bx+si],ah
000026A3  2020              and [bx+si],ah
000026A5  2020              and [bx+si],ah
000026A7  2020              and [bx+si],ah
000026A9  2020              and [bx+si],ah
000026AB  2020              and [bx+si],ah
000026AD  2020              and [bx+si],ah
000026AF  2020              and [bx+si],ah
000026B1  2020              and [bx+si],ah
000026B3  2020              and [bx+si],ah
000026B5  2020              and [bx+si],ah
000026B7  2020              and [bx+si],ah
000026B9  2020              and [bx+si],ah
000026BB  2020              and [bx+si],ah
000026BD  2020              and [bx+si],ah
000026BF  2020              and [bx+si],ah
000026C1  2020              and [bx+si],ah
000026C3  2020              and [bx+si],ah
000026C5  2020              and [bx+si],ah
000026C7  2020              and [bx+si],ah
000026C9  2028              and [bx+si],ch
000026CB  43                inc bx
000026CC  2920              sub [bx+si],sp
000026CE  43                inc bx
000026CF  6F                outsw
000026D0  7079              jo 0x274b
000026D2  7269              jc 0x273d
000026D4  67687420          push word 0x2074
000026D8  44                inc sp
000026D9  61                popaw
000026DA  6E                outsb
000026DB  204261            and [bp+si+0x61],al
000026DE  6B657220          imul sp,[di+0x72],byte +0x20
000026E2  3139              xor [bx+di],di
000026E4  3834              cmp [si],dh
000026E6  2020              and [bx+si],ah
000026E8  2020              and [bx+si],ah
000026EA  2020              and [bx+si],ah
000026EC  2020              and [bx+si],ah
000026EE  2020              and [bx+si],ah
000026F0  2020              and [bx+si],ah
000026F2  2020              and [bx+si],ah
000026F4  2020              and [bx+si],ah
000026F6  2020              and [bx+si],ah
000026F8  2020              and [bx+si],ah
000026FA  2020              and [bx+si],ah
000026FC  2020              and [bx+si],ah
000026FE  2020              and [bx+si],ah
00002700  2020              and [bx+si],ah
00002702  2020              and [bx+si],ah
00002704  2020              and [bx+si],ah
00002706  2020              and [bx+si],ah
00002708  2020              and [bx+si],ah
0000270A  2020              and [bx+si],ah
0000270C  2020              and [bx+si],ah
0000270E  2020              and [bx+si],ah
00002710  2020              and [bx+si],ah
00002712  2020              and [bx+si],ah
00002714  2020              and [bx+si],ah
00002716  2020              and [bx+si],ah
00002718  2020              and [bx+si],ah
0000271A  2020              and [bx+si],ah
0000271C  2020              and [bx+si],ah
0000271E  2020              and [bx+si],ah
00002720  2020              and [bx+si],ah
00002722  2020              and [bx+si],ah
00002724  2020              and [bx+si],ah
00002726  2020              and [bx+si],ah
00002728  2020              and [bx+si],ah
0000272A  2020              and [bx+si],ah
0000272C  2020              and [bx+si],ah
0000272E  2020              and [bx+si],ah
00002730  2020              and [bx+si],ah
00002732  2020              and [bx+si],ah
00002734  2020              and [bx+si],ah
00002736  2020              and [bx+si],ah
00002738  2020              and [bx+si],ah
0000273A  2020              and [bx+si],ah
0000273C  2020              and [bx+si],ah
0000273E  2020              and [bx+si],ah
00002740  2020              and [bx+si],ah
00002742  2020              and [bx+si],ah
00002744  2020              and [bx+si],ah
00002746  2020              and [bx+si],ah
00002748  2020              and [bx+si],ah
0000274A  2020              and [bx+si],ah
0000274C  2020              and [bx+si],ah
0000274E  2020              and [bx+si],ah
00002750  2020              and [bx+si],ah
00002752  204E4F            and [bp+0x4f],cl
00002755  54                push sp
00002756  49                dec cx
00002757  43                inc bx
00002758  45                inc bp
00002759  3A20              cmp ah,[bx+si]
0000275B  205468            and [si+0x68],dl
0000275E  6973206973        imul si,[bp+di+0x20],word 0x7369
00002763  206120            and [bx+di+0x20],ah
00002766  46                inc si
00002767  7265              jc 0x27ce
00002769  6520636F          and [gs:bp+di+0x6f],ah
0000276D  7079              jo 0x27e8
0000276F  206F66            and [bx+0x66],ch
00002772  204245            and [bp+si+0x45],al
00002775  41                inc cx
00002776  53                push bx
00002777  54                push sp
00002778  2E2020            and [cs:bx+si],ah
0000277B  59                pop cx
0000277C  6F                outsw
0000277D  7520              jnz 0x279f
0000277F  6D                insw
00002780  61                popaw
00002781  7920              jns 0x27a3
00002783  636F70            arpl [bx+0x70],bp
00002786  7920              jns 0x27a8
00002788  697420616E        imul si,[si+0x20],word 0x6e61
0000278D  64206769          and [fs:bx+0x69],ah
00002791  7665              jna 0x27f8
00002793  206974            and [bx+di+0x74],ch
00002796  206177            and [bx+di+0x77],ah
00002799  61                popaw
0000279A  792E              jns 0x27ca
0000279C  2020              and [bx+si],ah
0000279E  2020              and [bx+si],ah
000027A0  2020              and [bx+si],ah
000027A2  2020              and [bx+si],ah
000027A4  2020              and [bx+si],ah
000027A6  2020              and [bx+si],ah
000027A8  2020              and [bx+si],ah
000027AA  2020              and [bx+si],ah
000027AC  49                dec cx
000027AD  6620796F          o32 and [bx+di+0x6f],bh
000027B1  7520              jnz 0x27d3
000027B3  656E              gs outsb
000027B5  6A6F              push byte +0x6f
000027B7  7920              jns 0x27d9
000027B9  7468              jz 0x2823
000027BB  65206761          and [gs:bx+0x61],ah
000027BF  6D                insw
000027C0  652C20            gs sub al,0x20
000027C3  706C              jo 0x2831
000027C5  6561              gs popaw
000027C7  7365              jnc 0x282e
000027C9  207365            and [bp+di+0x65],dh
000027CC  6E                outsb
000027CD  64206120          and [fs:bx+di+0x20],ah
000027D1  636F6E            arpl [bx+0x6e],bp
000027D4  7472              jz 0x2848
000027D6  6962757469        imul sp,[bp+si+0x75],word 0x6974
000027DB  6F                outsw
000027DC  6E                outsb
000027DD  2028              and [bx+si],ch
000027DF  2424              and al,0x24
000027E1  3230              xor dh,[bx+si]
000027E3  2920              sub [bx+si],sp
000027E5  746F              jz 0x2856
000027E7  2020              and [bx+si],ah
000027E9  2020              and [bx+si],ah
000027EB  2020              and [bx+si],ah
000027ED  2020              and [bx+si],ah
000027EF  2020              and [bx+si],ah
000027F1  2020              and [bx+si],ah
000027F3  2020              and [bx+si],ah
000027F5  2020              and [bx+si],ah
000027F7  2020              and [bx+si],ah
000027F9  2020              and [bx+si],ah
000027FB  2020              and [bx+si],ah
000027FD  44                inc sp
000027FE  61                popaw
000027FF  6E                outsb
00002800  204261            and [bp+si+0x61],al
00002803  6B65722C          imul sp,[di+0x72],byte +0x2c
00002807  20504F            and [bx+si+0x4f],dl
0000280A  20424F            and [bp+si+0x4f],al
0000280D  58                pop ax
0000280E  2031              and [bx+di],dh
00002810  3137              xor [bx],si
00002812  342C              xor al,0x2c
00002814  204F72            and [bx+0x72],cl
00002817  656D              gs insw
00002819  205554            and [di+0x54],dl
0000281C  2020              and [bx+si],ah
0000281E  3834              cmp [si],dh
00002820  3035              xor [di],dh
00002822  37                aaa
00002823  2020              and [bx+si],ah
00002825  2020              and [bx+si],ah
00002827  2020              and [bx+si],ah
00002829  2020              and [bx+si],ah
0000282B  2020              and [bx+si],ah
0000282D  2020              and [bx+si],ah
0000282F  2020              and [bx+si],ah
00002831  2020              and [bx+si],ah
00002833  2020              and [bx+si],ah
00002835  2020              and [bx+si],ah
00002837  2020              and [bx+si],ah
00002839  2020              and [bx+si],ah
0000283B  2020              and [bx+si],ah
0000283D  2020              and [bx+si],ah
0000283F  2024              and [si],ah
00002841  0000              add [bx+si],al
00002843  0000              add [bx+si],al
00002845  0000              add [bx+si],al
00002847  0000              add [bx+si],al
00002849  0000              add [bx+si],al
0000284B  0000              add [bx+si],al
0000284D  0000              add [bx+si],al
0000284F  0000              add [bx+si],al
00002851  0000              add [bx+si],al
00002853  0000              add [bx+si],al
00002855  0000              add [bx+si],al
00002857  0000              add [bx+si],al
00002859  0000              add [bx+si],al
0000285B  0000              add [bx+si],al
0000285D  0000              add [bx+si],al
0000285F  0000              add [bx+si],al
00002861  0000              add [bx+si],al
00002863  0000              add [bx+si],al
00002865  0000              add [bx+si],al
00002867  0000              add [bx+si],al
00002869  0000              add [bx+si],al
0000286B  0000              add [bx+si],al
0000286D  0000              add [bx+si],al
0000286F  0000              add [bx+si],al
00002871  0000              add [bx+si],al
00002873  0000              add [bx+si],al
00002875  0000              add [bx+si],al
00002877  0000              add [bx+si],al
00002879  0000              add [bx+si],al
0000287B  0000              add [bx+si],al
0000287D  0000              add [bx+si],al
0000287F  0000              add [bx+si],al
00002881  0000              add [bx+si],al
00002883  0000              add [bx+si],al
00002885  0000              add [bx+si],al
00002887  0000              add [bx+si],al
00002889  0000              add [bx+si],al
0000288B  0000              add [bx+si],al
0000288D  0000              add [bx+si],al
0000288F  0000              add [bx+si],al
00002891  0000              add [bx+si],al
00002893  0000              add [bx+si],al
00002895  0000              add [bx+si],al
00002897  0000              add [bx+si],al
00002899  0000              add [bx+si],al
0000289B  0000              add [bx+si],al
0000289D  0000              add [bx+si],al
0000289F  0000              add [bx+si],al
000028A1  0000              add [bx+si],al
000028A3  0000              add [bx+si],al
000028A5  0000              add [bx+si],al
000028A7  0000              add [bx+si],al
000028A9  24FB              and al,0xfb
000028AB  50                push ax
000028AC  57                push di
000028AD  06                push es
000028AE  1E                push ds
000028AF  B800B0            mov ax,0xb000
000028B2  8EC0              mov es,ax
000028B4  8CC8              mov ax,cs
000028B6  8ED8              mov ds,ax
000028B8  FC                cld
000028B9  E460              in al,0x60
000028BB  50                push ax
000028BC  E461              in al,0x61
000028BE  8AE0              mov ah,al
000028C0  0C80              or al,0x80
000028C2  E661              out 0x61,al
000028C4  86E0              xchg ah,al
000028C6  E661              out 0x61,al
000028C8  58                pop ax
000028C9  3CFF              cmp al,0xff
000028CB  740F              jz 0x28dc
000028CD  32E4              xor ah,ah
000028CF  3C80              cmp al,0x80
000028D1  7213              jc 0x28e6
000028D3  247F              and al,0x7f
000028D5  8BF8              mov di,ax
000028D7  80A5AE06FE        and byte [di+0x6ae],0xfe
000028DC  FA                cli
000028DD  B020              mov al,0x20
000028DF  E620              out 0x20,al
000028E1  1F                pop ds
000028E2  07                pop es
000028E3  5F                pop di
000028E4  58                pop ax
000028E5  CF                iretw
000028E6  8BF8              mov di,ax
000028E8  C685AE0603        mov byte [di+0x6ae],0x3
000028ED  EBED              jmp short 0x28dc
000028EF  004E65            add [bp+0x65],cl
000028F2  7720              ja 0x2914
000028F4  50                push ax
000028F5  61                popaw
000028F6  7573              jnz 0x296b
000028F8  653A20            cmp ah,[gs:bx+si]
000028FB  2020              and [bx+si],ah
000028FD  2020              and [bx+si],ah
000028FF  2020              and [bx+si],ah
00002901  2020              and [bx+si],ah
00002903  2020              and [bx+si],ah
00002905  2020              and [bx+si],ah
00002907  2020              and [bx+si],ah
00002909  2020              and [bx+si],ah
0000290B  2020              and [bx+si],ah
0000290D  2020              and [bx+si],ah
0000290F  2020              and [bx+si],ah
00002911  2020              and [bx+si],ah
00002913  2020              and [bx+si],ah
00002915  2020              and [bx+si],ah
00002917  2020              and [bx+si],ah
00002919  2020              and [bx+si],ah
0000291B  204154            and [bx+di+0x54],al
0000291E  203D              and [di],bh
00002920  20363020          and [0x2030],dh
00002924  2020              and [bx+si],ah
00002926  205043            and [bx+si+0x43],dl
00002929  203D              and [di],bh
0000292B  2032              and [bp+si],dh
0000292D  3020              xor [bx+si],ah
0000292F  2020              and [bx+si],ah
00002931  4A                dec dx
00002932  7220              jc 0x2954
00002934  3D2031            cmp ax,0x3120
00002937  3020              xor [bx+si],ah
00002939  2020              and [bx+si],ah
0000293B  2020              and [bx+si],ah
0000293D  2020              and [bx+si],ah
0000293F  2400              and al,0x0
00002941  203A              and [bp+si],bh
00002943  205965            and [bx+di+0x65],bl
00002946  7320              jnc 0x2968
00002948  2420              and al,0x20
0000294A  3A20              cmp ah,[bx+si]
0000294C  4E                dec si
0000294D  6F                outsw
0000294E  2020              and [bx+si],ah
00002950  2420              and al,0x20
00002952  3A20              cmp ah,[bx+si]
00002954  4E                dec si
00002955  6F                outsw
00002956  6E                outsb
00002957  652020            and [gs:bx+si],ah
0000295A  2020              and [bx+si],ah
0000295C  2020              and [bx+si],ah
0000295E  2024              and [si],ah
00002960  203A              and [bp+si],bh
00002962  2020              and [bx+si],ah
00002964  2020              and [bx+si],ah
00002966  2020              and [bx+si],ah
00002968  2020              and [bx+si],ah
0000296A  2020              and [bx+si],ah
0000296C  2020              and [bx+si],ah
0000296E  2420              and al,0x20
00002970  3A20              cmp ah,[bx+si]
00002972  3120              xor [bx+si],sp
00002974  6F                outsw
00002975  7574              jnz 0x29eb
00002977  206F66            and [bx+0x66],ch
0000297A  2038              and [bx+si],bh
0000297C  2024              and [si],ah
0000297E  203A              and [bp+si],bh
00002980  2031              and [bx+di],dh
00002982  206F75            and [bx+0x75],ch
00002985  7420              jz 0x29a7
00002987  6F                outsw
00002988  662034            o32 and [si],dh
0000298B  2024              and [si],ah
0000298D  203A              and [bp+si],bh
0000298F  2031              and [bx+di],dh
00002991  206F75            and [bx+0x75],ch
00002994  7420              jz 0x29b6
00002996  6F                outsw
00002997  662032            o32 and [bp+si],dh
0000299A  2024              and [si],ah
0000299C  203A              and [bp+si],bh
0000299E  20416C            and [bx+di+0x6c],al
000029A1  6C                insb
000029A2  2020              and [bx+si],ah
000029A4  2020              and [bx+si],ah
000029A6  2020              and [bx+si],ah
000029A8  2020              and [bx+si],ah
000029AA  242A              and al,0x2a
000029AC  2A20              sub ah,[bx+si]
000029AE  43                inc bx
000029AF  7572              jnz 0x2a23
000029B1  7265              jc 0x2a18
000029B3  6E                outsb
000029B4  7420              jz 0x29d6
000029B6  4F                dec di
000029B7  7074              jo 0x2a2d
000029B9  696F6E7320        imul bp,[bx+0x6e],word 0x2073
000029BE  49                dec cx
000029BF  6E                outsb
000029C0  7374              jnc 0x2a36
000029C2  61                popaw
000029C3  6C                insb
000029C4  6C                insb
000029C5  6564202A          and [fs:bp+si],ch
000029C9  2A24              sub ah,[si]
000029CB  50                push ax
000029CC  756C              jnz 0x2a3a
000029CE  6C                insb
000029CF  20426C            and [bp+si+0x6c],al
000029D2  6F                outsw
000029D3  636B73            arpl [bp+di+0x73],bp
000029D6  2024              and [si],ah
000029D8  47                inc di
000029D9  61                popaw
000029DA  6D                insw
000029DB  65205370          and [gs:bp+di+0x70],dl
000029DF  656564205570      and [fs:di+0x70],dl
000029E5  2024              and [si],ah
000029E7  45                inc bp
000029E8  7870              js 0x2a5a
000029EA  6C                insb
000029EB  6F                outsw
000029EC  7369              jnc 0x2a57
000029EE  7665              jna 0x2a55
000029F0  20426C            and [bp+si+0x6c],al
000029F3  6F                outsw
000029F4  636B73            arpl [bp+di+0x73],bp
000029F7  2024              and [si],ah
000029F9  53                push bx
000029FA  7570              jnz 0x2a6c
000029FC  657220            gs jc 0x2a1f
000029FF  42                inc dx
00002A00  6561              gs popaw
00002A02  7374              jnc 0x2a78
00002A04  207261            and [bp+si+0x61],dh
00002A07  7469              jz 0x2a72
00002A09  6F                outsw
00002A0A  2024              and [si],ah
00002A0C  45                inc bp
00002A0D  67677320          jnc 0x2a31
00002A11  2457              and al,0x57
00002A13  696E6E696E        imul bp,[bp+0x6e],word 0x6e69
00002A18  67204C6576        and [dword ebp+0x76],cl
00002A1D  656C              gs insb
00002A1F  2024              and [si],ah
00002A21  48                dec ax
00002A22  61                popaw
00002A23  7463              jz 0x2a88
00002A25  68696E            push word 0x6e69
00002A28  67205370          and [ebx+0x70],dl
00002A2C  6565642020        and [fs:bx+si],ah
00002A31  2020              and [bx+si],ah
00002A33  2020              and [bx+si],ah
00002A35  2020              and [bx+si],ah
00002A37  2020              and [bx+si],ah
00002A39  2020              and [bx+si],ah
00002A3B  3A20              cmp ah,[bx+si]
00002A3D  2020              and [bx+si],ah
00002A3F  2020              and [bx+si],ah
00002A41  2453              and al,0x53
00002A43  7461              jz 0x2aa6
00002A45  7274              jc 0x2abb
00002A47  696E672042        imul bp,[bp+0x67],word 0x4220
00002A4C  6561              gs popaw
00002A4E  7374              jnc 0x2ac4
00002A50  7320              jnc 0x2a72
00002A52  2020              and [bx+si],ah
00002A54  2020              and [bx+si],ah
00002A56  2020              and [bx+si],ah
00002A58  2020              and [bx+si],ah
00002A5A  2020              and [bx+si],ah
00002A5C  3A20              cmp ah,[bx+si]
00002A5E  2020              and [bx+si],ah
00002A60  2020              and [bx+si],ah
00002A62  2420              and al,0x20
00002A64  2020              and [bx+si],ah
00002A66  2020              and [bx+si],ah
00002A68  2020              and [bx+si],ah
00002A6A  2020              and [bx+si],ah
00002A6C  2020              and [bx+si],ah
00002A6E  2020              and [bx+si],ah
00002A70  2020              and [bx+si],ah
00002A72  2020              and [bx+si],ah
00002A74  2020              and [bx+si],ah
00002A76  2020              and [bx+si],ah
00002A78  2020              and [bx+si],ah
00002A7A  2020              and [bx+si],ah
00002A7C  2020              and [bx+si],ah
00002A7E  2020              and [bx+si],ah
00002A80  2020              and [bx+si],ah
00002A82  2020              and [bx+si],ah
00002A84  2020              and [bx+si],ah
00002A86  2020              and [bx+si],ah
00002A88  2020              and [bx+si],ah
00002A8A  2020              and [bx+si],ah
00002A8C  2020              and [bx+si],ah
00002A8E  2020              and [bx+si],ah
00002A90  2020              and [bx+si],ah
00002A92  2020              and [bx+si],ah
00002A94  2020              and [bx+si],ah
00002A96  2020              and [bx+si],ah
00002A98  2020              and [bx+si],ah
00002A9A  2024              and [si],ah
00002A9C  50                push ax
00002A9D  56                push si
00002A9E  57                push di
00002A9F  E8CCE5            call word 0x106e
00002AA2  BFC800            mov di,0xc8
00002AA5  BEAB29            mov si,0x29ab
00002AA8  E8DB05            call word 0x3086
00002AAB  BF8A02            mov di,0x28a
00002AAE  BECB29            mov si,0x29cb
00002AB1  E8D205            call word 0x3086
00002AB4  BF2A03            mov di,0x32a
00002AB7  BED829            mov si,0x29d8
00002ABA  E8C905            call word 0x3086
00002ABD  BFCA03            mov di,0x3ca
00002AC0  BEE729            mov si,0x29e7
00002AC3  E8C005            call word 0x3086
00002AC6  BF6A04            mov di,0x46a
00002AC9  BEF929            mov si,0x29f9
00002ACC  E8B705            call word 0x3086
00002ACF  BF0A05            mov di,0x50a
00002AD2  BE0C2A            mov si,0x2a0c
00002AD5  E8AE05            call word 0x3086
00002AD8  BFAA05            mov di,0x5aa
00002ADB  BE122A            mov si,0x2a12
00002ADE  E8A505            call word 0x3086
00002AE1  BFBC02            mov di,0x2bc
00002AE4  BE4929            mov si,0x2949
00002AE7  803E4B0600        cmp byte [0x64b],0x0
00002AEC  7403              jz 0x2af1
00002AEE  BE4129            mov si,0x2941
00002AF1  E89205            call word 0x3086
00002AF4  BF5C03            mov di,0x35c
00002AF7  BE4929            mov si,0x2949
00002AFA  803E4A0600        cmp byte [0x64a],0x0
00002AFF  7403              jz 0x2b04
00002B01  BE4129            mov si,0x2941
00002B04  E87F05            call word 0x3086
00002B07  BFFC03            mov di,0x3fc
00002B0A  BE4929            mov si,0x2949
00002B0D  803E4C0600        cmp byte [0x64c],0x0
00002B12  7403              jz 0x2b17
00002B14  BE4129            mov si,0x2941
00002B17  E86C05            call word 0x3086
00002B1A  BF9C04            mov di,0x49c
00002B1D  BE5129            mov si,0x2951
00002B20  803E4F0600        cmp byte [0x64f],0x0
00002B25  7421              jz 0x2b48
00002B27  BE6F29            mov si,0x296f
00002B2A  803E4F0601        cmp byte [0x64f],0x1
00002B2F  7417              jz 0x2b48
00002B31  BE7E29            mov si,0x297e
00002B34  803E4F0602        cmp byte [0x64f],0x2
00002B39  740D              jz 0x2b48
00002B3B  BE8D29            mov si,0x298d
00002B3E  803E4F0603        cmp byte [0x64f],0x3
00002B43  7403              jz 0x2b48
00002B45  BE9C29            mov si,0x299c
00002B48  E83B05            call word 0x3086
00002B4B  BF3C05            mov di,0x53c
00002B4E  BE6029            mov si,0x2960
00002B51  E83205            call word 0x3086
00002B54  A05006            mov al,[0x650]
00002B57  32E4              xor ah,ah
00002B59  B507              mov ch,0x7
00002B5B  BF4605            mov di,0x546
00002B5E  E87B04            call word 0x2fdc
00002B61  BFDC05            mov di,0x5dc
00002B64  BE6029            mov si,0x2960
00002B67  E81C05            call word 0x3086
00002B6A  A07506            mov al,[0x675]
00002B6D  32E4              xor ah,ah
00002B6F  B507              mov ch,0x7
00002B71  BFE605            mov di,0x5e6
00002B74  E86504            call word 0x2fdc
00002B77  E80A1E            call word 0x4984
00002B7A  5F                pop di
00002B7B  5E                pop si
00002B7C  58                pop ax
00002B7D  C3                ret
00002B7E  2020              and [bx+si],ah
00002B80  55                push bp
00002B81  7365              jnc 0x2be8
00002B83  7220              jc 0x2ba5
00002B85  44                inc sp
00002B86  6566696E61626C65  imul ebp,[gs:bp+0x61],dword 0x20656c62
         -20
00002B8F  4C                dec sp
00002B90  657665            gs jna 0x2bf8
00002B93  6C                insb
00002B94  203A              and [bp+si],bh
00002B96  203C              and [si],bh
00002B98  45                inc bp
00002B99  53                push bx
00002B9A  43                inc bx
00002B9B  3E203D            and [ds:di],bh
00002B9E  20656E            and [di+0x6e],ah
00002BA1  642020            and [fs:bx+si],ah
00002BA4  2F                das
00002BA5  203C              and [si],bh
00002BA7  52                push dx
00002BA8  657475            gs jz 0x2c20
00002BAB  726E              jc 0x2c1b
00002BAD  3E203D            and [ds:di],bh
00002BB0  206465            and [si+0x65],ah
00002BB3  6661              popad
00002BB5  756C              jnz 0x2c23
00002BB7  7420              jz 0x2bd9
00002BB9  2F                das
00002BBA  206E75            and [bp+0x75],ch
00002BBD  6D                insw
00002BBE  2C59              sub al,0x59
00002BC0  2C4E              sub al,0x4e
00002BC2  203D              and [di],bh
00002BC4  206465            and [si+0x65],ah
00002BC7  66696E6520202400  imul ebp,[bp+0x65],dword 0x242020
00002BCF  005051            add [bx+si+0x51],dl
00002BD2  56                push si
00002BD3  57                push di
00002BD4  C606CE2B00        mov byte [0x2bce],0x0
00002BD9  C606CF2B00        mov byte [0x2bcf],0x0
00002BDE  E82C01            call word 0x2d0d
00002BE1  BE7E2B            mov si,0x2b7e
00002BE4  E8A504            call word 0x308c
00002BE7  A05906            mov al,[0x659]
00002BEA  2C41              sub al,0x41
00002BEC  F626212F          mul byte [0x2f21]
00002BF0  BE4A2E            mov si,0x2e4a
00002BF3  03F0              add si,ax
00002BF5  803ECE2B00        cmp byte [0x2bce],0x0
00002BFA  7518              jnz 0x2c14
00002BFC  C7065A060421      mov word [0x65a],0x2104
00002C02  BFC202            mov di,0x2c2
00002C05  33C0              xor ax,ax
00002C07  56                push si
00002C08  83C603            add si,byte +0x3
00002C0B  E83F01            call word 0x2d4d
00002C0E  5E                pop si
00002C0F  7306              jnc 0x2c17
00002C11  E9AF00            jmp word 0x2cc3
00002C14  E9CC00            jmp word 0x2ce3
00002C17  803ECE2B00        cmp byte [0x2bce],0x0
00002C1C  75F6              jnz 0x2c14
00002C1E  C7065A060521      mov word [0x65a],0x2105
00002C24  BF6203            mov di,0x362
00002C27  33C0              xor ax,ax
00002C29  56                push si
00002C2A  83C604            add si,byte +0x4
00002C2D  E81D01            call word 0x2d4d
00002C30  5E                pop si
00002C31  72C2              jc 0x2bf5
00002C33  803ECE2B00        cmp byte [0x2bce],0x0
00002C38  75DA              jnz 0x2c14
00002C3A  C7065A060621      mov word [0x65a],0x2106
00002C40  BF0204            mov di,0x402
00002C43  33C0              xor ax,ax
00002C45  56                push si
00002C46  83C605            add si,byte +0x5
00002C49  E80101            call word 0x2d4d
00002C4C  5E                pop si
00002C4D  72C8              jc 0x2c17
00002C4F  803ECE2B00        cmp byte [0x2bce],0x0
00002C54  75BE              jnz 0x2c14
00002C56  C7065A060721      mov word [0x65a],0x2107
00002C5C  BFA204            mov di,0x4a2
00002C5F  B80004            mov ax,0x400
00002C62  56                push si
00002C63  83C601            add si,byte +0x1
00002C66  E8E400            call word 0x2d4d
00002C69  5E                pop si
00002C6A  72C7              jc 0x2c33
00002C6C  803ECE2B00        cmp byte [0x2bce],0x0
00002C71  75A1              jnz 0x2c14
00002C73  C7065A060821      mov word [0x65a],0x2108
00002C79  BF4205            mov di,0x542
00002C7C  B80014            mov ax,0x1400
00002C7F  56                push si
00002C80  83C602            add si,byte +0x2
00002C83  E8C700            call word 0x2d4d
00002C86  5E                pop si
00002C87  72C6              jc 0x2c4f
00002C89  803ECE2B00        cmp byte [0x2bce],0x0
00002C8E  7553              jnz 0x2ce3
00002C90  C7065A060921      mov word [0x65a],0x2109
00002C96  BFE205            mov di,0x5e2
00002C99  B80163            mov ax,0x6301
00002C9C  56                push si
00002C9D  83C606            add si,byte +0x6
00002CA0  E8AA00            call word 0x2d4d
00002CA3  5E                pop si
00002CA4  72C6              jc 0x2c6c
00002CA6  803ECE2B00        cmp byte [0x2bce],0x0
00002CAB  7536              jnz 0x2ce3
00002CAD  C7065A060B21      mov word [0x65a],0x210b
00002CB3  BF2207            mov di,0x722
00002CB6  B800C8            mov ax,0xc800
00002CB9  56                push si
00002CBA  83C607            add si,byte +0x7
00002CBD  E88D00            call word 0x2d4d
00002CC0  5E                pop si
00002CC1  72C6              jc 0x2c89
00002CC3  803ECE2B00        cmp byte [0x2bce],0x0
00002CC8  7519              jnz 0x2ce3
00002CCA  C7065A060C21      mov word [0x65a],0x210c
00002CD0  BFC207            mov di,0x7c2
00002CD3  B80114            mov ax,0x1401
00002CD6  56                push si
00002CD7  83C600            add si,byte +0x0
00002CDA  E87000            call word 0x2d4d
00002CDD  5E                pop si
00002CDE  72C6              jc 0x2ca6
00002CE0  E912FF            jmp word 0x2bf5
00002CE3  E86A03            call word 0x3050
00002CE6  E80DE4            call word 0x10f6
00002CE9  E82100            call word 0x2d0d
00002CEC  BEF905            mov si,0x5f9
00002CEF  E89A03            call word 0x308c
00002CF2  E88F1C            call word 0x4984
00002CF5  C7065A061800      mov word [0x65a],0x18
00002CFB  E8CB10            call word 0x3dc9
00002CFE  803ECF2B01        cmp byte [0x2bcf],0x1
00002D03  7503              jnz 0x2d08
00002D05  E87011            call word 0x3e78
00002D08  5F                pop di
00002D09  5E                pop si
00002D0A  59                pop cx
00002D0B  58                pop ax
00002D0C  C3                ret
00002D0D  50                push ax
00002D0E  51                push cx
00002D0F  56                push si
00002D10  57                push di
00002D11  E888FD            call word 0x2a9c
00002D14  BFEA06            mov di,0x6ea
00002D17  BE212A            mov si,0x2a21
00002D1A  E86903            call word 0x3086
00002D1D  A05706            mov al,[0x657]
00002D20  32E4              xor ah,ah
00002D22  B507              mov ch,0x7
00002D24  BF2607            mov di,0x726
00002D27  E8B202            call word 0x2fdc
00002D2A  BF8A07            mov di,0x78a
00002D2D  BE422A            mov si,0x2a42
00002D30  E85303            call word 0x3086
00002D33  A0A806            mov al,[0x6a8]
00002D36  8A265006          mov ah,[0x650]
00002D3A  2AC4              sub al,ah
00002D3C  32E4              xor ah,ah
00002D3E  32E4              xor ah,ah
00002D40  B507              mov ch,0x7
00002D42  BFC607            mov di,0x7c6
00002D45  E89402            call word 0x2fdc
00002D48  5F                pop di
00002D49  5E                pop si
00002D4A  59                pop cx
00002D4B  58                pop ax
00002D4C  C3                ret
00002D4D  50                push ax
00002D4E  53                push bx
00002D4F  56                push si
00002D50  57                push di
00002D51  E87510            call word 0x3dc9
00002D54  8BD8              mov bx,ax
00002D56  83FB00            cmp bx,byte +0x0
00002D59  7406              jz 0x2d61
00002D5B  E85100            call word 0x2daf
00002D5E  EB29              jmp short 0x2d89
00002D60  90                nop
00002D61  E87506            call word 0x33d9
00002D64  3CFF              cmp al,0xff
00002D66  74F9              jz 0x2d61
00002D68  3C59              cmp al,0x59
00002D6A  7407              jz 0x2d73
00002D6C  3C4E              cmp al,0x4e
00002D6E  740E              jz 0x2d7e
00002D70  EB17              jmp short 0x2d89
00002D72  90                nop
00002D73  C60401            mov byte [si],0x1
00002D76  C606CF2B01        mov byte [0x2bcf],0x1
00002D7B  EB24              jmp short 0x2da1
00002D7D  90                nop
00002D7E  C60400            mov byte [si],0x0
00002D81  C606CF2B01        mov byte [0x2bcf],0x1
00002D86  EB19              jmp short 0x2da1
00002D88  90                nop
00002D89  3CB0              cmp al,0xb0
00002D8B  7508              jnz 0x2d95
00002D8D  C606CE2B01        mov byte [0x2bce],0x1
00002D92  EB0D              jmp short 0x2da1
00002D94  90                nop
00002D95  3CB3              cmp al,0xb3
00002D97  7408              jz 0x2da1
00002D99  3CCE              cmp al,0xce
00002D9B  7404              jz 0x2da1
00002D9D  3CC6              cmp al,0xc6
00002D9F  740B              jz 0x2dac
00002DA1  F8                clc
00002DA2  5F                pop di
00002DA3  5E                pop si
00002DA4  5B                pop bx
00002DA5  58                pop ax
00002DA6  9C                pushfw
00002DA7  E863FF            call word 0x2d0d
00002DAA  9D                popfw
00002DAB  C3                ret
00002DAC  F9                stc
00002DAD  EBF3              jmp short 0x2da2
00002DAF  53                push bx
00002DB0  51                push cx
00002DB1  56                push si
00002DB2  57                push di
00002DB3  50                push ax
00002DB4  83C702            add di,byte +0x2
00002DB7  81065A060001      add word [0x65a],0x100
00002DBD  E80910            call word 0x3dc9
00002DC0  8BD8              mov bx,ax
00002DC2  EB11              jmp short 0x2dd5
00002DC4  90                nop
00002DC5  812E5A060001      sub word [0x65a],0x100
00002DCB  E8FB0F            call word 0x3dc9
00002DCE  83EF02            sub di,byte +0x2
00002DD1  26C60520          mov byte [es:di],0x20
00002DD5  58                pop ax
00002DD6  E80006            call word 0x33d9
00002DD9  50                push ax
00002DDA  3CFF              cmp al,0xff
00002DDC  74F7              jz 0x2dd5
00002DDE  3CB1              cmp al,0xb1
00002DE0  74F3              jz 0x2dd5
00002DE2  3C30              cmp al,0x30
00002DE4  725D              jc 0x2e43
00002DE6  3C39              cmp al,0x39
00002DE8  7759              ja 0x2e43
00002DEA  268805            mov [es:di],al
00002DED  83C702            add di,byte +0x2
00002DF0  26C60520          mov byte [es:di],0x20
00002DF4  81065A060001      add word [0x65a],0x100
00002DFA  E8CC0F            call word 0x3dc9
00002DFD  8AE8              mov ch,al
00002DFF  80FF0A            cmp bh,0xa
00002E02  722C              jc 0x2e30
00002E04  58                pop ax
00002E05  E8D105            call word 0x33d9
00002E08  50                push ax
00002E09  3CFF              cmp al,0xff
00002E0B  74F7              jz 0x2e04
00002E0D  3CB1              cmp al,0xb1
00002E0F  74B4              jz 0x2dc5
00002E11  3C30              cmp al,0x30
00002E13  721B              jc 0x2e30
00002E15  3C39              cmp al,0x39
00002E17  7717              ja 0x2e30
00002E19  268805            mov [es:di],al
00002E1C  8AC8              mov cl,al
00002E1E  8AC5              mov al,ch
00002E20  2C30              sub al,0x30
00002E22  F626492E          mul byte [0x2e49]
00002E26  32ED              xor ch,ch
00002E28  80E930            sub cl,0x30
00002E2B  03C1              add ax,cx
00002E2D  EB05              jmp short 0x2e34
00002E2F  90                nop
00002E30  8AC5              mov al,ch
00002E32  2C30              sub al,0x30
00002E34  3AC3              cmp al,bl
00002E36  720B              jc 0x2e43
00002E38  3AC7              cmp al,bh
00002E3A  7707              ja 0x2e43
00002E3C  8804              mov [si],al
00002E3E  C606CF2B01        mov byte [0x2bcf],0x1
00002E43  58                pop ax
00002E44  5F                pop di
00002E45  5E                pop si
00002E46  59                pop cx
00002E47  5B                pop bx
00002E48  C3                ret
00002E49  0A01              or al,[bx+di]
00002E4B  0000              add [bx+si],al
00002E4D  0100              add [bx+si],ax
00002E4F  0002              add [bp+si],al
00002E51  0002              add [bp+si],al
00002E53  0000              add [bx+si],al
00002E55  0100              add [bx+si],ax
00002E57  0002              add [bp+si],al
00002E59  0003              add [bp+di],al
00002E5B  0000              add [bx+si],al
00002E5D  0100              add [bx+si],ax
00002E5F  0002              add [bp+si],al
00002E61  0003              add [bp+di],al
00002E63  0000              add [bx+si],al
00002E65  0100              add [bx+si],ax
00002E67  0003              add [bp+di],al
00002E69  0004              add [si],al
00002E6B  0000              add [bx+si],al
00002E6D  0100              add [bx+si],ax
00002E6F  0003              add [bp+di],al
00002E71  0004              add [si],al
00002E73  0000              add [bx+si],al
00002E75  0101              add [bx+di],ax
00002E77  0003              add [bp+di],al
00002E79  0004              add [si],al
00002E7B  0001              add [bx+di],al
00002E7D  0101              add [bx+di],ax
00002E7F  0003              add [bp+di],al
00002E81  3C04              cmp al,0x4
00002E83  0100              add [bx+si],ax
00002E85  0101              add [bx+di],ax
00002E87  00060004          add [0x400],al
00002E8B  0101              add [bx+di],ax
00002E8D  0101              add [bx+di],ax
00002E8F  00063C04          add [0x43c],al
00002E93  0102              add [bp+si],ax
00002E95  0001              add [bx+di],al
00002E97  00063C04          add [0x43c],al
00002E9B  0103              add [bp+di],ax
00002E9D  0001              add [bx+di],al
00002E9F  00063C09          add [0x93c],al
00002EA3  000A              add [bp+si],cl
00002EA5  0000              add [bx+si],al
00002EA7  000A              add [bp+si],cl
00002EA9  50                push ax
00002EAA  0201              add al,[bx+di]
00002EAC  0100              add [bx+si],ax
00002EAE  0000              add [bx+si],al
00002EB0  026301            add ah,[bp+di+0x1]
00002EB3  010F              add [bx],cx
00002EB5  0100              add [bx+si],ax
00002EB7  01060702          add [0x207],ax
00002EBB  0400              add al,0x0
00002EBD  0101              add [bx+di],ax
00002EBF  01060004          add [0x400],ax
00002EC3  0105              add [di],ax
00002EC5  0001              add [bx+di],al
00002EC7  0109              add [bx+di],cx
00002EC9  3204              xor al,[si]
00002ECB  01060001          add [0x100],ax
00002ECF  0109              add [bx+di],cx
00002ED1  3204              xor al,[si]
00002ED3  0207              add al,[bx]
00002ED5  0001              add [bx+di],al
00002ED7  0109              add [bx+di],cx
00002ED9  3204              xor al,[si]
00002EDB  0208              add cl,[bx+si]
00002EDD  0001              add [bx+di],al
00002EDF  0109              add [bx+di],cx
00002EE1  3204              xor al,[si]
00002EE3  0108              add [bx+si],cx
00002EE5  0001              add [bx+di],al
00002EE7  010F              add [bx],cx
00002EE9  2D0501            sub ax,0x105
00002EEC  0900              or [bx+si],ax
00002EEE  0101              add [bx+di],ax
00002EF0  0F2805            movaps xmm0,oword [di]
00002EF3  020A              add cl,[bp+si]
00002EF5  0001              add [bx+di],al
00002EF7  010F              add [bx],cx
00002EF9  2306020A          and ax,[0xa02]
00002EFD  0001              add [bx+di],al
00002EFF  010F              add [bx],cx
00002F01  1E                push ds
00002F02  06                push es
00002F03  020A              add cl,[bp+si]
00002F05  0001              add [bx+di],al
00002F07  0114              add [si],dx
00002F09  1406              adc al,0x6
00002F0B  030A              add cx,[bp+si]
00002F0D  0001              add [bx+di],al
00002F0F  0114              add [si],dx
00002F11  0F0204            lar ax,[si]
00002F14  0A00              or al,[bx+si]
00002F16  0101              add [bx+di],ax
00002F18  140F              adc al,0xf
00002F1A  0000              add [bx+si],al
00002F1C  0000              add [bx+si],al
00002F1E  0000              add [bx+si],al
00002F20  0008              add [bx+si],cl
00002F22  50                push ax
00002F23  56                push si
00002F24  A05906            mov al,[0x659]
00002F27  2C41              sub al,0x41
00002F29  F626212F          mul byte [0x2f21]
00002F2D  BE4A2E            mov si,0x2e4a
00002F30  03F0              add si,ax
00002F32  8A04              mov al,[si]
00002F34  A2A806            mov [0x6a8],al
00002F37  8A4401            mov al,[si+0x1]
00002F3A  A24F06            mov [0x64f],al
00002F3D  8A4402            mov al,[si+0x2]
00002F40  A25006            mov [0x650],al
00002F43  8A4403            mov al,[si+0x3]
00002F46  A24B06            mov [0x64b],al
00002F49  8A4404            mov al,[si+0x4]
00002F4C  A24A06            mov [0x64a],al
00002F4F  8A4405            mov al,[si+0x5]
00002F52  A24C06            mov [0x64c],al
00002F55  8A4406            mov al,[si+0x6]
00002F58  A27506            mov [0x675],al
00002F5B  8A4407            mov al,[si+0x7]
00002F5E  A25706            mov [0x657],al
00002F61  C6064D0601        mov byte [0x64d],0x1
00002F66  C6064E0601        mov byte [0x64e],0x1
00002F6B  C606510600        mov byte [0x651],0x0
00002F70  803E59064C        cmp byte [0x659],0x4c
00002F75  7205              jc 0x2f7c
00002F77  C606510601        mov byte [0x651],0x1
00002F7C  5E                pop si
00002F7D  58                pop ax
00002F7E  C3                ret
00002F7F  3200              xor al,[bx+si]
00002F81  0200              add al,[bx+si]
00002F83  37                aaa
00002F84  0002              add [bp+si],al
00002F86  0000              add [bx+si],al
00002F88  0000              add [bx+si],al
00002F8A  0056BE            add [bp-0x42],dl
00002F8D  7F2F              jg 0x2fbe
00002F8F  E80200            call word 0x2f94
00002F92  5E                pop si
00002F93  C3                ret
00002F94  56                push si
00002F95  50                push ax
00002F96  53                push bx
00002F97  51                push cx
00002F98  52                push dx
00002F99  E85E01            call word 0x30fa
00002F9C  8B14              mov dx,[si]
00002F9E  8B5C02            mov bx,[si+0x2]
00002FA1  83C604            add si,byte +0x4
00002FA4  83FA00            cmp dx,byte +0x0
00002FA7  7505              jnz 0x2fae
00002FA9  83FB00            cmp bx,byte +0x0
00002FAC  7405              jz 0x2fb3
00002FAE  E80800            call word 0x2fb9
00002FB1  EBE6              jmp short 0x2f99
00002FB3  5A                pop dx
00002FB4  59                pop cx
00002FB5  5B                pop bx
00002FB6  58                pop ax
00002FB7  5E                pop si
00002FB8  C3                ret
00002FB9  803E6F0600        cmp byte [0x66f],0x0
00002FBE  751B              jnz 0x2fdb
00002FC0  E461              in al,0x61
00002FC2  8AE0              mov ah,al
00002FC4  24FC              and al,0xfc
00002FC6  E661              out 0x61,al
00002FC8  8BCA              mov cx,dx
00002FCA  E2FE              loop 0x2fca
00002FCC  0C02              or al,0x2
00002FCE  E661              out 0x61,al
00002FD0  8BCA              mov cx,dx
00002FD2  E2FE              loop 0x2fd2
00002FD4  4B                dec bx
00002FD5  75ED              jnz 0x2fc4
00002FD7  8AC4              mov al,ah
00002FD9  E661              out 0x61,al
00002FDB  C3                ret
00002FDC  50                push ax
00002FDD  53                push bx
00002FDE  52                push dx
00002FDF  57                push di
00002FE0  BB0A00            mov bx,0xa
00002FE3  B130              mov cl,0x30
00002FE5  BA0000            mov dx,0x0
00002FE8  F7F3              div bx
00002FEA  03D1              add dx,cx
00002FEC  50                push ax
00002FED  53                push bx
00002FEE  52                push dx
00002FEF  8BDA              mov bx,dx
00002FF1  803E600601        cmp byte [0x660],0x1
00002FF6  740E              jz 0x3006
00002FF8  BADA03            mov dx,0x3da
00002FFB  EC                in al,dx
00002FFC  A801              test al,0x1
00002FFE  75FB              jnz 0x2ffb
00003000  FA                cli
00003001  EC                in al,dx
00003002  A801              test al,0x1
00003004  74FB              jz 0x3001
00003006  26891D            mov [es:di],bx
00003009  FB                sti
0000300A  5A                pop dx
0000300B  5B                pop bx
0000300C  58                pop ax
0000300D  83EF02            sub di,byte +0x2
00003010  3D0000            cmp ax,0x0
00003013  75D0              jnz 0x2fe5
00003015  BA2002            mov dx,0x220
00003018  50                push ax
00003019  53                push bx
0000301A  52                push dx
0000301B  8BDA              mov bx,dx
0000301D  803E600601        cmp byte [0x660],0x1
00003022  740E              jz 0x3032
00003024  BADA03            mov dx,0x3da
00003027  EC                in al,dx
00003028  A801              test al,0x1
0000302A  75FB              jnz 0x3027
0000302C  FA                cli
0000302D  EC                in al,dx
0000302E  A801              test al,0x1
00003030  74FB              jz 0x302d
00003032  26891D            mov [es:di],bx
00003035  FB                sti
00003036  5A                pop dx
00003037  5B                pop bx
00003038  58                pop ax
00003039  5F                pop di
0000303A  5A                pop dx
0000303B  5B                pop bx
0000303C  58                pop ax
0000303D  C3                ret
0000303E  53                push bx
0000303F  48                dec ax
00003040  BB1400            mov bx,0x14
00003043  4B                dec bx
00003044  83FB00            cmp bx,byte +0x0
00003047  75FA              jnz 0x3043
00003049  3D0000            cmp ax,0x0
0000304C  75F1              jnz 0x303f
0000304E  5B                pop bx
0000304F  C3                ret
00003050  50                push ax
00003051  51                push cx
00003052  57                push di
00003053  B402              mov ah,0x2
00003055  B020              mov al,0x20
00003057  B9D007            mov cx,0x7d0
0000305A  33FF              xor di,di
0000305C  50                push ax
0000305D  53                push bx
0000305E  52                push dx
0000305F  8BD8              mov bx,ax
00003061  803E600601        cmp byte [0x660],0x1
00003066  740E              jz 0x3076
00003068  BADA03            mov dx,0x3da
0000306B  EC                in al,dx
0000306C  A801              test al,0x1
0000306E  75FB              jnz 0x306b
00003070  FA                cli
00003071  EC                in al,dx
00003072  A801              test al,0x1
00003074  74FB              jz 0x3071
00003076  26891D            mov [es:di],bx
00003079  FB                sti
0000307A  5A                pop dx
0000307B  5B                pop bx
0000307C  58                pop ax
0000307D  83C702            add di,byte +0x2
00003080  E2DA              loop 0x305c
00003082  5F                pop di
00003083  59                pop cx
00003084  58                pop ax
00003085  C3                ret
00003086  50                push ax
00003087  57                push di
00003088  56                push si
00003089  EB07              jmp short 0x3092
0000308B  90                nop
0000308C  50                push ax
0000308D  57                push di
0000308E  56                push si
0000308F  BF000F            mov di,0xf00
00003092  8A04              mov al,[si]
00003094  3C24              cmp al,0x24
00003096  7429              jz 0x30c1
00003098  B407              mov ah,0x7
0000309A  50                push ax
0000309B  53                push bx
0000309C  52                push dx
0000309D  8BD8              mov bx,ax
0000309F  803E600601        cmp byte [0x660],0x1
000030A4  740E              jz 0x30b4
000030A6  BADA03            mov dx,0x3da
000030A9  EC                in al,dx
000030AA  A801              test al,0x1
000030AC  75FB              jnz 0x30a9
000030AE  FA                cli
000030AF  EC                in al,dx
000030B0  A801              test al,0x1
000030B2  74FB              jz 0x30af
000030B4  26891D            mov [es:di],bx
000030B7  FB                sti
000030B8  5A                pop dx
000030B9  5B                pop bx
000030BA  58                pop ax
000030BB  83C702            add di,byte +0x2
000030BE  46                inc si
000030BF  EBD1              jmp short 0x3092
000030C1  46                inc si
000030C2  803C24            cmp byte [si],0x24
000030C5  74D1              jz 0x3098
000030C7  E83000            call word 0x30fa
000030CA  5E                pop si
000030CB  5F                pop di
000030CC  58                pop ax
000030CD  C3                ret
000030CE  50                push ax
000030CF  53                push bx
000030D0  51                push cx
000030D1  A16D06            mov ax,[0x66d]
000030D4  8BD8              mov bx,ax
000030D6  B103              mov cl,0x3
000030D8  D3E0              shl ax,cl
000030DA  03C3              add ax,bx
000030DC  050700            add ax,0x7
000030DF  A36D06            mov [0x66d],ax
000030E2  59                pop cx
000030E3  5B                pop bx
000030E4  58                pop ax
000030E5  C3                ret
000030E6  53                push bx
000030E7  E8E4FF            call word 0x30ce
000030EA  8B1E6D06          mov bx,[0x66d]
000030EE  8AC7              mov al,bh
000030F0  3AC4              cmp al,ah
000030F2  7604              jna 0x30f8
000030F4  2AC4              sub al,ah
000030F6  EBF8              jmp short 0x30f0
000030F8  5B                pop bx
000030F9  C3                ret
000030FA  50                push ax
000030FB  57                push di
000030FC  C606650600        mov byte [0x665],0x0
00003101  BF4400            mov di,0x44
00003104  8A85AE06          mov al,[di+0x6ae]
00003108  80A5AE06FD        and byte [di+0x6ae],0xfd
0000310D  A802              test al,0x2
0000310F  7405              jz 0x3116
00003111  C606700601        mov byte [0x670],0x1
00003116  BF1D00            mov di,0x1d
00003119  8A85AE06          mov al,[di+0x6ae]
0000311D  A801              test al,0x1
0000311F  7427              jz 0x3148
00003121  BF4600            mov di,0x46
00003124  8A85AE06          mov al,[di+0x6ae]
00003128  A801              test al,0x1
0000312A  7403              jz 0x312f
0000312C  E913D7            jmp word 0x842
0000312F  BF3800            mov di,0x38
00003132  8A85AE06          mov al,[di+0x6ae]
00003136  A801              test al,0x1
00003138  7424              jz 0x315e
0000313A  BF5300            mov di,0x53
0000313D  8A85AE06          mov al,[di+0x6ae]
00003141  A801              test al,0x1
00003143  7419              jz 0x315e
00003145  E9FAD6            jmp word 0x842
00003148  BF4600            mov di,0x46
0000314B  8A85AE06          mov al,[di+0x6ae]
0000314F  80A5AE06FD        and byte [di+0x6ae],0xfd
00003154  2402              and al,0x2
00003156  3C00              cmp al,0x0
00003158  7404              jz 0x315e
0000315A  FE066506          inc byte [0x665]
0000315E  BF4300            mov di,0x43
00003161  8A85AE06          mov al,[di+0x6ae]
00003165  80A5AE06FD        and byte [di+0x6ae],0xfd
0000316A  2402              and al,0x2
0000316C  3C00              cmp al,0x0
0000316E  7410              jz 0x3180
00003170  FE066F06          inc byte [0x66f]
00003174  803E6F0602        cmp byte [0x66f],0x2
00003179  7205              jc 0x3180
0000317B  C6066F0600        mov byte [0x66f],0x0
00003180  A0F006            mov al,[0x6f0]
00003183  3C00              cmp al,0x0
00003185  7418              jz 0x319f
00003187  C606F00600        mov byte [0x6f0],0x0
0000318C  E81D00            call word 0x31ac
0000318F  FE065F06          inc byte [0x65f]
00003193  803E5F0602        cmp byte [0x65f],0x2
00003198  7205              jc 0x319f
0000319A  C6065F0600        mov byte [0x65f],0x0
0000319F  803E650601        cmp byte [0x665],0x1
000031A4  7503              jnz 0x31a9
000031A6  E958FF            jmp word 0x3101
000031A9  5F                pop di
000031AA  58                pop ax
000031AB  C3                ret
000031AC  50                push ax
000031AD  57                push di
000031AE  33FF              xor di,di
000031B0  47                inc di
000031B1  83FF54            cmp di,byte +0x54
000031B4  7407              jz 0x31bd
000031B6  80A5AE06FE        and byte [di+0x6ae],0xfe
000031BB  EBF3              jmp short 0x31b0
000031BD  5F                pop di
000031BE  58                pop ax
000031BF  C3                ret
000031C0  50                push ax
000031C1  57                push di
000031C2  56                push si
000031C3  C606700600        mov byte [0x670],0x0
000031C8  833E550600        cmp word [0x655],byte +0x0
000031CD  7527              jnz 0x31f6
000031CF  06                push es
000031D0  B800F0            mov ax,0xf000
000031D3  8EC0              mov es,ax
000031D5  BEFEFF            mov si,0xfffe
000031D8  268A04            mov al,[es:si]
000031DB  07                pop es
000031DC  C60656060A        mov byte [0x656],0xa
000031E1  3CFD              cmp al,0xfd
000031E3  740E              jz 0x31f3
000031E5  C60656063C        mov byte [0x656],0x3c
000031EA  3CFC              cmp al,0xfc
000031EC  7405              jz 0x31f3
000031EE  C606560614        mov byte [0x656],0x14
000031F3  E90A01            jmp word 0x3300
000031F6  E88B17            call word 0x4984
000031F9  BEF905            mov si,0x5f9
000031FC  E88DFE            call word 0x308c
000031FF  C7065A061800      mov word [0x65a],0x18
00003205  E8C10B            call word 0x3dc9
00003208  E8EFFE            call word 0x30fa
0000320B  E88A01            call word 0x3398
0000320E  B50A              mov ch,0xa
00003210  BF3900            mov di,0x39
00003213  E859D6            call word 0x86f
00003216  FF066D06          inc word [0x66d]
0000321A  E8BC01            call word 0x33d9
0000321D  3CFF              cmp al,0xff
0000321F  7503              jnz 0x3224
00003221  E94C01            jmp word 0x3370
00003224  3C31              cmp al,0x31
00003226  7517              jnz 0x323f
00003228  C606520601        mov byte [0x652],0x1
0000322D  E820FE            call word 0x3050
00003230  E8C3DE            call word 0x10f6
00003233  BEF905            mov si,0x5f9
00003236  E853FE            call word 0x308c
00003239  E84817            call word 0x4984
0000323C  E93101            jmp word 0x3370
0000323F  3C32              cmp al,0x32
00003241  7507              jnz 0x324a
00003243  C606520602        mov byte [0x652],0x2
00003248  EBE3              jmp short 0x322d
0000324A  3C41              cmp al,0x41
0000324C  7235              jc 0x3283
0000324E  3C5A              cmp al,0x5a
00003250  7734              ja 0x3286
00003252  A25906            mov [0x659],al
00003255  A0AB29            mov al,[0x29ab]
00003258  BEC800            mov si,0xc8
0000325B  263804            cmp [es:si],al
0000325E  740C              jz 0x326c
00003260  E8EDFD            call word 0x3050
00003263  E890DE            call word 0x10f6
00003266  BEF905            mov si,0x5f9
00003269  E820FE            call word 0x308c
0000326C  E81517            call word 0x4984
0000326F  E89BFA            call word 0x2d0d
00003272  803E59064C        cmp byte [0x659],0x4c
00003277  720A              jc 0x3283
00003279  803E590650        cmp byte [0x659],0x50
0000327E  7303              jnc 0x3283
00003280  E84DF9            call word 0x2bd0
00003283  E9EA00            jmp word 0x3370
00003286  3CB9              cmp al,0xb9
00003288  753F              jnz 0x32c9
0000328A  BF1D00            mov di,0x1d
0000328D  F685AE0601        test byte [di+0x6ae],0x1
00003292  7406              jz 0x329a
00003294  E8D8D5            call word 0x86f
00003297  EB30              jmp short 0x32c9
00003299  90                nop
0000329A  BF5300            mov di,0x53
0000329D  8A85AE06          mov al,[di+0x6ae]
000032A1  A801              test al,0x1
000032A3  740F              jz 0x32b4
000032A5  BFA734            mov di,0x34a7
000032A8  B90500            mov cx,0x5
000032AB  B030              mov al,0x30
000032AD  88852A00          mov [di+0x2a],al
000032B1  47                inc di
000032B2  E2F9              loop 0x32ad
000032B4  E899FD            call word 0x3050
000032B7  E83CDE            call word 0x10f6
000032BA  BEF905            mov si,0x5f9
000032BD  E8CCFD            call word 0x308c
000032C0  E8C116            call word 0x4984
000032C3  E8FC07            call word 0x3ac2
000032C6  E9A700            jmp word 0x3370
000032C9  3CBA              cmp al,0xba
000032CB  7403              jz 0x32d0
000032CD  E9A000            jmp word 0x3370
000032D0  BEF028            mov si,0x28f0
000032D3  E8B6FD            call word 0x308c
000032D6  BE5606            mov si,0x656
000032D9  BF180F            mov di,0xf18
000032DC  B507              mov ch,0x7
000032DE  A15506            mov ax,[0x655]
000032E1  D1E0              shl ax,1
000032E3  D1E0              shl ax,1
000032E5  D1E0              shl ax,1
000032E7  8AC4              mov al,ah
000032E9  32E4              xor ah,ah
000032EB  A25606            mov [0x656],al
000032EE  E8EBFC            call word 0x2fdc
000032F1  83EF04            sub di,byte +0x4
000032F4  C7065A06180A      mov word [0x65a],0xa18
000032FA  B800FF            mov ax,0xff00
000032FD  E8AFFA            call word 0x2daf
00003300  C606550600        mov byte [0x655],0x0
00003305  D02E5606          shr byte [0x656],1
00003309  7305              jnc 0x3310
0000330B  800E550680        or byte [0x655],0x80
00003310  D02E5506          shr byte [0x655],1
00003314  D02E5606          shr byte [0x656],1
00003318  7305              jnc 0x331f
0000331A  800E550680        or byte [0x655],0x80
0000331F  D02E5506          shr byte [0x655],1
00003323  D02E5606          shr byte [0x656],1
00003327  7305              jnc 0x332e
00003329  800E550680        or byte [0x655],0x80
0000332E  A05506            mov al,[0x655]
00003331  D0E8              shr al,1
00003333  803E560600        cmp byte [0x656],0x0
00003338  7402              jz 0x333c
0000333A  B0FF              mov al,0xff
0000333C  A25406            mov [0x654],al
0000333F  D0E8              shr al,1
00003341  D0E8              shr al,1
00003343  D0E8              shr al,1
00003345  A25306            mov [0x653],al
00003348  833E550600        cmp word [0x655],byte +0x0
0000334D  7506              jnz 0x3355
0000334F  C70655060200      mov word [0x655],0x2
00003355  803E530600        cmp byte [0x653],0x0
0000335A  7505              jnz 0x3361
0000335C  C606530604        mov byte [0x653],0x4
00003361  803E540600        cmp byte [0x654],0x0
00003366  7505              jnz 0x336d
00003368  C606540603        mov byte [0x654],0x3
0000336D  E986FE            jmp word 0x31f6
00003370  E887FD            call word 0x30fa
00003373  803E700600        cmp byte [0x670],0x0
00003378  750E              jnz 0x3388
0000337A  BF3900            mov di,0x39
0000337D  8A85AE06          mov al,[di+0x6ae]
00003381  A801              test al,0x1
00003383  7503              jnz 0x3388
00003385  E98BFE            jmp word 0x3213
00003388  E8C5FC            call word 0x3050
0000338B  E868DD            call word 0x10f6
0000338E  E8D1DE            call word 0x1262
00003391  E8E4DE            call word 0x1278
00003394  5E                pop si
00003395  5F                pop di
00003396  58                pop ax
00003397  C3                ret
00003398  50                push ax
00003399  57                push di
0000339A  33FF              xor di,di
0000339C  47                inc di
0000339D  83FF44            cmp di,byte +0x44
000033A0  74FA              jz 0x339c
000033A2  83FF54            cmp di,byte +0x54
000033A5  7407              jz 0x33ae
000033A7  80A5AE06FD        and byte [di+0x6ae],0xfd
000033AC  EBEE              jmp short 0x339c
000033AE  5F                pop di
000033AF  58                pop ax
000033B0  C3                ret
000033B1  E82500            call word 0x33d9
000033B4  3C41              cmp al,0x41
000033B6  7220              jc 0x33d8
000033B8  3C5A              cmp al,0x5a
000033BA  771C              ja 0x33d8
000033BC  57                push di
000033BD  BF2A00            mov di,0x2a
000033C0  8AA5AE06          mov ah,[di+0x6ae]
000033C4  F6C401            test ah,0x1
000033C7  750E              jnz 0x33d7
000033C9  BF3600            mov di,0x36
000033CC  8AA5AE06          mov ah,[di+0x6ae]
000033D0  F6C401            test ah,0x1
000033D3  7502              jnz 0x33d7
000033D5  0C20              or al,0x20
000033D7  5F                pop di
000033D8  C3                ret
000033D9  57                push di
000033DA  E81DFD            call word 0x30fa
000033DD  33FF              xor di,di
000033DF  47                inc di
000033E0  83FF54            cmp di,byte +0x54
000033E3  7419              jz 0x33fe
000033E5  8A85AE06          mov al,[di+0x6ae]
000033E9  2402              and al,0x2
000033EB  3C00              cmp al,0x0
000033ED  74F0              jz 0x33df
000033EF  80A5AE06FD        and byte [di+0x6ae],0xfd
000033F4  83FF44            cmp di,byte +0x44
000033F7  750A              jnz 0x3403
000033F9  C606700601        mov byte [0x670],0x1
000033FE  B0FF              mov al,0xff
00003400  EB05              jmp short 0x3407
00003402  90                nop
00003403  8A850934          mov al,[di+0x3409]
00003407  5F                pop di
00003408  C3                ret
00003409  FFB03132          push word [bx+si+0x3231]
0000340D  3334              xor si,[si]
0000340F  353637            xor ax,0x3736
00003412  3839              cmp [bx+di],bh
00003414  302D              xor [di],ch
00003416  3DB1B2            cmp ax,0xb2b1
00003419  51                push cx
0000341A  57                push di
0000341B  45                inc bp
0000341C  52                push dx
0000341D  54                push sp
0000341E  59                pop cx
0000341F  55                push bp
00003420  49                dec cx
00003421  4F                dec di
00003422  50                push ax
00003423  5B                pop bx
00003424  5D                pop bp
00003425  B3B4              mov bl,0xb4
00003427  41                inc cx
00003428  53                push bx
00003429  44                inc sp
0000342A  46                inc si
0000342B  47                inc di
0000342C  48                dec ax
0000342D  4A                dec dx
0000342E  4B                dec bx
0000342F  4C                dec sp
00003430  3B27              cmp sp,[bx]
00003432  60                pushaw
00003433  B55C              mov ch,0x5c
00003435  5A                pop dx
00003436  58                pop ax
00003437  43                inc bx
00003438  56                push si
00003439  42                inc dx
0000343A  4E                dec si
0000343B  4D                dec bp
0000343C  2C2E              sub al,0x2e
0000343E  2F                das
0000343F  B5B6              mov ch,0xb6
00003441  B720              mov bh,0x20
00003443  B8B9BA            mov ax,0xbab9
00003446  BBBCBD            mov bx,0xbdbc
00003449  BEBFC0            mov si,0xc0bf
0000344C  C1C2C3            rol dx,byte 0xc3
0000344F  C4                db 0xc4
00003450  C5                db 0xc5
00003451  C6C7C8            mov bh,0xc8
00003454  C9                leave
00003455  CACBCC            retf 0xcccb
00003458  CDCE              int 0xce
0000345A  CF                iretw
0000345B  D0D1              rcl cl,1
0000345D  FF                db 0xff
0000345E  FF                db 0xff
0000345F  FF20              jmp word [bx+si]
00003461  2020              and [bx+si],ah
00003463  4E                dec si
00003464  61                popaw
00003465  6D                insw
00003466  652020            and [gs:bx+si],ah
00003469  2020              and [bx+si],ah
0000346B  2020              and [bx+si],ah
0000346D  2020              and [bx+si],ah
0000346F  2020              and [bx+si],ah
00003471  2020              and [bx+si],ah
00003473  2020              and [bx+si],ah
00003475  2020              and [bx+si],ah
00003477  2020              and [bx+si],ah
00003479  2020              and [bx+si],ah
0000347B  204461            and [si+0x61],al
0000347E  7465              jz 0x34e5
00003480  2020              and [bx+si],ah
00003482  54                push sp
00003483  696D652020        imul bp,[di+0x65],word 0x2020
00003488  2020              and [bx+si],ah
0000348A  53                push bx
0000348B  636F72            arpl [bx+0x72],bp
0000348E  652020            and [gs:bx+si],ah
00003491  4C                dec sp
00003492  657665            gs jna 0x34fa
00003495  6C                insb
00003496  2020              and [bx+si],ah
00003498  2020              and [bx+si],ah
0000349A  2020              and [bx+si],ah
0000349C  2020              and [bx+si],ah
0000349E  2020              and [bx+si],ah
000034A0  2020              and [bx+si],ah
000034A2  2020              and [bx+si],ah
000034A4  2020              and [bx+si],ah
000034A6  2400              and al,0x0
000034A8  0000              add [bx+si],al
000034AA  0000              add [bx+si],al
000034AC  0000              add [bx+si],al
000034AE  0000              add [bx+si],al
000034B0  0000              add [bx+si],al
000034B2  0000              add [bx+si],al
000034B4  0000              add [bx+si],al
000034B6  0000              add [bx+si],al
000034B8  0000              add [bx+si],al
000034BA  0000              add [bx+si],al
000034BC  0000              add [bx+si],al
000034BE  0000              add [bx+si],al
000034C0  0000              add [bx+si],al
000034C2  0000              add [bx+si],al
000034C4  0000              add [bx+si],al
000034C6  0000              add [bx+si],al
000034C8  0000              add [bx+si],al
000034CA  0000              add [bx+si],al
000034CC  0000              add [bx+si],al
000034CE  0000              add [bx+si],al
000034D0  0000              add [bx+si],al
000034D2  0000              add [bx+si],al
000034D4  0000              add [bx+si],al
000034D6  0000              add [bx+si],al
000034D8  0000              add [bx+si],al
000034DA  0000              add [bx+si],al
000034DC  0000              add [bx+si],al
000034DE  0000              add [bx+si],al
000034E0  0000              add [bx+si],al
000034E2  0000              add [bx+si],al
000034E4  0000              add [bx+si],al
000034E6  0000              add [bx+si],al
000034E8  0000              add [bx+si],al
000034EA  0000              add [bx+si],al
000034EC  0000              add [bx+si],al
000034EE  0000              add [bx+si],al
000034F0  0000              add [bx+si],al
000034F2  0000              add [bx+si],al
000034F4  0000              add [bx+si],al
000034F6  0000              add [bx+si],al
000034F8  0000              add [bx+si],al
000034FA  0000              add [bx+si],al
000034FC  0000              add [bx+si],al
000034FE  0000              add [bx+si],al
00003500  0000              add [bx+si],al
00003502  0000              add [bx+si],al
00003504  0000              add [bx+si],al
00003506  0000              add [bx+si],al
00003508  0000              add [bx+si],al
0000350A  0000              add [bx+si],al
0000350C  0000              add [bx+si],al
0000350E  0000              add [bx+si],al
00003510  0000              add [bx+si],al
00003512  0000              add [bx+si],al
00003514  0000              add [bx+si],al
00003516  0000              add [bx+si],al
00003518  0000              add [bx+si],al
0000351A  0000              add [bx+si],al
0000351C  0000              add [bx+si],al
0000351E  0000              add [bx+si],al
00003520  0000              add [bx+si],al
00003522  0000              add [bx+si],al
00003524  0000              add [bx+si],al
00003526  0000              add [bx+si],al
00003528  0000              add [bx+si],al
0000352A  0000              add [bx+si],al
0000352C  0000              add [bx+si],al
0000352E  0000              add [bx+si],al
00003530  0000              add [bx+si],al
00003532  0000              add [bx+si],al
00003534  0000              add [bx+si],al
00003536  0000              add [bx+si],al
00003538  0000              add [bx+si],al
0000353A  0000              add [bx+si],al
0000353C  0000              add [bx+si],al
0000353E  0000              add [bx+si],al
00003540  0000              add [bx+si],al
00003542  0000              add [bx+si],al
00003544  0000              add [bx+si],al
00003546  0000              add [bx+si],al
00003548  0000              add [bx+si],al
0000354A  0000              add [bx+si],al
0000354C  0000              add [bx+si],al
0000354E  0000              add [bx+si],al
00003550  0000              add [bx+si],al
00003552  0000              add [bx+si],al
00003554  0000              add [bx+si],al
00003556  0000              add [bx+si],al
00003558  0000              add [bx+si],al
0000355A  0000              add [bx+si],al
0000355C  0000              add [bx+si],al
0000355E  0000              add [bx+si],al
00003560  0000              add [bx+si],al
00003562  0000              add [bx+si],al
00003564  0000              add [bx+si],al
00003566  0000              add [bx+si],al
00003568  0000              add [bx+si],al
0000356A  0000              add [bx+si],al
0000356C  0000              add [bx+si],al
0000356E  0000              add [bx+si],al
00003570  0000              add [bx+si],al
00003572  0000              add [bx+si],al
00003574  0000              add [bx+si],al
00003576  0000              add [bx+si],al
00003578  0000              add [bx+si],al
0000357A  0000              add [bx+si],al
0000357C  0000              add [bx+si],al
0000357E  0000              add [bx+si],al
00003580  0000              add [bx+si],al
00003582  0000              add [bx+si],al
00003584  0000              add [bx+si],al
00003586  0000              add [bx+si],al
00003588  0000              add [bx+si],al
0000358A  0000              add [bx+si],al
0000358C  0000              add [bx+si],al
0000358E  0000              add [bx+si],al
00003590  0000              add [bx+si],al
00003592  0000              add [bx+si],al
00003594  0000              add [bx+si],al
00003596  0000              add [bx+si],al
00003598  0000              add [bx+si],al
0000359A  0000              add [bx+si],al
0000359C  0000              add [bx+si],al
0000359E  0000              add [bx+si],al
000035A0  0000              add [bx+si],al
000035A2  0000              add [bx+si],al
000035A4  0000              add [bx+si],al
000035A6  0000              add [bx+si],al
000035A8  0000              add [bx+si],al
000035AA  0000              add [bx+si],al
000035AC  0000              add [bx+si],al
000035AE  0000              add [bx+si],al
000035B0  0000              add [bx+si],al
000035B2  0000              add [bx+si],al
000035B4  0000              add [bx+si],al
000035B6  0000              add [bx+si],al
000035B8  0000              add [bx+si],al
000035BA  0000              add [bx+si],al
000035BC  0000              add [bx+si],al
000035BE  0000              add [bx+si],al
000035C0  0000              add [bx+si],al
000035C2  0000              add [bx+si],al
000035C4  0000              add [bx+si],al
000035C6  0000              add [bx+si],al
000035C8  0000              add [bx+si],al
000035CA  0000              add [bx+si],al
000035CC  0000              add [bx+si],al
000035CE  0000              add [bx+si],al
000035D0  0000              add [bx+si],al
000035D2  0000              add [bx+si],al
000035D4  0000              add [bx+si],al
000035D6  0000              add [bx+si],al
000035D8  0000              add [bx+si],al
000035DA  0000              add [bx+si],al
000035DC  0000              add [bx+si],al
000035DE  0000              add [bx+si],al
000035E0  0000              add [bx+si],al
000035E2  0000              add [bx+si],al
000035E4  0000              add [bx+si],al
000035E6  0000              add [bx+si],al
000035E8  0000              add [bx+si],al
000035EA  0000              add [bx+si],al
000035EC  0000              add [bx+si],al
000035EE  0000              add [bx+si],al
000035F0  0000              add [bx+si],al
000035F2  0000              add [bx+si],al
000035F4  0000              add [bx+si],al
000035F6  0000              add [bx+si],al
000035F8  0000              add [bx+si],al
000035FA  0000              add [bx+si],al
000035FC  0000              add [bx+si],al
000035FE  0000              add [bx+si],al
00003600  0000              add [bx+si],al
00003602  0000              add [bx+si],al
00003604  0000              add [bx+si],al
00003606  0000              add [bx+si],al
00003608  0000              add [bx+si],al
0000360A  0000              add [bx+si],al
0000360C  0000              add [bx+si],al
0000360E  0000              add [bx+si],al
00003610  0000              add [bx+si],al
00003612  0000              add [bx+si],al
00003614  0000              add [bx+si],al
00003616  0000              add [bx+si],al
00003618  0000              add [bx+si],al
0000361A  0000              add [bx+si],al
0000361C  0000              add [bx+si],al
0000361E  0000              add [bx+si],al
00003620  0000              add [bx+si],al
00003622  0000              add [bx+si],al
00003624  0000              add [bx+si],al
00003626  0000              add [bx+si],al
00003628  0000              add [bx+si],al
0000362A  0000              add [bx+si],al
0000362C  0000              add [bx+si],al
0000362E  0000              add [bx+si],al
00003630  0000              add [bx+si],al
00003632  0000              add [bx+si],al
00003634  0000              add [bx+si],al
00003636  0000              add [bx+si],al
00003638  0000              add [bx+si],al
0000363A  0000              add [bx+si],al
0000363C  0000              add [bx+si],al
0000363E  0000              add [bx+si],al
00003640  0000              add [bx+si],al
00003642  0000              add [bx+si],al
00003644  0000              add [bx+si],al
00003646  0000              add [bx+si],al
00003648  0000              add [bx+si],al
0000364A  0000              add [bx+si],al
0000364C  0000              add [bx+si],al
0000364E  0000              add [bx+si],al
00003650  0000              add [bx+si],al
00003652  0000              add [bx+si],al
00003654  0000              add [bx+si],al
00003656  0000              add [bx+si],al
00003658  0000              add [bx+si],al
0000365A  0000              add [bx+si],al
0000365C  0000              add [bx+si],al
0000365E  0000              add [bx+si],al
00003660  0000              add [bx+si],al
00003662  0000              add [bx+si],al
00003664  0000              add [bx+si],al
00003666  0000              add [bx+si],al
00003668  0000              add [bx+si],al
0000366A  0000              add [bx+si],al
0000366C  0000              add [bx+si],al
0000366E  0000              add [bx+si],al
00003670  0000              add [bx+si],al
00003672  0000              add [bx+si],al
00003674  0000              add [bx+si],al
00003676  0000              add [bx+si],al
00003678  0000              add [bx+si],al
0000367A  0000              add [bx+si],al
0000367C  0000              add [bx+si],al
0000367E  0000              add [bx+si],al
00003680  0000              add [bx+si],al
00003682  0000              add [bx+si],al
00003684  0000              add [bx+si],al
00003686  0000              add [bx+si],al
00003688  0000              add [bx+si],al
0000368A  0000              add [bx+si],al
0000368C  0000              add [bx+si],al
0000368E  0000              add [bx+si],al
00003690  0000              add [bx+si],al
00003692  0000              add [bx+si],al
00003694  0000              add [bx+si],al
00003696  0000              add [bx+si],al
00003698  0000              add [bx+si],al
0000369A  0000              add [bx+si],al
0000369C  0000              add [bx+si],al
0000369E  0000              add [bx+si],al
000036A0  0000              add [bx+si],al
000036A2  0000              add [bx+si],al
000036A4  0000              add [bx+si],al
000036A6  0000              add [bx+si],al
000036A8  0000              add [bx+si],al
000036AA  0000              add [bx+si],al
000036AC  0000              add [bx+si],al
000036AE  0000              add [bx+si],al
000036B0  0000              add [bx+si],al
000036B2  0000              add [bx+si],al
000036B4  0000              add [bx+si],al
000036B6  0000              add [bx+si],al
000036B8  0000              add [bx+si],al
000036BA  0000              add [bx+si],al
000036BC  0000              add [bx+si],al
000036BE  0000              add [bx+si],al
000036C0  0000              add [bx+si],al
000036C2  0000              add [bx+si],al
000036C4  0000              add [bx+si],al
000036C6  0000              add [bx+si],al
000036C8  0000              add [bx+si],al
000036CA  0000              add [bx+si],al
000036CC  0000              add [bx+si],al
000036CE  0000              add [bx+si],al
000036D0  0000              add [bx+si],al
000036D2  0000              add [bx+si],al
000036D4  0000              add [bx+si],al
000036D6  0000              add [bx+si],al
000036D8  0000              add [bx+si],al
000036DA  0000              add [bx+si],al
000036DC  0000              add [bx+si],al
000036DE  0000              add [bx+si],al
000036E0  0000              add [bx+si],al
000036E2  0000              add [bx+si],al
000036E4  0000              add [bx+si],al
000036E6  0000              add [bx+si],al
000036E8  0000              add [bx+si],al
000036EA  0000              add [bx+si],al
000036EC  0000              add [bx+si],al
000036EE  0000              add [bx+si],al
000036F0  0000              add [bx+si],al
000036F2  0000              add [bx+si],al
000036F4  0000              add [bx+si],al
000036F6  0000              add [bx+si],al
000036F8  0000              add [bx+si],al
000036FA  0000              add [bx+si],al
000036FC  0000              add [bx+si],al
000036FE  0000              add [bx+si],al
00003700  0000              add [bx+si],al
00003702  0000              add [bx+si],al
00003704  0000              add [bx+si],al
00003706  0000              add [bx+si],al
00003708  0000              add [bx+si],al
0000370A  0000              add [bx+si],al
0000370C  0000              add [bx+si],al
0000370E  0000              add [bx+si],al
00003710  0000              add [bx+si],al
00003712  0000              add [bx+si],al
00003714  0000              add [bx+si],al
00003716  0000              add [bx+si],al
00003718  0000              add [bx+si],al
0000371A  0000              add [bx+si],al
0000371C  0000              add [bx+si],al
0000371E  0000              add [bx+si],al
00003720  0000              add [bx+si],al
00003722  0000              add [bx+si],al
00003724  0000              add [bx+si],al
00003726  0000              add [bx+si],al
00003728  0000              add [bx+si],al
0000372A  0000              add [bx+si],al
0000372C  0000              add [bx+si],al
0000372E  0000              add [bx+si],al
00003730  0000              add [bx+si],al
00003732  0000              add [bx+si],al
00003734  0000              add [bx+si],al
00003736  0000              add [bx+si],al
00003738  0000              add [bx+si],al
0000373A  0000              add [bx+si],al
0000373C  0000              add [bx+si],al
0000373E  0000              add [bx+si],al
00003740  0000              add [bx+si],al
00003742  0000              add [bx+si],al
00003744  0000              add [bx+si],al
00003746  0000              add [bx+si],al
00003748  0000              add [bx+si],al
0000374A  0000              add [bx+si],al
0000374C  0000              add [bx+si],al
0000374E  0000              add [bx+si],al
00003750  0000              add [bx+si],al
00003752  0000              add [bx+si],al
00003754  0000              add [bx+si],al
00003756  0000              add [bx+si],al
00003758  0000              add [bx+si],al
0000375A  0000              add [bx+si],al
0000375C  0000              add [bx+si],al
0000375E  0000              add [bx+si],al
00003760  0000              add [bx+si],al
00003762  0000              add [bx+si],al
00003764  0000              add [bx+si],al
00003766  0000              add [bx+si],al
00003768  0000              add [bx+si],al
0000376A  0000              add [bx+si],al
0000376C  0000              add [bx+si],al
0000376E  0000              add [bx+si],al
00003770  0000              add [bx+si],al
00003772  0000              add [bx+si],al
00003774  0000              add [bx+si],al
00003776  0000              add [bx+si],al
00003778  0000              add [bx+si],al
0000377A  0000              add [bx+si],al
0000377C  0000              add [bx+si],al
0000377E  0000              add [bx+si],al
00003780  0000              add [bx+si],al
00003782  0000              add [bx+si],al
00003784  0000              add [bx+si],al
00003786  0000              add [bx+si],al
00003788  0000              add [bx+si],al
0000378A  0000              add [bx+si],al
0000378C  0000              add [bx+si],al
0000378E  0000              add [bx+si],al
00003790  0000              add [bx+si],al
00003792  0000              add [bx+si],al
00003794  0000              add [bx+si],al
00003796  0000              add [bx+si],al
00003798  0000              add [bx+si],al
0000379A  0000              add [bx+si],al
0000379C  0000              add [bx+si],al
0000379E  0000              add [bx+si],al
000037A0  0000              add [bx+si],al
000037A2  0000              add [bx+si],al
000037A4  0000              add [bx+si],al
000037A6  0000              add [bx+si],al
000037A8  0000              add [bx+si],al
000037AA  0000              add [bx+si],al
000037AC  0000              add [bx+si],al
000037AE  0000              add [bx+si],al
000037B0  0000              add [bx+si],al
000037B2  0000              add [bx+si],al
000037B4  0000              add [bx+si],al
000037B6  0000              add [bx+si],al
000037B8  0000              add [bx+si],al
000037BA  0000              add [bx+si],al
000037BC  0000              add [bx+si],al
000037BE  0000              add [bx+si],al
000037C0  0000              add [bx+si],al
000037C2  0000              add [bx+si],al
000037C4  0000              add [bx+si],al
000037C6  0000              add [bx+si],al
000037C8  0000              add [bx+si],al
000037CA  0000              add [bx+si],al
000037CC  0000              add [bx+si],al
000037CE  0000              add [bx+si],al
000037D0  0000              add [bx+si],al
000037D2  0000              add [bx+si],al
000037D4  0000              add [bx+si],al
000037D6  0000              add [bx+si],al
000037D8  0000              add [bx+si],al
000037DA  0000              add [bx+si],al
000037DC  0000              add [bx+si],al
000037DE  0000              add [bx+si],al
000037E0  0000              add [bx+si],al
000037E2  0000              add [bx+si],al
000037E4  0000              add [bx+si],al
000037E6  0000              add [bx+si],al
000037E8  0000              add [bx+si],al
000037EA  0000              add [bx+si],al
000037EC  0000              add [bx+si],al
000037EE  0000              add [bx+si],al
000037F0  0000              add [bx+si],al
000037F2  0000              add [bx+si],al
000037F4  0000              add [bx+si],al
000037F6  0000              add [bx+si],al
000037F8  0000              add [bx+si],al
000037FA  0000              add [bx+si],al
000037FC  0000              add [bx+si],al
000037FE  0000              add [bx+si],al
00003800  0000              add [bx+si],al
00003802  0000              add [bx+si],al
00003804  0000              add [bx+si],al
00003806  0000              add [bx+si],al
00003808  0000              add [bx+si],al
0000380A  0000              add [bx+si],al
0000380C  0000              add [bx+si],al
0000380E  0000              add [bx+si],al
00003810  0000              add [bx+si],al
00003812  0000              add [bx+si],al
00003814  0000              add [bx+si],al
00003816  0000              add [bx+si],al
00003818  0000              add [bx+si],al
0000381A  0000              add [bx+si],al
0000381C  0000              add [bx+si],al
0000381E  0000              add [bx+si],al
00003820  0000              add [bx+si],al
00003822  0000              add [bx+si],al
00003824  0000              add [bx+si],al
00003826  0000              add [bx+si],al
00003828  0000              add [bx+si],al
0000382A  0000              add [bx+si],al
0000382C  0000              add [bx+si],al
0000382E  0000              add [bx+si],al
00003830  0000              add [bx+si],al
00003832  0000              add [bx+si],al
00003834  0000              add [bx+si],al
00003836  0000              add [bx+si],al
00003838  0000              add [bx+si],al
0000383A  0000              add [bx+si],al
0000383C  0000              add [bx+si],al
0000383E  0000              add [bx+si],al
00003840  0000              add [bx+si],al
00003842  0000              add [bx+si],al
00003844  0000              add [bx+si],al
00003846  0000              add [bx+si],al
00003848  0000              add [bx+si],al
0000384A  0000              add [bx+si],al
0000384C  0000              add [bx+si],al
0000384E  0000              add [bx+si],al
00003850  0000              add [bx+si],al
00003852  0000              add [bx+si],al
00003854  0000              add [bx+si],al
00003856  0000              add [bx+si],al
00003858  0000              add [bx+si],al
0000385A  0000              add [bx+si],al
0000385C  0000              add [bx+si],al
0000385E  0000              add [bx+si],al
00003860  0000              add [bx+si],al
00003862  0000              add [bx+si],al
00003864  0000              add [bx+si],al
00003866  0000              add [bx+si],al
00003868  0000              add [bx+si],al
0000386A  0000              add [bx+si],al
0000386C  0000              add [bx+si],al
0000386E  0000              add [bx+si],al
00003870  0000              add [bx+si],al
00003872  0000              add [bx+si],al
00003874  0000              add [bx+si],al
00003876  0000              add [bx+si],al
00003878  0000              add [bx+si],al
0000387A  0000              add [bx+si],al
0000387C  0000              add [bx+si],al
0000387E  0000              add [bx+si],al
00003880  0000              add [bx+si],al
00003882  0000              add [bx+si],al
00003884  0000              add [bx+si],al
00003886  0000              add [bx+si],al
00003888  0000              add [bx+si],al
0000388A  0000              add [bx+si],al
0000388C  0000              add [bx+si],al
0000388E  0000              add [bx+si],al
00003890  0000              add [bx+si],al
00003892  0000              add [bx+si],al
00003894  0000              add [bx+si],al
00003896  0000              add [bx+si],al
00003898  0000              add [bx+si],al
0000389A  0000              add [bx+si],al
0000389C  0000              add [bx+si],al
0000389E  0000              add [bx+si],al
000038A0  0000              add [bx+si],al
000038A2  0000              add [bx+si],al
000038A4  0000              add [bx+si],al
000038A6  0000              add [bx+si],al
000038A8  0000              add [bx+si],al
000038AA  0000              add [bx+si],al
000038AC  0000              add [bx+si],al
000038AE  0000              add [bx+si],al
000038B0  0000              add [bx+si],al
000038B2  0000              add [bx+si],al
000038B4  0000              add [bx+si],al
000038B6  0000              add [bx+si],al
000038B8  0000              add [bx+si],al
000038BA  0000              add [bx+si],al
000038BC  0000              add [bx+si],al
000038BE  0000              add [bx+si],al
000038C0  0000              add [bx+si],al
000038C2  0000              add [bx+si],al
000038C4  0000              add [bx+si],al
000038C6  0000              add [bx+si],al
000038C8  0000              add [bx+si],al
000038CA  0000              add [bx+si],al
000038CC  0000              add [bx+si],al
000038CE  0000              add [bx+si],al
000038D0  0000              add [bx+si],al
000038D2  0000              add [bx+si],al
000038D4  0000              add [bx+si],al
000038D6  0000              add [bx+si],al
000038D8  0000              add [bx+si],al
000038DA  0000              add [bx+si],al
000038DC  0000              add [bx+si],al
000038DE  0000              add [bx+si],al
000038E0  0000              add [bx+si],al
000038E2  0000              add [bx+si],al
000038E4  0000              add [bx+si],al
000038E6  0000              add [bx+si],al
000038E8  0000              add [bx+si],al
000038EA  0000              add [bx+si],al
000038EC  0000              add [bx+si],al
000038EE  0000              add [bx+si],al
000038F0  0000              add [bx+si],al
000038F2  0000              add [bx+si],al
000038F4  0000              add [bx+si],al
000038F6  0000              add [bx+si],al
000038F8  0000              add [bx+si],al
000038FA  0000              add [bx+si],al
000038FC  0000              add [bx+si],al
000038FE  0000              add [bx+si],al
00003900  0000              add [bx+si],al
00003902  0000              add [bx+si],al
00003904  0000              add [bx+si],al
00003906  0000              add [bx+si],al
00003908  0000              add [bx+si],al
0000390A  0000              add [bx+si],al
0000390C  0000              add [bx+si],al
0000390E  0000              add [bx+si],al
00003910  0000              add [bx+si],al
00003912  0000              add [bx+si],al
00003914  0000              add [bx+si],al
00003916  0000              add [bx+si],al
00003918  0000              add [bx+si],al
0000391A  0000              add [bx+si],al
0000391C  0000              add [bx+si],al
0000391E  0000              add [bx+si],al
00003920  0000              add [bx+si],al
00003922  0000              add [bx+si],al
00003924  0000              add [bx+si],al
00003926  0000              add [bx+si],al
00003928  0000              add [bx+si],al
0000392A  0000              add [bx+si],al
0000392C  0000              add [bx+si],al
0000392E  0000              add [bx+si],al
00003930  0000              add [bx+si],al
00003932  0000              add [bx+si],al
00003934  0000              add [bx+si],al
00003936  0000              add [bx+si],al
00003938  0000              add [bx+si],al
0000393A  0000              add [bx+si],al
0000393C  0000              add [bx+si],al
0000393E  0000              add [bx+si],al
00003940  0000              add [bx+si],al
00003942  0000              add [bx+si],al
00003944  0000              add [bx+si],al
00003946  0000              add [bx+si],al
00003948  0000              add [bx+si],al
0000394A  0000              add [bx+si],al
0000394C  0000              add [bx+si],al
0000394E  0000              add [bx+si],al
00003950  0000              add [bx+si],al
00003952  0000              add [bx+si],al
00003954  0000              add [bx+si],al
00003956  0000              add [bx+si],al
00003958  0000              add [bx+si],al
0000395A  0000              add [bx+si],al
0000395C  0000              add [bx+si],al
0000395E  0000              add [bx+si],al
00003960  0000              add [bx+si],al
00003962  0000              add [bx+si],al
00003964  0000              add [bx+si],al
00003966  0000              add [bx+si],al
00003968  0000              add [bx+si],al
0000396A  0000              add [bx+si],al
0000396C  0000              add [bx+si],al
0000396E  0000              add [bx+si],al
00003970  0000              add [bx+si],al
00003972  0000              add [bx+si],al
00003974  0000              add [bx+si],al
00003976  0000              add [bx+si],al
00003978  0000              add [bx+si],al
0000397A  0000              add [bx+si],al
0000397C  0000              add [bx+si],al
0000397E  0000              add [bx+si],al
00003980  0000              add [bx+si],al
00003982  0000              add [bx+si],al
00003984  0000              add [bx+si],al
00003986  0000              add [bx+si],al
00003988  0000              add [bx+si],al
0000398A  0000              add [bx+si],al
0000398C  0000              add [bx+si],al
0000398E  0000              add [bx+si],al
00003990  0000              add [bx+si],al
00003992  0000              add [bx+si],al
00003994  0000              add [bx+si],al
00003996  0000              add [bx+si],al
00003998  0000              add [bx+si],al
0000399A  0000              add [bx+si],al
0000399C  0000              add [bx+si],al
0000399E  0000              add [bx+si],al
000039A0  0000              add [bx+si],al
000039A2  0000              add [bx+si],al
000039A4  0000              add [bx+si],al
000039A6  0000              add [bx+si],al
000039A8  0000              add [bx+si],al
000039AA  0000              add [bx+si],al
000039AC  0000              add [bx+si],al
000039AE  0000              add [bx+si],al
000039B0  0000              add [bx+si],al
000039B2  0000              add [bx+si],al
000039B4  0000              add [bx+si],al
000039B6  0000              add [bx+si],al
000039B8  0000              add [bx+si],al
000039BA  0000              add [bx+si],al
000039BC  0000              add [bx+si],al
000039BE  0000              add [bx+si],al
000039C0  0000              add [bx+si],al
000039C2  0000              add [bx+si],al
000039C4  0000              add [bx+si],al
000039C6  0000              add [bx+si],al
000039C8  0000              add [bx+si],al
000039CA  0000              add [bx+si],al
000039CC  0000              add [bx+si],al
000039CE  0000              add [bx+si],al
000039D0  0000              add [bx+si],al
000039D2  0000              add [bx+si],al
000039D4  0000              add [bx+si],al
000039D6  0000              add [bx+si],al
000039D8  0000              add [bx+si],al
000039DA  0000              add [bx+si],al
000039DC  0000              add [bx+si],al
000039DE  0000              add [bx+si],al
000039E0  0000              add [bx+si],al
000039E2  0000              add [bx+si],al
000039E4  0000              add [bx+si],al
000039E6  0000              add [bx+si],al
000039E8  0000              add [bx+si],al
000039EA  0000              add [bx+si],al
000039EC  0000              add [bx+si],al
000039EE  0000              add [bx+si],al
000039F0  0000              add [bx+si],al
000039F2  0000              add [bx+si],al
000039F4  0000              add [bx+si],al
000039F6  0000              add [bx+si],al
000039F8  0000              add [bx+si],al
000039FA  0000              add [bx+si],al
000039FC  0000              add [bx+si],al
000039FE  0000              add [bx+si],al
00003A00  0000              add [bx+si],al
00003A02  0000              add [bx+si],al
00003A04  0000              add [bx+si],al
00003A06  0000              add [bx+si],al
00003A08  0000              add [bx+si],al
00003A0A  0000              add [bx+si],al
00003A0C  0000              add [bx+si],al
00003A0E  0000              add [bx+si],al
00003A10  0000              add [bx+si],al
00003A12  0000              add [bx+si],al
00003A14  0000              add [bx+si],al
00003A16  0000              add [bx+si],al
00003A18  0000              add [bx+si],al
00003A1A  0000              add [bx+si],al
00003A1C  0000              add [bx+si],al
00003A1E  0000              add [bx+si],al
00003A20  0000              add [bx+si],al
00003A22  0000              add [bx+si],al
00003A24  0000              add [bx+si],al
00003A26  0000              add [bx+si],al
00003A28  0000              add [bx+si],al
00003A2A  0000              add [bx+si],al
00003A2C  0000              add [bx+si],al
00003A2E  0000              add [bx+si],al
00003A30  0000              add [bx+si],al
00003A32  0000              add [bx+si],al
00003A34  0000              add [bx+si],al
00003A36  0000              add [bx+si],al
00003A38  0000              add [bx+si],al
00003A3A  0000              add [bx+si],al
00003A3C  0000              add [bx+si],al
00003A3E  0000              add [bx+si],al
00003A40  0000              add [bx+si],al
00003A42  0000              add [bx+si],al
00003A44  0000              add [bx+si],al
00003A46  0000              add [bx+si],al
00003A48  0000              add [bx+si],al
00003A4A  0000              add [bx+si],al
00003A4C  0000              add [bx+si],al
00003A4E  0000              add [bx+si],al
00003A50  0000              add [bx+si],al
00003A52  0000              add [bx+si],al
00003A54  0000              add [bx+si],al
00003A56  0000              add [bx+si],al
00003A58  0000              add [bx+si],al
00003A5A  0000              add [bx+si],al
00003A5C  0000              add [bx+si],al
00003A5E  0000              add [bx+si],al
00003A60  0000              add [bx+si],al
00003A62  0000              add [bx+si],al
00003A64  0000              add [bx+si],al
00003A66  0000              add [bx+si],al
00003A68  0000              add [bx+si],al
00003A6A  0000              add [bx+si],al
00003A6C  0000              add [bx+si],al
00003A6E  0000              add [bx+si],al
00003A70  0000              add [bx+si],al
00003A72  0000              add [bx+si],al
00003A74  0000              add [bx+si],al
00003A76  0000              add [bx+si],al
00003A78  0000              add [bx+si],al
00003A7A  0000              add [bx+si],al
00003A7C  0000              add [bx+si],al
00003A7E  0000              add [bx+si],al
00003A80  0000              add [bx+si],al
00003A82  0000              add [bx+si],al
00003A84  0000              add [bx+si],al
00003A86  0000              add [bx+si],al
00003A88  0000              add [bx+si],al
00003A8A  0000              add [bx+si],al
00003A8C  0000              add [bx+si],al
00003A8E  0000              add [bx+si],al
00003A90  0000              add [bx+si],al
00003A92  0000              add [bx+si],al
00003A94  0000              add [bx+si],al
00003A96  0000              add [bx+si],al
00003A98  0000              add [bx+si],al
00003A9A  0000              add [bx+si],al
00003A9C  0000              add [bx+si],al
00003A9E  0000              add [bx+si],al
00003AA0  0000              add [bx+si],al
00003AA2  0000              add [bx+si],al
00003AA4  0000              add [bx+si],al
00003AA6  0000              add [bx+si],al
00003AA8  0000              add [bx+si],al
00003AAA  0000              add [bx+si],al
00003AAC  0000              add [bx+si],al
00003AAE  0000              add [bx+si],al
00003AB0  0000              add [bx+si],al
00003AB2  0000              add [bx+si],al
00003AB4  0000              add [bx+si],al
00003AB6  0000              add [bx+si],al
00003AB8  0000              add [bx+si],al
00003ABA  0000              add [bx+si],al
00003ABC  0000              add [bx+si],al
00003ABE  0000              add [bx+si],al
00003AC0  0000              add [bx+si],al
00003AC2  50                push ax
00003AC3  53                push bx
00003AC4  51                push cx
00003AC5  56                push si
00003AC6  57                push di
00003AC7  BFB000            mov di,0xb0
00003ACA  BE6034            mov si,0x3460
00003ACD  E8B6F5            call word 0x3086
00003AD0  B507              mov ch,0x7
00003AD2  BF4A01            mov di,0x14a
00003AD5  BEA734            mov si,0x34a7
00003AD8  B714              mov bh,0x14
00003ADA  B80100            mov ax,0x1
00003ADD  E8FCF4            call word 0x2fdc
00003AE0  47                inc di
00003AE1  47                inc di
00003AE2  50                push ax
00003AE3  B83A07            mov ax,0x73a
00003AE6  50                push ax
00003AE7  53                push bx
00003AE8  52                push dx
00003AE9  8BD8              mov bx,ax
00003AEB  803E600601        cmp byte [0x660],0x1
00003AF0  740E              jz 0x3b00
00003AF2  BADA03            mov dx,0x3da
00003AF5  EC                in al,dx
00003AF6  A801              test al,0x1
00003AF8  75FB              jnz 0x3af5
00003AFA  FA                cli
00003AFB  EC                in al,dx
00003AFC  A801              test al,0x1
00003AFE  74FB              jz 0x3afb
00003B00  26891D            mov [es:di],bx
00003B03  FB                sti
00003B04  5A                pop dx
00003B05  5B                pop bx
00003B06  58                pop ax
00003B07  58                pop ax
00003B08  83C704            add di,byte +0x4
00003B0B  E878F5            call word 0x3086
00003B0E  81C79A00          add di,0x9a
00003B12  83C647            add si,byte +0x47
00003B15  40                inc ax
00003B16  FECF              dec bh
00003B18  75C3              jnz 0x3add
00003B1A  5F                pop di
00003B1B  5E                pop si
00003B1C  59                pop cx
00003B1D  5B                pop bx
00003B1E  58                pop ax
00003B1F  C3                ret
00003B20  092D              or [di],bp
00003B22  45                inc bp
00003B23  41                inc cx
00003B24  53                push bx
00003B25  59                pop cx
00003B26  2020              and [bx+si],ah
00003B28  2020              and [bx+si],ah
00003B2A  2D4E4F            sub ax,0x4f4e
00003B2D  56                push si
00003B2E  49                dec cx
00003B2F  43                inc bx
00003B30  45                inc bp
00003B31  2020              and [bx+si],ah
00003B33  2D4841            sub ax,0x4148
00003B36  52                push dx
00003B37  44                inc sp
00003B38  2020              and [bx+si],ah
00003B3A  2020              and [bx+si],ah
00003B3C  2D554E            sub ax,0x4e55
00003B3F  4B                dec bx
00003B40  4E                dec si
00003B41  4F                dec di
00003B42  57                push di
00003B43  4E                dec si
00003B44  202D              and [di],ch
00003B46  41                inc cx
00003B47  44                inc sp
00003B48  56                push si
00003B49  41                inc cx
00003B4A  4E                dec si
00003B4B  43                inc bx
00003B4C  45                inc bp
00003B4D  44                inc sp
00003B4E  2D4558            sub ax,0x5845
00003B51  50                push ax
00003B52  45                inc bp
00003B53  52                push dx
00003B54  54                push sp
00003B55  2020              and [bx+si],ah
00003B57  2D5052            sub ax,0x5250
00003B5A  4F                dec di
00003B5B  2020              and [bx+si],ah
00003B5D  2020              and [bx+si],ah
00003B5F  202D              and [di],ch
00003B61  20574F            and [bx+0x4f],dl
00003B64  4E                dec si
00003B65  0020              add [bx+si],ah
00003B67  2020              and [bx+si],ah
00003B69  2020              and [bx+si],ah
00003B6B  008C3B20          add [si+0x203b],cl
00003B6F  204869            and [bx+si+0x69],cl
00003B72  67682053          push word 0x5320
00003B76  636F72            arpl [bx+0x72],bp
00003B79  65206F6E          and [gs:bx+0x6e],ch
00003B7D  204C65            and [si+0x65],cl
00003B80  66742E            o32 jz 0x3bb1
00003B83  2020              and [bx+si],ah
00003B85  4E                dec si
00003B86  61                popaw
00003B87  6D                insw
00003B88  653A20            cmp ah,[gs:bx+si]
00003B8B  2420              and al,0x20
00003B8D  48                dec ax
00003B8E  6967682053        imul sp,[bx+0x68],word 0x5320
00003B93  636F72            arpl [bx+0x72],bp
00003B96  65206F6E          and [gs:bx+0x6e],ch
00003B9A  205269            and [bp+si+0x69],dl
00003B9D  6768742E          push word 0x2e74
00003BA1  2020              and [bx+si],ah
00003BA3  4E                dec si
00003BA4  61                popaw
00003BA5  6D                insw
00003BA6  653A20            cmp ah,[gs:bx+si]
00003BA9  2400              and al,0x0
00003BAB  005053            add [bx+si+0x53],dl
00003BAE  56                push si
00003BAF  B86E3B            mov ax,0x3b6e
00003BB2  A36C3B            mov [0x3b6c],ax
00003BB5  A18B06            mov ax,[0x68b]
00003BB8  A37606            mov [0x676],ax
00003BBB  C706AA3B820E      mov word [0x3baa],0xe82
00003BC1  E83700            call word 0x3bfb
00003BC4  8BD8              mov bx,ax
00003BC6  B88C3B            mov ax,0x3b8c
00003BC9  A36C3B            mov [0x3b6c],ax
00003BCC  A18106            mov ax,[0x681]
00003BCF  A37606            mov [0x676],ax
00003BD2  C706AA3BF20E      mov word [0x3baa],0xef2
00003BD8  E82000            call word 0x3bfb
00003BDB  3D0000            cmp ax,0x0
00003BDE  7505              jnz 0x3be5
00003BE0  83FB00            cmp bx,byte +0x0
00003BE3  7412              jz 0x3bf7
00003BE5  E868F4            call word 0x3050
00003BE8  E80BD5            call word 0x10f6
00003BEB  BEF905            mov si,0x5f9
00003BEE  E89BF4            call word 0x308c
00003BF1  E8900D            call word 0x4984
00003BF4  E8CBFE            call word 0x3ac2
00003BF7  5E                pop si
00003BF8  5B                pop bx
00003BF9  58                pop ax
00003BFA  C3                ret
00003BFB  50                push ax
00003BFC  53                push bx
00003BFD  51                push cx
00003BFE  52                push dx
00003BFF  56                push si
00003C00  57                push di
00003C01  BED134            mov si,0x34d1
00003C04  B91400            mov cx,0x14
00003C07  E8D401            call word 0x3dde
00003C0A  3B067606          cmp ax,[0x676]
00003C0E  720A              jc 0x3c1a
00003C10  83C647            add si,byte +0x47
00003C13  E2F2              loop 0x3c07
00003C15  33C0              xor ax,ax
00003C17  E9F500            jmp word 0x3d0f
00003C1A  83EE2A            sub si,byte +0x2a
00003C1D  56                push si
00003C1E  8BCE              mov cx,si
00003C20  FD                std
00003C21  06                push es
00003C22  1E                push ds
00003C23  07                pop es
00003C24  BEEB39            mov si,0x39eb
00003C27  BF323A            mov di,0x3a32
00003C2A  81E9EC39          sub cx,0x39ec
00003C2E  F7D9              neg cx
00003C30  E302              jcxz 0x3c34
00003C32  F3A4              rep movsb
00003C34  07                pop es
00003C35  5E                pop si
00003C36  83C600            add si,byte +0x0
00003C39  56                push si
00003C3A  BEB504            mov si,0x4b5
00003C3D  E84CF4            call word 0x308c
00003C40  8B366C3B          mov si,[0x3b6c]
00003C44  E845F4            call word 0x308c
00003C47  5F                pop di
00003C48  BE3C0F            mov si,0xf3c
00003C4B  C7065A06181E      mov word [0x65a],0x1e18
00003C51  B118              mov cl,0x18
00003C53  B52E              mov ch,0x2e
00003C55  E8BE00            call word 0x3d16
00003C58  B42A              mov ah,0x2a
00003C5A  CD21              int 0x21
00003C5C  81E96C07          sub cx,0x76c
00003C60  8AC6              mov al,dh
00003C62  D40A              aam
00003C64  053030            add ax,0x3030
00003C67  886519            mov [di+0x19],ah
00003C6A  88451A            mov [di+0x1a],al
00003C6D  8AC2              mov al,dl
00003C6F  D40A              aam
00003C71  053030            add ax,0x3030
00003C74  88651C            mov [di+0x1c],ah
00003C77  88451D            mov [di+0x1d],al
00003C7A  8AC1              mov al,cl
00003C7C  D40A              aam
00003C7E  053030            add ax,0x3030
00003C81  88651F            mov [di+0x1f],ah
00003C84  884520            mov [di+0x20],al
00003C87  B42C              mov ah,0x2c
00003C89  CD21              int 0x21
00003C8B  8AC5              mov al,ch
00003C8D  D40A              aam
00003C8F  053030            add ax,0x3030
00003C92  886522            mov [di+0x22],ah
00003C95  884523            mov [di+0x23],al
00003C98  8AC1              mov al,cl
00003C9A  D40A              aam
00003C9C  053030            add ax,0x3030
00003C9F  886525            mov [di+0x25],ah
00003CA2  884526            mov [di+0x26],al
00003CA5  8B36AA3B          mov si,[0x3baa]
00003CA9  57                push di
00003CAA  B90500            mov cx,0x5
00003CAD  268A04            mov al,[es:si]
00003CB0  46                inc si
00003CB1  46                inc si
00003CB2  88452A            mov [di+0x2a],al
00003CB5  47                inc di
00003CB6  E2F5              loop 0x3cad
00003CB8  5F                pop di
00003CB9  57                push di
00003CBA  BEB20E            mov si,0xeb2
00003CBD  B90300            mov cx,0x3
00003CC0  268A04            mov al,[es:si]
00003CC3  46                inc si
00003CC4  46                inc si
00003CC5  884532            mov [di+0x32],al
00003CC8  47                inc di
00003CC9  E2F5              loop 0x3cc0
00003CCB  BE213B            mov si,0x3b21
00003CCE  A05906            mov al,[0x659]
00003CD1  2C40              sub al,0x40
00003CD3  D0E8              shr al,1
00003CD5  D0E8              shr al,1
00003CD7  F626203B          mul byte [0x3b20]
00003CDB  03F0              add si,ax
00003CDD  32ED              xor ch,ch
00003CDF  8A0E203B          mov cl,[0x3b20]
00003CE3  8A04              mov al,[si]
00003CE5  46                inc si
00003CE6  884532            mov [di+0x32],al
00003CE9  47                inc di
00003CEA  E2F7              loop 0x3ce3
00003CEC  5F                pop di
00003CED  57                push di
00003CEE  BE663B            mov si,0x3b66
00003CF1  803E790600        cmp byte [0x679],0x0
00003CF6  7403              jz 0x3cfb
00003CF8  BE603B            mov si,0x3b60
00003CFB  8A04              mov al,[si]
00003CFD  3C00              cmp al,0x0
00003CFF  7407              jz 0x3d08
00003D01  46                inc si
00003D02  884540            mov [di+0x40],al
00003D05  47                inc di
00003D06  EBF3              jmp short 0x3cfb
00003D08  5F                pop di
00003D09  E82A01            call word 0x3e36
00003D0C  B8FF7F            mov ax,0x7fff
00003D0F  5F                pop di
00003D10  5E                pop si
00003D11  5A                pop dx
00003D12  59                pop cx
00003D13  5B                pop bx
00003D14  58                pop ax
00003D15  C3                ret
00003D16  50                push ax
00003D17  53                push bx
00003D18  51                push cx
00003D19  56                push si
00003D1A  57                push di
00003D1B  E8AB00            call word 0x3dc9
00003D1E  B700              mov bh,0x0
00003D20  E875F6            call word 0x3398
00003D23  E88BF6            call word 0x33b1
00003D26  3CFF              cmp al,0xff
00003D28  74F9              jz 0x3d23
00003D2A  3CAF              cmp al,0xaf
00003D2C  7739              ja 0x3d67
00003D2E  3AF9              cmp bh,cl
00003D30  7202              jc 0x3d34
00003D32  EBEF              jmp short 0x3d23
00003D34  B407              mov ah,0x7
00003D36  50                push ax
00003D37  53                push bx
00003D38  52                push dx
00003D39  8BD8              mov bx,ax
00003D3B  803E600601        cmp byte [0x660],0x1
00003D40  740E              jz 0x3d50
00003D42  BADA03            mov dx,0x3da
00003D45  EC                in al,dx
00003D46  A801              test al,0x1
00003D48  75FB              jnz 0x3d45
00003D4A  FA                cli
00003D4B  EC                in al,dx
00003D4C  A801              test al,0x1
00003D4E  74FB              jz 0x3d4b
00003D50  26891C            mov [es:si],bx
00003D53  FB                sti
00003D54  5A                pop dx
00003D55  5B                pop bx
00003D56  58                pop ax
00003D57  46                inc si
00003D58  46                inc si
00003D59  FE065B06          inc byte [0x65b]
00003D5D  E86900            call word 0x3dc9
00003D60  8805              mov [di],al
00003D62  47                inc di
00003D63  FEC7              inc bh
00003D65  EBBC              jmp short 0x3d23
00003D67  3CB1              cmp al,0xb1
00003D69  7406              jz 0x3d71
00003D6B  3CB3              cmp al,0xb3
00003D6D  743A              jz 0x3da9
00003D6F  EBB2              jmp short 0x3d23
00003D71  80FF00            cmp bh,0x0
00003D74  74BC              jz 0x3d32
00003D76  FECF              dec bh
00003D78  4F                dec di
00003D79  B82007            mov ax,0x720
00003D7C  4E                dec si
00003D7D  4E                dec si
00003D7E  50                push ax
00003D7F  53                push bx
00003D80  52                push dx
00003D81  8BD8              mov bx,ax
00003D83  803E600601        cmp byte [0x660],0x1
00003D88  740E              jz 0x3d98
00003D8A  BADA03            mov dx,0x3da
00003D8D  EC                in al,dx
00003D8E  A801              test al,0x1
00003D90  75FB              jnz 0x3d8d
00003D92  FA                cli
00003D93  EC                in al,dx
00003D94  A801              test al,0x1
00003D96  74FB              jz 0x3d93
00003D98  26891C            mov [es:si],bx
00003D9B  FB                sti
00003D9C  5A                pop dx
00003D9D  5B                pop bx
00003D9E  58                pop ax
00003D9F  FE0E5B06          dec byte [0x65b]
00003DA3  E82300            call word 0x3dc9
00003DA6  E97AFF            jmp word 0x3d23
00003DA9  3AF9              cmp bh,cl
00003DAB  7407              jz 0x3db4
00003DAD  882D              mov [di],ch
00003DAF  47                inc di
00003DB0  FEC7              inc bh
00003DB2  EBF5              jmp short 0x3da9
00003DB4  BEB504            mov si,0x4b5
00003DB7  E8D2F2            call word 0x308c
00003DBA  C7065A061800      mov word [0x65a],0x18
00003DC0  E80600            call word 0x3dc9
00003DC3  5F                pop di
00003DC4  5E                pop si
00003DC5  59                pop cx
00003DC6  5B                pop bx
00003DC7  58                pop ax
00003DC8  C3                ret
00003DC9  50                push ax
00003DCA  53                push bx
00003DCB  52                push dx
00003DCC  8B165A06          mov dx,[0x65a]
00003DD0  86D6              xchg dl,dh
00003DD2  B402              mov ah,0x2
00003DD4  32FF              xor bh,bh
00003DD6  CD10              int 0x10
00003DD8  5A                pop dx
00003DD9  5B                pop bx
00003DDA  58                pop ax
00003DDB  C3                ret
00003DDC  0A00              or al,[bx+si]
00003DDE  53                push bx
00003DDF  51                push cx
00003DE0  52                push dx
00003DE1  56                push si
00003DE2  8A0C              mov cl,[si]
00003DE4  46                inc si
00003DE5  80F930            cmp cl,0x30
00003DE8  72F8              jc 0x3de2
00003DEA  80F939            cmp cl,0x39
00003DED  77F3              ja 0x3de2
00003DEF  4E                dec si
00003DF0  33C0              xor ax,ax
00003DF2  32ED              xor ch,ch
00003DF4  8A0C              mov cl,[si]
00003DF6  46                inc si
00003DF7  80F930            cmp cl,0x30
00003DFA  7210              jc 0x3e0c
00003DFC  80F939            cmp cl,0x39
00003DFF  770B              ja 0x3e0c
00003E01  80E930            sub cl,0x30
00003E04  F726DC3D          mul word [0x3ddc]
00003E08  03C1              add ax,cx
00003E0A  EBE8              jmp short 0x3df4
00003E0C  5E                pop si
00003E0D  5A                pop dx
00003E0E  59                pop cx
00003E0F  5B                pop bx
00003E10  C3                ret
00003E11  004245            add [bp+si+0x45],al
00003E14  41                inc cx
00003E15  53                push bx
00003E16  54                push sp
00003E17  2020              and [bx+si],ah
00003E19  20434F            and [bp+di+0x4f],al
00003E1C  4D                dec bp
00003E1D  0000              add [bx+si],al
00003E1F  0000              add [bx+si],al
00003E21  0000              add [bx+si],al
00003E23  0000              add [bx+si],al
00003E25  0000              add [bx+si],al
00003E27  0000              add [bx+si],al
00003E29  0000              add [bx+si],al
00003E2B  0000              add [bx+si],al
00003E2D  0000              add [bx+si],al
00003E2F  0000              add [bx+si],al
00003E31  0000              add [bx+si],al
00003E33  0000              add [bx+si],al
00003E35  005051            add [bx+si+0x51],dl
00003E38  52                push dx
00003E39  E8B3CA            call word 0x8ef
00003E3C  B40F              mov ah,0xf
00003E3E  BA113E            mov dx,0x3e11
00003E41  CD21              int 0x21
00003E43  3C00              cmp al,0x0
00003E45  7403              jz 0x3e4a
00003E47  EB28              jmp short 0x3e71
00003E49  90                nop
00003E4A  BAA734            mov dx,0x34a7
00003E4D  B41A              mov ah,0x1a
00003E4F  CD21              int 0x21
00003E51  C7061F3E0100      mov word [0x3e1f],0x1
00003E57  C706323EA733      mov word [0x3e32],0x33a7
00003E5D  C706343E0000      mov word [0x3e34],0x0
00003E63  BA113E            mov dx,0x3e11
00003E66  B98C05            mov cx,0x58c
00003E69  B428              mov ah,0x28
00003E6B  CD21              int 0x21
00003E6D  B410              mov ah,0x10
00003E6F  CD21              int 0x21
00003E71  E899CA            call word 0x90d
00003E74  5A                pop dx
00003E75  59                pop cx
00003E76  58                pop ax
00003E77  C3                ret
00003E78  50                push ax
00003E79  51                push cx
00003E7A  52                push dx
00003E7B  E871CA            call word 0x8ef
00003E7E  B40F              mov ah,0xf
00003E80  BA113E            mov dx,0x3e11
00003E83  CD21              int 0x21
00003E85  3C00              cmp al,0x0
00003E87  7403              jz 0x3e8c
00003E89  EB28              jmp short 0x3eb3
00003E8B  90                nop
00003E8C  BA4A2E            mov dx,0x2e4a
00003E8F  B41A              mov ah,0x1a
00003E91  CD21              int 0x21
00003E93  C7061F3E0100      mov word [0x3e1f],0x1
00003E99  C706323E4A2D      mov word [0x3e32],0x2d4a
00003E9F  C706343E0000      mov word [0x3e34],0x0
00003EA5  BA113E            mov dx,0x3e11
00003EA8  B9D000            mov cx,0xd0
00003EAB  B428              mov ah,0x28
00003EAD  CD21              int 0x21
00003EAF  B410              mov ah,0x10
00003EB1  CD21              int 0x21
00003EB3  E857CA            call word 0x90d
00003EB6  5A                pop dx
00003EB7  59                pop cx
00003EB8  58                pop ax
00003EB9  C3                ret
00003EBA  0000              add [bx+si],al
00003EBC  0000              add [bx+si],al
00003EBE  0000              add [bx+si],al
00003EC0  50                push ax
00003EC1  53                push bx
00003EC2  57                push di
00003EC3  56                push si
00003EC4  F6065E0608        test byte [0x65e],0x8
00003EC9  7410              jz 0x3edb
00003ECB  BF0300            mov di,0x3
00003ECE  8A85AE06          mov al,[di+0x6ae]
00003ED2  2401              and al,0x1
00003ED4  3C00              cmp al,0x0
00003ED6  7403              jz 0x3edb
00003ED8  E9F200            jmp word 0x3fcd
00003EDB  8A3EA806          mov bh,[0x6a8]
00003EDF  BE0000            mov si,0x0
00003EE2  8A843E02          mov al,[si+0x23e]
00003EE6  3C00              cmp al,0x0
00003EE8  7424              jz 0x3f0e
00003EEA  8BBC3A02          mov di,[si+0x23a]
00003EEE  268A05            mov al,[es:di]
00003EF1  3CC3              cmp al,0xc3
00003EF3  741C              jz 0x3f11
00003EF5  3CC7              cmp al,0xc7
00003EF7  7418              jz 0x3f11
00003EF9  3C09              cmp al,0x9
00003EFB  7414              jz 0x3f11
00003EFD  3CCE              cmp al,0xce
00003EFF  7410              jz 0x3f11
00003F01  C6843E0200        mov byte [si+0x23e],0x0
00003F06  FE0EA906          dec byte [0x6a9]
00003F0A  FF067606          inc word [0x676]
00003F0E  E9AF00            jmp word 0x3fc0
00003F11  FE8C3F02          dec byte [si+0x23f]
00003F15  803E6A0601        cmp byte [0x66a],0x1
00003F1A  7419              jz 0x3f35
00003F1C  803E6A0600        cmp byte [0x66a],0x0
00003F21  742C              jz 0x3f4f
00003F23  B414              mov ah,0x14
00003F25  E8BEF1            call word 0x30e6
00003F28  8A269D06          mov ah,[0x69d]
00003F2C  2AE0              sub ah,al
00003F2E  88A44002          mov [si+0x240],ah
00003F32  EB1B              jmp short 0x3f4f
00003F34  90                nop
00003F35  A07C06            mov al,[0x67c]
00003F38  3A844002          cmp al,[si+0x240]
00003F3C  7711              ja 0x3f4f
00003F3E  80AC400203        sub byte [si+0x240],0x3
00003F43  833EA0060A        cmp word [0x6a0],byte +0xa
00003F48  7E05              jng 0x3f4f
00003F4A  832EA00601        sub word [0x6a0],byte +0x1
00003F4F  80BC3F0200        cmp byte [si+0x23f],0x0
00003F54  756A              jnz 0x3fc0
00003F56  8A844002          mov al,[si+0x240]
00003F5A  88843F02          mov [si+0x23f],al
00003F5E  80BC410203        cmp byte [si+0x241],0x3
00003F63  7558              jnz 0x3fbd
00003F65  C6843F02FA        mov byte [si+0x23f],0xfa
00003F6A  FE8C4202          dec byte [si+0x242]
00003F6E  7422              jz 0x3f92
00003F70  80BC420202        cmp byte [si+0x242],0x2
00003F75  7749              ja 0x3fc0
00003F77  80BC420201        cmp byte [si+0x242],0x1
00003F7C  7503              jnz 0x3f81
00003F7E  E80006            call word 0x4581
00003F81  56                push si
00003F82  57                push di
00003F83  8BBC3A02          mov di,[si+0x23a]
00003F87  BEB603            mov si,0x3b6
00003F8A  E88AD2            call word 0x1217
00003F8D  5F                pop di
00003F8E  5E                pop si
00003F8F  EB2F              jmp short 0x3fc0
00003F91  90                nop
00003F92  B41E              mov ah,0x1e
00003F94  E84FF1            call word 0x30e6
00003F97  04C8              add al,0xc8
00003F99  88844002          mov [si+0x240],al
00003F9D  B464              mov ah,0x64
00003F9F  E844F1            call word 0x30e6
00003FA2  0464              add al,0x64
00003FA4  88843F02          mov [si+0x23f],al
00003FA8  C684410202        mov byte [si+0x241],0x2
00003FAD  57                push di
00003FAE  56                push si
00003FAF  8BBC3A02          mov di,[si+0x23a]
00003FB3  BEBA03            mov si,0x3ba
00003FB6  E85ED2            call word 0x1217
00003FB9  5E                pop si
00003FBA  5F                pop di
00003FBB  EB03              jmp short 0x3fc0
00003FBD  E81700            call word 0x3fd7
00003FC0  83C609            add si,byte +0x9
00003FC3  FECF              dec bh
00003FC5  80FF00            cmp bh,0x0
00003FC8  7403              jz 0x3fcd
00003FCA  E915FF            jmp word 0x3ee2
00003FCD  C6066A0600        mov byte [0x66a],0x0
00003FD2  5E                pop si
00003FD3  5F                pop di
00003FD4  5B                pop bx
00003FD5  58                pop ax
00003FD6  C3                ret
00003FD7  50                push ax
00003FD8  53                push bx
00003FD9  51                push cx
00003FDA  56                push si
00003FDB  57                push di
00003FDC  8A843E02          mov al,[si+0x23e]
00003FE0  D0E8              shr al,1
00003FE2  D0E8              shr al,1
00003FE4  D0E8              shr al,1
00003FE6  D0E8              shr al,1
00003FE8  D0E8              shr al,1
00003FEA  3C00              cmp al,0x0
00003FEC  7405              jz 0x3ff3
00003FEE  B508              mov ch,0x8
00003FF0  EB4D              jmp short 0x403f
00003FF2  90                nop
00003FF3  803E510600        cmp byte [0x651],0x0
00003FF8  7409              jz 0x4003
00003FFA  B419              mov ah,0x19
00003FFC  E8E7F0            call word 0x30e6
00003FFF  3C01              cmp al,0x1
00004001  7430              jz 0x4033
00004003  E88B01            call word 0x4191
00004006  E81703            call word 0x4320
00004009  7203              jc 0x400e
0000400B  E9C900            jmp word 0x40d7
0000400E  E8D701            call word 0x41e8
00004011  E80C03            call word 0x4320
00004014  7203              jc 0x4019
00004016  E9BE00            jmp word 0x40d7
00004019  E84002            call word 0x425c
0000401C  E80103            call word 0x4320
0000401F  7203              jc 0x4024
00004021  E9B300            jmp word 0x40d7
00004024  803E510600        cmp byte [0x651],0x0
00004029  7408              jz 0x4033
0000402B  E8AB02            call word 0x42d9
0000402E  7203              jc 0x4033
00004030  E9A400            jmp word 0x40d7
00004033  8A843E02          mov al,[si+0x23e]
00004037  04C0              add al,0xc0
00004039  88843E02          mov [si+0x23e],al
0000403D  B502              mov ch,0x2
0000403F  E81703            call word 0x4359
00004042  E8DB02            call word 0x4320
00004045  7203              jc 0x404a
00004047  E98800            jmp word 0x40d2
0000404A  FECD              dec ch
0000404C  75F1              jnz 0x403f
0000404E  80BC410202        cmp byte [si+0x241],0x2
00004053  7407              jz 0x405c
00004055  803E4D0600        cmp byte [0x64d],0x0
0000405A  7503              jnz 0x405f
0000405C  E9AC00            jmp word 0x410b
0000405F  FE843E02          inc byte [si+0x23e]
00004063  8A843E02          mov al,[si+0x23e]
00004067  2410              and al,0x10
00004069  3C00              cmp al,0x0
0000406B  74EF              jz 0x405c
0000406D  8BBC3A02          mov di,[si+0x23a]
00004071  8A843E02          mov al,[si+0x23e]
00004075  241F              and al,0x1f
00004077  3C14              cmp al,0x14
00004079  7D2B              jnl 0x40a6
0000407B  8A844102          mov al,[si+0x241]
0000407F  268A6501          mov ah,[es:di+0x1]
00004083  3A26A206          cmp ah,[0x6a2]
00004087  740D              jz 0x4096
00004089  BEA203            mov si,0x3a2
0000408C  3C00              cmp al,0x0
0000408E  7410              jz 0x40a0
00004090  BEAA03            mov si,0x3aa
00004093  EB0B              jmp short 0x40a0
00004095  90                nop
00004096  BEA603            mov si,0x3a6
00004099  3C00              cmp al,0x0
0000409B  7403              jz 0x40a0
0000409D  BEAE03            mov si,0x3ae
000040A0  E874D1            call word 0x1217
000040A3  EB66              jmp short 0x410b
000040A5  90                nop
000040A6  C684410200        mov byte [si+0x241],0x0
000040AB  C6843E0201        mov byte [si+0x23e],0x1
000040B0  56                push si
000040B1  E85D00            call word 0x4111
000040B4  5E                pop si
000040B5  268A05            mov al,[es:di]
000040B8  3CC7              cmp al,0xc7
000040BA  7513              jnz 0x40cf
000040BC  8A9C3C02          mov bl,[si+0x23c]
000040C0  8ABC3D02          mov bh,[si+0x23d]
000040C4  57                push di
000040C5  E8E803            call word 0x44b0
000040C8  5F                pop di
000040C9  BEA203            mov si,0x3a2
000040CC  E848D1            call word 0x1217
000040CF  EB3A              jmp short 0x410b
000040D1  90                nop
000040D2  80AC3E0220        sub byte [si+0x23e],0x20
000040D7  57                push di
000040D8  8BBC3A02          mov di,[si+0x23a]
000040DC  56                push si
000040DD  BECE03            mov si,0x3ce
000040E0  E834D1            call word 0x1217
000040E3  5E                pop si
000040E4  5F                pop di
000040E5  56                push si
000040E6  8A844102          mov al,[si+0x241]
000040EA  BEA203            mov si,0x3a2
000040ED  3C00              cmp al,0x0
000040EF  740A              jz 0x40fb
000040F1  BEAA03            mov si,0x3aa
000040F4  3C01              cmp al,0x1
000040F6  7403              jz 0x40fb
000040F8  BEBA03            mov si,0x3ba
000040FB  E819D1            call word 0x1217
000040FE  5E                pop si
000040FF  89BC3A02          mov [si+0x23a],di
00004103  88BC3C02          mov [si+0x23c],bh
00004107  889C3D02          mov [si+0x23d],bl
0000410B  5F                pop di
0000410C  5E                pop si
0000410D  59                pop cx
0000410E  5B                pop bx
0000410F  58                pop ax
00004110  C3                ret
00004111  57                push di
00004112  803E4D0600        cmp byte [0x64d],0x0
00004117  7440              jz 0x4159
00004119  268A05            mov al,[es:di]
0000411C  3CC7              cmp al,0xc7
0000411E  7406              jz 0x4126
00004120  BECE03            mov si,0x3ce
00004123  E8F1D0            call word 0x1217
00004126  81EFA400          sub di,0xa4
0000412A  E82E00            call word 0x415b
0000412D  83C704            add di,byte +0x4
00004130  E82800            call word 0x415b
00004133  83C704            add di,byte +0x4
00004136  E82200            call word 0x415b
00004139  81C79800          add di,0x98
0000413D  E81B00            call word 0x415b
00004140  83C708            add di,byte +0x8
00004143  E81500            call word 0x415b
00004146  81C79800          add di,0x98
0000414A  E80E00            call word 0x415b
0000414D  83C704            add di,byte +0x4
00004150  E80800            call word 0x415b
00004153  83C704            add di,byte +0x4
00004156  E80200            call word 0x415b
00004159  5F                pop di
0000415A  C3                ret
0000415B  E84404            call word 0x45a2
0000415E  268A05            mov al,[es:di]
00004161  3CB1              cmp al,0xb1
00004163  7507              jnz 0x416c
00004165  BECE03            mov si,0x3ce
00004168  E8ACD0            call word 0x1217
0000416B  C3                ret
0000416C  803E4E0600        cmp byte [0x64e],0x0
00004171  74F8              jz 0x416b
00004173  3CC3              cmp al,0xc3
00004175  7401              jz 0x4178
00004177  C3                ret
00004178  E896FF            call word 0x4111
0000417B  C3                ret
0000417C  50                push ax
0000417D  E81100            call word 0x4191
00004180  268A05            mov al,[es:di]
00004183  3C11              cmp al,0x11
00004185  7404              jz 0x418b
00004187  3C7F              cmp al,0x7f
00004189  7503              jnz 0x418e
0000418B  F8                clc
0000418C  58                pop ax
0000418D  C3                ret
0000418E  F9                stc
0000418F  58                pop ax
00004190  C3                ret
00004191  C606990600        mov byte [0x699],0x0
00004196  C6069A0600        mov byte [0x69a],0x0
0000419B  8BBC3A02          mov di,[si+0x23a]
0000419F  8ABC3C02          mov bh,[si+0x23c]
000041A3  8A9C3D02          mov bl,[si+0x23d]
000041A7  3A3E7F06          cmp bh,[0x67f]
000041AB  7419              jz 0x41c6
000041AD  730D              jnc 0x41bc
000041AF  FEC7              inc bh
000041B1  83C704            add di,byte +0x4
000041B4  C606990601        mov byte [0x699],0x1
000041B9  EB0B              jmp short 0x41c6
000041BB  90                nop
000041BC  FECF              dec bh
000041BE  83EF04            sub di,byte +0x4
000041C1  C6069906FF        mov byte [0x699],0xff
000041C6  3A1E8006          cmp bl,[0x680]
000041CA  741B              jz 0x41e7
000041CC  730E              jnc 0x41dc
000041CE  FEC3              inc bl
000041D0  81C7A000          add di,0xa0
000041D4  C6069A0601        mov byte [0x69a],0x1
000041D9  EB0C              jmp short 0x41e7
000041DB  90                nop
000041DC  FECB              dec bl
000041DE  81EFA000          sub di,0xa0
000041E2  C6069A06FF        mov byte [0x69a],0xff
000041E7  C3                ret
000041E8  50                push ax
000041E9  C606990600        mov byte [0x699],0x0
000041EE  C6069A0600        mov byte [0x69a],0x0
000041F3  8BBC3A02          mov di,[si+0x23a]
000041F7  8ABC3C02          mov bh,[si+0x23c]
000041FB  8A9C3D02          mov bl,[si+0x23d]
000041FF  8A267F06          mov ah,[0x67f]
00004203  2AE7              sub ah,bh
00004205  80FC00            cmp ah,0x0
00004208  7D02              jnl 0x420c
0000420A  F6DC              neg ah
0000420C  A08006            mov al,[0x680]
0000420F  2AC3              sub al,bl
00004211  3C00              cmp al,0x0
00004213  7D02              jnl 0x4217
00004215  F6D8              neg al
00004217  3AE0              cmp ah,al
00004219  7C20              jl 0x423b
0000421B  3A3E7F06          cmp bh,[0x67f]
0000421F  720D              jc 0x422e
00004221  FECF              dec bh
00004223  83EF04            sub di,byte +0x4
00004226  C6069906FF        mov byte [0x699],0xff
0000422B  EB2D              jmp short 0x425a
0000422D  90                nop
0000422E  FEC7              inc bh
00004230  83C704            add di,byte +0x4
00004233  C606990601        mov byte [0x699],0x1
00004238  EB20              jmp short 0x425a
0000423A  90                nop
0000423B  3A1E8006          cmp bl,[0x680]
0000423F  720E              jc 0x424f
00004241  FECB              dec bl
00004243  81EFA000          sub di,0xa0
00004247  C6069A06FF        mov byte [0x69a],0xff
0000424C  EB0C              jmp short 0x425a
0000424E  90                nop
0000424F  FEC3              inc bl
00004251  81C7A000          add di,0xa0
00004255  C6069A0601        mov byte [0x69a],0x1
0000425A  58                pop ax
0000425B  C3                ret
0000425C  50                push ax
0000425D  C606990600        mov byte [0x699],0x0
00004262  C6069A0600        mov byte [0x69a],0x0
00004267  8BBC3A02          mov di,[si+0x23a]
0000426B  8ABC3C02          mov bh,[si+0x23c]
0000426F  8A9C3D02          mov bl,[si+0x23d]
00004273  8A267F06          mov ah,[0x67f]
00004277  2AE7              sub ah,bh
00004279  80FC00            cmp ah,0x0
0000427C  7D02              jnl 0x4280
0000427E  F6DC              neg ah
00004280  A08006            mov al,[0x680]
00004283  2AC3              sub al,bl
00004285  3C00              cmp al,0x0
00004287  7D02              jnl 0x428b
00004289  F6D8              neg al
0000428B  80FC00            cmp ah,0x0
0000428E  7428              jz 0x42b8
00004290  3C00              cmp al,0x0
00004292  7404              jz 0x4298
00004294  3AE0              cmp ah,al
00004296  7F20              jg 0x42b8
00004298  3A3E7F06          cmp bh,[0x67f]
0000429C  720D              jc 0x42ab
0000429E  FECF              dec bh
000042A0  83EF04            sub di,byte +0x4
000042A3  C6069906FF        mov byte [0x699],0xff
000042A8  EB2D              jmp short 0x42d7
000042AA  90                nop
000042AB  FEC7              inc bh
000042AD  83C704            add di,byte +0x4
000042B0  C606990601        mov byte [0x699],0x1
000042B5  EB20              jmp short 0x42d7
000042B7  90                nop
000042B8  3A1E8006          cmp bl,[0x680]
000042BC  720E              jc 0x42cc
000042BE  FECB              dec bl
000042C0  81EFA000          sub di,0xa0
000042C4  C6069A06FF        mov byte [0x69a],0xff
000042C9  EB0C              jmp short 0x42d7
000042CB  90                nop
000042CC  FEC3              inc bl
000042CE  81C7A000          add di,0xa0
000042D2  C6069A0601        mov byte [0x69a],0x1
000042D7  58                pop ax
000042D8  C3                ret
000042D9  E80CFF            call word 0x41e8
000042DC  80BC410202        cmp byte [si+0x241],0x2
000042E1  7503              jnz 0x42e6
000042E3  EB37              jmp short 0x431c
000042E5  90                nop
000042E6  803E990600        cmp byte [0x699],0x0
000042EB  741A              jz 0x4307
000042ED  FECB              dec bl
000042EF  81EFA000          sub di,0xa0
000042F3  E82A00            call word 0x4320
000042F6  7326              jnc 0x431e
000042F8  80C302            add bl,0x2
000042FB  81C74001          add di,0x140
000042FF  E81E00            call word 0x4320
00004302  731A              jnc 0x431e
00004304  EB16              jmp short 0x431c
00004306  90                nop
00004307  FECF              dec bh
00004309  83EF04            sub di,byte +0x4
0000430C  E81100            call word 0x4320
0000430F  730D              jnc 0x431e
00004311  80C702            add bh,0x2
00004314  83C708            add di,byte +0x8
00004317  E80600            call word 0x4320
0000431A  7302              jnc 0x431e
0000431C  F9                stc
0000431D  C3                ret
0000431E  F8                clc
0000431F  C3                ret
00004320  50                push ax
00004321  268A05            mov al,[es:di]
00004324  3C11              cmp al,0x11
00004326  7404              jz 0x432c
00004328  3C7F              cmp al,0x7f
0000432A  7507              jnz 0x4333
0000432C  FE067A06          inc byte [0x67a]
00004330  EB24              jmp short 0x4356
00004332  90                nop
00004333  3C20              cmp al,0x20
00004335  741F              jz 0x4356
00004337  80BC410202        cmp byte [si+0x241],0x2
0000433C  7515              jnz 0x4353
0000433E  3CB1              cmp al,0xb1
00004340  7511              jnz 0x4353
00004342  893E9506          mov [0x695],di
00004346  883E9706          mov [0x697],bh
0000434A  881E9806          mov [0x698],bl
0000434E  E823CA            call word 0xd74
00004351  7303              jnc 0x4356
00004353  F9                stc
00004354  58                pop ax
00004355  C3                ret
00004356  F8                clc
00004357  58                pop ax
00004358  C3                ret
00004359  50                push ax
0000435A  C606990600        mov byte [0x699],0x0
0000435F  C6069A0600        mov byte [0x69a],0x0
00004364  8BBC3A02          mov di,[si+0x23a]
00004368  8ABC3C02          mov bh,[si+0x23c]
0000436C  8A9C3D02          mov bl,[si+0x23d]
00004370  E85BED            call word 0x30ce
00004373  A16D06            mov ax,[0x66d]
00004376  F6C402            test ah,0x2
00004379  7520              jnz 0x439b
0000437B  F6C401            test ah,0x1
0000437E  750D              jnz 0x438d
00004380  FECF              dec bh
00004382  83EF04            sub di,byte +0x4
00004385  C6069906FF        mov byte [0x699],0xff
0000438A  EB0B              jmp short 0x4397
0000438C  90                nop
0000438D  FEC7              inc bh
0000438F  83C704            add di,byte +0x4
00004392  C606990601        mov byte [0x699],0x1
00004397  A802              test al,0x2
00004399  751D              jnz 0x43b8
0000439B  A801              test al,0x1
0000439D  750E              jnz 0x43ad
0000439F  FEC3              inc bl
000043A1  81C7A000          add di,0xa0
000043A5  C6069A0601        mov byte [0x69a],0x1
000043AA  EB0C              jmp short 0x43b8
000043AC  90                nop
000043AD  FECB              dec bl
000043AF  81EFA000          sub di,0xa0
000043B3  C6069A06FF        mov byte [0x69a],0xff
000043B8  58                pop ax
000043B9  C3                ret
000043BA  50                push ax
000043BB  53                push bx
000043BC  51                push cx
000043BD  56                push si
000043BE  57                push di
000043BF  8A3EA806          mov bh,[0x6a8]
000043C3  883EA906          mov [0x6a9],bh
000043C7  BE0000            mov si,0x0
000043CA  C684420200        mov byte [si+0x242],0x0
000043CF  C6843E0201        mov byte [si+0x23e],0x1
000043D4  C684410200        mov byte [si+0x241],0x0
000043D9  B414              mov ah,0x14
000043DB  E808ED            call word 0x30e6
000043DE  8A269D06          mov ah,[0x69d]
000043E2  2AE0              sub ah,al
000043E4  88A44002          mov [si+0x240],ah
000043E8  B432              mov ah,0x32
000043EA  E8F9EC            call word 0x30e6
000043ED  04C8              add al,0xc8
000043EF  88843F02          mov [si+0x23f],al
000043F3  B41D              mov ah,0x1d
000043F5  E8EEEC            call word 0x30e6
000043F8  0409              add al,0x9
000043FA  88843C02          mov [si+0x23c],al
000043FE  32E4              xor ah,ah
00004400  B102              mov cl,0x2
00004402  D3E0              shl ax,cl
00004404  8BC8              mov cx,ax
00004406  B414              mov ah,0x14
00004408  E8DBEC            call word 0x30e6
0000440B  FEC0              inc al
0000440D  88843D02          mov [si+0x23d],al
00004411  F626D203          mul byte [0x3d2]
00004415  03C1              add ax,cx
00004417  89843A02          mov [si+0x23a],ax
0000441B  8BF8              mov di,ax
0000441D  268A05            mov al,[es:di]
00004420  3CC3              cmp al,0xc3
00004422  74A6              jz 0x43ca
00004424  3CC7              cmp al,0xc7
00004426  74A2              jz 0x43ca
00004428  3C11              cmp al,0x11
0000442A  749E              jz 0x43ca
0000442C  3C7F              cmp al,0x7f
0000442E  749A              jz 0x43ca
00004430  3A3E5806          cmp bh,[0x658]
00004434  771D              ja 0x4453
00004436  B40B              mov ah,0xb
00004438  E8ABEC            call word 0x30e6
0000443B  02065706          add al,[0x657]
0000443F  2C06              sub al,0x6
00004441  A880              test al,0x80
00004443  7402              jz 0x4447
00004445  B001              mov al,0x1
00004447  88844202          mov [si+0x242],al
0000444B  C684410203        mov byte [si+0x241],0x3
00004450  EB31              jmp short 0x4483
00004452  90                nop
00004453  8AC7              mov al,bh
00004455  803E4F0604        cmp byte [0x64f],0x4
0000445A  7422              jz 0x447e
0000445C  2407              and al,0x7
0000445E  803E4F0601        cmp byte [0x64f],0x1
00004463  7415              jz 0x447a
00004465  2403              and al,0x3
00004467  803E4F0602        cmp byte [0x64f],0x2
0000446C  740C              jz 0x447a
0000446E  2401              and al,0x1
00004470  803E4F0603        cmp byte [0x64f],0x3
00004475  7403              jz 0x447a
00004477  EB0A              jmp short 0x4483
00004479  90                nop
0000447A  3C00              cmp al,0x0
0000447C  7505              jnz 0x4483
0000447E  C684410201        mov byte [si+0x241],0x1
00004483  8A844102          mov al,[si+0x241]
00004487  56                push si
00004488  BEA203            mov si,0x3a2
0000448B  3C00              cmp al,0x0
0000448D  740A              jz 0x4499
0000448F  BEAA03            mov si,0x3aa
00004492  3C01              cmp al,0x1
00004494  7403              jz 0x4499
00004496  BEB203            mov si,0x3b2
00004499  E87BCD            call word 0x1217
0000449C  5E                pop si
0000449D  83C609            add si,byte +0x9
000044A0  FECF              dec bh
000044A2  80FF00            cmp bh,0x0
000044A5  7403              jz 0x44aa
000044A7  E920FF            jmp word 0x43ca
000044AA  5F                pop di
000044AB  5E                pop si
000044AC  59                pop cx
000044AD  5B                pop bx
000044AE  58                pop ax
000044AF  C3                ret
000044B0  50                push ax
000044B1  53                push bx
000044B2  56                push si
000044B3  57                push di
000044B4  81EFA400          sub di,0xa4
000044B8  FECB              dec bl
000044BA  FECF              dec bh
000044BC  26803D20          cmp byte [es:di],0x20
000044C0  7508              jnz 0x44ca
000044C2  E86000            call word 0x4525
000044C5  7240              jc 0x4507
000044C7  E84200            call word 0x450c
000044CA  83C708            add di,byte +0x8
000044CD  80C302            add bl,0x2
000044D0  26803D20          cmp byte [es:di],0x20
000044D4  7508              jnz 0x44de
000044D6  E84C00            call word 0x4525
000044D9  722C              jc 0x4507
000044DB  E82E00            call word 0x450c
000044DE  81C74001          add di,0x140
000044E2  80C702            add bh,0x2
000044E5  26803D20          cmp byte [es:di],0x20
000044E9  7508              jnz 0x44f3
000044EB  E83700            call word 0x4525
000044EE  7217              jc 0x4507
000044F0  E81900            call word 0x450c
000044F3  83EF08            sub di,byte +0x8
000044F6  80EB02            sub bl,0x2
000044F9  26803D20          cmp byte [es:di],0x20
000044FD  7508              jnz 0x4507
000044FF  E82300            call word 0x4525
00004502  7203              jc 0x4507
00004504  E80500            call word 0x450c
00004507  5F                pop di
00004508  5E                pop si
00004509  5B                pop bx
0000450A  58                pop ax
0000450B  C3                ret
0000450C  56                push si
0000450D  89BC3A02          mov [si+0x23a],di
00004511  889C3C02          mov [si+0x23c],bl
00004515  88BC3D02          mov [si+0x23d],bh
00004519  BEA203            mov si,0x3a2
0000451C  E8F8CC            call word 0x1217
0000451F  FE06A906          inc byte [0x6a9]
00004523  5E                pop si
00004524  C3                ret
00004525  50                push ax
00004526  53                push bx
00004527  57                push di
00004528  33F6              xor si,si
0000452A  8A3EA806          mov bh,[0x6a8]
0000452E  80BC3E0200        cmp byte [si+0x23e],0x0
00004533  7419              jz 0x454e
00004535  83C609            add si,byte +0x9
00004538  FECF              dec bh
0000453A  80FF00            cmp bh,0x0
0000453D  75EF              jnz 0x452e
0000453F  A0A806            mov al,[0x6a8]
00004542  3C28              cmp al,0x28
00004544  7504              jnz 0x454a
00004546  F9                stc
00004547  EB24              jmp short 0x456d
00004549  90                nop
0000454A  FE06A806          inc byte [0x6a8]
0000454E  C6843E0201        mov byte [si+0x23e],0x1
00004553  C6843F02C8        mov byte [si+0x23f],0xc8
00004558  B414              mov ah,0x14
0000455A  E889EB            call word 0x30e6
0000455D  8A269D06          mov ah,[0x69d]
00004561  2AE0              sub ah,al
00004563  88A44002          mov [si+0x240],ah
00004567  C684410200        mov byte [si+0x241],0x0
0000456C  F8                clc
0000456D  5F                pop di
0000456E  5B                pop bx
0000456F  58                pop ax
00004570  C3                ret
00004571  8403              test [bp+di],al
00004573  0300              add ax,[bx+si]
00004575  BC0203            mov sp,0x302
00004578  00E8              add al,ch
0000457A  0302              add ax,[bp+si]
0000457C  0000              add [bx+si],al
0000457E  0000              add [bx+si],al
00004580  0056BE            add [bp-0x42],dl
00004583  7145              jno 0x45ca
00004585  E80CEA            call word 0x2f94
00004588  5E                pop si
00004589  C3                ret
0000458A  B703              mov bh,0x3
0000458C  0100              add [bx+si],ax
0000458E  F9                stc
0000458F  0201              add al,[bx+di]
00004591  004903            add [bx+di+0x3],cl
00004594  0100              add [bx+si],ax
00004596  06                push es
00004597  0301              add ax,[bx+di]
00004599  005E03            add [bp+0x3],bl
0000459C  0100              add [bx+si],ax
0000459E  0000              add [bx+si],al
000045A0  0000              add [bx+si],al
000045A2  56                push si
000045A3  BE8A45            mov si,0x458a
000045A6  E8EBE9            call word 0x2f94
000045A9  5E                pop si
000045AA  C3                ret
000045AB  58                pop ax
000045AC  0205              add al,[di]
000045AE  00260205          add [0x502],ah
000045B2  00F4              add ah,dh
000045B4  0105              add [di],ax
000045B6  00260205          add [0x502],ah
000045BA  005802            add [bx+si+0x2],bl
000045BD  050026            add ax,0x2600
000045C0  0205              add al,[di]
000045C2  00F4              add ah,dh
000045C4  0105              add [di],ax
000045C6  00260205          add [0x502],ah
000045CA  005802            add [bx+si+0x2],bl
000045CD  050026            add ax,0x2600
000045D0  0205              add al,[di]
000045D2  00F4              add ah,dh
000045D4  0105              add [di],ax
000045D6  00260205          add [0x502],ah
000045DA  005802            add [bx+si+0x2],bl
000045DD  050026            add ax,0x2600
000045E0  0205              add al,[di]
000045E2  00F4              add ah,dh
000045E4  0105              add [di],ax
000045E6  00260205          add [0x502],ah
000045EA  005802            add [bx+si+0x2],bl
000045ED  050026            add ax,0x2600
000045F0  0205              add al,[di]
000045F2  00F4              add ah,dh
000045F4  0105              add [di],ax
000045F6  00260205          add [0x502],ah
000045FA  005802            add [bx+si+0x2],bl
000045FD  050026            add ax,0x2600
00004600  0205              add al,[di]
00004602  00F4              add ah,dh
00004604  0105              add [di],ax
00004606  00260205          add [0x502],ah
0000460A  0000              add [bx+si],al
0000460C  0000              add [bx+si],al
0000460E  005053            add [bx+si+0x53],dl
00004611  51                push cx
00004612  52                push dx
00004613  56                push si
00004614  57                push di
00004615  8B166106          mov dx,[0x661]
00004619  A06406            mov al,[0x664]
0000461C  EE                out dx,al
0000461D  B90040            mov cx,0x4000
00004620  E2FE              loop 0x4620
00004622  8B166106          mov dx,[0x661]
00004626  A06306            mov al,[0x663]
00004629  EE                out dx,al
0000462A  B90040            mov cx,0x4000
0000462D  E2FE              loop 0x462d
0000462F  8B166106          mov dx,[0x661]
00004633  A06406            mov al,[0x664]
00004636  EE                out dx,al
00004637  B90040            mov cx,0x4000
0000463A  E2FE              loop 0x463a
0000463C  8B166106          mov dx,[0x661]
00004640  A06306            mov al,[0x663]
00004643  EE                out dx,al
00004644  B90100            mov cx,0x1
00004647  E2FE              loop 0x4647
00004649  BEAB45            mov si,0x45ab
0000464C  E845E9            call word 0x2f94
0000464F  8B166106          mov dx,[0x661]
00004653  A06406            mov al,[0x664]
00004656  EE                out dx,al
00004657  B90040            mov cx,0x4000
0000465A  E2FE              loop 0x465a
0000465C  8B166106          mov dx,[0x661]
00004660  A06306            mov al,[0x663]
00004663  EE                out dx,al
00004664  B90040            mov cx,0x4000
00004667  E2FE              loop 0x4667
00004669  8B166106          mov dx,[0x661]
0000466D  A06406            mov al,[0x664]
00004670  EE                out dx,al
00004671  B90040            mov cx,0x4000
00004674  E2FE              loop 0x4674
00004676  8B166106          mov dx,[0x661]
0000467A  A06306            mov al,[0x663]
0000467D  EE                out dx,al
0000467E  B90100            mov cx,0x1
00004681  E2FE              loop 0x4681
00004683  5F                pop di
00004684  5E                pop si
00004685  5A                pop dx
00004686  59                pop cx
00004687  5B                pop bx
00004688  58                pop ax
00004689  C3                ret
0000468A  F4                hlt
0000468B  010A              add [bp+si],cx
0000468D  00EF              add bh,ch
0000468F  010A              add [bp+si],cx
00004691  00EA              add dl,ch
00004693  010A              add [bp+si],cx
00004695  00E5              add ch,ah
00004697  010A              add [bp+si],cx
00004699  00E0              add al,ah
0000469B  010A              add [bp+si],cx
0000469D  00DB              add bl,bl
0000469F  010A              add [bp+si],cx
000046A1  00D6              add dh,dl
000046A3  010A              add [bp+si],cx
000046A5  00D1              add cl,dl
000046A7  010A              add [bp+si],cx
000046A9  00CC              add ah,cl
000046AB  010A              add [bp+si],cx
000046AD  00C7              add bh,al
000046AF  010A              add [bp+si],cx
000046B1  00C2              add dl,al
000046B3  010A              add [bp+si],cx
000046B5  00BD010A          add [di+0xa01],bh
000046B9  00B8010A          add [bx+si+0xa01],bh
000046BD  00B3010A          add [bp+di+0xa01],dh
000046C1  0000              add [bx+si],al
000046C3  0000              add [bx+si],al
000046C5  0056BE            add [bp-0x42],dl
000046C8  8A46E8            mov al,[bp-0x18]
000046CB  C7                db 0xc7
000046CC  E85EC3            call word 0xa2d
000046CF  2C01              sub al,0x1
000046D1  2800              sub [bx+si],al
000046D3  360128            add [ss:bx+si],bp
000046D6  002C              add [si],ch
000046D8  0128              add [bx+si],bp
000046DA  00360128          add [0x2801],dh
000046DE  002C              add [si],ch
000046E0  0128              add [bx+si],bp
000046E2  0000              add [bx+si],al
000046E4  0000              add [bx+si],al
000046E6  0056BE            add [bp-0x42],dl
000046E9  CF                iretw
000046EA  46                inc si
000046EB  E8A6E8            call word 0x2f94
000046EE  5E                pop si
000046EF  C3                ret
000046F0  1E                push ds
000046F1  0014              add [si],dl
000046F3  0032              add [bp+si],dh
000046F5  0014              add [si],dl
000046F7  0028              add [bx+si],ch
000046F9  0014              add [si],dl
000046FB  003C              add [si],bh
000046FD  0014              add [si],dl
000046FF  0000              add [bx+si],al
00004701  0000              add [bx+si],al
00004703  0056BE            add [bp-0x42],dl
00004706  F046              lock inc si
00004708  E889E8            call word 0x2f94
0000470B  5E                pop si
0000470C  C3                ret
0000470D  1400              adc al,0x0
0000470F  05003C            add ax,0x3c00
00004712  0002              add [bp+si],al
00004714  0014              add [si],dl
00004716  0005              add [di],al
00004718  0028              add [bx+si],ch
0000471A  0003              add [bp+di],al
0000471C  0014              add [si],dl
0000471E  0005              add [di],al
00004720  003C              add [si],bh
00004722  0002              add [bp+si],al
00004724  0014              add [si],dl
00004726  0005              add [di],al
00004728  0028              add [bx+si],ch
0000472A  0003              add [bp+di],al
0000472C  003C              add [si],bh
0000472E  0002              add [bp+si],al
00004730  0014              add [si],dl
00004732  0005              add [di],al
00004734  0028              add [bx+si],ch
00004736  0003              add [bp+di],al
00004738  0014              add [si],dl
0000473A  0005              add [di],al
0000473C  003C              add [si],bh
0000473E  0002              add [bp+si],al
00004740  0014              add [si],dl
00004742  0005              add [di],al
00004744  0028              add [bx+si],ch
00004746  0003              add [bp+di],al
00004748  006400            add [si+0x0],ah
0000474B  0200              add al,[bx+si]
0000474D  1400              adc al,0x0
0000474F  05003C            add ax,0x3c00
00004752  0002              add [bp+si],al
00004754  0014              add [si],dl
00004756  0005              add [di],al
00004758  0014              add [si],dl
0000475A  0005              add [di],al
0000475C  003C              add [si],bh
0000475E  0002              add [bp+si],al
00004760  0014              add [si],dl
00004762  0005              add [di],al
00004764  0028              add [bx+si],ch
00004766  0003              add [bp+di],al
00004768  0014              add [si],dl
0000476A  0005              add [di],al
0000476C  003C              add [si],bh
0000476E  0002              add [bp+si],al
00004770  0028              add [bx+si],ch
00004772  0003              add [bp+di],al
00004774  0014              add [si],dl
00004776  0005              add [di],al
00004778  003C              add [si],bh
0000477A  0002              add [bp+si],al
0000477C  0014              add [si],dl
0000477E  0005              add [di],al
00004780  0028              add [bx+si],ch
00004782  0003              add [bp+di],al
00004784  0000              add [bx+si],al
00004786  0000              add [bx+si],al
00004788  0056BE            add [bp-0x42],dl
0000478B  0D47E8            or ax,0xe847
0000478E  04E8              add al,0xe8
00004790  5E                pop si
00004791  C3                ret
00004792  50                push ax
00004793  53                push bx
00004794  51                push cx
00004795  57                push di
00004796  8BD8              mov bx,ax
00004798  8B3E7D06          mov di,[0x67d]
0000479C  B90400            mov cx,0x4
0000479F  33C0              xor ax,ax
000047A1  50                push ax
000047A2  53                push bx
000047A3  52                push dx
000047A4  8BD8              mov bx,ax
000047A6  803E600601        cmp byte [0x660],0x1
000047AB  740E              jz 0x47bb
000047AD  BADA03            mov dx,0x3da
000047B0  EC                in al,dx
000047B1  A801              test al,0x1
000047B3  75FB              jnz 0x47b0
000047B5  FA                cli
000047B6  EC                in al,dx
000047B7  A801              test al,0x1
000047B9  74FB              jz 0x47b6
000047BB  26891D            mov [es:di],bx
000047BE  FB                sti
000047BF  5A                pop dx
000047C0  5B                pop bx
000047C1  58                pop ax
000047C2  50                push ax
000047C3  53                push bx
000047C4  52                push dx
000047C5  8BD8              mov bx,ax
000047C7  803E600601        cmp byte [0x660],0x1
000047CC  740E              jz 0x47dc
000047CE  BADA03            mov dx,0x3da
000047D1  EC                in al,dx
000047D2  A801              test al,0x1
000047D4  75FB              jnz 0x47d1
000047D6  FA                cli
000047D7  EC                in al,dx
000047D8  A801              test al,0x1
000047DA  74FB              jz 0x47d7
000047DC  26895D02          mov [es:di+0x2],bx
000047E0  FB                sti
000047E1  5A                pop dx
000047E2  5B                pop bx
000047E3  58                pop ax
000047E4  8BC3              mov ax,bx
000047E6  D1E0              shl ax,1
000047E8  E853E8            call word 0x303e
000047EB  8A26A506          mov ah,[0x6a5]
000047EF  B0DB              mov al,0xdb
000047F1  50                push ax
000047F2  53                push bx
000047F3  52                push dx
000047F4  8BD8              mov bx,ax
000047F6  803E600601        cmp byte [0x660],0x1
000047FB  740E              jz 0x480b
000047FD  BADA03            mov dx,0x3da
00004800  EC                in al,dx
00004801  A801              test al,0x1
00004803  75FB              jnz 0x4800
00004805  FA                cli
00004806  EC                in al,dx
00004807  A801              test al,0x1
00004809  74FB              jz 0x4806
0000480B  26891D            mov [es:di],bx
0000480E  FB                sti
0000480F  5A                pop dx
00004810  5B                pop bx
00004811  58                pop ax
00004812  8A26A506          mov ah,[0x6a5]
00004816  B0DB              mov al,0xdb
00004818  50                push ax
00004819  53                push bx
0000481A  52                push dx
0000481B  8BD8              mov bx,ax
0000481D  803E600601        cmp byte [0x660],0x1
00004822  740E              jz 0x4832
00004824  BADA03            mov dx,0x3da
00004827  EC                in al,dx
00004828  A801              test al,0x1
0000482A  75FB              jnz 0x4827
0000482C  FA                cli
0000482D  EC                in al,dx
0000482E  A801              test al,0x1
00004830  74FB              jz 0x482d
00004832  26895D02          mov [es:di+0x2],bx
00004836  FB                sti
00004837  5A                pop dx
00004838  5B                pop bx
00004839  58                pop ax
0000483A  8BC3              mov ax,bx
0000483C  E8FFE7            call word 0x303e
0000483F  8A26A406          mov ah,[0x6a4]
00004843  B0DB              mov al,0xdb
00004845  50                push ax
00004846  53                push bx
00004847  52                push dx
00004848  8BD8              mov bx,ax
0000484A  803E600601        cmp byte [0x660],0x1
0000484F  740E              jz 0x485f
00004851  BADA03            mov dx,0x3da
00004854  EC                in al,dx
00004855  A801              test al,0x1
00004857  75FB              jnz 0x4854
00004859  FA                cli
0000485A  EC                in al,dx
0000485B  A801              test al,0x1
0000485D  74FB              jz 0x485a
0000485F  26891D            mov [es:di],bx
00004862  FB                sti
00004863  5A                pop dx
00004864  5B                pop bx
00004865  58                pop ax
00004866  8A26A406          mov ah,[0x6a4]
0000486A  B0DB              mov al,0xdb
0000486C  50                push ax
0000486D  53                push bx
0000486E  52                push dx
0000486F  8BD8              mov bx,ax
00004871  803E600601        cmp byte [0x660],0x1
00004876  740E              jz 0x4886
00004878  BADA03            mov dx,0x3da
0000487B  EC                in al,dx
0000487C  A801              test al,0x1
0000487E  75FB              jnz 0x487b
00004880  FA                cli
00004881  EC                in al,dx
00004882  A801              test al,0x1
00004884  74FB              jz 0x4881
00004886  26895D02          mov [es:di+0x2],bx
0000488A  FB                sti
0000488B  5A                pop dx
0000488C  5B                pop bx
0000488D  58                pop ax
0000488E  8BC3              mov ax,bx
00004890  D1E0              shl ax,1
00004892  E8A9E7            call word 0x303e
00004895  8A26A506          mov ah,[0x6a5]
00004899  B0DB              mov al,0xdb
0000489B  50                push ax
0000489C  53                push bx
0000489D  52                push dx
0000489E  8BD8              mov bx,ax
000048A0  803E600601        cmp byte [0x660],0x1
000048A5  740E              jz 0x48b5
000048A7  BADA03            mov dx,0x3da
000048AA  EC                in al,dx
000048AB  A801              test al,0x1
000048AD  75FB              jnz 0x48aa
000048AF  FA                cli
000048B0  EC                in al,dx
000048B1  A801              test al,0x1
000048B3  74FB              jz 0x48b0
000048B5  26891D            mov [es:di],bx
000048B8  FB                sti
000048B9  5A                pop dx
000048BA  5B                pop bx
000048BB  58                pop ax
000048BC  8A26A506          mov ah,[0x6a5]
000048C0  B0DB              mov al,0xdb
000048C2  50                push ax
000048C3  53                push bx
000048C4  52                push dx
000048C5  8BD8              mov bx,ax
000048C7  803E600601        cmp byte [0x660],0x1
000048CC  740E              jz 0x48dc
000048CE  BADA03            mov dx,0x3da
000048D1  EC                in al,dx
000048D2  A801              test al,0x1
000048D4  75FB              jnz 0x48d1
000048D6  FA                cli
000048D7  EC                in al,dx
000048D8  A801              test al,0x1
000048DA  74FB              jz 0x48d7
000048DC  26895D02          mov [es:di+0x2],bx
000048E0  FB                sti
000048E1  5A                pop dx
000048E2  5B                pop bx
000048E3  58                pop ax
000048E4  8BC3              mov ax,bx
000048E6  E855E7            call word 0x303e
000048E9  49                dec cx
000048EA  7403              jz 0x48ef
000048EC  E9B0FE            jmp word 0x479f
000048EF  8A26A506          mov ah,[0x6a5]
000048F3  B020              mov al,0x20
000048F5  50                push ax
000048F6  53                push bx
000048F7  52                push dx
000048F8  8BD8              mov bx,ax
000048FA  803E600601        cmp byte [0x660],0x1
000048FF  740E              jz 0x490f
00004901  BADA03            mov dx,0x3da
00004904  EC                in al,dx
00004905  A801              test al,0x1
00004907  75FB              jnz 0x4904
00004909  FA                cli
0000490A  EC                in al,dx
0000490B  A801              test al,0x1
0000490D  74FB              jz 0x490a
0000490F  26891D            mov [es:di],bx
00004912  FB                sti
00004913  5A                pop dx
00004914  5B                pop bx
00004915  58                pop ax
00004916  8A26A506          mov ah,[0x6a5]
0000491A  B020              mov al,0x20
0000491C  50                push ax
0000491D  53                push bx
0000491E  52                push dx
0000491F  8BD8              mov bx,ax
00004921  803E600601        cmp byte [0x660],0x1
00004926  740E              jz 0x4936
00004928  BADA03            mov dx,0x3da
0000492B  EC                in al,dx
0000492C  A801              test al,0x1
0000492E  75FB              jnz 0x492b
00004930  FA                cli
00004931  EC                in al,dx
00004932  A801              test al,0x1
00004934  74FB              jz 0x4931
00004936  26895D02          mov [es:di+0x2],bx
0000493A  FB                sti
0000493B  5A                pop dx
0000493C  5B                pop bx
0000493D  58                pop ax
0000493E  5F                pop di
0000493F  59                pop cx
00004940  5B                pop bx
00004941  58                pop ax
00004942  C3                ret
00004943  50                push ax
00004944  51                push cx
00004945  57                push di
00004946  B425              mov ah,0x25
00004948  E89BE7            call word 0x30e6
0000494B  FEC0              inc al
0000494D  A27F06            mov [0x67f],al
00004950  32E4              xor ah,ah
00004952  B102              mov cl,0x2
00004954  D3E0              shl ax,cl
00004956  8BC8              mov cx,ax
00004958  B414              mov ah,0x14
0000495A  E889E7            call word 0x30e6
0000495D  FEC0              inc al
0000495F  A28006            mov [0x680],al
00004962  F626D203          mul byte [0x3d2]
00004966  03C1              add ax,cx
00004968  A37D06            mov [0x67d],ax
0000496B  8BF8              mov di,ax
0000496D  268A05            mov al,[es:di]
00004970  3CC3              cmp al,0xc3
00004972  74D2              jz 0x4946
00004974  3CC7              cmp al,0xc7
00004976  74CE              jz 0x4946
00004978  3C09              cmp al,0x9
0000497A  74CA              jz 0x4946
0000497C  3CCE              cmp al,0xce
0000497E  74C6              jz 0x4946
00004980  5F                pop di
00004981  59                pop cx
00004982  58                pop ax
00004983  C3                ret
00004984  50                push ax
00004985  53                push bx
00004986  57                push di
00004987  51                push cx
00004988  803E520601        cmp byte [0x652],0x1
0000498D  7418              jz 0x49a7
0000498F  A08D06            mov al,[0x68d]
00004992  32E4              xor ah,ah
00004994  B50F              mov ch,0xf
00004996  BF700E            mov di,0xe70
00004999  E840E6            call word 0x2fdc
0000499C  A18B06            mov ax,[0x68b]
0000499F  B50F              mov ch,0xf
000049A1  BF8A0E            mov di,0xe8a
000049A4  E835E6            call word 0x2fdc
000049A7  A0A906            mov al,[0x6a9]
000049AA  32E4              xor ah,ah
000049AC  B50F              mov ch,0xf
000049AE  BFA00E            mov di,0xea0
000049B1  E828E6            call word 0x2fdc
000049B4  BFB60E            mov di,0xeb6
000049B7  A05906            mov al,[0x659]
000049BA  B40F              mov ah,0xf
000049BC  50                push ax
000049BD  53                push bx
000049BE  52                push dx
000049BF  8BD8              mov bx,ax
000049C1  803E600601        cmp byte [0x660],0x1
000049C6  740E              jz 0x49d6
000049C8  BADA03            mov dx,0x3da
000049CB  EC                in al,dx
000049CC  A801              test al,0x1
000049CE  75FB              jnz 0x49cb
000049D0  FA                cli
000049D1  EC                in al,dx
000049D2  A801              test al,0x1
000049D4  74FB              jz 0x49d1
000049D6  26891D            mov [es:di],bx
000049D9  FB                sti
000049DA  5A                pop dx
000049DB  5B                pop bx
000049DC  58                pop ax
000049DD  A07806            mov al,[0x678]
000049E0  32E4              xor ah,ah
000049E2  B50F              mov ch,0xf
000049E4  BFB40E            mov di,0xeb4
000049E7  E8F2E5            call word 0x2fdc
000049EA  B70F              mov bh,0xf
000049EC  BFD00E            mov di,0xed0
000049EF  E82C00            call word 0x4a1e
000049F2  A08306            mov al,[0x683]
000049F5  32E4              xor ah,ah
000049F7  B50F              mov ch,0xf
000049F9  BFE00E            mov di,0xee0
000049FC  E8DDE5            call word 0x2fdc
000049FF  A18106            mov ax,[0x681]
00004A02  B50F              mov ch,0xf
00004A04  BFFA0E            mov di,0xefa
00004A07  E8D2E5            call word 0x2fdc
00004A0A  59                pop cx
00004A0B  5F                pop di
00004A0C  5B                pop bx
00004A0D  58                pop ax
00004A0E  C3                ret
00004A0F  50                push ax
00004A10  51                push cx
00004A11  52                push dx
00004A12  32E4              xor ah,ah
00004A14  CD1A              int 0x1a
00004A16  89166706          mov [0x667],dx
00004A1A  5A                pop dx
00004A1B  59                pop cx
00004A1C  58                pop ax
00004A1D  C3                ret
00004A1E  50                push ax
00004A1F  53                push bx
00004A20  51                push cx
00004A21  52                push dx
00004A22  32E4              xor ah,ah
00004A24  CD1A              int 0x1a
00004A26  2B166706          sub dx,[0x667]
00004A2A  8BC2              mov ax,dx
00004A2C  33D2              xor dx,dx
00004A2E  B93804            mov cx,0x438
00004A31  F7F1              div cx
00004A33  A37106            mov [0x671],ax
00004A36  8BC2              mov ax,dx
00004A38  33D2              xor dx,dx
00004A3A  B91200            mov cx,0x12
00004A3D  F7F1              div cx
00004A3F  32E4              xor ah,ah
00004A41  B10A              mov cl,0xa
00004A43  F6F1              div cl
00004A45  B330              mov bl,0x30
00004A47  8BD3              mov dx,bx
00004A49  02D4              add dl,ah
00004A4B  803E4A0600        cmp byte [0x64a],0x0
00004A50  7424              jz 0x4a76
00004A52  3A166906          cmp dl,[0x669]
00004A56  741E              jz 0x4a76
00004A58  88166906          mov [0x669],dl
00004A5C  803E690630        cmp byte [0x669],0x30
00004A61  7713              ja 0x4a76
00004A63  803E4A0600        cmp byte [0x64a],0x0
00004A68  740C              jz 0x4a76
00004A6A  803E6A06FF        cmp byte [0x66a],0xff
00004A6F  7405              jz 0x4a76
00004A71  C6066A0601        mov byte [0x66a],0x1
00004A76  50                push ax
00004A77  53                push bx
00004A78  52                push dx
00004A79  8BDA              mov bx,dx
00004A7B  803E600601        cmp byte [0x660],0x1
00004A80  740E              jz 0x4a90
00004A82  BADA03            mov dx,0x3da
00004A85  EC                in al,dx
00004A86  A801              test al,0x1
00004A88  75FB              jnz 0x4a85
00004A8A  FA                cli
00004A8B  EC                in al,dx
00004A8C  A801              test al,0x1
00004A8E  74FB              jz 0x4a8b
00004A90  26891D            mov [es:di],bx
00004A93  FB                sti
00004A94  5A                pop dx
00004A95  5B                pop bx
00004A96  58                pop ax
00004A97  83EF02            sub di,byte +0x2
00004A9A  8BD3              mov dx,bx
00004A9C  02D0              add dl,al
00004A9E  50                push ax
00004A9F  53                push bx
00004AA0  52                push dx
00004AA1  8BDA              mov bx,dx
00004AA3  803E600601        cmp byte [0x660],0x1
00004AA8  740E              jz 0x4ab8
00004AAA  BADA03            mov dx,0x3da
00004AAD  EC                in al,dx
00004AAE  A801              test al,0x1
00004AB0  75FB              jnz 0x4aad
00004AB2  FA                cli
00004AB3  EC                in al,dx
00004AB4  A801              test al,0x1
00004AB6  74FB              jz 0x4ab3
00004AB8  26891D            mov [es:di],bx
00004ABB  FB                sti
00004ABC  5A                pop dx
00004ABD  5B                pop bx
00004ABE  58                pop ax
00004ABF  83EF02            sub di,byte +0x2
00004AC2  B23A              mov dl,0x3a
00004AC4  50                push ax
00004AC5  53                push bx
00004AC6  52                push dx
00004AC7  8BDA              mov bx,dx
00004AC9  803E600601        cmp byte [0x660],0x1
00004ACE  740E              jz 0x4ade
00004AD0  BADA03            mov dx,0x3da
00004AD3  EC                in al,dx
00004AD4  A801              test al,0x1
00004AD6  75FB              jnz 0x4ad3
00004AD8  FA                cli
00004AD9  EC                in al,dx
00004ADA  A801              test al,0x1
00004ADC  74FB              jz 0x4ad9
00004ADE  26891D            mov [es:di],bx
00004AE1  FB                sti
00004AE2  5A                pop dx
00004AE3  5B                pop bx
00004AE4  58                pop ax
00004AE5  83EF02            sub di,byte +0x2
00004AE8  A17106            mov ax,[0x671]
00004AEB  32E4              xor ah,ah
00004AED  F6F1              div cl
00004AEF  8BD3              mov dx,bx
00004AF1  02D4              add dl,ah
00004AF3  50                push ax
00004AF4  53                push bx
00004AF5  52                push dx
00004AF6  8BDA              mov bx,dx
00004AF8  803E600601        cmp byte [0x660],0x1
00004AFD  740E              jz 0x4b0d
00004AFF  BADA03            mov dx,0x3da
00004B02  EC                in al,dx
00004B03  A801              test al,0x1
00004B05  75FB              jnz 0x4b02
00004B07  FA                cli
00004B08  EC                in al,dx
00004B09  A801              test al,0x1
00004B0B  74FB              jz 0x4b08
00004B0D  26891D            mov [es:di],bx
00004B10  FB                sti
00004B11  5A                pop dx
00004B12  5B                pop bx
00004B13  58                pop ax
00004B14  83EF02            sub di,byte +0x2
00004B17  8BD3              mov dx,bx
00004B19  02D0              add dl,al
00004B1B  50                push ax
00004B1C  53                push bx
00004B1D  52                push dx
00004B1E  8BDA              mov bx,dx
00004B20  803E600601        cmp byte [0x660],0x1
00004B25  740E              jz 0x4b35
00004B27  BADA03            mov dx,0x3da
00004B2A  EC                in al,dx
00004B2B  A801              test al,0x1
00004B2D  75FB              jnz 0x4b2a
00004B2F  FA                cli
00004B30  EC                in al,dx
00004B31  A801              test al,0x1
00004B33  74FB              jz 0x4b30
00004B35  26891D            mov [es:di],bx
00004B38  FB                sti
00004B39  5A                pop dx
00004B3A  5B                pop bx
00004B3B  58                pop ax
00004B3C  5A                pop dx
00004B3D  59                pop cx
00004B3E  5B                pop bx
00004B3F  58                pop ax
00004B40  C3                ret
00004B41  0000              add [bx+si],al
00004B43  0000              add [bx+si],al
00004B45  0000              add [bx+si],al
00004B47  0000              add [bx+si],al
00004B49  0000              add [bx+si],al
00004B4B  0000              add [bx+si],al
00004B4D  0000              add [bx+si],al
00004B4F  00454E            add [di+0x4e],al
00004B52  44                inc sp
00004B53  50                push ax
00004B54  52                push dx
00004B55  4F                dec di
00004B56  47                inc di
00004B57  52                push dx
00004B58  41                inc cx
00004B59  4D                dec bp
00004B5A  41                inc cx
00004B5B  42                inc dx
00004B5C  43                inc bx
00004B5D  44                inc sp
00004B5E  45                inc bp
00004B5F  46                inc si
00004B60  47                inc di
00004B61  48                dec ax
00004B62  49                dec cx
00004B63  4A                dec dx
00004B64  4B                dec bx
00004B65  4C                dec sp
00004B66  4D                dec bp
00004B67  4E                dec si
00004B68  4F                dec di
00004B69  50                push ax
00004B6A  51                push cx
00004B6B  52                push dx
00004B6C  53                push bx
00004B6D  54                push sp
00004B6E  55                push bp
00004B6F  56                push si
00004B70  57                push di
00004B71  58                pop ax
00004B72  59                pop cx
00004B73  5A                pop dx
00004B74  0000              add [bx+si],al
00004B76  0000              add [bx+si],al
00004B78  0000              add [bx+si],al
00004B7A  0000              add [bx+si],al
00004B7C  0000              add [bx+si],al
00004B7E  0000              add [bx+si],al
00004B80  0000              add [bx+si],al
00004B82  0000              add [bx+si],al
00004B84  0000              add [bx+si],al
00004B86  0000              add [bx+si],al
00004B88  0000              add [bx+si],al
00004B8A  0000              add [bx+si],al
00004B8C  0000              add [bx+si],al
00004B8E  0000              add [bx+si],al
00004B90  0000              add [bx+si],al
00004B92  0000              add [bx+si],al
00004B94  0000              add [bx+si],al
00004B96  0000              add [bx+si],al
00004B98  0000              add [bx+si],al
00004B9A  0000              add [bx+si],al
00004B9C  0000              add [bx+si],al
00004B9E  0000              add [bx+si],al
00004BA0  0000              add [bx+si],al
00004BA2  0000              add [bx+si],al
00004BA4  0000              add [bx+si],al
00004BA6  0000              add [bx+si],al
00004BA8  0000              add [bx+si],al
00004BAA  0000              add [bx+si],al
00004BAC  0000              add [bx+si],al
00004BAE  0000              add [bx+si],al
00004BB0  0000              add [bx+si],al
00004BB2  0000              add [bx+si],al
00004BB4  0000              add [bx+si],al
00004BB6  0000              add [bx+si],al
00004BB8  0000              add [bx+si],al
00004BBA  0000              add [bx+si],al
00004BBC  0000              add [bx+si],al
00004BBE  0000              add [bx+si],al
00004BC0  0000              add [bx+si],al
00004BC2  0000              add [bx+si],al
00004BC4  0000              add [bx+si],al
00004BC6  0000              add [bx+si],al
00004BC8  0000              add [bx+si],al
00004BCA  0000              add [bx+si],al
00004BCC  0000              add [bx+si],al
00004BCE  0000              add [bx+si],al
00004BD0  0000              add [bx+si],al
00004BD2  0000              add [bx+si],al
00004BD4  0000              add [bx+si],al
00004BD6  0000              add [bx+si],al
00004BD8  0000              add [bx+si],al
00004BDA  0000              add [bx+si],al
00004BDC  0000              add [bx+si],al
00004BDE  0000              add [bx+si],al
00004BE0  0000              add [bx+si],al
00004BE2  0000              add [bx+si],al
00004BE4  0000              add [bx+si],al
00004BE6  0000              add [bx+si],al
00004BE8  0000              add [bx+si],al
00004BEA  0000              add [bx+si],al
00004BEC  0000              add [bx+si],al
00004BEE  0000              add [bx+si],al
00004BF0  0000              add [bx+si],al
00004BF2  0000              add [bx+si],al
00004BF4  0000              add [bx+si],al
00004BF6  0000              add [bx+si],al
00004BF8  0000              add [bx+si],al
00004BFA  0000              add [bx+si],al
00004BFC  0000              add [bx+si],al
00004BFE  0000              add [bx+si],al
