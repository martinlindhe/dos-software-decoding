00000100  E95807            jmp word 0x85b
00000103  B8004A            mov ax,0x4a00
00000106  BB8E04            mov bx,0x48e
00000109  8BE3              mov sp,bx
0000010B  83C302            add bx,byte +0x2
0000010E  B104              mov cl,0x4
00000110  83C30F            add bx,byte +0xf
00000113  D3EB              shr bx,cl
00000115  CD21              int 0x21
00000117  8926F201          mov [0x1f2],sp
0000011B  8C16F001          mov [0x1f0],ss
0000011F  BBF401            mov bx,0x1f4
00000122  B8004B            mov ax,0x4b00
00000125  FA                cli
00000126  88160902          mov [0x209],dl
0000012A  8B160A02          mov dx,[0x20a]
0000012E  FB                sti
0000012F  CD21              int 0x21
00000131  FA                cli
00000132  2EC606090204      mov byte [cs:0x209],0x4
00000138  90                nop
00000139  2EC70604020100    mov word [cs:0x204],0x1
00000140  2E8E16F001        mov ss,[cs:0x1f0]
00000145  2E8B26F201        mov sp,[cs:0x1f2]
0000014A  FB                sti
0000014B  9C                pushfw
0000014C  2EC516E401        lds dx,[cs:0x1e4]
00000151  B80825            mov ax,0x2508
00000154  CD21              int 0x21
00000156  2EC516E801        lds dx,[cs:0x1e8]
0000015B  B80925            mov ax,0x2509
0000015E  CD21              int 0x21
00000160  0E                push cs
00000161  1F                pop ds
00000162  9D                popfw
00000163  730C              jnc 0x171
00000165  BAF503            mov dx,0x3f5
00000168  E80B00            call word 0x176
0000016B  BA3704            mov dx,0x437
0000016E  E93B02            jmp word 0x3ac
00000171  B8004C            mov ax,0x4c00
00000174  CD21              int 0x21
00000176  50                push ax
00000177  53                push bx
00000178  51                push cx
00000179  57                push di
0000017A  8BFA              mov di,dx
0000017C  B000              mov al,0x0
0000017E  B9FFFF            mov cx,0xffff
00000181  F2AE              repne scasb
00000183  F7D1              not cx
00000185  49                dec cx
00000186  B440              mov ah,0x40
00000188  BB0100            mov bx,0x1
0000018B  CD21              int 0x21
0000018D  5F                pop di
0000018E  59                pop cx
0000018F  5B                pop bx
00000190  58                pop ax
00000191  C3                ret
00000192  B90A2E            mov cx,0x2e0a
00000195  F6F1              div cl
00000197  80C430            add ah,0x30
0000019A  4E                dec si
0000019B  8824              mov [si],ah
0000019D  8AE5              mov ah,ch
0000019F  32ED              xor ch,ch
000001A1  80FC2E            cmp ah,0x2e
000001A4  74F4              jz 0x19a
000001A6  0AC0              or al,al
000001A8  75EB              jnz 0x195
000001AA  803C2E            cmp byte [si],0x2e
000001AD  7504              jnz 0x1b3
000001AF  4E                dec si
000001B0  C60430            mov byte [si],0x30
000001B3  C3                ret
000001B4  A10C02            mov ax,[0x20c]
000001B7  BE1302            mov si,0x213
000001BA  E8D5FF            call word 0x192
000001BD  B403              mov ah,0x3
000001BF  33DB              xor bx,bx
000001C1  CD10              int 0x10
000001C3  52                push dx
000001C4  BA0101            mov dx,0x101
000001C7  B90100            mov cx,0x1
000001CA  33DB              xor bx,bx
000001CC  B387              mov bl,0x87
000001CE  B402              mov ah,0x2
000001D0  CD10              int 0x10
000001D2  B40A              mov ah,0xa
000001D4  AC                lodsb
000001D5  CD10              int 0x10
000001D7  42                inc dx
000001D8  81FE1302          cmp si,0x213
000001DC  76F0              jna 0x1ce
000001DE  5A                pop dx
000001DF  B402              mov ah,0x2
000001E1  CD10              int 0x10
000001E3  C3                ret
000001E4  0000              add [bx+si],al
000001E6  0000              add [bx+si],al
000001E8  0000              add [bx+si],al
000001EA  0000              add [bx+si],al
000001EC  0000              add [bx+si],al
000001EE  0000              add [bx+si],al
000001F0  0000              add [bx+si],al
000001F2  0000              add [bx+si],al
000001F4  0000              add [bx+si],al
000001F6  0000              add [bx+si],al
000001F8  0000              add [bx+si],al
000001FA  FF                db 0xff
000001FB  FF                db 0xff
000001FC  FF                db 0xff
000001FD  FF                db 0xff
000001FE  FF                db 0xff
000001FF  FF                db 0xff
00000200  FF                db 0xff
00000201  FF00              inc word [bx+si]
00000203  0000              add [bx+si],al
00000205  0000              add [bx+si],al
00000207  0000              add [bx+si],al
00000209  02F6              add dh,dh
0000020B  0300              add ax,[bx+si]
0000020D  0000              add [bx+si],al
0000020F  0000              add [bx+si],al
00000211  0000              add [bx+si],al
00000213  0000              add [bx+si],al
00000215  87DB              xchg bx,bx
00000217  90                nop
00000218  2E803E090201      cmp byte [cs:0x209],0x1
0000021E  7D3E              jnl 0x25e
00000220  2EC606090201      mov byte [cs:0x209],0x1
00000226  9C                pushfw
00000227  2EFF1EE401        call word far [cs:0x1e4]
0000022C  773D              ja 0x26b
0000022E  51                push cx
0000022F  FA                cli
00000230  2E8B0E0202        mov cx,[cs:0x202]
00000235  2E890E0402        mov [cs:0x204],cx
0000023A  FB                sti
0000023B  B93800            mov cx,0x38
0000023E  D1C1              rol cx,1
00000240  D1C9              ror cx,1
00000242  90                nop
00000243  90                nop
00000244  E2F8              loop 0x23e
00000246  2EFF0E0402        dec word [cs:0x204]
0000024B  75EE              jnz 0x23b
0000024D  FA                cli
0000024E  2E803E090201      cmp byte [cs:0x209],0x1
00000254  7506              jnz 0x25c
00000256  2EC606090200      mov byte [cs:0x209],0x0
0000025C  59                pop cx
0000025D  CF                iretw
0000025E  E96F02            jmp word 0x4d0
00000261  2EFE060802        inc byte [cs:0x208]
00000266  2EFF2EE401        jmp word far [cs:0x1e4]
0000026B  2EC606090203      mov byte [cs:0x209],0x3
00000271  FB                sti
00000272  50                push ax
00000273  53                push bx
00000274  51                push cx
00000275  52                push dx
00000276  56                push si
00000277  1E                push ds
00000278  06                push es
00000279  0E                push cs
0000027A  1F                pop ds
0000027B  B81C35            mov ax,0x351c
0000027E  CD21              int 0x21
00000280  891EEC01          mov [0x1ec],bx
00000284  8C06EE01          mov [0x1ee],es
00000288  0E                push cs
00000289  07                pop es
0000028A  BA0A03            mov dx,0x30a
0000028D  B81C25            mov ax,0x251c
00000290  CD21              int 0x21
00000292  E81FFF            call word 0x1b4
00000295  803E090203        cmp byte [0x209],0x3
0000029A  752D              jnz 0x2c9
0000029C  33C0              xor ax,ax
0000029E  86061402          xchg al,[0x214]
000002A2  0AC0              or al,al
000002A4  74EF              jz 0x295
000002A6  BA0100            mov dx,0x1
000002A9  3C4E              cmp al,0x4e
000002AB  740E              jz 0x2bb
000002AD  3C0D              cmp al,0xd
000002AF  740A              jz 0x2bb
000002B1  3C0C              cmp al,0xc
000002B3  7404              jz 0x2b9
000002B5  3C4A              cmp al,0x4a
000002B7  75DC              jnz 0x295
000002B9  F7DA              neg dx
000002BB  52                push dx
000002BC  E8F5FE            call word 0x1b4
000002BF  58                pop ax
000002C0  01060C02          add [0x20c],ax
000002C4  E8EDFE            call word 0x1b4
000002C7  EBCC              jmp short 0x295
000002C9  E8E8FE            call word 0x1b4
000002CC  A10602            mov ax,[0x206]
000002CF  F7D0              not ax
000002D1  8BD8              mov bx,ax
000002D3  8B0E0C02          mov cx,[0x20c]
000002D7  F7E1              mul cx
000002D9  05F401            add ax,0x1f4
000002DC  83D200            adc dx,byte +0x0
000002DF  B9E803            mov cx,0x3e8
000002E2  F7F1              div cx
000002E4  3D0500            cmp ax,0x5
000002E7  7703              ja 0x2ec
000002E9  B80500            mov ax,0x5
000002EC  2BD8              sub bx,ax
000002EE  891E0202          mov [0x202],bx
000002F2  C516EC01          lds dx,[0x1ec]
000002F6  B81C25            mov ax,0x251c
000002F9  CD21              int 0x21
000002FB  FA                cli
000002FC  2EC606090200      mov byte [cs:0x209],0x0
00000302  07                pop es
00000303  1F                pop ds
00000304  5E                pop si
00000305  5A                pop dx
00000306  59                pop cx
00000307  5B                pop bx
00000308  58                pop ax
00000309  CF                iretw
0000030A  CF                iretw
0000030B  1D382A            sbb ax,0x2a38
0000030E  3646              ss inc si
00000310  45                inc bp
00000311  3A00              cmp al,[bx+si]
00000313  50                push ax
00000314  51                push cx
00000315  57                push di
00000316  1E                push ds
00000317  06                push es
00000318  0E                push cs
00000319  1F                pop ds
0000031A  0E                push cs
0000031B  07                pop es
0000031C  E460              in al,0x60
0000031E  8AE0              mov ah,al
00000320  247F              and al,0x7f
00000322  BF0B03            mov di,0x30b
00000325  B90700            mov cx,0x7
00000328  FC                cld
00000329  F2AE              repne scasb
0000032B  7411              jz 0x33e
0000032D  803E090203        cmp byte [0x209],0x3
00000332  7459              jz 0x38d
00000334  07                pop es
00000335  1F                pop ds
00000336  5F                pop di
00000337  59                pop cx
00000338  58                pop ax
00000339  2EFF2EE801        jmp word far [cs:0x1e8]
0000033E  83E907            sub cx,byte +0x7
00000341  F7D9              neg cx
00000343  83F904            cmp cx,byte +0x4
00000346  7716              ja 0x35e
00000348  F9                stc
00000349  D2D5              rcl ch,cl
0000034B  80E480            and ah,0x80
0000034E  7506              jnz 0x356
00000350  082E1203          or [0x312],ch
00000354  EBDE              jmp short 0x334
00000356  F6D5              not ch
00000358  202E1203          and [0x312],ch
0000035C  EBD6              jmp short 0x334
0000035E  80FC46            cmp ah,0x46
00000361  75D1              jnz 0x334
00000363  B003              mov al,0x3
00000365  22061203          and al,[0x312]
00000369  3C03              cmp al,0x3
0000036B  75C7              jnz 0x334
0000036D  803E090203        cmp byte [0x209],0x3
00000372  C606090202        mov byte [0x209],0x2
00000377  74BB              jz 0x334
00000379  C606090200        mov byte [0x209],0x0
0000037E  77B4              ja 0x334
00000380  C6060902FF        mov byte [0x209],0xff
00000385  C70604020100      mov word [0x204],0x1
0000038B  EBA7              jmp short 0x334
0000038D  80FC80            cmp ah,0x80
00000390  7304              jnc 0x396
00000392  88261402          mov [0x214],ah
00000396  E461              in al,0x61
00000398  8AE0              mov ah,al
0000039A  0C80              or al,0x80
0000039C  E661              out 0x61,al
0000039E  8AC4              mov al,ah
000003A0  E661              out 0x61,al
000003A2  B020              mov al,0x20
000003A4  E620              out 0x20,al
000003A6  07                pop es
000003A7  1F                pop ds
000003A8  5F                pop di
000003A9  59                pop cx
000003AA  58                pop ax
000003AB  CF                iretw
000003AC  E8C7FD            call word 0x176
000003AF  B8014C            mov ax,0x4c01
000003B2  CD21              int 0x21
000003B4  0000              add [bx+si],al
000003B6  0000              add [bx+si],al
000003B8  0000              add [bx+si],al
000003BA  0000              add [bx+si],al
000003BC  0000              add [bx+si],al
000003BE  0000              add [bx+si],al
000003C0  0000              add [bx+si],al
000003C2  0000              add [bx+si],al
000003C4  0000              add [bx+si],al
000003C6  0000              add [bx+si],al
000003C8  0000              add [bx+si],al
000003CA  0000              add [bx+si],al
000003CC  0000              add [bx+si],al
000003CE  0000              add [bx+si],al
000003D0  0000              add [bx+si],al
000003D2  0000              add [bx+si],al
000003D4  0000              add [bx+si],al
000003D6  0000              add [bx+si],al
000003D8  0000              add [bx+si],al
000003DA  0000              add [bx+si],al
000003DC  0000              add [bx+si],al
000003DE  0000              add [bx+si],al
000003E0  0000              add [bx+si],al
000003E2  0000              add [bx+si],al
000003E4  0000              add [bx+si],al
000003E6  0000              add [bx+si],al
000003E8  0000              add [bx+si],al
000003EA  0000              add [bx+si],al
000003EC  0000              add [bx+si],al
000003EE  0000              add [bx+si],al
000003F0  0000              add [bx+si],al
000003F2  0000              add [bx+si],al
000003F4  0020              add [bx+si],ah
000003F6  0000              add [bx+si],al
000003F8  0000              add [bx+si],al
000003FA  0000              add [bx+si],al
000003FC  0000              add [bx+si],al
000003FE  0000              add [bx+si],al
00000400  0000              add [bx+si],al
00000402  0000              add [bx+si],al
00000404  0000              add [bx+si],al
00000406  0000              add [bx+si],al
00000408  0000              add [bx+si],al
0000040A  0000              add [bx+si],al
0000040C  0000              add [bx+si],al
0000040E  0000              add [bx+si],al
00000410  0000              add [bx+si],al
00000412  0000              add [bx+si],al
00000414  0000              add [bx+si],al
00000416  0000              add [bx+si],al
00000418  0000              add [bx+si],al
0000041A  0000              add [bx+si],al
0000041C  0000              add [bx+si],al
0000041E  0000              add [bx+si],al
00000420  0000              add [bx+si],al
00000422  0000              add [bx+si],al
00000424  0000              add [bx+si],al
00000426  0000              add [bx+si],al
00000428  0000              add [bx+si],al
0000042A  0000              add [bx+si],al
0000042C  0000              add [bx+si],al
0000042E  0000              add [bx+si],al
00000430  0000              add [bx+si],al
00000432  0000              add [bx+si],al
00000434  0000              add [bx+si],al
00000436  0020              add [bx+si],ah
00000438  657865            gs js 0x4a0
0000043B  637574            arpl [di+0x74],si
0000043E  696F6E2065        imul bp,[bx+0x6e],word 0x6520
00000443  7272              jc 0x4b7
00000445  6F                outsw
00000446  722E              jc 0x476
00000448  0D0A0A            or ax,0xa0a
0000044B  0000              add [bx+si],al
0000044D  0000              add [bx+si],al
0000044F  0000              add [bx+si],al
00000451  0000              add [bx+si],al
00000453  0000              add [bx+si],al
00000455  0000              add [bx+si],al
00000457  0000              add [bx+si],al
00000459  0000              add [bx+si],al
0000045B  0000              add [bx+si],al
0000045D  0000              add [bx+si],al
0000045F  0000              add [bx+si],al
00000461  0000              add [bx+si],al
00000463  0000              add [bx+si],al
00000465  0000              add [bx+si],al
00000467  0000              add [bx+si],al
00000469  0000              add [bx+si],al
0000046B  0000              add [bx+si],al
0000046D  0000              add [bx+si],al
0000046F  0000              add [bx+si],al
00000471  0000              add [bx+si],al
00000473  0000              add [bx+si],al
00000475  0000              add [bx+si],al
00000477  0000              add [bx+si],al
00000479  0000              add [bx+si],al
0000047B  0000              add [bx+si],al
0000047D  0000              add [bx+si],al
0000047F  0000              add [bx+si],al
00000481  0000              add [bx+si],al
00000483  0000              add [bx+si],al
00000485  0000              add [bx+si],al
00000487  0000              add [bx+si],al
00000489  0000              add [bx+si],al
0000048B  0000              add [bx+si],al
0000048D  0000              add [bx+si],al
0000048F  0000              add [bx+si],al
00000491  0000              add [bx+si],al
00000493  0000              add [bx+si],al
00000495  0000              add [bx+si],al
00000497  0000              add [bx+si],al
00000499  0000              add [bx+si],al
0000049B  0000              add [bx+si],al
0000049D  0000              add [bx+si],al
0000049F  0000              add [bx+si],al
000004A1  0000              add [bx+si],al
000004A3  0000              add [bx+si],al
000004A5  0000              add [bx+si],al
000004A7  0000              add [bx+si],al
000004A9  0000              add [bx+si],al
000004AB  0000              add [bx+si],al
000004AD  0000              add [bx+si],al
000004AF  0000              add [bx+si],al
000004B1  0000              add [bx+si],al
000004B3  0000              add [bx+si],al
000004B5  0000              add [bx+si],al
000004B7  0000              add [bx+si],al
000004B9  0000              add [bx+si],al
000004BB  0000              add [bx+si],al
000004BD  0000              add [bx+si],al
000004BF  0000              add [bx+si],al
000004C1  0000              add [bx+si],al
000004C3  0000              add [bx+si],al
000004C5  0000              add [bx+si],al
000004C7  0000              add [bx+si],al
000004C9  0000              add [bx+si],al
000004CB  0087DB87          add [bx-0x7825],al
000004CF  DB                db 0xdb
000004D0  7726              ja 0x4f8
000004D2  FA                cli
000004D3  2EC606090202      mov byte [cs:0x209],0x2
000004D9  2EFF360402        push word [cs:0x204]
000004DE  2E8F060602        pop word [cs:0x206]
000004E3  2EC70604020100    mov word [cs:0x204],0x1
000004EA  2EC7065E029090    mov word [cs:0x25e],0x9090
000004F1  2EC606600290      mov byte [cs:0x260],0x90
000004F7  FB                sti
000004F8  E966FD            jmp word 0x261
000004FB  0D0A20            or ax,0x200a
000004FE  4D                dec bp
000004FF  6F                outsw
00000500  27                daa
00000501  53                push bx
00000502  6C                insb
00000503  6F                outsw
00000504  204465            and [si+0x65],al
00000507  6C                insb
00000508  7578              jnz 0x582
0000050A  6520762E          and [gs:bp+0x2e],dh
0000050E  322E310D          xor ch,[0xd31]
00000512  0A20              or ah,[bx+si]
00000514  43                inc bx
00000515  6F                outsw
00000516  7079              jo 0x591
00000518  7269              jc 0x583
0000051A  67687420          push word 0x2074
0000051E  286329            sub [bp+di+0x29],ah
00000521  204461            and [si+0x61],al
00000524  7669              jna 0x58f
00000526  64205065          and [fs:bx+si+0x65],dl
0000052A  7272              jc 0x59e
0000052C  656C              gs insb
0000052E  6C                insb
0000052F  2031              and [bx+di],dh
00000531  3939              cmp [bx+di],di
00000533  302C              xor [si],ch
00000535  3139              xor [bx+di],di
00000537  3933              cmp [bp+di],si
00000539  2C31              sub al,0x31
0000053B  3939              cmp [bx+di],di
0000053D  362C31            ss sub al,0x31
00000540  3939              cmp [bx+di],di
00000542  37                aaa
00000543  2E0D0A00          cs or ax,0xa
00000547  207275            and [bp+si+0x75],dh
0000054A  6E                outsb
0000054B  6E                outsb
0000054C  696E672061        imul bp,[bp+0x67],word 0x6120
00000551  7420              jz 0x573
00000553  0000              add [bx+si],al
00000555  0000              add [bx+si],al
00000557  25206F            and ax,0x6f20
0000055A  66206E6F          o32 and [bp+0x6f],ch
0000055E  726D              jc 0x5cd
00000560  61                popaw
00000561  6C                insb
00000562  207370            and [bp+di+0x70],dh
00000565  6565642E2E2E0D0A  cs or ax,0xa0a
         -0A
0000056E  0020              add [bx+si],ah
00000570  49                dec cx
00000571  6E                outsb
00000572  7661              jna 0x5d5
00000574  6C                insb
00000575  6964206669        imul sp,[si+0x20],word 0x6966
0000057A  6C                insb
0000057B  656E              gs outsb
0000057D  61                popaw
0000057E  6D                insw
0000057F  65206F72          and [gs:bx+0x72],ch
00000583  207061            and [bx+si+0x61],dh
00000586  7468              jz 0x5f0
00000588  0D0A0A            or ax,0xa0a
0000058B  0020              add [bx+si],ah
0000058D  46                inc si
0000058E  6F                outsw
0000058F  726D              jc 0x5fe
00000591  61                popaw
00000592  7420              jz 0x5b4
00000594  69733A0D0A        imul si,[bp+di+0x3a],word 0xa0d
00000599  0A09              or cl,[bx+di]
0000059B  094D4F            or [di+0x4f],cx
0000059E  53                push bx
0000059F  4C                dec sp
000005A0  4F                dec di
000005A1  202F              and [bx],ch
000005A3  6E                outsb
000005A4  206669            and [bp+0x69],ah
000005A7  6C                insb
000005A8  656E              gs outsb
000005AA  61                popaw
000005AB  6D                insw
000005AC  650D0A0A          gs or ax,0xa0a
000005B0  207768            and [bx+0x68],dh
000005B3  657265            gs jc 0x61b
000005B6  2027              and [bx],ah
000005B8  6E                outsb
000005B9  27                daa
000005BA  203D              and [di],bh
000005BC  2025              and [di],ah
000005BE  206F66            and [bx+0x66],ch
000005C1  206E6F            and [bp+0x6f],ch
000005C4  726D              jc 0x633
000005C6  61                popaw
000005C7  6C                insb
000005C8  207370            and [bp+di+0x70],dh
000005CB  6565642028        and [fs:bx+si],ch
000005D0  302E3120          xor [0x2031],ch
000005D4  2D2039            sub ax,0x3920
000005D7  392E3929          cmp [0x2939],bp
000005DB  20616E            and [bx+di+0x6e],ah
000005DE  642027            and [fs:bx],ah
000005E1  66696C656E616D65  imul ebp,[si+0x65],dword 0x656d616e
000005E9  27                daa
000005EA  0D0A20            or ax,0x200a
000005ED  6973207468        imul si,[bp+di+0x20],word 0x6874
000005F2  65206E61          and [gs:bp+0x61],ch
000005F6  6D                insw
000005F7  65206F66          and [gs:bx+0x66],ch
000005FB  207468            and [si+0x68],dh
000005FE  65207072          and [gs:bx+si+0x72],dh
00000602  6F                outsw
00000603  677261            jc 0x667
00000606  6D                insw
00000607  206F72            and [bx+0x72],ch
0000060A  206261            and [bp+si+0x61],ah
0000060D  7463              jz 0x672
0000060F  682066            push word 0x6620
00000612  696C652079        imul bp,[si+0x65],word 0x7920
00000617  6F                outsw
00000618  7520              jnz 0x63a
0000061A  7761              ja 0x67d
0000061C  6E                outsb
0000061D  7420              jz 0x63f
0000061F  746F              jz 0x690
00000621  20736C            and [bp+di+0x6c],dh
00000624  6F                outsw
00000625  772E              ja 0x655
00000627  0D0A20            or ax,0x200a
0000062A  49                dec cx
0000062B  66207468          o32 and [si+0x68],dh
0000062F  65207370          and [gs:bp+di+0x70],dh
00000633  656564207377      and [fs:bp+di+0x77],dh
00000639  6974636820        imul si,[si+0x63],word 0x2068
0000063E  6973206F6D        imul si,[bp+di+0x20],word 0x6d6f
00000643  6974746564        imul si,[si+0x74],word 0x6465
00000648  2C20              sub al,0x20
0000064A  4D                dec bp
0000064B  6F                outsw
0000064C  27                daa
0000064D  53                push bx
0000064E  6C                insb
0000064F  6F                outsw
00000650  207769            and [bx+0x69],dh
00000653  6C                insb
00000654  6C                insb
00000655  206174            and [bx+di+0x74],ah
00000658  7465              jz 0x6bf
0000065A  6D                insw
0000065B  7074              jo 0x6d1
0000065D  20746F            and [si+0x6f],dh
00000660  0D0A20            or ax,0x200a
00000663  7369              jnc 0x6ce
00000665  6D                insw
00000666  756C              jnz 0x6d4
00000668  61                popaw
00000669  7465              jz 0x6d0
0000066B  2034              and [si],dh
0000066D  2E37              cs aaa
0000066F  37                aaa
00000670  4D                dec bp
00000671  48                dec ax
00000672  7A20              jpe 0x694
00000674  49                dec cx
00000675  42                inc dx
00000676  4D                dec bp
00000677  205043            and [bx+si+0x43],dl
0000067A  2F                das
0000067B  58                pop ax
0000067C  54                push sp
0000067D  207370            and [bp+di+0x70],dh
00000680  6565642E0D0A0A    cs or ax,0xa0a
00000687  20546F            and [si+0x6f],dl
0000068A  20656E            and [di+0x6e],ah
0000068D  7465              jz 0x6f4
0000068F  7220              jc 0x6b1
00000691  7061              jo 0x6f4
00000693  7573              jnz 0x708
00000695  65206D6F          and [gs:di+0x6f],ch
00000699  64652C20          gs sub al,0x20
0000069D  7072              jo 0x711
0000069F  657373            gs jnc 0x715
000006A2  204374            and [bp+di+0x74],al
000006A5  726C              jc 0x713
000006A7  202B              and [bp+di],ch
000006A9  20416C            and [bx+di+0x6c],al
000006AC  7420              jz 0x6ce
000006AE  2B20              sub sp,[bx+si]
000006B0  53                push bx
000006B1  63726F            arpl [bp+si+0x6f],si
000006B4  6C                insb
000006B5  6C                insb
000006B6  204C6F            and [si+0x6f],cl
000006B9  636B2E            arpl [bp+di+0x2e],bp
000006BC  0D0A20            or ax,0x200a
000006BF  54                push sp
000006C0  6F                outsw
000006C1  206368            and [bp+di+0x68],ah
000006C4  61                popaw
000006C5  6E                outsb
000006C6  6765207065        and [gs:eax+0x65],dh
000006CB  7263              jc 0x730
000006CD  656E              gs outsb
000006CF  742C              jz 0x6fd
000006D1  207072            and [bx+si+0x72],dh
000006D4  657373            gs jnc 0x74a
000006D7  2027              and [bx],ah
000006D9  2D2720            sub ax,0x2027
000006DC  746F              jz 0x74d
000006DE  207265            and [bp+si+0x65],dh
000006E1  647563            fs jnz 0x747
000006E4  652C20            gs sub al,0x20
000006E7  27                daa
000006E8  3D2720            cmp ax,0x2027
000006EB  746F              jz 0x75c
000006ED  20696E            and [bx+di+0x6e],ch
000006F0  637265            arpl [bp+si+0x65],si
000006F3  61                popaw
000006F4  7365              jnc 0x75b
000006F6  0D0A20            or ax,0x200a
000006F9  287573            sub [di+0x73],dh
000006FC  65207468          and [gs:si+0x68],dh
00000700  65207374          and [gs:bp+di+0x74],dh
00000704  61                popaw
00000705  6E                outsb
00000706  6461              fs popaw
00000708  7264              jc 0x76e
0000070A  206B65            and [bp+di+0x65],ch
0000070D  7973              jns 0x782
0000070F  2C20              sub al,0x20
00000711  6E                outsb
00000712  6F                outsw
00000713  7420              jz 0x735
00000715  7468              jz 0x77f
00000717  65206E75          and [gs:bp+0x75],ch
0000071B  6D                insw
0000071C  657269            gs jc 0x788
0000071F  6320              arpl [bx+si],sp
00000721  6B657970          imul sp,[di+0x79],byte +0x70
00000725  61                popaw
00000726  64292E0D0A        sub [fs:0xa0d],bp
0000072B  20546F            and [si+0x6f],dl
0000072E  207265            and [bp+si+0x65],dh
00000731  7375              jnc 0x7a8
00000733  6D                insw
00000734  65206F70          and [gs:bx+0x70],ch
00000738  657261            gs jc 0x79c
0000073B  7469              jz 0x7a6
0000073D  6F                outsw
0000073E  6E                outsb
0000073F  2C20              sub al,0x20
00000741  7072              jo 0x7b5
00000743  657373            gs jnc 0x7b9
00000746  204374            and [bp+di+0x74],al
00000749  726C              jc 0x7b7
0000074B  202B              and [bp+di],ch
0000074D  20416C            and [bx+di+0x6c],al
00000750  7420              jz 0x772
00000752  2B20              sub sp,[bx+si]
00000754  53                push bx
00000755  63726F            arpl [bp+si+0x6f],si
00000758  6C                insb
00000759  6C                insb
0000075A  204C6F            and [si+0x6f],cl
0000075D  636B20            arpl [bp+di+0x20],bp
00000760  61                popaw
00000761  6761              a32 popaw
00000763  696E2E0D0A        imul bp,[bp+0x2e],word 0xa0d
00000768  0A20              or ah,[bx+si]
0000076A  54                push sp
0000076B  6F                outsw
0000076C  206C6F            and [si+0x6f],ch
0000076F  61                popaw
00000770  64206174          and [fs:bx+di+0x74],ah
00000774  206E6F            and [bp+0x6f],ch
00000777  726D              jc 0x7e6
00000779  61                popaw
0000077A  6C                insb
0000077B  207370            and [bp+di+0x70],dh
0000077E  6565642C20        fs sub al,0x20
00000783  7072              jo 0x7f7
00000785  657373            gs jnc 0x7fb
00000788  205363            and [bp+di+0x63],dl
0000078B  726F              jc 0x7fc
0000078D  6C                insb
0000078E  6C                insb
0000078F  204C6F            and [si+0x6f],cl
00000792  636B20            arpl [bp+di+0x20],bp
00000795  626566            bound sp,[di+0x66]
00000798  6F                outsw
00000799  7265              jc 0x800
0000079B  206578            and [di+0x78],ah
0000079E  65637574          arpl [gs:di+0x74],si
000007A2  696F6E2C0D        imul bp,[bx+0x6e],word 0xd2c
000007A7  0A20              or ah,[bx+si]
000007A9  7468              jz 0x813
000007AB  656E              gs outsb
000007AD  207072            and [bx+si+0x72],dh
000007B0  657373            gs jnc 0x826
000007B3  204374            and [bp+di+0x74],al
000007B6  726C              jc 0x824
000007B8  202B              and [bp+di],ch
000007BA  20416C            and [bx+di+0x6c],al
000007BD  7420              jz 0x7df
000007BF  2B20              sub sp,[bx+si]
000007C1  53                push bx
000007C2  63726F            arpl [bp+si+0x6f],si
000007C5  6C                insb
000007C6  6C                insb
000007C7  204C6F            and [si+0x6f],cl
000007CA  636B20            arpl [bp+di+0x20],bp
000007CD  746F              jz 0x83e
000007CF  206265            and [bp+si+0x65],ah
000007D2  67696E20736C      imul bp,[esi+0x20],word 0x6c73
000007D8  6F                outsw
000007D9  7764              ja 0x83f
000007DB  6F                outsw
000007DC  776E              ja 0x84c
000007DE  2E0D0A0A          cs or ax,0xa0a
000007E2  0A0A              or cl,[bp+si]
000007E4  00434F            add [bp+di+0x4f],al
000007E7  4D                dec bp
000007E8  004558            add [di+0x58],al
000007EB  45                inc bp
000007EC  004241            add [bp+si+0x41],al
000007EF  54                push sp
000007F0  0020              add [bx+si],ah
000007F2  2F                das
000007F3  43                inc bx
000007F4  205157            and [bx+di+0x57],dl
000007F7  B90300            mov cx,0x3
000007FA  F3A6              repe cmpsb
000007FC  740B              jz 0x809
000007FE  F9                stc
000007FF  5F                pop di
00000800  59                pop cx
00000801  C3                ret
00000802  51                push cx
00000803  57                push di
00000804  B90400            mov cx,0x4
00000807  F3A4              rep movsb
00000809  33C9              xor cx,cx
0000080B  B44E              mov ah,0x4e
0000080D  BAF603            mov dx,0x3f6
00000810  CD21              int 0x21
00000812  8AD0              mov dl,al
00000814  5F                pop di
00000815  59                pop cx
00000816  C3                ret
00000817  0208              add cl,[bx+si]
00000819  20434F            and [bp+di+0x4f],al
0000081C  4D                dec bp
0000081D  4D                dec bp
0000081E  41                inc cx
0000081F  4E                dec si
00000820  44                inc sp
00000821  2E43              cs inc bx
00000823  4F                dec di
00000824  4D                dec bp
00000825  2D2D72            sub ax,0x722d
00000828  657175            gs jno 0x8a0
0000082B  6972656420        imul si,[bp+si+0x65],word 0x2064
00000830  666F              outsd
00000832  7220              jc 0x854
00000834  626174            bound sp,[bx+di+0x74]
00000837  636820            arpl [bx+si+0x20],bp
0000083A  66696C65732D2D77  imul ebp,[si+0x65],dword 0x772d2d73
00000842  61                popaw
00000843  7320              jnc 0x865
00000845  6E                outsb
00000846  6F                outsw
00000847  7420              jz 0x869
00000849  666F              outsd
0000084B  756E              jnz 0x8bb
0000084D  642E0D0A0A        cs or ax,0xa0a
00000852  00434F            add [bp+di+0x4f],al
00000855  4D                dec bp
00000856  53                push bx
00000857  50                push ax
00000858  45                inc bp
00000859  43                inc bx
0000085A  3DBAFB            cmp ax,0xfbba
0000085D  04E8              add al,0xe8
0000085F  15F9BF            adc ax,0xbff9
00000862  8100B020          add word [bx+si],0x20b0
00000866  33D2              xor dx,dx
00000868  8AEE              mov ch,dh
0000086A  8A4DFF            mov cl,[di-0x1]
0000086D  FC                cld
0000086E  E304              jcxz 0x874
00000870  F3AE              repe scasb
00000872  7506              jnz 0x87a
00000874  BA8C05            mov dx,0x58c
00000877  E932FB            jmp word 0x3ac
0000087A  8BF7              mov si,di
0000087C  807DFF2F          cmp byte [di-0x1],0x2f
00000880  754F              jnz 0x8d1
00000882  BBFF0A            mov bx,0xaff
00000885  33D2              xor dx,dx
00000887  AC                lodsb
00000888  49                dec cx
00000889  74E9              jz 0x874
0000088B  3C20              cmp al,0x20
0000088D  7422              jz 0x8b1
0000088F  0ADB              or bl,bl
00000891  74F4              jz 0x887
00000893  3C2E              cmp al,0x2e
00000895  7411              jz 0x8a8
00000897  2C30              sub al,0x30
00000899  3C39              cmp al,0x39
0000089B  77D7              ja 0x874
0000089D  FECB              dec bl
0000089F  92                xchg ax,dx
000008A0  F6E7              mul bh
000008A2  03D0              add dx,ax
000008A4  73E1              jnc 0x887
000008A6  EBCC              jmp short 0x874
000008A8  83FA64            cmp dx,byte +0x64
000008AB  73C7              jnc 0x874
000008AD  B301              mov bl,0x1
000008AF  EBD6              jmp short 0x887
000008B1  0ADB              or bl,bl
000008B3  7406              jz 0x8bb
000008B5  8AC2              mov al,dl
000008B7  F6E7              mul bh
000008B9  8BD0              mov dx,ax
000008BB  81FAE803          cmp dx,0x3e8
000008BF  73B3              jnc 0x874
000008C1  0BD2              or dx,dx
000008C3  74AF              jz 0x874
000008C5  89160C02          mov [0x20c],dx
000008C9  8BFE              mov di,si
000008CB  F3AE              repe scasb
000008CD  74A5              jz 0x874
000008CF  8AC2              mov al,dl
000008D1  8BC1              mov ax,cx
000008D3  0405              add al,0x5
000008D5  83EF06            sub di,byte +0x6
000008D8  893EF601          mov [0x1f6],di
000008DC  AA                stosb
000008DD  BEF107            mov si,0x7f1
000008E0  B90400            mov cx,0x4
000008E3  2AC1              sub al,cl
000008E5  F3A4              rep movsb
000008E7  8BC8              mov cx,ax
000008E9  8BF7              mov si,di
000008EB  BFF603            mov di,0x3f6
000008EE  AC                lodsb
000008EF  3C61              cmp al,0x61
000008F1  7206              jc 0x8f9
000008F3  3C7A              cmp al,0x7a
000008F5  7702              ja 0x8f9
000008F7  2C20              sub al,0x20
000008F9  AA                stosb
000008FA  49                dec cx
000008FB  3C20              cmp al,0x20
000008FD  77EF              ja 0x8ee
000008FF  B41A              mov ah,0x1a
00000901  BA4C04            mov dx,0x44c
00000904  CD21              int 0x21
00000906  8936F801          mov [0x1f8],si
0000090A  B02E              mov al,0x2e
0000090C  8845FF            mov [di-0x1],al
0000090F  3845FB            cmp [di-0x5],al
00000912  750D              jnz 0x921
00000914  C645FF00          mov byte [di-0x1],0x0
00000918  83EF04            sub di,byte +0x4
0000091B  C7061708F507      mov word [0x817],0x7f5
00000921  BEE507            mov si,0x7e5
00000924  FF161708          call word [0x817]
00000928  735D              jnc 0x987
0000092A  BEE907            mov si,0x7e9
0000092D  FF161708          call word [0x817]
00000931  7354              jnc 0x987
00000933  BA1908            mov dx,0x819
00000936  A12C00            mov ax,[0x2c]
00000939  8EC0              mov es,ax
0000093B  33C0              xor ax,ax
0000093D  57                push di
0000093E  8BF8              mov di,ax
00000940  EB0A              jmp short 0x94c
00000942  8BFB              mov di,bx
00000944  47                inc di
00000945  B90002            mov cx,0x200
00000948  F2AE              repne scasb
0000094A  7535              jnz 0x981
0000094C  263805            cmp [es:di],al
0000094F  7430              jz 0x981
00000951  8BDF              mov bx,di
00000953  BE5308            mov si,0x853
00000956  B90800            mov cx,0x8
00000959  F3A6              repe cmpsb
0000095B  75E5              jnz 0x942
0000095D  8BF7              mov si,di
0000095F  BFB403            mov di,0x3b4
00000962  06                push es
00000963  1F                pop ds
00000964  0E                push cs
00000965  07                pop es
00000966  AC                lodsb
00000967  AA                stosb
00000968  0AC0              or al,al
0000096A  75FA              jnz 0x966
0000096C  0E                push cs
0000096D  1F                pop ds
0000096E  C7060A02B403      mov word [0x20a],0x3b4
00000974  BEED07            mov si,0x7ed
00000977  5F                pop di
00000978  FF161708          call word [0x817]
0000097C  7316              jnc 0x994
0000097E  BA6F05            mov dx,0x56f
00000981  E8F2F7            call word 0x176
00000984  E9EDFE            jmp word 0x874
00000987  8B36F801          mov si,[0x1f8]
0000098B  41                inc cx
0000098C  4E                dec si
0000098D  4E                dec si
0000098E  880C              mov [si],cl
00000990  8936F601          mov [0x1f6],si
00000994  8CC8              mov ax,cs
00000996  A3F801            mov [0x1f8],ax
00000999  A12C00            mov ax,[0x2c]
0000099C  A3F401            mov [0x1f4],ax
0000099F  B80835            mov ax,0x3508
000009A2  CD21              int 0x21
000009A4  891EE401          mov [0x1e4],bx
000009A8  8C06E601          mov [0x1e6],es
000009AC  B80935            mov ax,0x3509
000009AF  CD21              int 0x21
000009B1  891EE801          mov [0x1e8],bx
000009B5  8C06EA01          mov [0x1ea],es
000009B9  0E                push cs
000009BA  07                pop es
000009BB  BA1303            mov dx,0x313
000009BE  B80925            mov ax,0x2509
000009C1  CD21              int 0x21
000009C3  BA1802            mov dx,0x218
000009C6  B80825            mov ax,0x2508
000009C9  CD21              int 0x21
000009CB  C606090200        mov byte [0x209],0x0
000009D0  90                nop
000009D1  803E090202        cmp byte [0x209],0x2
000009D6  75F8              jnz 0x9d0
000009D8  A10602            mov ax,[0x206]
000009DB  F7D0              not ax
000009DD  8BD8              mov bx,ax
000009DF  8B0E0C02          mov cx,[0x20c]
000009E3  E317              jcxz 0x9fc
000009E5  F7E1              mul cx
000009E7  05F401            add ax,0x1f4
000009EA  83D200            adc dx,byte +0x0
000009ED  B9E803            mov cx,0x3e8
000009F0  F7F1              div cx
000009F2  3D0500            cmp ax,0x5
000009F5  7708              ja 0x9ff
000009F7  B80500            mov ax,0x5
000009FA  EB03              jmp short 0x9ff
000009FC  B86400            mov ax,0x64
000009FF  50                push ax
00000A00  BAE803            mov dx,0x3e8
00000A03  F7E2              mul dx
00000A05  8BCB              mov cx,bx
00000A07  D1E9              shr cx,1
00000A09  03C1              add ax,cx
00000A0B  83D200            adc dx,byte +0x0
00000A0E  F7F3              div bx
00000A10  A30C02            mov [0x20c],ax
00000A13  BE5705            mov si,0x557
00000A16  E879F7            call word 0x192
00000A19  BAF503            mov dx,0x3f5
00000A1C  E857F7            call word 0x176
00000A1F  BA4705            mov dx,0x547
00000A22  E851F7            call word 0x176
00000A25  8BD6              mov dx,si
00000A27  E84CF7            call word 0x176
00000A2A  A20802            mov [0x208],al
00000A2D  803E080218        cmp byte [0x208],0x18
00000A32  72F9              jc 0xa2d
00000A34  58                pop ax
00000A35  2BD8              sub bx,ax
00000A37  891E0202          mov [0x202],bx
00000A3B  B402              mov ah,0x2
00000A3D  CD16              int 0x16
00000A3F  33D2              xor dx,dx
00000A41  A810              test al,0x10
00000A43  7402              jz 0xa47
00000A45  B204              mov dl,0x4
00000A47  E9B9F6            jmp word 0x103
