00000100  E93B01            jmp 0x23e
00000103  3F                aas
00000104  3F                aas
00000105  3F                aas
00000106  3E3E3E3E3E3E3E3E  ds aas
         -3E3F
00000110  3F                aas
00000111  40                inc ax
00000112  41                inc cx
00000113  42                inc dx
00000114  43                inc bx
00000115  44                inc sp
00000116  46                inc si
00000117  47                inc di
00000118  49                dec cx
00000119  4B                dec bx
0000011A  4D                dec bp
0000011B  4F                dec di
0000011C  51                push cx
0000011D  53                push bx
0000011E  55                push bp
0000011F  58                pop ax
00000120  5A                pop dx
00000121  5D                pop bp
00000122  5F                pop di
00000123  61                popa
00000124  6466686B6D6F71    fs push dword 0x716f6d6b
0000012B  7374              jnc 0x1a1
0000012D  7677              jna 0x1a6
0000012F  797A              jns 0x1ab
00000131  7B7B              jpo 0x1ae
00000133  7C7C              jl 0x1b1
00000135  7C7C              jl 0x1b3
00000137  7C7C              jl 0x1b5
00000139  7B7B              jpo 0x1b6
0000013B  7A79              jpe 0x1b6
0000013D  7877              js 0x1b6
0000013F  7574              jnz 0x1b5
00000141  7371              jnc 0x1b4
00000143  6F                outsw
00000144  6E                outsb
00000145  6C                insb
00000146  6B696866          imul bp,[bx+di+0x68],byte +0x66
0000014A  65636261          arpl [gs:bp+si+0x61],sp
0000014E  60                pusha
0000014F  5F                pop di
00000150  5E                pop si
00000151  5D                pop bp
00000152  5C                pop sp
00000153  5C                pop sp
00000154  5B                pop bx
00000155  5B                pop bx
00000156  5B                pop bx
00000157  5B                pop bx
00000158  5B                pop bx
00000159  5B                pop bx
0000015A  5C                pop sp
0000015B  5C                pop sp
0000015C  5D                pop bp
0000015D  5D                pop bp
0000015E  5E                pop si
0000015F  5E                pop si
00000160  5F                pop di
00000161  60                pusha
00000162  61                popa
00000163  61                popa
00000164  626363            bound sp,[bp+di+0x63]
00000167  6465656565666565  o32 arpl [fs:bp+si+0x61],sp
         -656464636261
00000175  5F                pop di
00000176  5E                pop si
00000177  5C                pop sp
00000178  5A                pop dx
00000179  58                pop ax
0000017A  56                push si
0000017B  54                push sp
0000017C  52                push dx
0000017D  4F                dec di
0000017E  4D                dec bp
0000017F  4A                dec dx
00000180  48                dec ax
00000181  45                inc bp
00000182  42                inc dx
00000183  3F                aas
00000184  3D3A37            cmp ax,0x373a
00000187  353230            xor ax,0x3032
0000018A  2D2B29            sub ax,0x292b
0000018D  27                daa
0000018E  252321            and ax,0x2123
00000191  201E1D1C          and [0x1c1d],bl
00000195  1B1B              sbb bx,[bp+di]
00000197  1A1A              sbb bl,[bp+si]
00000199  1A19              sbb bl,[bx+di]
0000019B  1A1A              sbb bl,[bp+si]
0000019D  1A1A              sbb bl,[bp+si]
0000019F  1B1C              sbb bx,[si]
000001A1  1C1D              sbb al,0x1d
000001A3  1E                push ds
000001A4  1E                push ds
000001A5  1F                pop ds
000001A6  2021              and [bx+di],ah
000001A8  2122              and [bp+si],sp
000001AA  2223              and ah,[bp+di]
000001AC  2324              and sp,[si]
000001AE  2424              and al,0x24
000001B0  2424              and al,0x24
000001B2  2423              and al,0x23
000001B4  2322              and sp,[bp+si]
000001B6  2120              and [bx+si],sp
000001B8  1F                pop ds
000001B9  1E                push ds
000001BA  1D1C1A            sbb ax,0x1a1c
000001BD  1917              sbb [bx],dx
000001BF  16                push ss
000001C0  1413              adc al,0x13
000001C2  110F              adc [bx],cx
000001C4  0E                push cs
000001C5  0C0B              or al,0xb
000001C7  0A08              or cl,[bx+si]
000001C9  07                pop es
000001CA  06                push es
000001CB  050404            add ax,0x404
000001CE  0303              add ax,[bp+di]
000001D0  0303              add ax,[bp+di]
000001D2  0303              add ax,[bp+di]
000001D4  0404              add al,0x4
000001D6  050608            add ax,0x806
000001D9  090B              or [bp+di],cx
000001DB  0C0E              or al,0xe
000001DD  1012              adc [bp+si],dl
000001DF  1417              adc al,0x17
000001E1  191B              sbb [bp+di],bx
000001E3  1E                push ds
000001E4  2022              and [bp+si],ah
000001E6  25272A            and ax,0x2a27
000001E9  2C2E              sub al,0x2e
000001EB  3032              xor [bp+si],dh
000001ED  3436              xor al,0x36
000001EF  3839              cmp [bx+di],bh
000001F1  3B3C              cmp di,[si]
000001F3  3D3E3F            cmp ax,0x3f3e
000001F6  40                inc ax
000001F7  40                inc ax
000001F8  41                inc cx
000001F9  41                inc cx
000001FA  41                inc cx
000001FB  41                inc cx
000001FC  41                inc cx
000001FD  41                inc cx
000001FE  41                inc cx
000001FF  41                inc cx
00000200  41                inc cx
00000201  40                inc ax
00000202  40                inc ax
00000203  0000              add [bx+si],al
00000205  0000              add [bx+si],al
00000207  0000              add [bx+si],al
00000209  0000              add [bx+si],al
0000020B  45                inc bp
0000020C  4D                dec bp
0000020D  53                push bx
0000020E  2F                das
0000020F  47                inc di
00000210  6F                outsw
00000211  746F              jz 0x282
00000213  3130              xor [bx+si],si
00000215  3A20              cmp ah,[bx+si]
00000217  205761            and [bx+0x61],dl
0000021A  7465              jz 0x281
0000021C  722D              jc 0x24b
0000021E  314B20            xor [bp+di+0x20],cx
00000221  696E74726F        imul bp,[bp+0x74],word 0x6f72
00000226  20666F            and [bp+0x6f],ah
00000229  7220              jc 0x24b
0000022B  636F6D            arpl [bx+0x6d],bp
0000022E  706F              jo 0x29f
00000230  206174            and [bx+di+0x74],ah
00000233  204963            and [bx+di+0x63],cl
00000236  696E672739        imul bp,[bp+0x67],word 0x3927
0000023B  3821              cmp [bx+di],ah
0000023D  24B8              and al,0xb8
0000023F  1300              adc ax,[bx+si]
00000241  CD10              int 0x10
00000243  BA2100            mov dx,0x21
00000246  B0FF              mov al,0xff
00000248  EE                out dx,al
00000249  B800A0            mov ax,0xa000
0000024C  8EC0              mov es,ax
0000024E  33DB              xor bx,bx
00000250  8BFB              mov di,bx
00000252  8EDB              mov ds,bx
00000254  8EE3              mov fs,bx
00000256  8EEB              mov gs,bx
00000258  2E803E0A0201      cmp byte [cs:0x20a],0x1
0000025E  7514              jnz 0x274
00000260  90                nop
00000261  90                nop
00000262  2E803E070200      cmp byte [cs:0x207],0x0
00000268  7419              jz 0x283
0000026A  90                nop
0000026B  90                nop
0000026C  2EFE0E0702        dec byte [cs:0x207]
00000271  EB10              jmp short 0x283
00000273  90                nop
00000274  2E803E0702C8      cmp byte [cs:0x207],0xc8
0000027A  7407              jz 0x283
0000027C  90                nop
0000027D  90                nop
0000027E  2EFE060702        inc byte [cs:0x207]
00000283  BAC803            mov dx,0x3c8
00000286  B001              mov al,0x1
00000288  EE                out dx,al
00000289  2EC70608020100    mov word [cs:0x208],0x1
00000290  B33F              mov bl,0x3f
00000292  2E2A1E0802        sub bl,[cs:0x208]
00000297  E85802            call 0x4f2
0000029A  BAC903            mov dx,0x3c9
0000029D  8AC3              mov al,bl
0000029F  EE                out dx,al
000002A0  BAC903            mov dx,0x3c9
000002A3  8AC3              mov al,bl
000002A5  EE                out dx,al
000002A6  2E8A3E0802        mov bh,[cs:0x208]
000002AB  D0EF              shr bh,1
000002AD  B33F              mov bl,0x3f
000002AF  2ADF              sub bl,bh
000002B1  E83E02            call 0x4f2
000002B4  BAC903            mov dx,0x3c9
000002B7  8AC3              mov al,bl
000002B9  EE                out dx,al
000002BA  2EFE060802        inc byte [cs:0x208]
000002BF  2E803E080220      cmp byte [cs:0x208],0x20
000002C5  72C9              jc 0x290
000002C7  2EC70608020000    mov word [cs:0x208],0x0
000002CE  2EA10802          mov ax,[cs:0x208]
000002D2  B303              mov bl,0x3
000002D4  F6F3              div bl
000002D6  B320              mov bl,0x20
000002D8  2AD8              sub bl,al
000002DA  E81502            call 0x4f2
000002DD  BAC903            mov dx,0x3c9
000002E0  8AC3              mov al,bl
000002E2  EE                out dx,al
000002E3  BAC903            mov dx,0x3c9
000002E6  8AC3              mov al,bl
000002E8  EE                out dx,al
000002E9  2EA10802          mov ax,[cs:0x208]
000002ED  B306              mov bl,0x6
000002EF  F6F3              div bl
000002F1  B330              mov bl,0x30
000002F3  2AD8              sub bl,al
000002F5  E8FA01            call 0x4f2
000002F8  BAC903            mov dx,0x3c9
000002FB  8AC3              mov al,bl
000002FD  EE                out dx,al
000002FE  2EFF060802        inc word [cs:0x208]
00000303  2E833E080260      cmp word [cs:0x208],byte +0x60
00000309  72C3              jc 0x2ce
0000030B  2EC70608020000    mov word [cs:0x208],0x0
00000312  2EA10802          mov ax,[cs:0x208]
00000316  B303              mov bl,0x3
00000318  F6F3              div bl
0000031A  8AD8              mov bl,al
0000031C  E8D301            call 0x4f2
0000031F  BAC903            mov dx,0x3c9
00000322  8AC3              mov al,bl
00000324  EE                out dx,al
00000325  BAC903            mov dx,0x3c9
00000328  8AC3              mov al,bl
0000032A  EE                out dx,al
0000032B  2EA10802          mov ax,[cs:0x208]
0000032F  B306              mov bl,0x6
00000331  F6F3              div bl
00000333  B320              mov bl,0x20
00000335  02D8              add bl,al
00000337  E8B801            call 0x4f2
0000033A  BAC903            mov dx,0x3c9
0000033D  8AC3              mov al,bl
0000033F  EE                out dx,al
00000340  2EFF060802        inc word [cs:0x208]
00000345  2E833E080260      cmp word [cs:0x208],byte +0x60
0000034B  72C5              jc 0x312
0000034D  2EC606080200      mov byte [cs:0x208],0x0
00000353  B320              mov bl,0x20
00000355  2E021E0802        add bl,[cs:0x208]
0000035A  E89501            call 0x4f2
0000035D  BAC903            mov dx,0x3c9
00000360  8AC3              mov al,bl
00000362  EE                out dx,al
00000363  BAC903            mov dx,0x3c9
00000366  8AC3              mov al,bl
00000368  EE                out dx,al
00000369  2E8A3E0802        mov bh,[cs:0x208]
0000036E  D0EF              shr bh,1
00000370  B330              mov bl,0x30
00000372  02DF              add bl,bh
00000374  E87B01            call 0x4f2
00000377  BAC903            mov dx,0x3c9
0000037A  8AC3              mov al,bl
0000037C  EE                out dx,al
0000037D  2EFE060802        inc byte [cs:0x208]
00000382  2E803E080220      cmp byte [cs:0x208],0x20
00000388  72C9              jc 0x353
0000038A  33F6              xor si,si
0000038C  B400              mov ah,0x0
0000038E  8CDB              mov bx,ds
00000390  02DC              add bl,ah
00000392  32FF              xor bh,bh
00000394  2E8EA70301        mov fs,[cs:bx+0x103]
00000399  B90000            mov cx,0x0
0000039C  8CE2              mov dx,fs
0000039E  02D1              add dl,cl
000003A0  8CDB              mov bx,ds
000003A2  32FF              xor bh,bh
000003A4  02D9              add bl,cl
000003A6  2E8A9F0301        mov bl,[cs:bx+0x103]
000003AB  02DC              add bl,ah
000003AD  8AF3              mov dh,bl
000003AF  03DF              add bx,di
000003B1  32FF              xor bh,bh
000003B3  2E8A9F0301        mov bl,[cs:bx+0x103]
000003B8  02DA              add bl,dl
000003BA  8AD3              mov dl,bl
000003BC  03DF              add bx,di
000003BE  32FF              xor bh,bh
000003C0  2E8A9F0301        mov bl,[cs:bx+0x103]
000003C5  02DE              add bl,dh
000003C7  2E8A870301        mov al,[cs:bx+0x103]
000003CC  8ADA              mov bl,dl
000003CE  2E02870301        add al,[cs:bx+0x103]
000003D3  2EA20302          mov [cs:0x203],al
000003D7  41                inc cx
000003D8  8CE2              mov dx,fs
000003DA  02D1              add dl,cl
000003DC  8CDB              mov bx,ds
000003DE  32FF              xor bh,bh
000003E0  02D9              add bl,cl
000003E2  2E8A9F0301        mov bl,[cs:bx+0x103]
000003E7  02DC              add bl,ah
000003E9  8AF3              mov dh,bl
000003EB  03DF              add bx,di
000003ED  32FF              xor bh,bh
000003EF  2E8A9F0301        mov bl,[cs:bx+0x103]
000003F4  02DA              add bl,dl
000003F6  8AD3              mov dl,bl
000003F8  03DF              add bx,di
000003FA  32FF              xor bh,bh
000003FC  2E8A9F0301        mov bl,[cs:bx+0x103]
00000401  02DE              add bl,dh
00000403  2E8A870301        mov al,[cs:bx+0x103]
00000408  8ADA              mov bl,dl
0000040A  2E02870301        add al,[cs:bx+0x103]
0000040F  2EA20402          mov [cs:0x204],al
00000413  41                inc cx
00000414  8CE2              mov dx,fs
00000416  02D1              add dl,cl
00000418  8CDB              mov bx,ds
0000041A  32FF              xor bh,bh
0000041C  02D9              add bl,cl
0000041E  2E8A9F0301        mov bl,[cs:bx+0x103]
00000423  02DC              add bl,ah
00000425  8AF3              mov dh,bl
00000427  03DF              add bx,di
00000429  32FF              xor bh,bh
0000042B  2E8A9F0301        mov bl,[cs:bx+0x103]
00000430  02DA              add bl,dl
00000432  8AD3              mov dl,bl
00000434  03DF              add bx,di
00000436  32FF              xor bh,bh
00000438  2E8A9F0301        mov bl,[cs:bx+0x103]
0000043D  02DE              add bl,dh
0000043F  2E8A870301        mov al,[cs:bx+0x103]
00000444  8ADA              mov bl,dl
00000446  2E02870301        add al,[cs:bx+0x103]
0000044B  2EA20502          mov [cs:0x205],al
0000044F  41                inc cx
00000450  8CE2              mov dx,fs
00000452  02D1              add dl,cl
00000454  8CDB              mov bx,ds
00000456  32FF              xor bh,bh
00000458  02D9              add bl,cl
0000045A  2E8A9F0301        mov bl,[cs:bx+0x103]
0000045F  02DC              add bl,ah
00000461  8AF3              mov dh,bl
00000463  03DF              add bx,di
00000465  32FF              xor bh,bh
00000467  2E8A9F0301        mov bl,[cs:bx+0x103]
0000046C  02DA              add bl,dl
0000046E  8AD3              mov dl,bl
00000470  03DF              add bx,di
00000472  32FF              xor bh,bh
00000474  2E8A9F0301        mov bl,[cs:bx+0x103]
00000479  02DE              add bl,dh
0000047B  2E8A870301        mov al,[cs:bx+0x103]
00000480  8ADA              mov bl,dl
00000482  2E02870301        add al,[cs:bx+0x103]
00000487  2EA20602          mov [cs:0x206],al
0000048B  41                inc cx
0000048C  662E8B160302      mov edx,[cs:0x203]
00000492  66268914          mov [es:si],edx
00000496  83C604            add si,byte +0x4
00000499  81F94001          cmp cx,0x140
0000049D  0F82FBFE          jc near 0x39c
000004A1  FEC4              inc ah
000004A3  80FCC8            cmp ah,0xc8
000004A6  0F82E4FE          jc near 0x38e
000004AA  4F                dec di
000004AB  8CD8              mov ax,ds
000004AD  40                inc ax
000004AE  8ED8              mov ds,ax
000004B0  52                push dx
000004B1  50                push ax
000004B2  BADA03            mov dx,0x3da
000004B5  EC                in al,dx
000004B6  2408              and al,0x8
000004B8  75FB              jnz 0x4b5
000004BA  EC                in al,dx
000004BB  2408              and al,0x8
000004BD  74FB              jz 0x4ba
000004BF  58                pop ax
000004C0  5A                pop dx
000004C1  BA6000            mov dx,0x60
000004C4  EC                in al,dx
000004C5  3C01              cmp al,0x1
000004C7  7508              jnz 0x4d1
000004C9  90                nop
000004CA  90                nop
000004CB  2EC6060A0201      mov byte [cs:0x20a],0x1
000004D1  2E803E070200      cmp byte [cs:0x207],0x0
000004D7  0F857DFD          jnz near 0x258
000004DB  BA2100            mov dx,0x21
000004DE  B000              mov al,0x0
000004E0  EE                out dx,al
000004E1  B80300            mov ax,0x3
000004E4  CD10              int 0x10
000004E6  8CCB              mov bx,cs
000004E8  8EDB              mov ds,bx
000004EA  BA0B02            mov dx,0x20b
000004ED  B409              mov ah,0x9
000004EF  CD21              int 0x21
000004F1  C3                ret
000004F2  8AC3              mov al,bl
000004F4  2EF6260702        mul byte [cs:0x207]
000004F9  B1C8              mov cl,0xc8
000004FB  F6F1              div cl
000004FD  8AD8              mov bl,al
000004FF  C3                ret
