00000100  E9A202            jmp word 0x3a5
00000103  B86400            mov ax,0x64
00000106  EB2D              jmp short 0x135
00000108  BA2B02            mov dx,0x22b
0000010B  B80825            mov ax,0x2508
0000010E  CD21              int 0x21
00000110  FA                cli
00000111  A0E301            mov al,[0x1e3]
00000114  FB                sti
00000115  3C02              cmp al,0x2
00000117  75F7              jnz 0x110
00000119  A1E401            mov ax,[0x1e4]
0000011C  F7D0              not ax
0000011E  8BD8              mov bx,ax
00000120  59                pop cx
00000121  E3E0              jcxz 0x103
00000123  F7E1              mul cx
00000125  053200            add ax,0x32
00000128  B96400            mov cx,0x64
0000012B  F7F1              div cx
0000012D  3D0500            cmp ax,0x5
00000130  7703              ja 0x135
00000132  B80500            mov ax,0x5
00000135  2BD8              sub bx,ax
00000137  891EE401          mov [0x1e4],bx
0000013B  BAE801            mov dx,0x1e8
0000013E  B80825            mov ax,0x2508
00000141  CD21              int 0x21
00000143  5A                pop dx
00000144  4A                dec dx
00000145  8926CF01          mov [0x1cf],sp
00000149  8C16CD01          mov [0x1cd],ss
0000014D  BBD101            mov bx,0x1d1
00000150  B8004B            mov ax,0x4b00
00000153  FA                cli
00000154  C606E30100        mov byte [0x1e3],0x0
00000159  90                nop
0000015A  FB                sti
0000015B  CD21              int 0x21
0000015D  FA                cli
0000015E  8E16CD01          mov ss,[0x1cd]
00000162  8B26CF01          mov sp,[0x1cf]
00000166  FB                sti
00000167  9C                pushfw
00000168  2EC516DF01        lds dx,[cs:0x1df]
0000016D  B80825            mov ax,0x2508
00000170  CD21              int 0x21
00000172  0E                push cs
00000173  1F                pop ds
00000174  9D                popfw
00000175  7303              jnc 0x17a
00000177  E95402            jmp word 0x3ce
0000017A  B8004C            mov ax,0x4c00
0000017D  CD21              int 0x21
0000017F  AD                lodsw
00000180  8BC8              mov cx,ax
00000182  8BD6              mov dx,si
00000184  B440              mov ah,0x40
00000186  BB0200            mov bx,0x2
00000189  CD21              int 0x21
0000018B  C3                ret
0000018C  0000              add [bx+si],al
0000018E  0000              add [bx+si],al
00000190  0000              add [bx+si],al
00000192  0000              add [bx+si],al
00000194  0000              add [bx+si],al
00000196  0000              add [bx+si],al
00000198  0000              add [bx+si],al
0000019A  0000              add [bx+si],al
0000019C  0000              add [bx+si],al
0000019E  0000              add [bx+si],al
000001A0  0000              add [bx+si],al
000001A2  0000              add [bx+si],al
000001A4  0000              add [bx+si],al
000001A6  0000              add [bx+si],al
000001A8  0000              add [bx+si],al
000001AA  0000              add [bx+si],al
000001AC  0000              add [bx+si],al
000001AE  0000              add [bx+si],al
000001B0  0000              add [bx+si],al
000001B2  0000              add [bx+si],al
000001B4  0000              add [bx+si],al
000001B6  0000              add [bx+si],al
000001B8  0000              add [bx+si],al
000001BA  0000              add [bx+si],al
000001BC  0000              add [bx+si],al
000001BE  0000              add [bx+si],al
000001C0  0000              add [bx+si],al
000001C2  0000              add [bx+si],al
000001C4  0000              add [bx+si],al
000001C6  0000              add [bx+si],al
000001C8  0000              add [bx+si],al
000001CA  0000              add [bx+si],al
000001CC  0000              add [bx+si],al
000001CE  0000              add [bx+si],al
000001D0  0000              add [bx+si],al
000001D2  008C0100          add [si+0x1],cl
000001D6  00FF              add bh,bh
000001D8  FF                db 0xff
000001D9  FF                db 0xff
000001DA  FF                db 0xff
000001DB  FF                db 0xff
000001DC  FF                db 0xff
000001DD  FF                db 0xff
000001DE  FF00              inc word [bx+si]
000001E0  0000              add [bx+si],al
000001E2  0000              add [bx+si],al
000001E4  0000              add [bx+si],al
000001E6  0000              add [bx+si],al
000001E8  9C                pushfw
000001E9  2EFF1EDF01        call word far [cs:0x1df]
000001EE  FA                cli
000001EF  2E803EE30100      cmp byte [cs:0x1e3],0x0
000001F5  7402              jz 0x1f9
000001F7  FB                sti
000001F8  CF                iretw
000001F9  2EC606E30101      mov byte [cs:0x1e3],0x1
000001FF  FB                sti
00000200  51                push cx
00000201  2E8B0EE401        mov cx,[cs:0x1e4]
00000206  E321              jcxz 0x229
00000208  2E890EE601        mov [cs:0x1e6],cx
0000020D  B93800            mov cx,0x38
00000210  D1C1              rol cx,1
00000212  D1C9              ror cx,1
00000214  23C0              and ax,ax
00000216  E2F8              loop 0x210
00000218  FA                cli
00000219  2EFF0EE601        dec word [cs:0x1e6]
0000021E  FB                sti
0000021F  75EC              jnz 0x20d
00000221  FA                cli
00000222  2EC606E30100      mov byte [cs:0x1e3],0x0
00000228  FB                sti
00000229  59                pop cx
0000022A  CF                iretw
0000022B  9C                pushfw
0000022C  2EFF1EDF01        call word far [cs:0x1df]
00000231  FA                cli
00000232  2E803EE30101      cmp byte [cs:0x1e3],0x1
00000238  7218              jc 0x252
0000023A  7714              ja 0x250
0000023C  50                push ax
0000023D  2EC606E30102      mov byte [cs:0x1e3],0x2
00000243  B80100            mov ax,0x1
00000246  2E8706E601        xchg ax,[cs:0x1e6]
0000024B  2EA3E401          mov [cs:0x1e4],ax
0000024F  58                pop ax
00000250  FB                sti
00000251  CF                iretw
00000252  FA                cli
00000253  2EC606E30101      mov byte [cs:0x1e3],0x1
00000259  51                push cx
0000025A  B9FFFF            mov cx,0xffff
0000025D  2E890EE601        mov [cs:0x1e6],cx
00000262  FB                sti
00000263  B93800            mov cx,0x38
00000266  D1C1              rol cx,1
00000268  D1C9              ror cx,1
0000026A  23C9              and cx,cx
0000026C  E2F8              loop 0x266
0000026E  FA                cli
0000026F  2EFF0EE601        dec word [cs:0x1e6]
00000274  FB                sti
00000275  75EC              jnz 0x263
00000277  59                pop cx
00000278  CF                iretw
00000279  2A01              sub al,[bx+di]
0000027B  46                inc si
0000027C  6F                outsw
0000027D  726D              jc 0x2ec
0000027F  61                popaw
00000280  7420              jz 0x2a2
00000282  69733A0D0A        imul si,[bp+di+0x3a],word 0xa0d
00000287  0A20              or ah,[bx+si]
00000289  206D6F            and [di+0x6f],ch
0000028C  27                daa
0000028D  736C              jnc 0x2fb
0000028F  6F                outsw
00000290  205B2F            and [bp+di+0x2f],bl
00000293  2831              sub [bx+di],dh
00000295  2D3939            sub ax,0x3939
00000298  295D20            sub [di+0x20],bx
0000029B  7067              jo 0x304
0000029D  6D                insw
0000029E  5F                pop di
0000029F  6E                outsb
000002A0  61                popaw
000002A1  6D                insw
000002A2  650D0A0A          gs or ax,0xa0a
000002A6  4F                dec di
000002A7  7074              jo 0x31d
000002A9  696F6E616C        imul bp,[bx+0x6e],word 0x6c61
000002AE  206E75            and [bp+0x75],ch
000002B1  6D                insw
000002B2  626572            bound sp,[di+0x72]
000002B5  207377            and [bp+di+0x77],dh
000002B8  6974636820        imul si,[si+0x63],word 0x2068
000002BD  6973202520        imul si,[bp+di+0x20],word 0x2025
000002C2  6F                outsw
000002C3  66206E6F          o32 and [bp+0x6f],ch
000002C7  726D              jc 0x336
000002C9  61                popaw
000002CA  6C                insb
000002CB  207370            and [bp+di+0x70],dh
000002CE  6565642C0D        fs sub al,0xd
000002D3  0A6965            or ch,[bx+di+0x65]
000002D6  3A20              cmp ah,[bx+si]
000002D8  2F                das
000002D9  3120              xor [bx+si],sp
000002DB  3D2031            cmp ax,0x3120
000002DE  252C20            and ax,0x202c
000002E1  2F                das
000002E2  3930              cmp [bx+si],si
000002E4  203D              and [di],bh
000002E6  2039              and [bx+di],bh
000002E8  3025              xor [di],ah
000002EA  2E204966          and [cs:bx+di+0x66],cl
000002EE  2025              and [di],ah
000002F0  206973            and [bx+di+0x73],ch
000002F3  206E6F            and [bp+0x6f],ch
000002F6  7420              jz 0x318
000002F8  676976656E2C      imul si,[esi+0x65],word 0x2c6e
000002FE  0D0A4D            or ax,0x4d0a
00000301  6F                outsw
00000302  27                daa
00000303  53                push bx
00000304  6C                insb
00000305  6F                outsw
00000306  20736C            and [bp+di+0x6c],dh
00000309  6F                outsw
0000030A  7773              ja 0x37f
0000030C  20636F            and [bp+di+0x6f],ah
0000030F  6D                insw
00000310  7075              jo 0x387
00000312  7465              jz 0x379
00000314  7220              jc 0x336
00000316  746F              jz 0x387
00000318  204942            and [bx+di+0x42],cl
0000031B  4D                dec bp
0000031C  205043            and [bx+si+0x43],dl
0000031F  2F                das
00000320  58                pop ax
00000321  54                push sp
00000322  207370            and [bp+di+0x70],dh
00000325  6565642E0D0A0A    cs or ax,0xa0a
0000032C  50                push ax
0000032D  676D              a32 insw
0000032F  5F                pop di
00000330  6E                outsb
00000331  61                popaw
00000332  6D                insw
00000333  65206D75          and [gs:di+0x75],ch
00000337  7374              jnc 0x3ad
00000339  20696E            and [bx+di+0x6e],ch
0000033C  636C75            arpl [si+0x75],bp
0000033F  6465207468        and [gs:si+0x68],dh
00000344  65206578          and [gs:di+0x78],ah
00000348  7465              jz 0x3af
0000034A  6E                outsb
0000034B  7369              jnc 0x3b6
0000034D  6F                outsw
0000034E  6E                outsb
0000034F  2028              and [bx+si],ch
00000351  2E43              cs inc bx
00000353  4F                dec di
00000354  4D                dec bp
00000355  206F72            and [bx+0x72],ch
00000358  202E4558          and [0x5845],ch
0000035C  45                inc bp
0000035D  290D              sub [di],cx
0000035F  0A616E            or ah,[bx+di+0x6e]
00000362  64206569          and [fs:di+0x69],ah
00000366  7468              jz 0x3d0
00000368  657220            gs jc 0x38b
0000036B  626520            bound sp,[di+0x20]
0000036E  696E207468        imul bp,[bp+0x20],word 0x6874
00000373  65206375          and [gs:bp+di+0x75],ah
00000377  7272              jc 0x3eb
00000379  656E              gs outsb
0000037B  7420              jz 0x39d
0000037D  7375              jnc 0x3f4
0000037F  626469            bound sp,[si+0x69]
00000382  7265              jc 0x3e9
00000384  63746F            arpl [si+0x6f],si
00000387  7279              jc 0x402
00000389  0D0A6F            or ax,0x6f0a
0000038C  7220              jc 0x3ae
0000038E  696E636C75        imul bp,[bp+0x63],word 0x756c
00000393  6465206120        and [gs:bx+di+0x20],ah
00000398  7661              jna 0x3fb
0000039A  6C                insb
0000039B  6964207061        imul sp,[si+0x20],word 0x6170
000003A0  7468              jz 0x40a
000003A2  2E0D0ABE          cs or ax,0xbe0a
000003A6  50                push ax
000003A7  04E8              add al,0xe8
000003A9  D4FD              aam 0xfd
000003AB  B44A              mov ah,0x4a
000003AD  BBD604            mov bx,0x4d6
000003B0  8BE3              mov sp,bx
000003B2  B104              mov cl,0x4
000003B4  83C30F            add bx,byte +0xf
000003B7  D3EB              shr bx,cl
000003B9  CD21              int 0x21
000003BB  BF8100            mov di,0x81
000003BE  B020              mov al,0x20
000003C0  33D2              xor dx,dx
000003C2  8AEE              mov ch,dh
000003C4  8A4DFF            mov cl,[di-0x1]
000003C7  FC                cld
000003C8  E304              jcxz 0x3ce
000003CA  F3AE              repe scasb
000003CC  750B              jnz 0x3d9
000003CE  BE7902            mov si,0x279
000003D1  E8ABFD            call word 0x17f
000003D4  B8014C            mov ax,0x4c01
000003D7  CD21              int 0x21
000003D9  8BD9              mov bx,cx
000003DB  8911              mov [bx+di],dx
000003DD  8BDA              mov bx,dx
000003DF  A1E401            mov ax,[0x1e4]
000003E2  807DFF2F          cmp byte [di-0x1],0x2f
000003E6  7530              jnz 0x418
000003E8  8B05              mov ax,[di]
000003EA  80FC20            cmp ah,0x20
000003ED  7506              jnz 0x3f5
000003EF  8AE0              mov ah,al
000003F1  B030              mov al,0x30
000003F3  4F                dec di
000003F4  41                inc cx
000003F5  47                inc di
000003F6  47                inc di
000003F7  50                push ax
000003F8  83E902            sub cx,byte +0x2
000003FB  76D1              jna 0x3ce
000003FD  B020              mov al,0x20
000003FF  F3AE              repe scasb
00000401  74CB              jz 0x3ce
00000403  58                pop ax
00000404  2D3030            sub ax,0x3030
00000407  74C5              jz 0x3ce
00000409  B30A              mov bl,0xa
0000040B  8AFC              mov bh,ah
0000040D  F6E3              mul bl
0000040F  02C7              add al,bh
00000411  72BB              jc 0x3ce
00000413  3D6300            cmp ax,0x63
00000416  77B6              ja 0x3ce
00000418  57                push di
00000419  50                push ax
0000041A  B82020            mov ax,0x2020
0000041D  F2AE              repne scasb
0000041F  E310              jcxz 0x431
00000421  8AC1              mov al,cl
00000423  FEC0              inc al
00000425  50                push ax
00000426  8BF7              mov si,di
00000428  BF8E01            mov di,0x18e
0000042B  F3A4              rep movsb
0000042D  8F068C01          pop word [0x18c]
00000431  BB2C00            mov bx,0x2c
00000434  8B07              mov ax,[bx]
00000436  A3D101            mov [0x1d1],ax
00000439  8CC8              mov ax,cs
0000043B  A3D501            mov [0x1d5],ax
0000043E  B80835            mov ax,0x3508
00000441  CD21              int 0x21
00000443  891EDF01          mov [0x1df],bx
00000447  8C06E101          mov [0x1e1],es
0000044B  0E                push cs
0000044C  07                pop es
0000044D  E9B8FC            jmp word 0x108
00000450  3100              xor [bx+si],ax
00000452  4D                dec bp
00000453  6F                outsw
00000454  27                daa
00000455  53                push bx
00000456  6C                insb
00000457  6F                outsw
00000458  20762E            and [bp+0x2e],dh
0000045B  312E310D          xor [0xd31],bp
0000045F  0A436F            or al,[bp+di+0x6f]
00000462  7079              jo 0x4dd
00000464  7269              jc 0x4cf
00000466  67687420          push word 0x2074
0000046A  286329            sub [bp+di+0x29],ah
0000046D  204461            and [si+0x61],al
00000470  7669              jna 0x4db
00000472  64205065          and [fs:bx+si+0x65],dl
00000476  7272              jc 0x4ea
00000478  656C              gs insb
0000047A  6C                insb
0000047B  2031              and [bx+di],dh
0000047D  3939              cmp [bx+di],di
0000047F  302E0D0A          xor [0xa0d],ch
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
000004CB  0000              add [bx+si],al
000004CD  0000              add [bx+si],al
000004CF  0000              add [bx+si],al
000004D1  0000              add [bx+si],al
000004D3  0000              add [bx+si],al
000004D5  0000              add [bx+si],al
000004D7  0000              add [bx+si],al
000004D9  00                db 0x00
