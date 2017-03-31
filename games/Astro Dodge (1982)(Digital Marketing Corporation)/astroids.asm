00000100  E91A00            jmp 0x11d
00000103  BB1D01            mov bx,0x11d
00000106  B90050            mov cx,0x5000
00000109  881F              mov [bx],bl
0000010B  43                inc bx
0000010C  E2FB              loop 0x109
0000010E  33DB              xor bx,bx
00000110  8EDB              mov ds,bx
00000112  C70672043412      mov word [0x472],0x1234
00000118  EA5BE000F0        jmp 0xf000:0xe05b
0000011D  FA                cli
0000011E  B80000            mov ax,0x0
00000121  8EC0              mov es,ax
00000123  268B0E2400        mov cx,[es:0x24]
00000128  268B162600        mov dx,[es:0x26]
0000012D  890EDB03          mov [0x3db],cx
00000131  8916DD03          mov [0x3dd],dx
00000135  8CC8              mov ax,cs
00000137  26A32600          mov [es:0x26],ax
0000013B  26C7062400A702    mov word [es:0x24],0x2a7
00000142  8CC8              mov ax,cs
00000144  8ED8              mov ds,ax
00000146  8ED0              mov ss,ax
00000148  FB                sti
00000149  C70631123312      mov word [0x1231],0x1233
0000014F  E8620E            call 0xfb4
00000152  C6062C1200        mov byte [0x122c],0x0
00000157  F6062C12FF        test byte [0x122c],0xff
0000015C  74F9              jz 0x157
0000015E  BC6F36            mov sp,0x366f
00000161  B9E501            mov cx,0x1e5
00000164  BB4810            mov bx,0x1048
00000167  C60700            mov byte [bx],0x0
0000016A  43                inc bx
0000016B  E2FA              loop 0x167
0000016D  C606501030        mov byte [0x1050],0x30
00000172  C6065F10FF        mov byte [0x105f],0xff
00000177  C70653100080      mov word [0x1053],0x8000
0000017D  C70655100080      mov word [0x1055],0x8000
00000183  C70659100000      mov word [0x1059],0x0
00000189  C70657100000      mov word [0x1057],0x0
0000018F  C706FB110000      mov word [0x11fb],0x0
00000195  C706FC110000      mov word [0x11fc],0x0
0000019B  C6060712FF        mov byte [0x1207],0xff
000001A0  C606061200        mov byte [0x1206],0x0
000001A5  E8D206            call 0x87a
000001A8  E8E206            call 0x88d
000001AB  C606CB1100        mov byte [0x11cb],0x0
000001B0  C6060B1203        mov byte [0x120b],0x3
000001B5  C70625120001      mov word [0x1225],0x100
000001BB  FE060712          inc byte [0x1207]
000001BF  A00712            mov al,[0x1207]
000001C2  803E071204        cmp byte [0x1207],0x4
000001C7  7202              jc 0x1cb
000001C9  B003              mov al,0x3
000001CB  D0E0              shl al,1
000001CD  0405              add al,0x5
000001CF  A2D811            mov [0x11d8],al
000001D2  A20512            mov [0x1205],al
000001D5  E85205            call 0x72a
000001D8  C606C91103        mov byte [0x11c9],0x3
000001DD  A16110            mov ax,[0x1061]
000001E0  F6C408            test ah,0x8
000001E3  740F              jz 0x1f4
000001E5  A16310            mov ax,[0x1063]
000001E8  A3CC11            mov [0x11cc],ax
000001EB  C706CE110000      mov word [0x11ce],0x0
000001F1  E90C00            jmp 0x200
000001F4  A16310            mov ax,[0x1063]
000001F7  A3CE11            mov [0x11ce],ax
000001FA  C706CC110000      mov word [0x11cc],0x0
00000200  B108              mov cl,0x8
00000202  A16510            mov ax,[0x1065]
00000205  D3F8              sar ax,cl
00000207  A3D011            mov [0x11d0],ax
0000020A  A16710            mov ax,[0x1067]
0000020D  D3E8              shr ax,cl
0000020F  A3D211            mov [0x11d2],ax
00000212  E86404            call 0x679
00000215  FE0ED811          dec byte [0x11d8]
00000219  75BA              jnz 0x1d5
0000021B  FE06DA11          inc byte [0x11da]
0000021F  FF062512          inc word [0x1225]
00000223  E83E00            call 0x264
00000226  E83A02            call 0x463
00000229  E8B301            call 0x3df
0000022C  E8B302            call 0x4e2
0000022F  E8C704            call 0x6f9
00000232  E83405            call 0x769
00000235  E8A105            call 0x7d9
00000238  E8AA07            call 0x9e5
0000023B  E8F407            call 0xa32
0000023E  E8C208            call 0xb03
00000241  E86C08            call 0xab0
00000244  E87109            call 0xbb8
00000247  E81609            call 0xb60
0000024A  E8CB09            call 0xc18
0000024D  E8910A            call 0xce1
00000250  E8EA0A            call 0xd3d
00000253  E8520B            call 0xda8
00000256  E8D60B            call 0xe2f
00000259  E8970C            call 0xef3
0000025C  E8DA0C            call 0xf39
0000025F  E80E0D            call 0xf70
00000262  EBB7              jmp short 0x21b
00000264  F606DA1103        test byte [0x11da],0x3
00000269  753B              jnz 0x2a6
0000026B  F6060812FF        test byte [0x1208],0xff
00000270  7534              jnz 0x2a6
00000272  F6062812FF        test byte [0x1228],0xff
00000277  7409              jz 0x282
00000279  FE065010          inc byte [0x1050]
0000027D  802650103F        and byte [0x1050],0x3f
00000282  F6062912FF        test byte [0x1229],0xff
00000287  7409              jz 0x292
00000289  FE0E5010          dec byte [0x1050]
0000028D  802650103F        and byte [0x1050],0x3f
00000292  F6062A12FF        test byte [0x122a],0xff
00000297  7408              jz 0x2a1
00000299  C6066010FF        mov byte [0x1060],0xff
0000029E  E90500            jmp 0x2a6
000002A1  C606601000        mov byte [0x1060],0x0
000002A6  C3                ret
000002A7  FB                sti
000002A8  50                push ax
000002A9  53                push bx
000002AA  51                push cx
000002AB  52                push dx
000002AC  06                push es
000002AD  E560              in ax,0x60
000002AF  88C3              mov bl,al
000002B1  88C7              mov bh,al
000002B3  80E37F            and bl,0x7f
000002B6  E561              in ax,0x61
000002B8  88C4              mov ah,al
000002BA  0C80              or al,0x80
000002BC  E761              out 0x61,ax
000002BE  86E0              xchg ah,al
000002C0  E761              out 0x61,ax
000002C2  80FB39            cmp bl,0x39
000002C5  7503              jnz 0x2ca
000002C7  E95C00            jmp 0x326
000002CA  80FB43            cmp bl,0x43
000002CD  7503              jnz 0x2d2
000002CF  E96000            jmp 0x332
000002D2  80FB44            cmp bl,0x44
000002D5  7503              jnz 0x2da
000002D7  E96B00            jmp 0x345
000002DA  80FB52            cmp bl,0x52
000002DD  7503              jnz 0x2e2
000002DF  E97600            jmp 0x358
000002E2  80FB53            cmp bl,0x53
000002E5  7503              jnz 0x2ea
000002E7  E98100            jmp 0x36b
000002EA  80FB45            cmp bl,0x45
000002ED  7503              jnz 0x2f2
000002EF  E98500            jmp 0x377
000002F2  80FB46            cmp bl,0x46
000002F5  7503              jnz 0x2fa
000002F7  E98400            jmp 0x37e
000002FA  80FB3B            cmp bl,0x3b
000002FD  7503              jnz 0x302
000002FF  E97F00            jmp 0x381
00000302  80FB3C            cmp bl,0x3c
00000305  7503              jnz 0x30a
00000307  E98300            jmp 0x38d
0000030A  80FB3D            cmp bl,0x3d
0000030D  90                nop
0000030E  7503              jnz 0x313
00000310  E9A700            jmp 0x3ba
00000313  80FB3E            cmp bl,0x3e
00000316  7503              jnz 0x31b
00000318  E97E00            jmp 0x399
0000031B  FA                cli
0000031C  B020              mov al,0x20
0000031E  E720              out 0x20,ax
00000320  07                pop es
00000321  5A                pop dx
00000322  59                pop cx
00000323  5B                pop bx
00000324  58                pop ax
00000325  CF                iret
00000326  F6C780            test bh,0x80
00000329  7505              jnz 0x330
0000032B  B0FF              mov al,0xff
0000032D  A22712            mov [0x1227],al
00000330  EBE9              jmp short 0x31b
00000332  F6C780            test bh,0x80
00000335  7507              jnz 0x33e
00000337  B0FF              mov al,0xff
00000339  A22912            mov [0x1229],al
0000033C  EBDD              jmp short 0x31b
0000033E  32C0              xor al,al
00000340  A22912            mov [0x1229],al
00000343  EBD6              jmp short 0x31b
00000345  F6C780            test bh,0x80
00000348  7507              jnz 0x351
0000034A  B0FF              mov al,0xff
0000034C  A22812            mov [0x1228],al
0000034F  EBCA              jmp short 0x31b
00000351  32C0              xor al,al
00000353  A22812            mov [0x1228],al
00000356  EBC3              jmp short 0x31b
00000358  F6C780            test bh,0x80
0000035B  7507              jnz 0x364
0000035D  B0FF              mov al,0xff
0000035F  A22A12            mov [0x122a],al
00000362  EBB7              jmp short 0x31b
00000364  32C0              xor al,al
00000366  A22A12            mov [0x122a],al
00000369  EBB0              jmp short 0x31b
0000036B  F6C780            test bh,0x80
0000036E  75AB              jnz 0x31b
00000370  B0FF              mov al,0xff
00000372  A22B12            mov [0x122b],al
00000375  EBA4              jmp short 0x31b
00000377  B0FF              mov al,0xff
00000379  A22C12            mov [0x122c],al
0000037C  EB9D              jmp short 0x31b
0000037E  E982FD            jmp 0x103
00000381  C6062D1207        mov byte [0x122d],0x7
00000386  C6062E1255        mov byte [0x122e],0x55
0000038B  EB8E              jmp short 0x31b
0000038D  C6062D1206        mov byte [0x122d],0x6
00000392  C6062E12AA        mov byte [0x122e],0xaa
00000397  EB82              jmp short 0x31b
00000399  BAD803            mov dx,0x3d8
0000039C  F6C780            test bh,0x80
0000039F  7516              jnz 0x3b7
000003A1  803E2F120A        cmp byte [0x122f],0xa
000003A6  7409              jz 0x3b1
000003A8  B00A              mov al,0xa
000003AA  A22F12            mov [0x122f],al
000003AD  EE                out dx,al
000003AE  E96AFF            jmp 0x31b
000003B1  B00E              mov al,0xe
000003B3  A22F12            mov [0x122f],al
000003B6  EE                out dx,al
000003B7  E961FF            jmp 0x31b
000003BA  BAD903            mov dx,0x3d9
000003BD  F6C780            test bh,0x80
000003C0  7516              jnz 0x3d8
000003C2  803E301210        cmp byte [0x1230],0x10
000003C7  7409              jz 0x3d2
000003C9  B010              mov al,0x10
000003CB  A23012            mov [0x1230],al
000003CE  EE                out dx,al
000003CF  E949FF            jmp 0x31b
000003D2  B018              mov al,0x18
000003D4  A23012            mov [0x1230],al
000003D7  EE                out dx,al
000003D8  E940FF            jmp 0x31b
000003DB  FB                sti
000003DC  52                push dx
000003DD  7503              jnz 0x3e2
000003DF  F606DA1107        test byte [0x11da],0x7
000003E4  7539              jnz 0x41f
000003E6  F6060812FF        test byte [0x1208],0xff
000003EB  7532              jnz 0x41f
000003ED  A05210            mov al,[0x1052]
000003F0  A25110            mov [0x1051],al
000003F3  A15B10            mov ax,[0x105b]
000003F6  A35D10            mov [0x105d],ax
000003F9  C6064C1000        mov byte [0x104c],0x0
000003FE  E81F00            call 0x420
00000401  A05610            mov al,[0x1056]
00000404  8A265410          mov ah,[0x1054]
00000408  A35D10            mov [0x105d],ax
0000040B  A35B10            mov [0x105b],ax
0000040E  A05010            mov al,[0x1050]
00000411  A25110            mov [0x1051],al
00000414  A25210            mov [0x1052],al
00000417  C6064C1055        mov byte [0x104c],0x55
0000041C  E80100            call 0x420
0000041F  C3                ret
00000420  A05110            mov al,[0x1051]
00000423  243F              and al,0x3f
00000425  B70A              mov bh,0xa
00000427  F6E7              mul bh
00000429  89C3              mov bx,ax
0000042B  8B165D10          mov dx,[0x105d]
0000042F  8B8F6F15          mov cx,[bx+0x156f]
00000433  86CD              xchg cl,ch
00000435  02EE              add ch,dh
00000437  02CA              add cl,dl
00000439  51                push cx
0000043A  890E4D10          mov [0x104d],cx
0000043E  C6064F1004        mov byte [0x104f],0x4
00000443  43                inc bx
00000444  43                inc bx
00000445  53                push bx
00000446  52                push dx
00000447  8B8F6F15          mov cx,[bx+0x156f]
0000044B  86CD              xchg cl,ch
0000044D  02EE              add ch,dh
0000044F  02CA              add cl,dl
00000451  89CB              mov bx,cx
00000453  E8760B            call 0xfcc
00000456  5A                pop dx
00000457  5B                pop bx
00000458  FE0E4F10          dec byte [0x104f]
0000045C  75E5              jnz 0x443
0000045E  5B                pop bx
0000045F  E86A0B            call 0xfcc
00000462  C3                ret
00000463  F606DA1107        test byte [0x11da],0x7
00000468  7548              jnz 0x4b2
0000046A  F6060812FF        test byte [0x1208],0xff
0000046F  7541              jnz 0x4b2
00000471  F6066010FF        test byte [0x1060],0xff
00000476  741C              jz 0x494
00000478  8A1E5010          mov bl,[0x1050]
0000047C  81E33F00          and bx,0x3f
00000480  02DB              add bl,bl
00000482  02DB              add bl,bl
00000484  8B876F1C          mov ax,[bx+0x1c6f]
00000488  01065910          add [0x1059],ax
0000048C  8B87711C          mov ax,[bx+0x1c71]
00000490  01065710          add [0x1057],ax
00000494  8B165910          mov dx,[0x1059]
00000498  E81800            call 0x4b3
0000049B  89165910          mov [0x1059],dx
0000049F  01165310          add [0x1053],dx
000004A3  8B165710          mov dx,[0x1057]
000004A7  E80900            call 0x4b3
000004AA  89165710          mov [0x1057],dx
000004AE  01165510          add [0x1055],dx
000004B2  C3                ret
000004B3  F6C680            test dh,0x80
000004B6  7522              jnz 0x4da
000004B8  89D1              mov cx,dx
000004BA  BB0000            mov bx,0x0
000004BD  D1E9              shr cx,1
000004BF  D0D7              rcl bh,1
000004C1  D1E9              shr cx,1
000004C3  D0D7              rcl bh,1
000004C5  D1E9              shr cx,1
000004C7  D0D7              rcl bh,1
000004C9  D1E9              shr cx,1
000004CB  D0D7              rcl bh,1
000004CD  D1E9              shr cx,1
000004CF  D0D7              rcl bh,1
000004D1  D1E9              shr cx,1
000004D3  D0D7              rcl bh,1
000004D5  2ADF              sub bl,bh
000004D7  1BD1              sbb dx,cx
000004D9  C3                ret
000004DA  F7DA              neg dx
000004DC  E8D9FF            call 0x4b8
000004DF  F7DA              neg dx
000004E1  C3                ret
000004E2  F606DA1107        test byte [0x11da],0x7
000004E7  7523              jnz 0x50c
000004E9  A0CB11            mov al,[0x11cb]
000004EC  241F              and al,0x1f
000004EE  7503              jnz 0x4f3
000004F0  A2D911            mov [0x11d9],al
000004F3  A0CB11            mov al,[0x11cb]
000004F6  A2CA11            mov [0x11ca],al
000004F9  E80001            call 0x5fc
000004FC  FE06CB11          inc byte [0x11cb]
00000500  8026CB111F        and byte [0x11cb],0x1f
00000505  F606CB110F        test byte [0x11cb],0xf
0000050A  75E7              jnz 0x4f3
0000050C  C3                ret
0000050D  8B16D611          mov dx,[0x11d6]
00000511  8B1ED411          mov bx,[0x11d4]
00000515  8A27              mov ah,[bx]
00000517  43                inc bx
00000518  8A2F              mov ch,[bx]
0000051A  43                inc bx
0000051B  02EE              add ch,dh
0000051D  8A0F              mov cl,[bx]
0000051F  43                inc bx
00000520  02CA              add cl,dl
00000522  53                push bx
00000523  89CB              mov bx,cx
00000525  E80B03            call 0x833
00000528  5B                pop bx
00000529  FECC              dec ah
0000052B  75EB              jnz 0x518
0000052D  C3                ret
0000052E  8B16D611          mov dx,[0x11d6]
00000532  8B1ED411          mov bx,[0x11d4]
00000536  88F0              mov al,dh
00000538  2403              and al,0x3
0000053A  02F8              add bh,al
0000053C  D0EE              shr dh,1
0000053E  D0EE              shr dh,1
00000540  89DE              mov si,bx
00000542  0214              add dl,[si]
00000544  46                inc si
00000545  0234              add dh,[si]
00000547  46                inc si
00000548  88F3              mov bl,dh
0000054A  32FF              xor bh,bh
0000054C  F6C201            test dl,0x1
0000054F  7403              jz 0x554
00000551  80CF20            or bh,0x20
00000554  88D6              mov dh,dl
00000556  80E6FE            and dh,0xfe
00000559  32D2              xor dl,dl
0000055B  D1EA              shr dx,1
0000055D  D1EA              shr dx,1
0000055F  D1EA              shr dx,1
00000561  03DA              add bx,dx
00000563  8A34              mov dh,[si]
00000565  46                inc si
00000566  8A14              mov dl,[si]
00000568  46                inc si
00000569  8A0E4C10          mov cl,[0x104c]
0000056D  F6C1FF            test cl,0xff
00000570  7445              jz 0x5b7
00000572  88D4              mov ah,dl
00000574  53                push bx
00000575  8A04              mov al,[si]
00000577  22C1              and al,cl
00000579  260807            or [es:bx],al
0000057C  46                inc si
0000057D  43                inc bx
0000057E  FECC              dec ah
00000580  75F3              jnz 0x575
00000582  5B                pop bx
00000583  FECE              dec dh
00000585  7474              jz 0x5fb
00000587  88D4              mov ah,dl
00000589  F6C720            test bh,0x20
0000058C  7403              jz 0x591
0000058E  83C340            add bx,byte +0x40
00000591  81F30020          xor bx,0x2000
00000595  53                push bx
00000596  8A04              mov al,[si]
00000598  22C1              and al,cl
0000059A  260807            or [es:bx],al
0000059D  46                inc si
0000059E  43                inc bx
0000059F  FECC              dec ah
000005A1  75F3              jnz 0x596
000005A3  5B                pop bx
000005A4  FECE              dec dh
000005A6  7453              jz 0x5fb
000005A8  F6C720            test bh,0x20
000005AB  7403              jz 0x5b0
000005AD  83C340            add bx,byte +0x40
000005B0  81F30020          xor bx,0x2000
000005B4  EBBC              jmp short 0x572
000005B6  C3                ret
000005B7  88D4              mov ah,dl
000005B9  53                push bx
000005BA  8A04              mov al,[si]
000005BC  F6D0              not al
000005BE  262007            and [es:bx],al
000005C1  46                inc si
000005C2  43                inc bx
000005C3  FECC              dec ah
000005C5  75F3              jnz 0x5ba
000005C7  5B                pop bx
000005C8  FECE              dec dh
000005CA  742F              jz 0x5fb
000005CC  88D4              mov ah,dl
000005CE  F6C720            test bh,0x20
000005D1  7403              jz 0x5d6
000005D3  83C340            add bx,byte +0x40
000005D6  81F30020          xor bx,0x2000
000005DA  53                push bx
000005DB  8A04              mov al,[si]
000005DD  F6D0              not al
000005DF  262007            and [es:bx],al
000005E2  46                inc si
000005E3  43                inc bx
000005E4  FECC              dec ah
000005E6  75F3              jnz 0x5db
000005E8  5B                pop bx
000005E9  FECE              dec dh
000005EB  740E              jz 0x5fb
000005ED  F6C720            test bh,0x20
000005F0  7403              jz 0x5f5
000005F2  83C340            add bx,byte +0x40
000005F5  81F30020          xor bx,0x2000
000005F9  EBBC              jmp short 0x5b7
000005FB  C3                ret
000005FC  8A1ECA11          mov bl,[0x11ca]
00000600  32FF              xor bh,bh
00000602  8A876910          mov al,[bx+0x1069]
00000606  0AC0              or al,al
00000608  7469              jz 0x673
0000060A  A2C911            mov [0x11c9],al
0000060D  D1E3              shl bx,1
0000060F  8B8F8911          mov cx,[bx+0x1189]
00000613  53                push bx
00000614  D1E3              shl bx,1
00000616  D1E3              shl bx,1
00000618  8AB78A10          mov dh,[bx+0x108a]
0000061C  8A978C10          mov dl,[bx+0x108c]
00000620  890ED611          mov [0x11d6],cx
00000624  8A1EC911          mov bl,[0x11c9]
00000628  FECB              dec bl
0000062A  32FF              xor bh,bh
0000062C  D1E3              shl bx,1
0000062E  8B8F260A          mov cx,[bx+0xa26]
00000632  890ED411          mov [0x11d4],cx
00000636  5B                pop bx
00000637  89978911          mov [bx+0x1189],dx
0000063B  C6064C1000        mov byte [0x104c],0x0
00000640  52                push dx
00000641  E8EAFE            call 0x52e
00000644  5A                pop dx
00000645  8916D611          mov [0x11d6],dx
00000649  C6064C10FF        mov byte [0x104c],0xff
0000064E  E8DDFE            call 0x52e
00000651  8B16D611          mov dx,[0x11d6]
00000655  80EE80            sub dh,0x80
00000658  7302              jnc 0x65c
0000065A  F6DE              neg dh
0000065C  80FE20            cmp dh,0x20
0000065F  7711              ja 0x672
00000661  80EA80            sub dl,0x80
00000664  7302              jnc 0x668
00000666  F6DA              neg dl
00000668  80FA20            cmp dl,0x20
0000066B  7705              ja 0x672
0000066D  C606D911FF        mov byte [0x11d9],0xff
00000672  C3                ret
00000673  B90003            mov cx,0x300
00000676  E2FE              loop 0x676
00000678  C3                ret
00000679  BB0000            mov bx,0x0
0000067C  8A876910          mov al,[bx+0x1069]
00000680  0AC0              or al,al
00000682  7407              jz 0x68b
00000684  43                inc bx
00000685  80FB20            cmp bl,0x20
00000688  75F2              jnz 0x67c
0000068A  C3                ret
0000068B  A0C911            mov al,[0x11c9]
0000068E  88876910          mov [bx+0x1069],al
00000692  B103              mov cl,0x3
00000694  D3E3              shl bx,cl
00000696  81C38910          add bx,0x1089
0000069A  A1CC11            mov ax,[0x11cc]
0000069D  8907              mov [bx],ax
0000069F  43                inc bx
000006A0  43                inc bx
000006A1  A1CE11            mov ax,[0x11ce]
000006A4  8907              mov [bx],ax
000006A6  43                inc bx
000006A7  43                inc bx
000006A8  A1D011            mov ax,[0x11d0]
000006AB  8907              mov [bx],ax
000006AD  43                inc bx
000006AE  43                inc bx
000006AF  A1D211            mov ax,[0x11d2]
000006B2  8907              mov [bx],ax
000006B4  C3                ret
000006B5  A0CA11            mov al,[0x11ca]
000006B8  88C4              mov ah,al
000006BA  BB6910            mov bx,0x1069
000006BD  D7                xlatb
000006BE  0AC0              or al,al
000006C0  7436              jz 0x6f8
000006C2  A2C911            mov [0x11c9],al
000006C5  FE060512          inc byte [0x1205]
000006C9  88E3              mov bl,ah
000006CB  B700              mov bh,0x0
000006CD  B103              mov cl,0x3
000006CF  D3E3              shl bx,cl
000006D1  81C38910          add bx,0x1089
000006D5  8A6701            mov ah,[bx+0x1]
000006D8  8A4703            mov al,[bx+0x3]
000006DB  A3D611            mov [0x11d6],ax
000006DE  53                push bx
000006DF  E8CD01            call 0x8af
000006E2  E86603            call 0xa4b
000006E5  E80A07            call 0xdf2
000006E8  E8AE05            call 0xc99
000006EB  5B                pop bx
000006EC  8B4704            mov ax,[bx+0x4]
000006EF  0107              add [bx],ax
000006F1  43                inc bx
000006F2  43                inc bx
000006F3  8B4704            mov ax,[bx+0x4]
000006F6  0107              add [bx],ax
000006F8  C3                ret
000006F9  F606DA1103        test byte [0x11da],0x3
000006FE  7529              jnz 0x729
00000700  B000              mov al,0x0
00000702  C606051200        mov byte [0x1205],0x0
00000707  A2CA11            mov [0x11ca],al
0000070A  E8A8FF            call 0x6b5
0000070D  A0CA11            mov al,[0x11ca]
00000710  FEC0              inc al
00000712  241F              and al,0x1f
00000714  75F1              jnz 0x707
00000716  F6060512FF        test byte [0x1205],0xff
0000071B  750C              jnz 0x729
0000071D  F6060612FF        test byte [0x1206],0xff
00000722  7505              jnz 0x729
00000724  C606061205        mov byte [0x1206],0x5
00000729  C3                ret
0000072A  33C3              xor ax,bx
0000072C  D1C0              rol ax,1
0000072E  33C1              xor ax,cx
00000730  D1C0              rol ax,1
00000732  33C2              xor ax,dx
00000734  D1C0              rol ax,1
00000736  D1C0              rol ax,1
00000738  D1C0              rol ax,1
0000073A  D1C0              rol ax,1
0000073C  A36110            mov [0x1061],ax
0000073F  33066710          xor ax,[0x1067]
00000743  D1C8              ror ax,1
00000745  D1C8              ror ax,1
00000747  A36310            mov [0x1063],ax
0000074A  D1C8              ror ax,1
0000074C  D1C8              ror ax,1
0000074E  D1C8              ror ax,1
00000750  33066110          xor ax,[0x1061]
00000754  D1C0              rol ax,1
00000756  D1C0              rol ax,1
00000758  A36510            mov [0x1065],ax
0000075B  33066310          xor ax,[0x1063]
0000075F  D1C0              rol ax,1
00000761  33066110          xor ax,[0x1061]
00000765  A36710            mov [0x1067],ax
00000768  C3                ret
00000769  F6060812FF        test byte [0x1208],0xff
0000076E  751C              jnz 0x78c
00000770  F6062B12FF        test byte [0x122b],0xff
00000775  7415              jz 0x78c
00000777  C6062B1200        mov byte [0x122b],0x0
0000077C  BBFB11            mov bx,0x11fb
0000077F  B404              mov ah,0x4
00000781  8A07              mov al,[bx]
00000783  0AC0              or al,al
00000785  7406              jz 0x78d
00000787  43                inc bx
00000788  FECC              dec ah
0000078A  75F5              jnz 0x781
0000078C  C3                ret
0000078D  C607B0            mov byte [bx],0xb0
00000790  B304              mov bl,0x4
00000792  2ADC              sub bl,ah
00000794  B700              mov bh,0x0
00000796  D1E3              shl bx,1
00000798  D1E3              shl bx,1
0000079A  A15310            mov ax,[0x1053]
0000079D  8987DB11          mov [bx+0x11db],ax
000007A1  A15510            mov ax,[0x1055]
000007A4  8987DD11          mov [bx+0x11dd],ax
000007A8  53                push bx
000007A9  8A1E5010          mov bl,[0x1050]
000007AD  B700              mov bh,0x0
000007AF  D1E3              shl bx,1
000007B1  D1E3              shl bx,1
000007B3  8B8F6F1B          mov cx,[bx+0x1b6f]
000007B7  8B97711B          mov dx,[bx+0x1b71]
000007BB  A15910            mov ax,[0x1059]
000007BE  89CB              mov bx,cx
000007C0  B104              mov cl,0x4
000007C2  D3F8              sar ax,cl
000007C4  03D8              add bx,ax
000007C6  A15710            mov ax,[0x1057]
000007C9  D3F8              sar ax,cl
000007CB  03D0              add dx,ax
000007CD  89D9              mov cx,bx
000007CF  5B                pop bx
000007D0  898FEB11          mov [bx+0x11eb],cx
000007D4  8997ED11          mov [bx+0x11ed],dx
000007D8  C3                ret
000007D9  C606FF1104        mov byte [0x11ff],0x4
000007DE  BB0400            mov bx,0x4
000007E1  2A1EFF11          sub bl,[0x11ff]
000007E5  F687FB11FF        test byte [bx+0x11fb],0xff
000007EA  7440              jz 0x82c
000007EC  53                push bx
000007ED  D1E3              shl bx,1
000007EF  D1E3              shl bx,1
000007F1  8B87DB11          mov ax,[bx+0x11db]
000007F5  88E5              mov ch,ah
000007F7  0387EB11          add ax,[bx+0x11eb]
000007FB  88E6              mov dh,ah
000007FD  8987DB11          mov [bx+0x11db],ax
00000801  8B87DD11          mov ax,[bx+0x11dd]
00000805  88E1              mov cl,ah
00000807  0387ED11          add ax,[bx+0x11ed]
0000080B  88E2              mov dl,ah
0000080D  8987DD11          mov [bx+0x11dd],ax
00000811  C6064C1000        mov byte [0x104c],0x0
00000816  89CB              mov bx,cx
00000818  E81800            call 0x833
0000081B  5B                pop bx
0000081C  FE8FFB11          dec byte [bx+0x11fb]
00000820  740A              jz 0x82c
00000822  C6064C10AA        mov byte [0x104c],0xaa
00000827  89D3              mov bx,dx
00000829  E80700            call 0x833
0000082C  FE0EFF11          dec byte [0x11ff]
00000830  75AC              jnz 0x7de
00000832  C3                ret
00000833  50                push ax
00000834  53                push bx
00000835  51                push cx
00000836  52                push dx
00000837  32ED              xor ch,ch
00000839  F6C301            test bl,0x1
0000083C  7405              jz 0x843
0000083E  B520              mov ch,0x20
00000840  80E3FE            and bl,0xfe
00000843  88F9              mov cl,bh
00000845  80E103            and cl,0x3
00000848  D0E1              shl cl,1
0000084A  D0EF              shr bh,1
0000084C  D0EF              shr bh,1
0000084E  B4C0              mov ah,0xc0
00000850  D2EC              shr ah,cl
00000852  88F9              mov cl,bh
00000854  88DF              mov bh,bl
00000856  32DB              xor bl,bl
00000858  D1EB              shr bx,1
0000085A  D1EB              shr bx,1
0000085C  D1EB              shr bx,1
0000085E  03D9              add bx,cx
00000860  F6064C10FF        test byte [0x104c],0xff
00000865  740C              jz 0x873
00000867  22264C10          and ah,[0x104c]
0000086B  260827            or [es:bx],ah
0000086E  5A                pop dx
0000086F  59                pop cx
00000870  5B                pop bx
00000871  58                pop ax
00000872  C3                ret
00000873  F6D4              not ah
00000875  262027            and [es:bx],ah
00000878  EBF4              jmp short 0x86e
0000087A  B90040            mov cx,0x4000
0000087D  BB0000            mov bx,0x0
00000880  B800B8            mov ax,0xb800
00000883  8EC0              mov es,ax
00000885  26C60700          mov byte [es:bx],0x0
00000889  43                inc bx
0000088A  E2F9              loop 0x885
0000088C  C3                ret
0000088D  B90E00            mov cx,0xe
00000890  BAD403            mov dx,0x3d4
00000893  BB5315            mov bx,0x1553
00000896  8A07              mov al,[bx]
00000898  EE                out dx,al
00000899  43                inc bx
0000089A  42                inc dx
0000089B  8A07              mov al,[bx]
0000089D  EE                out dx,al
0000089E  43                inc bx
0000089F  4A                dec dx
000008A0  E2F4              loop 0x896
000008A2  BAD803            mov dx,0x3d8
000008A5  A02F12            mov al,[0x122f]
000008A8  EE                out dx,al
000008A9  42                inc dx
000008AA  A03012            mov al,[0x1230]
000008AD  EE                out dx,al
000008AE  C3                ret
000008AF  BEDB11            mov si,0x11db
000008B2  BFFB11            mov di,0x11fb
000008B5  C606FF1104        mov byte [0x11ff],0x4
000008BA  F605FF            test byte [di],0xff
000008BD  7425              jz 0x8e4
000008BF  8A6C01            mov ch,[si+0x1]
000008C2  8A4C03            mov cl,[si+0x3]
000008C5  A0C911            mov al,[0x11c9]
000008C8  BA1000            mov dx,0x10
000008CB  FEC8              dec al
000008CD  740A              jz 0x8d9
000008CF  BA2400            mov dx,0x24
000008D2  FEC8              dec al
000008D4  7403              jz 0x8d9
000008D6  BA6400            mov dx,0x64
000008D9  8B1ED611          mov bx,[0x11d6]
000008DD  51                push cx
000008DE  E80F00            call 0x8f0
000008E1  59                pop cx
000008E2  7231              jc 0x915
000008E4  47                inc di
000008E5  46                inc si
000008E6  46                inc si
000008E7  46                inc si
000008E8  46                inc si
000008E9  FE0EFF11          dec byte [0x11ff]
000008ED  75CB              jnz 0x8ba
000008EF  C3                ret
000008F0  2AD9              sub bl,cl
000008F2  7302              jnc 0x8f6
000008F4  F6DB              neg bl
000008F6  80FB0F            cmp bl,0xf
000008F9  7319              jnc 0x914
000008FB  2AFD              sub bh,ch
000008FD  7302              jnc 0x901
000008FF  F6DF              neg bh
00000901  80FF0F            cmp bh,0xf
00000904  730E              jnc 0x914
00000906  88D8              mov al,bl
00000908  F6E3              mul bl
0000090A  89C1              mov cx,ax
0000090C  88F8              mov al,bh
0000090E  F6E7              mul bh
00000910  03C1              add ax,cx
00000912  3BC2              cmp ax,dx
00000914  C3                ret
00000915  5A                pop dx
00000916  5A                pop dx
00000917  C60500            mov byte [di],0x0
0000091A  89CB              mov bx,cx
0000091C  C6064C1000        mov byte [0x104c],0x0
00000921  E80FFF            call 0x833
00000924  8A1EC911          mov bl,[0x11c9]
00000928  32FF              xor bh,bh
0000092A  4B                dec bx
0000092B  D1E3              shl bx,1
0000092D  8B874D15          mov ax,[bx+0x154d]
00000931  A32112            mov [0x1221],ax
00000934  E88D05            call 0xec4
00000937  8A1ECA11          mov bl,[0x11ca]
0000093B  B700              mov bh,0x0
0000093D  D1E3              shl bx,1
0000093F  8B8F8911          mov cx,[bx+0x1189]
00000943  A1D611            mov ax,[0x11d6]
00000946  50                push ax
00000947  890ED611          mov [0x11d6],cx
0000094B  C6064C1000        mov byte [0x104c],0x0
00000950  8A1EC911          mov bl,[0x11c9]
00000954  FECB              dec bl
00000956  32FF              xor bh,bh
00000958  D1E3              shl bx,1
0000095A  8B9F260A          mov bx,[bx+0xa26]
0000095E  891ED411          mov [0x11d4],bx
00000962  E8C9FB            call 0x52e
00000965  8A1ECA11          mov bl,[0x11ca]
00000969  B700              mov bh,0x0
0000096B  C687691000        mov byte [bx+0x1069],0x0
00000970  5B                pop bx
00000971  891ED611          mov [0x11d6],bx
00000975  88DD              mov ch,bl
00000977  32DB              xor bl,bl
00000979  88D9              mov cl,bl
0000097B  891ECC11          mov [0x11cc],bx
0000097F  890ECE11          mov [0x11ce],cx
00000983  FE0EC911          dec byte [0x11c9]
00000987  7423              jz 0x9ac
00000989  E80200            call 0x98e
0000098C  EBF5              jmp short 0x983
0000098E  E80000            call 0x991
00000991  E896FD            call 0x72a
00000994  A16110            mov ax,[0x1061]
00000997  8A0E2D12          mov cl,[0x122d]
0000099B  D3F8              sar ax,cl
0000099D  A3D011            mov [0x11d0],ax
000009A0  A16310            mov ax,[0x1063]
000009A3  D3F8              sar ax,cl
000009A5  A3D211            mov [0x11d2],ax
000009A8  E8CEFC            call 0x679
000009AB  C3                ret
000009AC  E80100            call 0x9b0
000009AF  C3                ret
000009B0  F6060112FF        test byte [0x1201],0xff
000009B5  7422              jz 0x9d9
000009B7  A1D611            mov ax,[0x11d6]
000009BA  50                push ax
000009BB  A10212            mov ax,[0x1202]
000009BE  A3D611            mov [0x11d6],ax
000009C1  E84B00            call 0xa0f
000009C4  C6064C1000        mov byte [0x104c],0x0
000009C9  E841FB            call 0x50d
000009CC  58                pop ax
000009CD  A3D611            mov [0x11d6],ax
000009D0  A30212            mov [0x1202],ax
000009D3  C606011220        mov byte [0x1201],0x20
000009D8  C3                ret
000009D9  A1D611            mov ax,[0x11d6]
000009DC  A30212            mov [0x1202],ax
000009DF  C606011220        mov byte [0x1201],0x20
000009E4  C3                ret
000009E5  F6060112FF        test byte [0x1201],0xff
000009EA  7422              jz 0xa0e
000009EC  A10212            mov ax,[0x1202]
000009EF  A3D611            mov [0x11d6],ax
000009F2  E81A00            call 0xa0f
000009F5  C6064C1000        mov byte [0x104c],0x0
000009FA  E810FB            call 0x50d
000009FD  FE0E0112          dec byte [0x1201]
00000A01  740B              jz 0xa0e
00000A03  E80900            call 0xa0f
00000A06  C6064C10AA        mov byte [0x104c],0xaa
00000A0B  E8FFFA            call 0x50d
00000A0E  C3                ret
00000A0F  B020              mov al,0x20
00000A11  2A060112          sub al,[0x1201]
00000A15  32E4              xor ah,ah
00000A17  89C3              mov bx,ax
00000A19  B104              mov cl,0x4
00000A1B  D3E0              shl ax,cl
00000A1D  03C3              add ax,bx
00000A1F  056F18            add ax,0x186f
00000A22  A3D411            mov [0x11d4],ax
00000A25  C3                ret
00000A26  6F                outsw
00000A27  256F21            and ax,0x216f
00000A2A  6F                outsw
00000A2B  1D4000            sbb ax,0x40
00000A2E  6400C4            fs add ah,al
00000A31  00F6              add dh,dh
00000A33  06                push es
00000A34  DA11              ficom dword [bx+di]
00000A36  1F                pop ds
00000A37  7511              jnz 0xa4a
00000A39  F6060612FF        test byte [0x1206],0xff
00000A3E  740A              jz 0xa4a
00000A40  FE0E0612          dec byte [0x1206]
00000A44  7504              jnz 0xa4a
00000A46  5A                pop dx
00000A47  E971F7            jmp 0x1bb
00000A4A  C3                ret
00000A4B  F6060812FF        test byte [0x1208],0xff
00000A50  755D              jnz 0xaaf
00000A52  8A1EC911          mov bl,[0x11c9]
00000A56  FECB              dec bl
00000A58  32FF              xor bh,bh
00000A5A  D1E3              shl bx,1
00000A5C  8B972C0A          mov dx,[bx+0xa2c]
00000A60  8B0ED611          mov cx,[0x11d6]
00000A64  8A3E5410          mov bh,[0x1054]
00000A68  8A1E5610          mov bl,[0x1056]
00000A6C  E881FE            call 0x8f0
00000A6F  733E              jnc 0xaaf
00000A71  5A                pop dx
00000A72  5A                pop dx
00000A73  E8C1FE            call 0x937
00000A76  A15B10            mov ax,[0x105b]
00000A79  A30912            mov [0x1209],ax
00000A7C  C606041280        mov byte [0x1204],0x80
00000A81  C6060812FF        mov byte [0x1208],0xff
00000A86  A05210            mov al,[0x1052]
00000A89  A25110            mov [0x1051],al
00000A8C  A15B10            mov ax,[0x105b]
00000A8F  A35D10            mov [0x105d],ax
00000A92  C6064C1000        mov byte [0x104c],0x0
00000A97  E886F9            call 0x420
00000A9A  FE0E0B12          dec byte [0x120b]
00000A9E  B000              mov al,0x0
00000AA0  A22B12            mov [0x122b],al
00000AA3  A26010            mov [0x1060],al
00000AA6  A22812            mov [0x1228],al
00000AA9  A22912            mov [0x1229],al
00000AAC  A22A12            mov [0x122a],al
00000AAF  C3                ret
00000AB0  F6060812FF        test byte [0x1208],0xff
00000AB5  744B              jz 0xb02
00000AB7  FE0E0812          dec byte [0x1208]
00000ABB  7545              jnz 0xb02
00000ABD  FE060812          inc byte [0x1208]
00000AC1  F606D911FF        test byte [0x11d9],0xff
00000AC6  753A              jnz 0xb02
00000AC8  F6060C12FF        test byte [0x120c],0xff
00000ACD  7533              jnz 0xb02
00000ACF  F6060B12FF        test byte [0x120b],0xff
00000AD4  742C              jz 0xb02
00000AD6  C606081200        mov byte [0x1208],0x0
00000ADB  C606501030        mov byte [0x1050],0x30
00000AE0  C70653100080      mov word [0x1053],0x8000
00000AE6  C70655100080      mov word [0x1055],0x8000
00000AEC  C70657100000      mov word [0x1057],0x0
00000AF2  C70659100000      mov word [0x1059],0x0
00000AF8  C606271200        mov byte [0x1227],0x0
00000AFD  C6062B1200        mov byte [0x122b],0x0
00000B02  C3                ret
00000B03  F606DA1101        test byte [0x11da],0x1
00000B08  7526              jnz 0xb30
00000B0A  F6060412FF        test byte [0x1204],0xff
00000B0F  741F              jz 0xb30
00000B11  A00412            mov al,[0x1204]
00000B14  A880              test al,0x80
00000B16  7419              jz 0xb31
00000B18  C6064C10AA        mov byte [0x104c],0xaa
00000B1D  E82400            call 0xb44
00000B20  FE060412          inc byte [0x1204]
00000B24  F606041220        test byte [0x1204],0x20
00000B29  7405              jz 0xb30
00000B2B  802604127F        and byte [0x1204],0x7f
00000B30  C3                ret
00000B31  FE0E0412          dec byte [0x1204]
00000B35  B01F              mov al,0x1f
00000B37  2A060412          sub al,[0x1204]
00000B3B  C6064C1000        mov byte [0x104c],0x0
00000B40  E80100            call 0xb44
00000B43  C3                ret
00000B44  247F              and al,0x7f
00000B46  32E4              xor ah,ah
00000B48  89C3              mov bx,ax
00000B4A  B104              mov cl,0x4
00000B4C  D3E0              shl ax,cl
00000B4E  03C3              add ax,bx
00000B50  056F18            add ax,0x186f
00000B53  A3D411            mov [0x11d4],ax
00000B56  A10912            mov ax,[0x1209]
00000B59  A3D611            mov [0x11d6],ax
00000B5C  E8AEF9            call 0x50d
00000B5F  C3                ret
00000B60  F6060C12FF        test byte [0x120c],0xff
00000B65  7450              jz 0xbb7
00000B67  F606DA1107        test byte [0x11da],0x7
00000B6C  7549              jnz 0xbb7
00000B6E  A10D12            mov ax,[0x120d]
00000B71  A3D611            mov [0x11d6],ax
00000B74  C6064C1000        mov byte [0x104c],0x0
00000B79  A11112            mov ax,[0x1211]
00000B7C  A3D411            mov [0x11d4],ax
00000B7F  E8ACF9            call 0x52e
00000B82  FE0E0C12          dec byte [0x120c]
00000B86  742F              jz 0xbb7
00000B88  A01012            mov al,[0x1210]
00000B8B  00060E12          add [0x120e],al
00000B8F  F6060C1220        test byte [0x120c],0x20
00000B94  7513              jnz 0xba9
00000B96  F606611040        test byte [0x1061],0x40
00000B9B  7408              jz 0xba5
00000B9D  FE0E0D12          dec byte [0x120d]
00000BA1  FE0E0D12          dec byte [0x120d]
00000BA5  FE060D12          inc byte [0x120d]
00000BA9  A10D12            mov ax,[0x120d]
00000BAC  A3D611            mov [0x11d6],ax
00000BAF  C6064C10AA        mov byte [0x104c],0xaa
00000BB4  E877F9            call 0x52e
00000BB7  C3                ret
00000BB8  F6060C12FF        test byte [0x120c],0xff
00000BBD  7554              jnz 0xc13
00000BBF  803E051203        cmp byte [0x1205],0x3
00000BC4  7608              jna 0xbce
00000BC6  F7062512FF1F      test word [0x1225],0x1fff
00000BCC  7545              jnz 0xc13
00000BCE  F7062512FF03      test word [0x1225],0x3ff
00000BD4  753D              jnz 0xc13
00000BD6  F6060812FF        test byte [0x1208],0xff
00000BDB  7536              jnz 0xc13
00000BDD  E84AFB            call 0x72a
00000BE0  A16110            mov ax,[0x1061]
00000BE3  A20D12            mov [0x120d],al
00000BE6  C6060E1200        mov byte [0x120e],0x0
00000BEB  C6060C12FF        mov byte [0x120c],0xff
00000BF0  C606101201        mov byte [0x1210],0x1
00000BF5  F6C408            test ah,0x8
00000BF8  7504              jnz 0xbfe
00000BFA  F61E1012          neg byte [0x1210]
00000BFE  A06110            mov al,[0x1061]
00000C01  2401              and al,0x1
00000C03  A20F12            mov [0x120f],al
00000C06  88C3              mov bl,al
00000C08  32FF              xor bh,bh
00000C0A  D1E3              shl bx,1
00000C0C  8B87140C          mov ax,[bx+0xc14]
00000C10  A31112            mov [0x1211],ax
00000C13  C3                ret
00000C14  6F                outsw
00000C15  296F2D            sub [bx+0x2d],bp
00000C18  F606DA1101        test byte [0x11da],0x1
00000C1D  7540              jnz 0xc5f
00000C1F  F6060C12FF        test byte [0x120c],0xff
00000C24  7439              jz 0xc5f
00000C26  BEFB11            mov si,0x11fb
00000C29  BFDB11            mov di,0x11db
00000C2C  C606FF1104        mov byte [0x11ff],0x4
00000C31  F604FF            test byte [si],0xff
00000C34  741F              jz 0xc55
00000C36  8A7D01            mov bh,[di+0x1]
00000C39  8A5D03            mov bl,[di+0x3]
00000C3C  8B0E0D12          mov cx,[0x120d]
00000C40  BA1900            mov dx,0x19
00000C43  A00F12            mov al,[0x120f]
00000C46  D0E0              shl al,1
00000C48  D0E0              shl al,1
00000C4A  D0E0              shl al,1
00000C4C  32E4              xor ah,ah
00000C4E  03D0              add dx,ax
00000C50  E89DFC            call 0x8f0
00000C53  720B              jc 0xc60
00000C55  46                inc si
00000C56  83C704            add di,byte +0x4
00000C59  FE0EFF11          dec byte [0x11ff]
00000C5D  75D2              jnz 0xc31
00000C5F  C3                ret
00000C60  C60400            mov byte [si],0x0
00000C63  8A7D01            mov bh,[di+0x1]
00000C66  8A5D03            mov bl,[di+0x3]
00000C69  C6064C1000        mov byte [0x104c],0x0
00000C6E  E8C2FB            call 0x833
00000C71  C6060C1201        mov byte [0x120c],0x1
00000C76  E8E7FE            call 0xb60
00000C79  A10D12            mov ax,[0x120d]
00000C7C  A3D611            mov [0x11d6],ax
00000C7F  E82EFD            call 0x9b0
00000C82  C70621120002      mov word [0x1221],0x200
00000C88  F6060F1201        test byte [0x120f],0x1
00000C8D  7506              jnz 0xc95
00000C8F  C70621120010      mov word [0x1221],0x1000
00000C95  E82C02            call 0xec4
00000C98  C3                ret
00000C99  F6060C12FF        test byte [0x120c],0xff
00000C9E  7430              jz 0xcd0
00000CA0  B103              mov cl,0x3
00000CA2  8A1E0F12          mov bl,[0x120f]
00000CA6  32FF              xor bh,bh
00000CA8  D3E3              shl bx,cl
00000CAA  021EC911          add bl,[0x11c9]
00000CAE  021EC911          add bl,[0x11c9]
00000CB2  8B97D10C          mov dx,[bx+0xcd1]
00000CB6  8B1ED611          mov bx,[0x11d6]
00000CBA  8B0E0D12          mov cx,[0x120d]
00000CBE  E82FFC            call 0x8f0
00000CC1  730D              jnc 0xcd0
00000CC3  5A                pop dx
00000CC4  5A                pop dx
00000CC5  C6060C1201        mov byte [0x120c],0x1
00000CCA  E893FE            call 0xb60
00000CCD  E867FC            call 0x937
00000CD0  C3                ret
00000CD1  0000              add [bx+si],al
00000CD3  40                inc ax
00000CD4  006400            add [si+0x0],ah
00000CD7  C400              les ax,[bx+si]
00000CD9  0000              add [bx+si],al
00000CDB  6400900000        add [fs:bx+si+0x0],dl
00000CE0  01F6              add si,si
00000CE2  06                push es
00000CE3  0812              or [bp+si],dl
00000CE5  FF7554            push word [di+0x54]
00000CE8  F606DA1101        test byte [0x11da],0x1
00000CED  754D              jnz 0xd3c
00000CEF  F6061A12FF        test byte [0x121a],0xff
00000CF4  7420              jz 0xd16
00000CF6  8A3E5410          mov bh,[0x1054]
00000CFA  8A1E5610          mov bl,[0x1056]
00000CFE  8B0E1312          mov cx,[0x1213]
00000D02  BA2400            mov dx,0x24
00000D05  E8E8FB            call 0x8f0
00000D08  730C              jnc 0xd16
00000D0A  C6061A1201        mov byte [0x121a],0x1
00000D0F  E89600            call 0xda8
00000D12  E861FD            call 0xa76
00000D15  C3                ret
00000D16  F6060C12FF        test byte [0x120c],0xff
00000D1B  741F              jz 0xd3c
00000D1D  8A3E5410          mov bh,[0x1054]
00000D21  8A1E5610          mov bl,[0x1056]
00000D25  8B0E0D12          mov cx,[0x120d]
00000D29  BA3100            mov dx,0x31
00000D2C  E8C1FB            call 0x8f0
00000D2F  730B              jnc 0xd3c
00000D31  C6060C1201        mov byte [0x120c],0x1
00000D36  E827FE            call 0xb60
00000D39  E83AFD            call 0xa76
00000D3C  C3                ret
00000D3D  F6060C12FF        test byte [0x120c],0xff
00000D42  7463              jz 0xda7
00000D44  F6061A12FF        test byte [0x121a],0xff
00000D49  755C              jnz 0xda7
00000D4B  F6060F1201        test byte [0x120f],0x1
00000D50  7512              jnz 0xd64
00000D52  803E0C12DF        cmp byte [0x120c],0xdf
00000D57  730B              jnc 0xd64
00000D59  8A3E5410          mov bh,[0x1054]
00000D5D  8A1E5610          mov bl,[0x1056]
00000D61  E90700            jmp 0xd6b
00000D64  E8C3F9            call 0x72a
00000D67  8B1E6110          mov bx,[0x1061]
00000D6B  8B160D12          mov dx,[0x120d]
00000D6F  89161312          mov [0x1213],dx
00000D73  B90001            mov cx,0x100
00000D76  2AFE              sub bh,dh
00000D78  7304              jnc 0xd7e
00000D7A  F6DF              neg bh
00000D7C  F6DD              neg ch
00000D7E  2ADA              sub bl,dl
00000D80  BA0100            mov dx,0x1
00000D83  7304              jnc 0xd89
00000D85  F6DB              neg bl
00000D87  F7DA              neg dx
00000D89  3ADF              cmp bl,bh
00000D8B  7304              jnc 0xd91
00000D8D  87CA              xchg cx,dx
00000D8F  86DF              xchg bl,bh
00000D91  89161512          mov [0x1215],dx
00000D95  890E1712          mov [0x1217],cx
00000D99  88D9              mov cl,bl
00000D9B  D0E1              shl cl,1
00000D9D  B5AA              mov ch,0xaa
00000D9F  890E1912          mov [0x1219],cx
00000DA3  891E1B12          mov [0x121b],bx
00000DA7  C3                ret
00000DA8  F6061A12FF        test byte [0x121a],0xff
00000DAD  7442              jz 0xdf1
00000DAF  C6064C1000        mov byte [0x104c],0x0
00000DB4  8B1E1312          mov bx,[0x1213]
00000DB8  53                push bx
00000DB9  E877FA            call 0x833
00000DBC  5A                pop dx
00000DBD  8B0E1912          mov cx,[0x1219]
00000DC1  8B1E1B12          mov bx,[0x121b]
00000DC5  02CF              add cl,bh
00000DC7  7204              jc 0xdcd
00000DC9  3ACB              cmp cl,bl
00000DCB  7206              jc 0xdd3
00000DCD  2ACB              sub cl,bl
00000DCF  03161712          add dx,[0x1217]
00000DD3  03161512          add dx,[0x1215]
00000DD7  FECD              dec ch
00000DD9  89161312          mov [0x1213],dx
00000DDD  890E1912          mov [0x1219],cx
00000DE1  891E1B12          mov [0x121b],bx
00000DE5  740A              jz 0xdf1
00000DE7  C6064C10AA        mov byte [0x104c],0xaa
00000DEC  89D3              mov bx,dx
00000DEE  E842FA            call 0x833
00000DF1  C3                ret
00000DF2  F606DA1101        test byte [0x11da],0x1
00000DF7  7535              jnz 0xe2e
00000DF9  F6061A12FF        test byte [0x121a],0xff
00000DFE  742E              jz 0xe2e
00000E00  A0C911            mov al,[0x11c9]
00000E03  BA1000            mov dx,0x10
00000E06  FEC8              dec al
00000E08  740A              jz 0xe14
00000E0A  BA2400            mov dx,0x24
00000E0D  FEC8              dec al
00000E0F  7403              jz 0xe14
00000E11  BA6400            mov dx,0x64
00000E14  8B0ED611          mov cx,[0x11d6]
00000E18  8B1E1312          mov bx,[0x1213]
00000E1C  E8D1FA            call 0x8f0
00000E1F  730D              jnc 0xe2e
00000E21  C6061A1201        mov byte [0x121a],0x1
00000E26  E80EFB            call 0x937
00000E29  E87CFF            call 0xda8
00000E2C  5A                pop dx
00000E2D  5A                pop dx
00000E2E  C3                ret
00000E2F  F606DA111F        test byte [0x11da],0x1f
00000E34  752D              jnz 0xe63
00000E36  A02E12            mov al,[0x122e]
00000E39  A24C10            mov [0x104c],al
00000E3C  C606FF1104        mov byte [0x11ff],0x4
00000E41  C7062312085C      mov word [0x1223],0x5c08
00000E47  BE1D12            mov si,0x121d
00000E4A  8A04              mov al,[si]
00000E4C  B104              mov cl,0x4
00000E4E  D2E8              shr al,cl
00000E50  240F              and al,0xf
00000E52  E80F00            call 0xe64
00000E55  8A04              mov al,[si]
00000E57  240F              and al,0xf
00000E59  E80800            call 0xe64
00000E5C  46                inc si
00000E5D  FE0EFF11          dec byte [0x11ff]
00000E61  75E7              jnz 0xe4a
00000E63  C3                ret
00000E64  8B162312          mov dx,[0x1223]
00000E68  80E2FE            and dl,0xfe
00000E6B  D0EE              shr dh,1
00000E6D  D0EE              shr dh,1
00000E6F  88F3              mov bl,dh
00000E71  88D6              mov dh,dl
00000E73  32D2              xor dl,dl
00000E75  88D7              mov bh,dl
00000E77  B103              mov cl,0x3
00000E79  D3EA              shr dx,cl
00000E7B  03DA              add bx,dx
00000E7D  BF9D14            mov di,0x149d
00000E80  32E4              xor ah,ah
00000E82  FEC1              inc cl
00000E84  D3E0              shl ax,cl
00000E86  03F8              add di,ax
00000E88  B104              mov cl,0x4
00000E8A  8A2E4C10          mov ch,[0x104c]
00000E8E  53                push bx
00000E8F  8A05              mov al,[di]
00000E91  47                inc di
00000E92  22C5              and al,ch
00000E94  268807            mov [es:bx],al
00000E97  43                inc bx
00000E98  8A05              mov al,[di]
00000E9A  47                inc di
00000E9B  22C5              and al,ch
00000E9D  268807            mov [es:bx],al
00000EA0  4B                dec bx
00000EA1  81F30020          xor bx,0x2000
00000EA5  8A05              mov al,[di]
00000EA7  47                inc di
00000EA8  22C5              and al,ch
00000EAA  268807            mov [es:bx],al
00000EAD  43                inc bx
00000EAE  8A05              mov al,[di]
00000EB0  47                inc di
00000EB1  22C5              and al,ch
00000EB3  268807            mov [es:bx],al
00000EB6  5B                pop bx
00000EB7  83C340            add bx,byte +0x40
00000EBA  FEC9              dec cl
00000EBC  75D0              jnz 0xe8e
00000EBE  8306241208        add word [0x1224],byte +0x8
00000EC3  C3                ret
00000EC4  8B162112          mov dx,[0x1221]
00000EC8  A11F12            mov ax,[0x121f]
00000ECB  86C4              xchg al,ah
00000ECD  02C2              add al,dl
00000ECF  27                daa
00000ED0  86C4              xchg al,ah
00000ED2  12C6              adc al,dh
00000ED4  27                daa
00000ED5  A31F12            mov [0x121f],ax
00000ED8  9C                pushf
00000ED9  A11D12            mov ax,[0x121d]
00000EDC  86C4              xchg al,ah
00000EDE  1400              adc al,0x0
00000EE0  27                daa
00000EE1  86C4              xchg al,ah
00000EE3  1400              adc al,0x0
00000EE5  27                daa
00000EE6  A31D12            mov [0x121d],ax
00000EE9  9D                popf
00000EEA  A00B12            mov al,[0x120b]
00000EED  1400              adc al,0x0
00000EEF  A20B12            mov [0x120b],al
00000EF2  C3                ret
00000EF3  F606DA111F        test byte [0x11da],0x1f
00000EF8  753E              jnz 0xf38
00000EFA  A02E12            mov al,[0x122e]
00000EFD  A24C10            mov [0x104c],al
00000F00  C70623120800      mov word [0x1223],0x8
00000F06  A00B12            mov al,[0x120b]
00000F09  32E4              xor ah,ah
00000F0B  B364              mov bl,0x64
00000F0D  F6F3              div bl
00000F0F  50                push ax
00000F10  240F              and al,0xf
00000F12  3C00              cmp al,0x0
00000F14  7502              jnz 0xf18
00000F16  B00A              mov al,0xa
00000F18  E849FF            call 0xe64
00000F1B  58                pop ax
00000F1C  88E0              mov al,ah
00000F1E  32E4              xor ah,ah
00000F20  B30A              mov bl,0xa
00000F22  F6F3              div bl
00000F24  50                push ax
00000F25  240F              and al,0xf
00000F27  3C00              cmp al,0x0
00000F29  7502              jnz 0xf2d
00000F2B  B00A              mov al,0xa
00000F2D  E834FF            call 0xe64
00000F30  58                pop ax
00000F31  88E0              mov al,ah
00000F33  240F              and al,0xf
00000F35  E82CFF            call 0xe64
00000F38  C3                ret
00000F39  F606DA111F        test byte [0x11da],0x1f
00000F3E  752F              jnz 0xf6f
00000F40  F6060B12FF        test byte [0x120b],0xff
00000F45  7567              jnz 0xfae
00000F47  A1FB11            mov ax,[0x11fb]
00000F4A  0B06FD11          or ax,[0x11fd]
00000F4E  751F              jnz 0xf6f
00000F50  C6064C1055        mov byte [0x104c],0x55
00000F55  C706D6118080      mov word [0x11d6],0x8080
00000F5B  C706D4116F31      mov word [0x11d4],0x316f
00000F61  E8CAF5            call 0x52e
00000F64  F6062C12FF        test byte [0x122c],0xff
00000F69  7404              jz 0xf6f
00000F6B  5A                pop dx
00000F6C  E9EFF1            jmp 0x15e
00000F6F  C3                ret
00000F70  F6062712FF        test byte [0x1227],0xff
00000F75  74F8              jz 0xf6f
00000F77  F6060812FF        test byte [0x1208],0xff
00000F7C  75F1              jnz 0xf6f
00000F7E  C606271200        mov byte [0x1227],0x0
00000F83  C70659100000      mov word [0x1059],0x0
00000F89  C70657100000      mov word [0x1057],0x0
00000F8F  E898F7            call 0x72a
00000F92  A16110            mov ax,[0x1061]
00000F95  A35310            mov [0x1053],ax
00000F98  243F              and al,0x3f
00000F9A  A25010            mov [0x1050],al
00000F9D  8B1E6310          mov bx,[0x1063]
00000FA1  891E5510          mov [0x1055],bx
00000FA5  A803              test al,0x3
00000FA7  7401              jz 0xfaa
00000FA9  C3                ret
00000FAA  E8C9FA            call 0xa76
00000FAD  C3                ret
00000FAE  C6062C1200        mov byte [0x122c],0x0
00000FB3  C3                ret
00000FB4  8B1E3112          mov bx,[0x1231]
00000FB8  8A07              mov al,[bx]
00000FBA  3CFF              cmp al,0xff
00000FBC  740D              jz 0xfcb
00000FBE  B40E              mov ah,0xe
00000FC0  BB0000            mov bx,0x0
00000FC3  CD10              int 0x10
00000FC5  FF063112          inc word [0x1231]
00000FC9  EBE9              jmp short 0xfb4
00000FCB  C3                ret
00000FCC  8B164D10          mov dx,[0x104d]
00000FD0  2AF7              sub dh,bh
00000FD2  7302              jnc 0xfd6
00000FD4  F6DE              neg dh
00000FD6  80FEC8            cmp dh,0xc8
00000FD9  736C              jnc 0x1047
00000FDB  2AD3              sub dl,bl
00000FDD  7302              jnc 0xfe1
00000FDF  F6DA              neg dl
00000FE1  80FAC8            cmp dl,0xc8
00000FE4  7361              jnc 0x1047
00000FE6  8B164D10          mov dx,[0x104d]
00000FEA  891E4D10          mov [0x104d],bx
00000FEE  52                push dx
00000FEF  B90001            mov cx,0x100
00000FF2  88F8              mov al,bh
00000FF4  2AC6              sub al,dh
00000FF6  7304              jnc 0xffc
00000FF8  F6DD              neg ch
00000FFA  F6D8              neg al
00000FFC  88C7              mov bh,al
00000FFE  88D8              mov al,bl
00001000  2AC2              sub al,dl
00001002  BA0100            mov dx,0x1
00001005  7304              jnc 0x100b
00001007  F7DA              neg dx
00001009  F6D8              neg al
0000100B  88C3              mov bl,al
0000100D  3AC7              cmp al,bh
0000100F  7304              jnc 0x1015
00001011  87D1              xchg dx,cx
00001013  86FB              xchg bh,bl
00001015  89164810          mov [0x1048],dx
00001019  890E4A10          mov [0x104a],cx
0000101D  88D9              mov cl,bl
0000101F  D0E9              shr cl,1
00001021  88DD              mov ch,bl
00001023  FEC5              inc ch
00001025  5A                pop dx
00001026  53                push bx
00001027  89D3              mov bx,dx
00001029  E807F8            call 0x833
0000102C  5B                pop bx
0000102D  88C8              mov al,cl
0000102F  02C7              add al,bh
00001031  7204              jc 0x1037
00001033  3AC3              cmp al,bl
00001035  7206              jc 0x103d
00001037  2AC3              sub al,bl
00001039  03164A10          add dx,[0x104a]
0000103D  88C1              mov cl,al
0000103F  03164810          add dx,[0x1048]
00001043  FECD              dec ch
00001045  75DF              jnz 0x1026
00001047  C3                ret
00001048  FB                sti
00001049  110B              adc [bp+di],cx
0000104B  06                push es
0000104C  FD                std
0000104D  11751F            adc [di+0x1f],si
00001050  C6064C1055        mov byte [0x104c],0x55
00001055  C706D6118080      mov word [0x11d6],0x8080
0000105B  C706D4116F31      mov word [0x11d4],0x316f
00001061  E8CAF5            call 0x62e
00001064  F6062C12FF        test byte [0x122c],0xff
00001069  7404              jz 0x106f
0000106B  5A                pop dx
0000106C  E9EFF1            jmp 0x25e
0000106F  C3                ret
00001070  F6062712FF        test byte [0x1227],0xff
00001075  74F8              jz 0x106f
00001077  F6060812FF        test byte [0x1208],0xff
0000107C  75F1              jnz 0x106f
0000107E  C606271200        mov byte [0x1227],0x0
00001083  C70659100000      mov word [0x1059],0x0
00001089  C70657100000      mov word [0x1057],0x0
0000108F  E898F7            call 0x82a
00001092  A16110            mov ax,[0x1061]
00001095  A35310            mov [0x1053],ax
00001098  243F              and al,0x3f
0000109A  A25010            mov [0x1050],al
0000109D  8B1E6310          mov bx,[0x1063]
000010A1  891E5510          mov [0x1055],bx
000010A5  A803              test al,0x3
000010A7  7401              jz 0x10aa
000010A9  C3                ret
000010AA  E8C9FA            call 0xb76
000010AD  C3                ret
000010AE  C6062C1200        mov byte [0x122c],0x0
000010B3  C3                ret
000010B4  8B1E3112          mov bx,[0x1231]
000010B8  8A07              mov al,[bx]
000010BA  3CFF              cmp al,0xff
000010BC  740D              jz 0x10cb
000010BE  B40E              mov ah,0xe
000010C0  BB0000            mov bx,0x0
000010C3  CD10              int 0x10
000010C5  FF063112          inc word [0x1231]
000010C9  EBE9              jmp short 0x10b4
000010CB  C3                ret
000010CC  8B164D10          mov dx,[0x104d]
000010D0  2AF7              sub dh,bh
000010D2  7302              jnc 0x10d6
000010D4  F6DE              neg dh
000010D6  80FEC8            cmp dh,0xc8
000010D9  736C              jnc 0x1147
000010DB  2AD3              sub dl,bl
000010DD  7302              jnc 0x10e1
000010DF  F6DA              neg dl
000010E1  80FAC8            cmp dl,0xc8
000010E4  7361              jnc 0x1147
000010E6  8B164D10          mov dx,[0x104d]
000010EA  891E4D10          mov [0x104d],bx
000010EE  52                push dx
000010EF  B90001            mov cx,0x100
000010F2  88F8              mov al,bh
000010F4  2AC6              sub al,dh
000010F6  7304              jnc 0x10fc
000010F8  F6DD              neg ch
000010FA  F6D8              neg al
000010FC  88C7              mov bh,al
000010FE  88D8              mov al,bl
00001100  2AC2              sub al,dl
00001102  BA0100            mov dx,0x1
00001105  7304              jnc 0x110b
00001107  F7DA              neg dx
00001109  F6D8              neg al
0000110B  88C3              mov bl,al
0000110D  3AC7              cmp al,bh
0000110F  7304              jnc 0x1115
00001111  87D1              xchg dx,cx
00001113  86FB              xchg bh,bl
00001115  89164810          mov [0x1048],dx
00001119  890E4A10          mov [0x104a],cx
0000111D  88D9              mov cl,bl
0000111F  D0E9              shr cl,1
00001121  88DD              mov ch,bl
00001123  FEC5              inc ch
00001125  5A                pop dx
00001126  53                push bx
00001127  89D3              mov bx,dx
00001129  E807F8            call 0x933
0000112C  5B                pop bx
0000112D  88C8              mov al,cl
0000112F  02C7              add al,bh
00001131  7204              jc 0x1137
00001133  3AC3              cmp al,bl
00001135  7206              jc 0x113d
00001137  2AC3              sub al,bl
00001139  03164A10          add dx,[0x104a]
0000113D  88C1              mov cl,al
0000113F  03164810          add dx,[0x1048]
00001143  FECD              dec ch
00001145  75DF              jnz 0x1126
00001147  C3                ret
00001148  FB                sti
00001149  110B              adc [bp+di],cx
0000114B  06                push es
0000114C  FD                std
0000114D  11751F            adc [di+0x1f],si
00001150  C6064C1055        mov byte [0x104c],0x55
00001155  C706D6118080      mov word [0x11d6],0x8080
0000115B  C706D4116F31      mov word [0x11d4],0x316f
00001161  E8CAF5            call 0x72e
00001164  F6062C12FF        test byte [0x122c],0xff
00001169  7404              jz 0x116f
0000116B  5A                pop dx
0000116C  E9EFF1            jmp 0x35e
0000116F  C3                ret
00001170  F6062712FF        test byte [0x1227],0xff
00001175  74F8              jz 0x116f
00001177  F6060812FF        test byte [0x1208],0xff
0000117C  75F1              jnz 0x116f
0000117E  C606271200        mov byte [0x1227],0x0
00001183  C70659100000      mov word [0x1059],0x0
00001189  C70657100000      mov word [0x1057],0x0
0000118F  E898F7            call 0x92a
00001192  A16110            mov ax,[0x1061]
00001195  A35310            mov [0x1053],ax
00001198  243F              and al,0x3f
0000119A  A25010            mov [0x1050],al
0000119D  8B1E6310          mov bx,[0x1063]
000011A1  891E5510          mov [0x1055],bx
000011A5  A803              test al,0x3
000011A7  7401              jz 0x11aa
000011A9  C3                ret
000011AA  E8C9FA            call 0xc76
000011AD  C3                ret
000011AE  C6062C1200        mov byte [0x122c],0x0
000011B3  C3                ret
000011B4  8B1E3112          mov bx,[0x1231]
000011B8  8A07              mov al,[bx]
000011BA  3CFF              cmp al,0xff
000011BC  740D              jz 0x11cb
000011BE  B40E              mov ah,0xe
000011C0  BB0000            mov bx,0x0
000011C3  CD10              int 0x10
000011C5  FF063112          inc word [0x1231]
000011C9  0000              add [bx+si],al
000011CB  008B164D          add [bp+di+0x4d16],cl
000011CF  102A              adc [bp+si],ch
000011D1  F77302            div word [bp+di+0x2]
000011D4  F6DE              neg dh
000011D6  80FEC8            cmp dh,0xc8
000011D9  736C              jnc 0x1247
000011DB  2AD3              sub dl,bl
000011DD  7302              jnc 0x11e1
000011DF  F6DA              neg dl
000011E1  80FAC8            cmp dl,0xc8
000011E4  7361              jnc 0x1247
000011E6  8B164D10          mov dx,[0x104d]
000011EA  891E4D10          mov [0x104d],bx
000011EE  52                push dx
000011EF  B90001            mov cx,0x100
000011F2  88F8              mov al,bh
000011F4  2AC6              sub al,dh
000011F6  7304              jnc 0x11fc
000011F8  F6DD              neg ch
000011FA  F6D8              neg al
000011FC  88C7              mov bh,al
000011FE  88D8              mov al,bl
00001200  2AC2              sub al,dl
00001202  BA0100            mov dx,0x1
00001205  7304              jnc 0x120b
00001207  F7DA              neg dx
00001209  F6D8              neg al
0000120B  88C3              mov bl,al
0000120D  3AC7              cmp al,bh
0000120F  7304              jnc 0x1215
00001211  87D1              xchg dx,cx
00001213  86FB              xchg bh,bl
00001215  89164810          mov [0x1048],dx
00001219  890E4A10          mov [0x104a],cx
0000121D  88D9              mov cl,bl
0000121F  D0E9              shr cl,1
00001221  88DD              mov ch,bl
00001223  FEC5              inc ch
00001225  5A                pop dx
00001226  53                push bx
00001227  89D3              mov bx,dx
00001229  E807F8            call 0xa33
0000122C  5B                pop bx
0000122D  07                pop es
0000122E  55                push bp
0000122F  0A10              or dl,[bx+si]
00001231  7204              jc 0x1237
00001233  0A0A              or cl,[bp+si]
00001235  0A0A              or cl,[bp+si]
00001237  0A0A              or cl,[bp+si]
00001239  0A0D              or cl,[di]
0000123B  2020              and [bx+si],ah
0000123D  2020              and [bx+si],ah
0000123F  2020              and [bx+si],ah
00001241  2020              and [bx+si],ah
00001243  2020              and [bx+si],ah
00001245  2020              and [bx+si],ah
00001247  2020              and [bx+si],ah
00001249  41                inc cx
0000124A  53                push bx
0000124B  54                push sp
0000124C  52                push dx
0000124D  4F                dec di
0000124E  2D444F            sub ax,0x4f44
00001251  44                inc sp
00001252  47                inc di
00001253  45                inc bp
00001254  0A0A              or cl,[bp+si]
00001256  0D2020            or ax,0x2020
00001259  2020              and [bx+si],ah
0000125B  2020              and [bx+si],ah
0000125D  2020              and [bx+si],ah
0000125F  2020              and [bx+si],ah
00001261  2020              and [bx+si],ah
00001263  2020              and [bx+si],ah
00001265  49                dec cx
00001266  42                inc dx
00001267  4D                dec bp
00001268  205645            and [bp+0x45],dl
0000126B  52                push dx
0000126C  53                push bx
0000126D  49                dec cx
0000126E  4F                dec di
0000126F  4E                dec si
00001270  0A0A              or cl,[bp+si]
00001272  0D2020            or ax,0x2020
00001275  2020              and [bx+si],ah
00001277  2020              and [bx+si],ah
00001279  2020              and [bx+si],ah
0000127B  2020              and [bx+si],ah
0000127D  2020              and [bx+si],ah
0000127F  2020              and [bx+si],ah
00001281  2020              and [bx+si],ah
00001283  2020              and [bx+si],ah
00001285  204259            and [bp+si+0x59],al
00001288  0A0D              or cl,[di]
0000128A  2020              and [bx+si],ah
0000128C  2020              and [bx+si],ah
0000128E  2020              and [bx+si],ah
00001290  2020              and [bx+si],ah
00001292  2020              and [bx+si],ah
00001294  2020              and [bx+si],ah
00001296  2020              and [bx+si],ah
00001298  44                inc sp
00001299  41                inc cx
0000129A  56                push si
0000129B  45                inc bp
0000129C  204741            and [bx+0x41],al
0000129F  4E                dec si
000012A0  47                inc di
000012A1  4F                dec di
000012A2  4C                dec sp
000012A3  41                inc cx
000012A4  0A0D              or cl,[di]
000012A6  2020              and [bx+si],ah
000012A8  2020              and [bx+si],ah
000012AA  2020              and [bx+si],ah
000012AC  2020              and [bx+si],ah
000012AE  2020              and [bx+si],ah
000012B0  2020              and [bx+si],ah
000012B2  2020              and [bx+si],ah
000012B4  2020              and [bx+si],ah
000012B6  3033              xor [bp+di],dh
000012B8  2F                das
000012B9  3130              xor [bx+si],si
000012BB  2F                das
000012BC  3832              cmp [bp+si],dh
000012BE  0A0A              or cl,[bp+si]
000012C0  0D2020            or ax,0x2020
000012C3  2020              and [bx+si],ah
000012C5  2020              and [bx+si],ah
000012C7  2020              and [bx+si],ah
000012C9  2020              and [bx+si],ah
000012CB  2020              and [bx+si],ah
000012CD  204741            and [bx+0x41],al
000012D0  4D                dec bp
000012D1  45                inc bp
000012D2  20434F            and [bp+di+0x4f],al
000012D5  4E                dec si
000012D6  54                push sp
000012D7  52                push dx
000012D8  4F                dec di
000012D9  4C                dec sp
000012DA  53                push bx
000012DB  3A0A              cmp cl,[bp+si]
000012DD  0D2020            or ax,0x2020
000012E0  2020              and [bx+si],ah
000012E2  2020              and [bx+si],ah
000012E4  2020              and [bx+si],ah
000012E6  2020              and [bx+si],ah
000012E8  5B                pop bx
000012E9  204639            and [bp+0x39],al
000012EC  205D20            and [di+0x20],bl
000012EF  3D2052            cmp ax,0x5220
000012F2  4F                dec di
000012F3  54                push sp
000012F4  41                inc cx
000012F5  54                push sp
000012F6  45                inc bp
000012F7  204C45            and [si+0x45],cl
000012FA  46                inc si
000012FB  54                push sp
000012FC  0A0D              or cl,[di]
000012FE  2020              and [bx+si],ah
00001300  2020              and [bx+si],ah
00001302  2020              and [bx+si],ah
00001304  2020              and [bx+si],ah
00001306  205B20            and [bp+di+0x20],bl
00001309  46                inc si
0000130A  3130              xor [bx+si],si
0000130C  205D20            and [di+0x20],bl
0000130F  3D2052            cmp ax,0x5220
00001312  4F                dec di
00001313  54                push sp
00001314  41                inc cx
00001315  54                push sp
00001316  45                inc bp
00001317  205249            and [bp+si+0x49],dl
0000131A  47                inc di
0000131B  48                dec ax
0000131C  54                push sp
0000131D  0A0D              or cl,[di]
0000131F  2020              and [bx+si],ah
00001321  205B20            and [bp+di+0x20],bl
00001324  49                dec cx
00001325  4E                dec si
00001326  53                push bx
00001327  205D20            and [di+0x20],bl
0000132A  3D2054            cmp ax,0x5420
0000132D  48                dec ax
0000132E  52                push dx
0000132F  55                push bp
00001330  53                push bx
00001331  54                push sp
00001332  2020              and [bx+si],ah
00001334  2020              and [bx+si],ah
00001336  5B                pop bx
00001337  204445            and [si+0x45],al
0000133A  4C                dec sp
0000133B  205D20            and [di+0x20],bl
0000133E  3D2046            cmp ax,0x4620
00001341  49                dec cx
00001342  52                push dx
00001343  45                inc bp
00001344  0A0D              or cl,[di]
00001346  2020              and [bx+si],ah
00001348  2020              and [bx+si],ah
0000134A  2020              and [bx+si],ah
0000134C  2020              and [bx+si],ah
0000134E  2020              and [bx+si],ah
00001350  5B                pop bx
00001351  53                push bx
00001352  50                push ax
00001353  41                inc cx
00001354  43                inc bx
00001355  45                inc bp
00001356  5D                pop bp
00001357  203D              and [di],bh
00001359  204859            and [bx+si+0x59],cl
0000135C  50                push ax
0000135D  45                inc bp
0000135E  52                push dx
0000135F  53                push bx
00001360  50                push ax
00001361  41                inc cx
00001362  43                inc bx
00001363  45                inc bp
00001364  0A0D              or cl,[di]
00001366  2020              and [bx+si],ah
00001368  2020              and [bx+si],ah
0000136A  2020              and [bx+si],ah
0000136C  2020              and [bx+si],ah
0000136E  5B                pop bx
0000136F  4E                dec si
00001370  55                push bp
00001371  4D                dec bp
00001372  204C4F            and [si+0x4f],cl
00001375  43                inc bx
00001376  4B                dec bx
00001377  5D                pop bp
00001378  203D              and [di],bh
0000137A  205354            and [bp+di+0x54],dl
0000137D  41                inc cx
0000137E  52                push dx
0000137F  54                push sp
00001380  204741            and [bx+0x41],al
00001383  4D                dec bp
00001384  45                inc bp
00001385  0A0D              or cl,[di]
00001387  2020              and [bx+si],ah
00001389  2020              and [bx+si],ah
0000138B  2020              and [bx+si],ah
0000138D  205B53            and [bp+di+0x53],bl
00001390  43                inc bx
00001391  52                push dx
00001392  4F                dec di
00001393  4C                dec sp
00001394  4C                dec sp
00001395  204C4F            and [si+0x4f],cl
00001398  43                inc bx
00001399  4B                dec bx
0000139A  5D                pop bp
0000139B  203D              and [di],bh
0000139D  204558            and [di+0x58],al
000013A0  49                dec cx
000013A1  54                push sp
000013A2  204741            and [bx+0x41],al
000013A5  4D                dec bp
000013A6  45                inc bp
000013A7  0A0A              or cl,[bp+si]
000013A9  0D2020            or ax,0x2020
000013AC  2020              and [bx+si],ah
000013AE  2020              and [bx+si],ah
000013B0  2020              and [bx+si],ah
000013B2  2020              and [bx+si],ah
000013B4  205343            and [bp+di+0x43],dl
000013B7  4F                dec di
000013B8  52                push dx
000013B9  49                dec cx
000013BA  4E                dec si
000013BB  47                inc di
000013BC  3A20              cmp ah,[bx+si]
000013BE  28504F            sub [bx+si+0x4f],dl
000013C1  49                dec cx
000013C2  4E                dec si
000013C3  54                push sp
000013C4  53                push bx
000013C5  290A              sub [bp+si],cx
000013C7  0D2020            or ax,0x2020
000013CA  2020              and [bx+si],ah
000013CC  20454E            and [di+0x4e],al
000013CF  45                inc bp
000013D0  4D                dec bp
000013D1  59                pop cx
000013D2  205348            and [bp+di+0x48],dl
000013D5  49                dec cx
000013D6  50                push ax
000013D7  53                push bx
000013D8  2020              and [bx+si],ah
000013DA  2020              and [bx+si],ah
000013DC  2020              and [bx+si],ah
000013DE  2020              and [bx+si],ah
000013E0  204D45            and [di+0x45],cl
000013E3  54                push sp
000013E4  45                inc bp
000013E5  4F                dec di
000013E6  52                push dx
000013E7  4F                dec di
000013E8  49                dec cx
000013E9  44                inc sp
000013EA  53                push bx
000013EB  0A0D              or cl,[di]
000013ED  2020              and [bx+si],ah
000013EF  2020              and [bx+si],ah
000013F1  2020              and [bx+si],ah
000013F3  4C                dec sp
000013F4  41                inc cx
000013F5  52                push dx
000013F6  47                inc di
000013F7  45                inc bp
000013F8  2032              and [bp+si],dh
000013FA  3030              xor [bx+si],dh
000013FC  2020              and [bx+si],ah
000013FE  2020              and [bx+si],ah
00001400  2020              and [bx+si],ah
00001402  2020              and [bx+si],ah
00001404  2020              and [bx+si],ah
00001406  204C41            and [si+0x41],cl
00001409  52                push dx
0000140A  47                inc di
0000140B  45                inc bp
0000140C  2032              and [bp+si],dh
0000140E  300A              xor [bp+si],cl
00001410  0D2020            or ax,0x2020
00001413  2020              and [bx+si],ah
00001415  20534D            and [bp+di+0x4d],dl
00001418  41                inc cx
00001419  4C                dec sp
0000141A  4C                dec sp
0000141B  2020              and [bx+si],ah
0000141D  3130              xor [bx+si],si
0000141F  3030              xor [bx+si],dh
00001421  2020              and [bx+si],ah
00001423  2020              and [bx+si],ah
00001425  2020              and [bx+si],ah
00001427  2020              and [bx+si],ah
00001429  204D45            and [di+0x45],cl
0000142C  44                inc sp
0000142D  49                dec cx
0000142E  55                push bp
0000142F  4D                dec bp
00001430  2020              and [bx+si],ah
00001432  35300A            xor ax,0xa30
00001435  0D2020            or ax,0x2020
00001438  2020              and [bx+si],ah
0000143A  2020              and [bx+si],ah
0000143C  2020              and [bx+si],ah
0000143E  2020              and [bx+si],ah
00001440  2020              and [bx+si],ah
00001442  2020              and [bx+si],ah
00001444  2020              and [bx+si],ah
00001446  2020              and [bx+si],ah
00001448  2020              and [bx+si],ah
0000144A  2020              and [bx+si],ah
0000144C  2020              and [bx+si],ah
0000144E  20534D            and [bp+di+0x4d],dl
00001451  41                inc cx
00001452  4C                dec sp
00001453  4C                dec sp
00001454  2020              and [bx+si],ah
00001456  3130              xor [bx+si],si
00001458  300A              xor [bp+si],cl
0000145A  0A0D              or cl,[di]
0000145C  2020              and [bx+si],ah
0000145E  2020              and [bx+si],ah
00001460  2020              and [bx+si],ah
00001462  2020              and [bx+si],ah
00001464  2020              and [bx+si],ah
00001466  2020              and [bx+si],ah
00001468  44                inc sp
00001469  49                dec cx
0000146A  53                push bx
0000146B  54                push sp
0000146C  52                push dx
0000146D  49                dec cx
0000146E  42                inc dx
0000146F  55                push bp
00001470  54                push sp
00001471  45                inc bp
00001472  44                inc sp
00001473  204259            and [bp+si+0x59],al
00001476  3A0A              cmp cl,[bp+si]
00001478  0D2020            or ax,0x2020
0000147B  2020              and [bx+si],ah
0000147D  204449            and [si+0x49],al
00001480  47                inc di
00001481  49                dec cx
00001482  54                push sp
00001483  41                inc cx
00001484  4C                dec sp
00001485  204D41            and [di+0x41],cl
00001488  52                push dx
00001489  4B                dec bx
0000148A  45                inc bp
0000148B  54                push sp
0000148C  49                dec cx
0000148D  4E                dec si
0000148E  47                inc di
0000148F  20434F            and [bp+di+0x4f],al
00001492  52                push dx
00001493  50                push ax
00001494  4F                dec di
00001495  52                push dx
00001496  41                inc cx
00001497  54                push sp
00001498  49                dec cx
00001499  4F                dec di
0000149A  4E                dec si
0000149B  0DFF0F            or ax,0xfff
0000149E  C0                db 0xC0
0000149F  3030              xor [bx+si],dh
000014A1  3030              xor [bx+si],dh
000014A3  3030              xor [bx+si],dh
000014A5  3030              xor [bx+si],dh
000014A7  3030              xor [bx+si],dh
000014A9  0FC000            xadd [bx+si],al
000014AC  0003              add [bp+di],al
000014AE  000F              add [bx],cl
000014B0  0003              add [bp+di],al
000014B2  0003              add [bp+di],al
000014B4  0003              add [bp+di],al
000014B6  0003              add [bp+di],al
000014B8  000F              add [bx],cl
000014BA  C00000            rol byte [bx+si],0x0
000014BD  0FC030            xadd [bx+si],dh
000014C0  3000              xor [bx+si],al
000014C2  3000              xor [bx+si],al
000014C4  C00300            rol byte [bp+di],0x0
000014C7  0C00              or al,0x0
000014C9  3F                aas
000014CA  F00000            lock add [bx+si],al
000014CD  0FC030            xadd [bx+si],dh
000014D0  3000              xor [bx+si],al
000014D2  3003              xor [bp+di],al
000014D4  C00030            rol byte [bx+si],0x30
000014D7  3030              xor [bx+si],dh
000014D9  0FC000            xadd [bx+si],al
000014DC  0000              add [bx+si],al
000014DE  C003C0            rol byte [bp+di],0xc0
000014E1  0CC0              or al,0xc0
000014E3  30C0              xor al,al
000014E5  3F                aas
000014E6  F000C0            lock add al,al
000014E9  00C0              add al,al
000014EB  0000              add [bx+si],al
000014ED  3F                aas
000014EE  F03000            lock xor [bx+si],al
000014F1  3F                aas
000014F2  C00030            rol byte [bx+si],0x30
000014F5  0030              add [bx+si],dh
000014F7  3030              xor [bx+si],dh
000014F9  0FC000            xadd [bx+si],al
000014FC  000F              add [bx],cl
000014FE  C0                db 0xC0
000014FF  3030              xor [bx+si],dh
00001501  3000              xor [bx+si],al
00001503  3F                aas
00001504  C0                db 0xC0
00001505  3030              xor [bx+si],dh
00001507  3030              xor [bx+si],dh
00001509  0FC000            xadd [bx+si],al
0000150C  003F              add [bx],bh
0000150E  F00030            lock add [bx+si],dh
00001511  00C0              add al,al
00001513  0300              add ax,[bx+si]
00001515  0300              add ax,[bx+si]
00001517  0300              add ax,[bx+si]
00001519  0300              add ax,[bx+si]
0000151B  0000              add [bx+si],al
0000151D  0FC030            xadd [bx+si],dh
00001520  3030              xor [bx+si],dh
00001522  300F              xor [bx],cl
00001524  C0                db 0xC0
00001525  3030              xor [bx+si],dh
00001527  3030              xor [bx+si],dh
00001529  0FC000            xadd [bx+si],al
0000152C  000F              add [bx],cl
0000152E  C0                db 0xC0
0000152F  3030              xor [bx+si],dh
00001531  3030              xor [bx+si],dh
00001533  0F                db 0x0F
00001534  F00030            lock add [bx+si],dh
00001537  3030              xor [bx+si],dh
00001539  0FC000            xadd [bx+si],al
0000153C  0000              add [bx+si],al
0000153E  0000              add [bx+si],al
00001540  0000              add [bx+si],al
00001542  0000              add [bx+si],al
00001544  0000              add [bx+si],al
00001546  0000              add [bx+si],al
00001548  0000              add [bx+si],al
0000154A  0000              add [bx+si],al
0000154C  0000              add [bx+si],al
0000154E  015000            add [bx+si+0x0],dx
00001551  2000              and [bx+si],al
00001553  0038              add [bx+si],bh
00001555  0120              add [bx+si],sp
00001557  022A              add ch,[bp+si]
00001559  030A              add cx,[bp+si]
0000155B  047F              add al,0x7f
0000155D  051006            add ax,0x610
00001560  7F07              jg 0x1569
00001562  7808              js 0x156c
00001564  0209              add cl,[bx+di]
00001566  010A              add [bp+si],cx
00001568  06                push es
00001569  0B07              or ax,[bx]
0000156B  0C00              or al,0x0
0000156D  0D0005            or ax,0x500
00001570  00FB              add bl,bh
00001572  05FC02            add ax,0x2fc
00001575  FC                cld
00001576  FD                std
00001577  FB                sti
00001578  FA                cli
00001579  0400              add al,0x0
0000157B  FA                cli
0000157C  04FB              add al,0xfb
0000157E  02FC              add bh,ah
00001580  FC                cld
00001581  FB                sti
00001582  F9                stc
00001583  0401              add al,0x1
00001585  FA                cli
00001586  04FB              add al,0xfb
00001588  01FC              add sp,di
0000158A  FC                cld
0000158B  FB                sti
0000158C  F9                stc
0000158D  0402              add al,0x2
0000158F  FA                cli
00001590  03FB              add di,bx
00001592  01FC              add sp,di
00001594  FB                sti
00001595  FC                cld
00001596  F8                clc
00001597  0402              add al,0x2
00001599  F9                stc
0000159A  02FB              add bh,bl
0000159C  00FD              add ch,bh
0000159E  FB                sti
0000159F  FC                cld
000015A0  F8                clc
000015A1  0403              add al,0x3
000015A3  F9                stc
000015A4  01FB              add bx,di
000015A6  FF                db 0xFF
000015A7  FD                std
000015A8  FA                cli
000015A9  FD                std
000015AA  F70403F9          test word [si],0xf903
000015AE  00FB              add bl,bh
000015B0  FF                db 0xFF
000015B1  FD                std
000015B2  FA                cli
000015B3  FE                db 0xFE
000015B4  F70304F9          test word [bp+di],0xf904
000015B8  FF                db 0xFF
000015B9  FB                sti
000015BA  FE                db 0xFE
000015BB  FE                db 0xFE
000015BC  FA                cli
000015BD  FE                db 0xFE
000015BE  F70304F9          test word [bp+di],0xf904
000015C2  FF                db 0xFF
000015C3  FB                sti
000015C4  FE                db 0xFE
000015C5  FE                db 0xFE
000015C6  FA                cli
000015C7  FFF7              push di
000015C9  0305              add ax,[di]
000015CB  F9                stc
000015CC  FE                db 0xFE
000015CD  FB                sti
000015CE  FD                std
000015CF  FF                db 0xFF
000015D0  F9                stc
000015D1  FFF7              push di
000015D3  0205              add al,[di]
000015D5  F9                stc
000015D6  FD                std
000015D7  FC                cld
000015D8  FC                cld
000015D9  FF                db 0xFF
000015DA  F9                stc
000015DB  00F7              add bh,dh
000015DD  0206FAFC          add al,[0xfcfa]
000015E1  FC                cld
000015E2  FC                cld
000015E3  FF                db 0xFF
000015E4  F9                stc
000015E5  01F7              add di,si
000015E7  0106FAFB          add [0xfbfa],ax
000015EB  FC                cld
000015EC  FB                sti
000015ED  00F9              add cl,bh
000015EF  01F7              add di,si
000015F1  0106FAFA          add [0xfafa],ax
000015F5  FC                cld
000015F6  FB                sti
000015F7  00F9              add cl,bh
000015F9  02F7              add dh,bh
000015FB  0006FBFA          add [0xfafb],al
000015FF  FD                std
00001600  FB                sti
00001601  01F9              add cx,di
00001603  02F8              add bh,al
00001605  0006FBF9          add [0xf9fb],al
00001609  FD                std
0000160A  FA                cli
0000160B  01FA              add dx,di
0000160D  03F8              add di,ax
0000160F  0007              add [bx],al
00001611  FC                cld
00001612  F9                stc
00001613  FE                db 0xFE
00001614  FA                cli
00001615  01FA              add dx,di
00001617  03F9              add di,cx
00001619  FF06FCF8          inc word [0xf8fc]
0000161D  FE                db 0xFE
0000161E  FA                cli
0000161F  02FA              add bh,dl
00001621  04F9              add al,0xf9
00001623  FF06FDF8          inc word [0xf8fd]
00001627  FE                db 0xFE
00001628  F9                stc
00001629  02FB              add bh,bl
0000162B  04FA              add al,0xfa
0000162D  FE06FDF7          inc byte [0xf7fd]
00001631  FF                db 0xFF
00001632  F9                stc
00001633  03FB              add di,bx
00001635  05FAFE            add ax,0xfefa
00001638  06                push es
00001639  FE                db 0xFE
0000163A  F7FF              idiv di
0000163C  F9                stc
0000163D  03FB              add di,bx
0000163F  05FBFD            add ax,0xfdfb
00001642  06                push es
00001643  FE                db 0xFE
00001644  F700F903          test word [bx+si],0x3f9
00001648  FC                cld
00001649  05FCFD            add ax,0xfdfc
0000164C  05FFF7            add ax,0xf7ff
0000164F  00F9              add cl,bh
00001651  03FC              add di,sp
00001653  06                push es
00001654  FD                std
00001655  FC                cld
00001656  0500F7            add ax,0xf700
00001659  00F9              add cl,bh
0000165B  04FD              add al,0xfd
0000165D  06                push es
0000165E  FE                db 0xFE
0000165F  FC                cld
00001660  0400              add al,0x0
00001662  F701FA04          test word [bx+di],0x4fa
00001666  FE06FFFC          inc byte [0xfcff]
0000166A  0401              add al,0x1
0000166C  F701FA04          test word [bx+di],0x4fa
00001670  FE06FFFB          inc byte [0xfbff]
00001674  0301              add ax,[bx+di]
00001676  F702FA04          test word [bp+si],0x4fa
0000167A  FF0600FB          inc word [0xfb00]
0000167E  0302              add ax,[bp+si]
00001680  F702FA04          test word [bp+si],0x4fa
00001684  FF0601FB          inc word [0xfb01]
00001688  0203              add al,[bp+di]
0000168A  F8                clc
0000168B  02FB              add bh,bl
0000168D  0400              add al,0x0
0000168F  06                push es
00001690  02FB              add bh,bl
00001692  0203              add al,[bp+di]
00001694  F8                clc
00001695  03FB              add di,bx
00001697  0401              add al,0x1
00001699  0503FB            add ax,0xfb03
0000169C  0104              add [si],ax
0000169E  F9                stc
0000169F  03FC              add di,sp
000016A1  0401              add al,0x1
000016A3  0504FB            add ax,0xfb04
000016A6  0004              add [si],al
000016A8  F9                stc
000016A9  03FC              add di,sp
000016AB  0402              add al,0x2
000016AD  0504FB            add ax,0xfb04
000016B0  0004              add [si],al
000016B2  FA                cli
000016B3  03FD              add di,bp
000016B5  0402              add al,0x2
000016B7  0505FB            add ax,0xfb05
000016BA  FF05              inc word [di]
000016BC  FB                sti
000016BD  04FD              add al,0xfd
000016BF  0303              add ax,[bp+di]
000016C1  0406              add al,0x6
000016C3  FB                sti
000016C4  FE05              inc byte [di]
000016C6  FB                sti
000016C7  04FE              add al,0xfe
000016C9  0303              add ax,[bp+di]
000016CB  0406              add al,0x6
000016CD  FB                sti
000016CE  FD                std
000016CF  05FC04            add ax,0x4fc
000016D2  FE03              inc byte [bp+di]
000016D4  0403              add al,0x3
000016D6  07                pop es
000016D7  FB                sti
000016D8  FD                std
000016D9  06                push es
000016DA  FD                std
000016DB  04FF              add al,0xff
000016DD  0204              add al,[si]
000016DF  0307              add ax,[bx]
000016E1  FB                sti
000016E2  FC                cld
000016E3  06                push es
000016E4  FE04              inc byte [si]
000016E6  0002              add [bp+si],al
000016E8  050208            add ax,0x802
000016EB  FB                sti
000016EC  FC                cld
000016ED  06                push es
000016EE  FF04              inc word [si]
000016F0  0002              add [bp+si],al
000016F2  050108            add ax,0x801
000016F5  FC                cld
000016F6  FB                sti
000016F7  06                push es
000016F8  0004              add [si],al
000016FA  0101              add [bx+di],ax
000016FC  050108            add ax,0x801
000016FF  FC                cld
00001700  FB                sti
00001701  06                push es
00001702  0004              add [si],al
00001704  0101              add [bx+di],ax
00001706  050008            add ax,0x800
00001709  FC                cld
0000170A  FA                cli
0000170B  06                push es
0000170C  0104              add [si],ax
0000170E  0200              add al,[bx+si]
00001710  06                push es
00001711  0008              add [bx+si],cl
00001713  FD                std
00001714  FA                cli
00001715  06                push es
00001716  0203              add al,[bp+di]
00001718  0300              add ax,[bx+si]
0000171A  06                push es
0000171B  FF08              dec word [bx+si]
0000171D  FD                std
0000171E  F9                stc
0000171F  050303            add ax,0x303
00001722  0300              add ax,[bx+si]
00001724  06                push es
00001725  FE08              dec byte [bx+si]
00001727  FE                db 0xFE
00001728  F9                stc
00001729  050403            add ax,0x304
0000172C  04FF              add al,0xff
0000172E  06                push es
0000172F  FE08              dec byte [bx+si]
00001731  FE                db 0xFE
00001732  F9                stc
00001733  050503            add ax,0x305
00001736  04FF              add al,0xff
00001738  06                push es
00001739  FD                std
0000173A  08FF              or bh,bh
0000173C  F9                stc
0000173D  0405              add al,0x5
0000173F  0204              add al,[si]
00001741  FE06FD07          inc byte [0x7fd]
00001745  FF                db 0xFF
00001746  F9                stc
00001747  0406              add al,0x6
00001749  0205              add al,[di]
0000174B  FE05              inc byte [di]
0000174D  FC                cld
0000174E  07                pop es
0000174F  00F9              add cl,bh
00001751  0406              add al,0x6
00001753  0205              add al,[di]
00001755  FE05              inc byte [di]
00001757  FC                cld
00001758  07                pop es
00001759  00F9              add cl,bh
0000175B  0307              add ax,[bx]
0000175D  0105              add [di],ax
0000175F  FD                std
00001760  05FB06            add ax,0x6fb
00001763  00F9              add cl,bh
00001765  0207              add al,[bx]
00001767  0106FD04          add [0x4fd],ax
0000176B  FB                sti
0000176C  0501F9            add ax,0xf901
0000176F  0208              add cl,[bx+si]
00001771  0006FC04          add [0x4fc],al
00001775  FA                cli
00001776  0501F9            add ax,0xf901
00001779  0108              add [bx+si],cx
0000177B  0006FC04          add [0x4fc],al
0000177F  FA                cli
00001780  0402              add al,0x2
00001782  F9                stc
00001783  0108              add [bx+si],cx
00001785  FF06FC03          inc word [0x3fc]
00001789  FA                cli
0000178A  0302              add ax,[bp+si]
0000178C  FA                cli
0000178D  0008              add [bx+si],cl
0000178F  FF06FC03          inc word [0x3fc]
00001793  F9                stc
00001794  0203              add al,[bp+di]
00001796  FA                cli
00001797  FF08              dec word [bx+si]
00001799  FF06FB02          inc word [0x2fb]
0000179D  F9                stc
0000179E  0103              add [bp+di],ax
000017A0  FB                sti
000017A1  FF08              dec word [bx+si]
000017A3  FE05              inc byte [di]
000017A5  FB                sti
000017A6  01F9              add cx,di
000017A8  0003              add [bp+di],al
000017AA  FB                sti
000017AB  FE08              dec byte [bx+si]
000017AD  FE05              inc byte [di]
000017AF  FB                sti
000017B0  01F9              add cx,di
000017B2  0004              add [si],al
000017B4  FC                cld
000017B5  FE08              dec byte [bx+si]
000017B7  FD                std
000017B8  05FB00            add ax,0xfb
000017BB  F9                stc
000017BC  FF04              inc word [si]
000017BE  FC                cld
000017BF  FD                std
000017C0  08FD              or ch,bh
000017C2  05FB00            add ax,0xfb
000017C5  F9                stc
000017C6  FE04              inc byte [si]
000017C8  FD                std
000017C9  FC                cld
000017CA  07                pop es
000017CB  FD                std
000017CC  04FB              add al,0xfb
000017CE  FF                db 0xFF
000017CF  F9                stc
000017D0  FD                std
000017D1  04FD              add al,0xfd
000017D3  FC                cld
000017D4  07                pop es
000017D5  FC                cld
000017D6  04FB              add al,0xfb
000017D8  FE                db 0xFE
000017D9  FA                cli
000017DA  FC                cld
000017DB  04FE              add al,0xfe
000017DD  FB                sti
000017DE  06                push es
000017DF  FC                cld
000017E0  03FB              add di,bx
000017E2  FE                db 0xFE
000017E3  FA                cli
000017E4  FB                sti
000017E5  04FF              add al,0xff
000017E7  FB                sti
000017E8  06                push es
000017E9  FC                cld
000017EA  03FB              add di,bx
000017EC  FD                std
000017ED  FA                cli
000017EE  FB                sti
000017EF  0A0E0A0F          or cl,[0xf0a]
000017F3  0B11              or dx,[bx+di]
000017F5  0A13              or dl,[bp+di]
000017F7  0911              or [bx+di],dx
000017F9  0811              or [bx+di],dl
000017FB  07                pop es
000017FC  12061107          adc al,[0x711]
00001800  0E                push cs
00001801  06                push es
00001802  0C05              or al,0x5
00001804  0208              add cl,[bx+si]
00001806  0A09              or cl,[bx+di]
00001808  0C0B              or al,0xb
0000180A  0D0B0F            or ax,0xf0b
0000180D  0A0F              or cl,[bx]
0000180F  0A10              or dl,[bx+si]
00001811  0A12              or dl,[bp+si]
00001813  0813              or [bp+di],dl
00001815  0811              or [bx+di],dl
00001817  07                pop es
00001818  11061205          adc [0x512],ax
0000181C  10060D06          adc [0x60d],al
00001820  0B060208          or ax,[0x802]
00001824  0A09              or cl,[bx+di]
00001826  0C0B              or al,0xb
00001828  0E                push cs
00001829  0B10              or dx,[bx+si]
0000182B  0910              or [bx+si],dx
0000182D  0911              or [bx+di],dx
0000182F  0913              or [bp+di],dx
00001831  07                pop es
00001832  1307              adc ax,[bx]
00001834  11061105          adc [0x511],ax
00001838  1205              adc al,[di]
0000183A  10060D06          adc [0x60d],al
0000183E  0B07              or ax,[bx]
00001840  0209              add cl,[bx+di]
00001842  0B09              or cx,[bx+di]
00001844  0D0A0F            or ax,0xf0a
00001847  0A11              or dl,[bx+di]
00001849  0910              or [bx+si],dx
0000184B  0811              or [bx+di],dl
0000184D  0813              or [bp+di],dl
0000184F  06                push es
00001850  13061106          adc ax,[0x611]
00001854  1004              adc [si],al
00001856  1104              adc [si],ax
00001858  0F06              clts
0000185A  0D060B            or ax,0xb06
0000185D  0802              or [bp+si],al
0000185F  080B              or [bp+di],cl
00001861  080D              or [di],cl
00001863  0910              or [bx+si],dx
00001865  0912              or [bp+si],dx
00001867  0811              or [bx+di],dl
00001869  07                pop es
0000186A  1107              adc [bx],ax
0000186C  1305              adc ax,[di]
0000186E  1308              adc cx,[bx+si]
00001870  0000              add [bx+si],al
00001872  0000              add [bx+si],al
00001874  0000              add [bx+si],al
00001876  0000              add [bx+si],al
00001878  0000              add [bx+si],al
0000187A  0000              add [bx+si],al
0000187C  0000              add [bx+si],al
0000187E  0000              add [bx+si],al
00001880  08FF              or bh,bh
00001882  FF00              inc word [bx+si]
00001884  FF                db 0xFF
00001885  FF00              inc word [bx+si]
00001887  0000              add [bx+si],al
00001889  0000              add [bx+si],al
0000188B  FF00              inc word [bx+si]
0000188D  FF                db 0xFF
0000188E  FF                db 0xFF
0000188F  FF00              inc word [bx+si]
00001891  08FF              or bh,bh
00001893  FF00              inc word [bx+si]
00001895  FE                db 0xFE
00001896  FF00              inc word [bx+si]
00001898  0000              add [bx+si],al
0000189A  0000              add [bx+si],al
0000189C  FF00              inc word [bx+si]
0000189E  FF                db 0xFF
0000189F  FF                db 0xFF
000018A0  FF00              inc word [bx+si]
000018A2  08FE              or dh,bh
000018A4  FE00              inc byte [bx+si]
000018A6  FE                db 0xFE
000018A7  FE00              inc byte [bx+si]
000018A9  0100              add [bx+si],ax
000018AB  0001              add [bx+di],al
000018AD  FF00              inc word [bx+si]
000018AF  FF                db 0xFF
000018B0  FF                db 0xFF
000018B1  FF01              inc word [bx+di]
000018B3  08FE              or dh,bh
000018B5  FE01              inc byte [bx+di]
000018B7  FD                std
000018B8  FE00              inc byte [bx+si]
000018BA  0100              add [bx+si],ax
000018BC  0001              add [bx+di],al
000018BE  FF00              inc word [bx+si]
000018C0  FF                db 0xFF
000018C1  FF                db 0xFF
000018C2  FE01              inc byte [bx+di]
000018C4  08FE              or dh,bh
000018C6  FD                std
000018C7  01FC              add sp,di
000018C9  FD                std
000018CA  0102              add [bp+si],ax
000018CC  0100              add [bx+si],ax
000018CE  01FF              add di,di
000018D0  00FE              add dh,bh
000018D2  FF                db 0xFF
000018D3  FE02              inc byte [bp+si]
000018D5  08FD              or ch,bh
000018D7  FD                std
000018D8  01FC              add sp,di
000018DA  FD                std
000018DB  0102              add [bp+si],ax
000018DD  0101              add [bx+di],ax
000018DF  02FE              add bh,dh
000018E1  00FE              add dh,bh
000018E3  FF                db 0xFF
000018E4  FE02              inc byte [bp+si]
000018E6  08FD              or ch,bh
000018E8  FC                cld
000018E9  01FB              add bx,di
000018EB  FD                std
000018EC  0103              add [bp+di],ax
000018EE  0101              add [bx+di],ax
000018F0  02FE              add bh,dh
000018F2  00FE              add dh,bh
000018F4  FE                db 0xFE
000018F5  FD                std
000018F6  0308              add cx,[bx+si]
000018F8  FC                cld
000018F9  FC                cld
000018FA  02FA              add bh,dl
000018FC  FC                cld
000018FD  0103              add [bp+di],ax
000018FF  0101              add [bx+di],ax
00001901  02FE              add bh,dh
00001903  00FE              add dh,bh
00001905  FE                db 0xFE
00001906  FD                std
00001907  0308              add cx,[bx+si]
00001909  FC                cld
0000190A  FB                sti
0000190B  02FA              add bh,dl
0000190D  FC                cld
0000190E  0204              add al,[si]
00001910  0201              add al,[bx+di]
00001912  03FE              add di,si
00001914  00FD              add ch,bh
00001916  FE                db 0xFE
00001917  FD                std
00001918  0408              add al,0x8
0000191A  FC                cld
0000191B  FB                sti
0000191C  02F9              add bh,cl
0000191E  FB                sti
0000191F  0204              add al,[si]
00001921  0201              add al,[bx+di]
00001923  03FE              add di,si
00001925  00FD              add ch,bh
00001927  FE                db 0xFE
00001928  FD                std
00001929  0408              add al,0x8
0000192B  FB                sti
0000192C  FA                cli
0000192D  02F8              add bh,al
0000192F  FB                sti
00001930  0205              add al,[di]
00001932  0201              add al,[bx+di]
00001934  03FD              add di,bp
00001936  00FD              add ch,bh
00001938  FE                db 0xFE
00001939  FC                cld
0000193A  0408              add al,0x8
0000193C  FB                sti
0000193D  FA                cli
0000193E  03F8              add di,ax
00001940  FA                cli
00001941  0205              add al,[di]
00001943  0202              add al,[bp+si]
00001945  04FD              add al,0xfd
00001947  00FD              add ch,bh
00001949  FE                db 0xFE
0000194A  FC                cld
0000194B  0508FB            add ax,0xfb08
0000194E  F9                stc
0000194F  03F7              add si,di
00001951  FA                cli
00001952  03060302          add ax,[0x203]
00001956  04FD              add al,0xfd
00001958  00FD              add ch,bh
0000195A  FD                std
0000195B  FC                cld
0000195C  0508FA            add ax,0xfa08
0000195F  F9                stc
00001960  03F7              add si,di
00001962  FA                cli
00001963  03060302          add ax,[0x203]
00001967  04FD              add al,0xfd
00001969  00FC              add ah,bh
0000196B  FD                std
0000196C  FB                sti
0000196D  06                push es
0000196E  08FA              or dl,bh
00001970  F8                clc
00001971  03F6              add si,si
00001973  F9                stc
00001974  0307              add ax,[bx]
00001976  0302              add ax,[bp+si]
00001978  05FD00            add ax,0xfd
0000197B  FC                cld
0000197C  FD                std
0000197D  FB                sti
0000197E  06                push es
0000197F  08F9              or cl,bh
00001981  F8                clc
00001982  04F5              add al,0xf5
00001984  F9                stc
00001985  0307              add ax,[bx]
00001987  0302              add ax,[bp+si]
00001989  05FD00            add ax,0xfd
0000198C  FC                cld
0000198D  FD                std
0000198E  FB                sti
0000198F  07                pop es
00001990  08F9              or cl,bh
00001992  F704F5F8          test word [si],0xf8f5
00001996  0308              add cx,[bx+si]
00001998  0302              add ax,[bp+si]
0000199A  05FC00            add ax,0xfc
0000199D  FC                cld
0000199E  FD                std
0000199F  FA                cli
000019A0  07                pop es
000019A1  08F9              or cl,bh
000019A3  F704F4F8          test word [si],0xf8f4
000019A7  0408              add al,0x8
000019A9  0403              add al,0x3
000019AB  06                push es
000019AC  FC                cld
000019AD  00FB              add bl,bh
000019AF  FD                std
000019B0  FA                cli
000019B1  0808              or [bx+si],cl
000019B3  F8                clc
000019B4  F704F3F7          test word [si],0xf7f3
000019B8  0409              add al,0x9
000019BA  0403              add al,0x3
000019BC  06                push es
000019BD  FC                cld
000019BE  00FB              add bl,bh
000019C0  FC                cld
000019C1  FA                cli
000019C2  0808              or [bx+si],cl
000019C4  F8                clc
000019C5  F605F3            test byte [di],0xf3
000019C8  F7040904          test word [si],0x409
000019CC  0306FC00          add ax,[0xfc]
000019D0  FB                sti
000019D1  FC                cld
000019D2  FA                cli
000019D3  0808              or [bx+si],cl
000019D5  F8                clc
000019D6  F605F2            test byte [di],0xf2
000019D9  F7040A04          test word [si],0x40a
000019DD  0307              add ax,[bx]
000019DF  FC                cld
000019E0  00FB              add bl,bh
000019E2  FC                cld
000019E3  F9                stc
000019E4  0908              or [bx+si],cx
000019E6  F7F5              div bp
000019E8  05F1F6            add ax,0xf6f1
000019EB  050A05            add ax,0x50a
000019EE  0307              add ax,[bx]
000019F0  FB                sti
000019F1  00FB              add bl,bh
000019F3  FC                cld
000019F4  F9                stc
000019F5  0908              or [bx+si],cx
000019F7  F7F5              div bp
000019F9  05F1F6            add ax,0xf6f1
000019FC  050B05            add ax,0x50b
000019FF  0407              add al,0x7
00001A01  FB                sti
00001A02  00FA              add dl,bh
00001A04  FC                cld
00001A05  F9                stc
00001A06  0A08              or cl,[bx+si]
00001A08  F6F4              div ah
00001A0A  06                push es
00001A0B  F0F5              lock cmc
00001A0D  050B05            add ax,0x50b
00001A10  0408              add al,0x8
00001A12  FB                sti
00001A13  00FA              add dl,bh
00001A15  FC                cld
00001A16  F8                clc
00001A17  0A08              or cl,[bx+si]
00001A19  F6F4              div ah
00001A1B  06                push es
00001A1C  F0F5              lock cmc
00001A1E  050C05            add ax,0x50c
00001A21  0408              add al,0x8
00001A23  FB                sti
00001A24  00FA              add dl,bh
00001A26  FB                sti
00001A27  F8                clc
00001A28  0B08              or cx,[bx+si]
00001A2A  F6F3              div bl
00001A2C  06                push es
00001A2D  EF                out dx,ax
00001A2E  F4                hlt
00001A2F  06                push es
00001A30  0C06              or al,0x6
00001A32  0408              add al,0x8
00001A34  FB                sti
00001A35  00FA              add dl,bh
00001A37  FB                sti
00001A38  F8                clc
00001A39  0B08              or cx,[bx+si]
00001A3B  F5                cmc
00001A3C  F306              rep push es
00001A3E  EE                out dx,al
00001A3F  F4                hlt
00001A40  06                push es
00001A41  0D0604            or ax,0x406
00001A44  09FA              or dx,di
00001A46  00F9              add cl,bh
00001A48  FB                sti
00001A49  F7                db 0xF7
00001A4A  0C08              or al,0x8
00001A4C  F5                cmc
00001A4D  F207              repne pop es
00001A4F  EE                out dx,al
00001A50  F4                hlt
00001A51  06                push es
00001A52  0D0604            or ax,0x406
00001A55  09FA              or dx,di
00001A57  00F9              add cl,bh
00001A59  FB                sti
00001A5A  F7                db 0xF7
00001A5B  0C08              or al,0x8
00001A5D  F4                hlt
00001A5E  F207              repne pop es
00001A60  ED                in ax,dx
00001A61  F306              rep push es
00001A63  0E                push cs
00001A64  06                push es
00001A65  0509FA            add ax,0xfa09
00001A68  00F9              add cl,bh
00001A6A  FB                sti
00001A6B  F7                db 0xF7
00001A6C  0D08F4            or ax,0xf408
00001A6F  F1                int1
00001A70  07                pop es
00001A71  EC                in al,dx
00001A72  F307              rep pop es
00001A74  0E                push cs
00001A75  06                push es
00001A76  050AFA            add ax,0xfa0a
00001A79  00F9              add cl,bh
00001A7B  FB                sti
00001A7C  F7                db 0xF7
00001A7D  0D08F4            or ax,0xf408
00001A80  F1                int1
00001A81  07                pop es
00001A82  EC                in al,dx
00001A83  F207              repne pop es
00001A85  0F07              loadall
00001A87  050AFA            add ax,0xfa0a
00001A8A  00F9              add cl,bh
00001A8C  FA                cli
00001A8D  F6                db 0xF6
00001A8E  0D0000            or ax,0x0
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
00001AA7  0004              add [si],al
00001AA9  0000              add [bx+si],al
00001AAB  0000              add [bx+si],al
00001AAD  0000              add [bx+si],al
00001AAF  FF                db 0xFF
00001AB0  FF                db 0xFF
00001AB1  FF                db 0xFF
00001AB2  EF                out dx,ax
00001AB3  FF                db 0xFF
00001AB4  FF                db 0xFF
00001AB5  FF                db 0xFF
00001AB6  FF                db 0xFF
00001AB7  FF                db 0xFF
00001AB8  FF                db 0xFF
00001AB9  FF                db 0xFF
00001ABA  FF                db 0xFF
00001ABB  FF                db 0xFF
00001ABC  FF                db 0xFF
00001ABD  FF                db 0xFF
00001ABE  FF                db 0xFF
00001ABF  FF                db 0xFF
00001AC0  FF                db 0xFF
00001AC1  FF                db 0xFF
00001AC2  FF                db 0xFF
00001AC3  FF                db 0xFF
00001AC4  FF                db 0xFF
00001AC5  FF                db 0xFF
00001AC6  FD                std
00001AC7  DF                db 0xDF
00001AC8  FF                db 0xFF
00001AC9  FF                db 0xFF
00001ACA  FF                db 0xFF
00001ACB  FF                db 0xFF
00001ACC  FF                db 0xFF
00001ACD  FF                db 0xFF
00001ACE  FF00              inc word [bx+si]
00001AD0  0000              add [bx+si],al
00001AD2  0000              add [bx+si],al
00001AD4  0000              add [bx+si],al
00001AD6  0000              add [bx+si],al
00001AD8  0000              add [bx+si],al
00001ADA  0000              add [bx+si],al
00001ADC  0000              add [bx+si],al
00001ADE  0000              add [bx+si],al
00001AE0  0000              add [bx+si],al
00001AE2  0000              add [bx+si],al
00001AE4  0000              add [bx+si],al
00001AE6  0000              add [bx+si],al
00001AE8  0404              add al,0x4
00001AEA  0000              add [bx+si],al
00001AEC  0000              add [bx+si],al
00001AEE  00FF              add bh,bh
00001AF0  BFFFFF            mov di,0xffff
00001AF3  FF                db 0xFF
00001AF4  FF                db 0xFF
00001AF5  FF                db 0xFF
00001AF6  FF                db 0xFF
00001AF7  FF                db 0xFF
00001AF8  FF                db 0xFF
00001AF9  FF                db 0xFF
00001AFA  FF                db 0xFF
00001AFB  FF                db 0xFF
00001AFC  FF                db 0xFF
00001AFD  FF                db 0xFF
00001AFE  FF                db 0xFF
00001AFF  FF                db 0xFF
00001B00  FF                db 0xFF
00001B01  FF                db 0xFF
00001B02  FF                db 0xFF
00001B03  FF                db 0xFF
00001B04  FF                db 0xFF
00001B05  FF                db 0xFF
00001B06  FF                db 0xFF
00001B07  FF                db 0xFF
00001B08  FF                db 0xFF
00001B09  FF                db 0xFF
00001B0A  FF                db 0xFF
00001B0B  FF                db 0xFF
00001B0C  FF                db 0xFF
00001B0D  FF                db 0xFF
00001B0E  FF00              inc word [bx+si]
00001B10  0000              add [bx+si],al
00001B12  0000              add [bx+si],al
00001B14  0000              add [bx+si],al
00001B16  0000              add [bx+si],al
00001B18  0000              add [bx+si],al
00001B1A  0000              add [bx+si],al
00001B1C  0000              add [bx+si],al
00001B1E  0000              add [bx+si],al
00001B20  0000              add [bx+si],al
00001B22  0000              add [bx+si],al
00001B24  0000              add [bx+si],al
00001B26  0000              add [bx+si],al
00001B28  0400              add al,0x0
00001B2A  0000              add [bx+si],al
00001B2C  0000              add [bx+si],al
00001B2E  00DF              add bh,bl
00001B30  DF                db 0xDF
00001B31  DF                db 0xDF
00001B32  CF                iret
00001B33  DF                db 0xDF
00001B34  DF                db 0xDF
00001B35  DF                db 0xDF
00001B36  DF                db 0xDF
00001B37  DF                db 0xDF
00001B38  DF                db 0xDF
00001B39  DF                db 0xDF
00001B3A  DF                db 0xDF
00001B3B  DF                db 0xDF
00001B3C  DF                db 0xDF
00001B3D  DF                db 0xDF
00001B3E  DF                db 0xDF
00001B3F  DF                db 0xDF
00001B40  DF                db 0xDF
00001B41  DF                db 0xDF
00001B42  DF                db 0xDF
00001B43  DF                db 0xDF
00001B44  DF                db 0xDF
00001B45  DF                db 0xDF
00001B46  DF                db 0xDF
00001B47  DF                db 0xDF
00001B48  DF                db 0xDF
00001B49  DF                db 0xDF
00001B4A  DF                db 0xDF
00001B4B  DF                db 0xDF
00001B4C  DF                db 0xDF
00001B4D  DF                db 0xDF
00001B4E  DF00              fild word [bx+si]
00001B50  0000              add [bx+si],al
00001B52  0000              add [bx+si],al
00001B54  0000              add [bx+si],al
00001B56  0000              add [bx+si],al
00001B58  0000              add [bx+si],al
00001B5A  0000              add [bx+si],al
00001B5C  0000              add [bx+si],al
00001B5E  0000              add [bx+si],al
00001B60  0000              add [bx+si],al
00001B62  0000              add [bx+si],al
00001B64  0000              add [bx+si],al
00001B66  0000              add [bx+si],al
00001B68  0000              add [bx+si],al
00001B6A  0000              add [bx+si],al
00001B6C  0000              add [bx+si],al
00001B6E  0018              add [bx+si],bl
00001B70  0100              add [bx+si],ax
00001B72  00160126          add [0x2601],dl
00001B76  0012              add [bp+si],dl
00001B78  014C00            add [si+0x0],cx
00001B7B  0B01              or ax,[bx+di]
00001B7D  7100              jno 0x1b7f
00001B7F  0201              add al,[bx+di]
00001B81  96                xchg ax,si
00001B82  00F6              add dh,dh
00001B84  00B800E8          add [bx+si+0xe800],bh
00001B88  00D9              add cl,bl
00001B8A  00D8              add al,bl
00001B8C  00F8              add al,bh
00001B8E  00C5              add ch,al
00001B90  0015              add [di],dl
00001B92  01B1002F          add [bx+di+0x2f00],si
00001B96  019B0045          add [bp+di+0x4500],bx
00001B9A  01830059          add [bp+di+0x5900],ax
00001B9E  016B00            add [bp+di+0x0],bp
00001BA1  6A01              push byte +0x1
00001BA3  51                push cx
00001BA4  007701            add [bx+0x1],dh
00001BA7  360080011B        add [ss:bx+si+0x1b01],al
00001BAC  00860100          add [bp+0x1],al
00001BB0  008801E4          add [bx+si+0xe401],cl
00001BB4  FF8601C9          inc word [bp+0xc901]
00001BB8  FF8001AE          inc word [bx+si+0xae01]
00001BBC  FF7701            push word [bx+0x1]
00001BBF  94                xchg ax,sp
00001BC0  FF6A01            jmp far [bp+si+0x1]
00001BC3  7CFF              jl 0x1bc4
00001BC5  59                pop cx
00001BC6  0164FF            add [si-0x1],sp
00001BC9  45                inc bp
00001BCA  014EFF            add [bp-0x1],cx
00001BCD  2F                das
00001BCE  013A              add [bp+si],di
00001BD0  FF15              call near [di]
00001BD2  0127              add [bx],sp
00001BD4  FF                db 0xFF
00001BD5  F8                clc
00001BD6  0017              add [bx],dl
00001BD8  FF                db 0xFF
00001BD9  D900              fld dword [bx+si]
00001BDB  09FF              or di,di
00001BDD  B800FD            mov ax,0xfd00
00001BE0  FE                db 0xFE
00001BE1  96                xchg ax,si
00001BE2  00F4              add ah,dh
00001BE4  FE                db 0xFE
00001BE5  7100              jno 0x1be7
00001BE7  ED                in ax,dx
00001BE8  FE4C00            dec byte [si+0x0]
00001BEB  E9FE26            jmp 0x42ec
00001BEE  00E8              add al,ch
00001BF0  FE00              inc byte [bx+si]
00001BF2  00E9              add cl,ch
00001BF4  FE                db 0xFE
00001BF5  D9FF              fcos
00001BF7  ED                in ax,dx
00001BF8  FE                db 0xFE
00001BF9  B3FF              mov bl,0xff
00001BFB  F4                hlt
00001BFC  FE8EFFFD          dec byte [bp+0xfdff]
00001C00  FE                db 0xFE
00001C01  69FF09FF          imul di,di,word 0xff09
00001C05  47                inc di
00001C06  FF17              call near [bx]
00001C08  FF26FF27          jmp near [0x27ff]
00001C0C  FF07              inc word [bx]
00001C0E  FF                db 0xFF
00001C0F  3AFF              cmp bh,bh
00001C11  EAFE4EFFD0        jmp 0xd0ff:0x4efe
00001C16  FE                db 0xFE
00001C17  64                db 0x64
00001C18  FF                db 0xFF
00001C19  BAFE7C            mov dx,0x7cfe
00001C1C  FFA6FE94          jmp near [bp+0x94fe]
00001C20  FF95FEAE          call near [di+0xaefe]
00001C24  FF88FEC9          dec word [bx+si+0xc9fe]
00001C28  FF                db 0xFF
00001C29  7FFE              jg 0x1c29
00001C2B  E4FF              in al,0xff
00001C2D  79FE              jns 0x1c2d
00001C2F  FF                db 0xFF
00001C30  FF                db 0xFF
00001C31  78FE              js 0x1c31
00001C33  1B00              sbb ax,[bx+si]
00001C35  79FE              jns 0x1c35
00001C37  36007FFE          add [ss:bx-0x2],bh
00001C3B  51                push cx
00001C3C  0088FE6B          add [bx+si+0x6bfe],cl
00001C40  0095FE83          add [di+0x83fe],dl
00001C44  00A6FE9B          add [bp+0x9bfe],ah
00001C48  00BAFEB1          add [bp+si+0xb1fe],bh
00001C4C  00D0              add al,dl
00001C4E  FEC5              inc ch
00001C50  00EA              add dl,ch
00001C52  FE                db 0xFE
00001C53  D800              fadd dword [bx+si]
00001C55  07                pop es
00001C56  FF                db 0xFF
00001C57  E80026            call 0x425a
00001C5A  FFF6              push si
00001C5C  0047FF            add [bx-0x1],al
00001C5F  0201              add al,[bx+di]
00001C61  69FF0B01          imul di,di,word 0x10b
00001C65  8EFF              mov segr7,di
00001C67  1201              adc al,[bx+di]
00001C69  B3FF              mov bl,0xff
00001C6B  16                push ss
00001C6C  01D9              add cx,bx
00001C6E  FF32              push word [bp+si]
00001C70  0000              add [bx+si],al
00001C72  0031              add [bx+di],dh
00001C74  0004              add [si],al
00001C76  0031              add [bx+di],dh
00001C78  0009              add [bx+di],cl
00001C7A  002F              add [bx],ch
00001C7C  000E002E          add [0x2e00],cl
00001C80  0013              add [bp+di],dl
00001C82  002C              add [si],ch
00001C84  0017              add [bx],dl
00001C86  0029              add [bx+di],ch
00001C88  001B              add [bp+di],bl
00001C8A  0026001F          add [0x1f00],ah
00001C8E  0023              add [bp+di],ah
00001C90  0023              add [bp+di],ah
00001C92  001F              add [bx],bl
00001C94  0026001B          add [0x1b00],ah
00001C98  0029              add [bx+di],ch
00001C9A  0017              add [bx],dl
00001C9C  002C              add [si],ch
00001C9E  0013              add [bp+di],dl
00001CA0  002E000E          add [0xe00],ch
00001CA4  002F              add [bx],ch
00001CA6  0009              add [bx+di],cl
00001CA8  0031              add [bx+di],dh
00001CAA  0004              add [si],al
00001CAC  0031              add [bx+di],dh
00001CAE  0000              add [bx+si],al
00001CB0  0032              add [bp+si],dh
00001CB2  00FB              add bl,bh
00001CB4  FF31              push word [bx+di]
00001CB6  00F6              add dh,dh
00001CB8  FF31              push word [bx+di]
00001CBA  00F1              add cl,dh
00001CBC  FF2F              jmp far [bx]
00001CBE  00EC              add ah,ch
00001CC0  FF2E00E8          jmp far [0xe800]
00001CC4  FF2C              jmp far [si]
00001CC6  00E4              add ah,ah
00001CC8  FF29              jmp far [bx+di]
00001CCA  00E0              add al,ah
00001CCC  FF2600DC          jmp near [0xdc00]
00001CD0  FF23              jmp near [bp+di]
00001CD2  00D9              add cl,bl
00001CD4  FF1F              call far [bx]
00001CD6  00D6              add dh,dl
00001CD8  FF1B              call far [bp+di]
00001CDA  00D3              add bl,dl
00001CDC  FF17              call near [bx]
00001CDE  00D1              add cl,dl
00001CE0  FF13              call near [bp+di]
00001CE2  00D0              add al,dl
00001CE4  FF0E00CE          dec word [0xce00]
00001CE8  FF09              dec word [bx+di]
00001CEA  00CE              add dh,cl
00001CEC  FF04              inc word [si]
00001CEE  00CE              add dh,cl
00001CF0  FF00              inc word [bx+si]
00001CF2  00CE              add dh,cl
00001CF4  FF                db 0xFF
00001CF5  FB                sti
00001CF6  FFCE              dec si
00001CF8  FFF6              push si
00001CFA  FFD0              call ax
00001CFC  FFF1              push cx
00001CFE  FFD1              call cx
00001D00  FF                db 0xFF
00001D01  EC                in al,dx
00001D02  FFD3              call bx
00001D04  FF                db 0xFF
00001D05  E8FFD6            call 0xf407
00001D08  FFE4              jmp sp
00001D0A  FF                db 0xFF
00001D0B  D9FF              fcos
00001D0D  E0FF              loopne 0x1d0e
00001D0F  DCFF              fdiv to st7
00001D11  DCFF              fdiv to st7
00001D13  E0FF              loopne 0x1d14
00001D15  D9FF              fcos
00001D17  E4FF              in al,0xff
00001D19  D6                salc
00001D1A  FF                db 0xFF
00001D1B  E8FFD3            call 0xf11d
00001D1E  FF                db 0xFF
00001D1F  EC                in al,dx
00001D20  FFD1              call cx
00001D22  FFF1              push cx
00001D24  FFD0              call ax
00001D26  FFF6              push si
00001D28  FFCE              dec si
00001D2A  FF                db 0xFF
00001D2B  FB                sti
00001D2C  FFCE              dec si
00001D2E  FF                db 0xFF
00001D2F  FF                db 0xFF
00001D30  FFCE              dec si
00001D32  FF04              inc word [si]
00001D34  00CE              add dh,cl
00001D36  FF09              dec word [bx+di]
00001D38  00CE              add dh,cl
00001D3A  FF0E00D0          dec word [0xd000]
00001D3E  FF13              call near [bp+di]
00001D40  00D1              add cl,dl
00001D42  FF17              call near [bx]
00001D44  00D3              add bl,dl
00001D46  FF1B              call far [bp+di]
00001D48  00D6              add dh,dl
00001D4A  FF1F              call far [bx]
00001D4C  00D9              add cl,bl
00001D4E  FF23              jmp near [bp+di]
00001D50  00DC              add ah,bl
00001D52  FF2600E0          jmp near [0xe000]
00001D56  FF29              jmp far [bx+di]
00001D58  00E4              add ah,ah
00001D5A  FF2C              jmp far [si]
00001D5C  00E8              add al,ch
00001D5E  FF2E00EC          jmp far [0xec00]
00001D62  FF2F              jmp far [bx]
00001D64  00F1              add cl,dh
00001D66  FF31              push word [bx+di]
00001D68  00F6              add dh,dh
00001D6A  FF31              push word [bx+di]
00001D6C  00FB              add bl,bh
00001D6E  FF                db 0xFF
00001D6F  F8                clc
00001D70  FE                db 0xFE
00001D71  1005              adc [di],al
00001D73  000F              add [bx],cl
00001D75  F00000            lock add [bx+si],al
00001D78  00F0              add al,dh
00001D7A  0F0000            sldt [bx+si]
00001D7D  00C0              add al,al
00001D7F  00C0              add al,al
00001D81  0000              add [bx+si],al
00001D83  303C              xor [si],bh
00001D85  3000              xor [bx+si],al
00001D87  3F                aas
00001D88  30C3              xor bl,al
00001D8A  0C00              or al,0x0
00001D8C  30F0              xor al,dh
00001D8E  330C              xor cx,[si]
00001D90  00C0              add al,al
00001D92  300F              xor [bx],cl
00001D94  0300              add ax,[bx+si]
00001D96  C00C00            ror byte [si],0x0
00001D99  0300              add ax,[bx+si]
00001D9B  C3                ret
00001D9C  0003              add [bp+di],al
00001D9E  C3                ret
00001D9F  00CC              add ah,cl
00001DA1  C003C3            rol byte [bp+di],0xc3
00001DA4  0033              add [bp+di],dh
00001DA6  03C0              add ax,ax
00001DA8  0C00              or al,0x0
00001DAA  300C              xor [si],cl
00001DAC  300C              xor [si],cl
00001DAE  000C              add [si],cl
00001DB0  0C30              or al,0x30
00001DB2  3000              xor [bx+si],al
00001DB4  030C              add cx,[si]
00001DB6  C0C000            rol al,0x0
00001DB9  00F3              add bl,dh
00001DBB  CF                iret
00001DBC  0000              add [bx+si],al
00001DBE  000F              add [bx],cl
00001DC0  F00000            lock add [bx+si],al
00001DC3  2020              and [bx+si],ah
00001DC5  2020              and [bx+si],ah
00001DC7  2020              and [bx+si],ah
00001DC9  2020              and [bx+si],ah
00001DCB  2020              and [bx+si],ah
00001DCD  2020              and [bx+si],ah
00001DCF  2020              and [bx+si],ah
00001DD1  2020              and [bx+si],ah
00001DD3  2020              and [bx+si],ah
00001DD5  2020              and [bx+si],ah
00001DD7  2020              and [bx+si],ah
00001DD9  2020              and [bx+si],ah
00001DDB  2020              and [bx+si],ah
00001DDD  2020              and [bx+si],ah
00001DDF  2020              and [bx+si],ah
00001DE1  2020              and [bx+si],ah
00001DE3  2020              and [bx+si],ah
00001DE5  2020              and [bx+si],ah
00001DE7  2020              and [bx+si],ah
00001DE9  2020              and [bx+si],ah
00001DEB  2020              and [bx+si],ah
00001DED  2020              and [bx+si],ah
00001DEF  FC                cld
00001DF0  FF04              inc word [si]
00001DF2  030C              add cx,[si]
00001DF4  3300              xor ax,[bx+si]
00001DF6  C00300            rol byte [bp+di],0x0
00001DF9  300C              xor [si],cl
00001DFB  0003              add [bp+di],al
00001DFD  CF                iret
00001DFE  0020              add [bx+si],ah
00001E00  2020              and [bx+si],ah
00001E02  2020              and [bx+si],ah
00001E04  2020              and [bx+si],ah
00001E06  2020              and [bx+si],ah
00001E08  2020              and [bx+si],ah
00001E0A  2020              and [bx+si],ah
00001E0C  2020              and [bx+si],ah
00001E0E  2020              and [bx+si],ah
00001E10  2020              and [bx+si],ah
00001E12  2020              and [bx+si],ah
00001E14  2020              and [bx+si],ah
00001E16  2020              and [bx+si],ah
00001E18  2020              and [bx+si],ah
00001E1A  2020              and [bx+si],ah
00001E1C  2020              and [bx+si],ah
00001E1E  2020              and [bx+si],ah
00001E20  2020              and [bx+si],ah
00001E22  2020              and [bx+si],ah
00001E24  2020              and [bx+si],ah
00001E26  2020              and [bx+si],ah
00001E28  2020              and [bx+si],ah
00001E2A  2020              and [bx+si],ah
00001E2C  2020              and [bx+si],ah
00001E2E  2020              and [bx+si],ah
00001E30  2020              and [bx+si],ah
00001E32  2020              and [bx+si],ah
00001E34  2020              and [bx+si],ah
00001E36  2020              and [bx+si],ah
00001E38  2020              and [bx+si],ah
00001E3A  2020              and [bx+si],ah
00001E3C  2020              and [bx+si],ah
00001E3E  2020              and [bx+si],ah
00001E40  2020              and [bx+si],ah
00001E42  2020              and [bx+si],ah
00001E44  2020              and [bx+si],ah
00001E46  2020              and [bx+si],ah
00001E48  2020              and [bx+si],ah
00001E4A  2020              and [bx+si],ah
00001E4C  2020              and [bx+si],ah
00001E4E  2020              and [bx+si],ah
00001E50  2020              and [bx+si],ah
00001E52  2020              and [bx+si],ah
00001E54  2020              and [bx+si],ah
00001E56  2020              and [bx+si],ah
00001E58  2020              and [bx+si],ah
00001E5A  2020              and [bx+si],ah
00001E5C  2020              and [bx+si],ah
00001E5E  2020              and [bx+si],ah
00001E60  2020              and [bx+si],ah
00001E62  2020              and [bx+si],ah
00001E64  2020              and [bx+si],ah
00001E66  2020              and [bx+si],ah
00001E68  2020              and [bx+si],ah
00001E6A  2020              and [bx+si],ah
00001E6C  2020              and [bx+si],ah
00001E6E  20F8              and al,bh
00001E70  FE                db 0xFE
00001E71  1005              adc [di],al
00001E73  0003              add [bp+di],al
00001E75  FC                cld
00001E76  0000              add [bx+si],al
00001E78  003C              add [si],bh
00001E7A  03C0              add ax,ax
00001E7C  0000              add [bx+si],al
00001E7E  3000              xor [bx+si],al
00001E80  3000              xor [bx+si],al
00001E82  000C              add [si],cl
00001E84  0F                db 0x0F
00001E85  0C00              or al,0x0
00001E87  0F                db 0x0F
00001E88  CC                int3
00001E89  30C3              xor bl,al
00001E8B  000C              add [si],cl
00001E8D  3C0C              cmp al,0xc
00001E8F  C3                ret
00001E90  0030              add [bx+si],dh
00001E92  0C03              or al,0x3
00001E94  C0C030            rol al,0x30
00001E97  0300              add ax,[bx+si]
00001E99  00C0              add al,al
00001E9B  30C0              xor al,al
00001E9D  00F0              add al,dh
00001E9F  C0                db 0xC0
00001EA0  3330              xor si,[bx+si]
00001EA2  00F0              add al,dh
00001EA4  C00CC0            ror byte [si],0xc0
00001EA7  F00300            lock add ax,[bx+si]
00001EAA  0C03              or al,0x3
00001EAC  0C03              or al,0x3
00001EAE  0003              add [bp+di],al
00001EB0  030C              add cx,[si]
00001EB2  0C00              or al,0x0
00001EB4  00C3              add bl,al
00001EB6  3030              xor [bx+si],dh
00001EB8  0000              add [bx+si],al
00001EBA  3CF3              cmp al,0xf3
00001EBC  C00000            rol byte [bx+si],0x0
00001EBF  03FC              add di,sp
00001EC1  0000              add [bx+si],al
00001EC3  2020              and [bx+si],ah
00001EC5  2020              and [bx+si],ah
00001EC7  2020              and [bx+si],ah
00001EC9  2020              and [bx+si],ah
00001ECB  2020              and [bx+si],ah
00001ECD  2020              and [bx+si],ah
00001ECF  2020              and [bx+si],ah
00001ED1  2020              and [bx+si],ah
00001ED3  2020              and [bx+si],ah
00001ED5  2020              and [bx+si],ah
00001ED7  2020              and [bx+si],ah
00001ED9  2020              and [bx+si],ah
00001EDB  2020              and [bx+si],ah
00001EDD  2020              and [bx+si],ah
00001EDF  2020              and [bx+si],ah
00001EE1  2020              and [bx+si],ah
00001EE3  2020              and [bx+si],ah
00001EE5  2020              and [bx+si],ah
00001EE7  2020              and [bx+si],ah
00001EE9  2020              and [bx+si],ah
00001EEB  2020              and [bx+si],ah
00001EED  2020              and [bx+si],ah
00001EEF  FC                cld
00001EF0  FF04              inc word [si]
00001EF2  0303              add ax,[bp+di]
00001EF4  0CC0              or al,0xc0
00001EF6  3000              xor [bx+si],al
00001EF8  C00C03            ror byte [si],0x3
00001EFB  0000              add [bx+si],al
00001EFD  F3C02020          rep shl byte [bx+si],0x20
00001F01  2020              and [bx+si],ah
00001F03  2020              and [bx+si],ah
00001F05  2020              and [bx+si],ah
00001F07  2020              and [bx+si],ah
00001F09  2020              and [bx+si],ah
00001F0B  2020              and [bx+si],ah
00001F0D  2020              and [bx+si],ah
00001F0F  2020              and [bx+si],ah
00001F11  2020              and [bx+si],ah
00001F13  2020              and [bx+si],ah
00001F15  2020              and [bx+si],ah
00001F17  2020              and [bx+si],ah
00001F19  2020              and [bx+si],ah
00001F1B  2020              and [bx+si],ah
00001F1D  2020              and [bx+si],ah
00001F1F  2020              and [bx+si],ah
00001F21  2020              and [bx+si],ah
00001F23  2020              and [bx+si],ah
00001F25  2020              and [bx+si],ah
00001F27  2020              and [bx+si],ah
00001F29  2020              and [bx+si],ah
00001F2B  2020              and [bx+si],ah
00001F2D  2020              and [bx+si],ah
00001F2F  2020              and [bx+si],ah
00001F31  2020              and [bx+si],ah
00001F33  2020              and [bx+si],ah
00001F35  2020              and [bx+si],ah
00001F37  2020              and [bx+si],ah
00001F39  2020              and [bx+si],ah
00001F3B  2020              and [bx+si],ah
00001F3D  2020              and [bx+si],ah
00001F3F  2020              and [bx+si],ah
00001F41  2020              and [bx+si],ah
00001F43  2020              and [bx+si],ah
00001F45  2020              and [bx+si],ah
00001F47  2020              and [bx+si],ah
00001F49  2020              and [bx+si],ah
00001F4B  2020              and [bx+si],ah
00001F4D  2020              and [bx+si],ah
00001F4F  2020              and [bx+si],ah
00001F51  2020              and [bx+si],ah
00001F53  2020              and [bx+si],ah
00001F55  2020              and [bx+si],ah
00001F57  2020              and [bx+si],ah
00001F59  2020              and [bx+si],ah
00001F5B  2020              and [bx+si],ah
00001F5D  2020              and [bx+si],ah
00001F5F  2020              and [bx+si],ah
00001F61  2020              and [bx+si],ah
00001F63  2020              and [bx+si],ah
00001F65  2020              and [bx+si],ah
00001F67  2020              and [bx+si],ah
00001F69  2020              and [bx+si],ah
00001F6B  2020              and [bx+si],ah
00001F6D  2020              and [bx+si],ah
00001F6F  F8                clc
00001F70  FE                db 0xFE
00001F71  1005              adc [di],al
00001F73  0000              add [bx+si],al
00001F75  FF00              inc word [bx+si]
00001F77  0000              add [bx+si],al
00001F79  0F00F0            jmpe ax
00001F7C  0000              add [bx+si],al
00001F7E  0C00              or al,0x0
00001F80  0C00              or al,0x0
00001F82  0003              add [bp+di],al
00001F84  03C3              add ax,bx
00001F86  0003              add [bp+di],al
00001F88  F30C30            rep or al,0x30
00001F8B  C0030F            rol byte [bp+di],0xf
00001F8E  0330              add si,[bx+si]
00001F90  C00C03            ror byte [si],0x3
00001F93  00F0              add al,dh
00001F95  300C              xor [si],cl
00001F97  00C0              add al,al
00001F99  0030              add [bx+si],dh
00001F9B  0C30              or al,0x30
00001F9D  003C              add [si],bh
00001F9F  300C              xor [si],cl
00001FA1  CC                int3
00001FA2  003C              add [si],bh
00001FA4  3003              xor [bp+di],al
00001FA6  303C              xor [si],bh
00001FA8  00C0              add al,al
00001FAA  0300              add ax,[bx+si]
00001FAC  C3                ret
00001FAD  00C0              add al,al
00001FAF  00C0              add al,al
00001FB1  C3                ret
00001FB2  0300              add ax,[bx+si]
00001FB4  0030              add [bx+si],dh
00001FB6  CC                int3
00001FB7  0C00              or al,0x0
00001FB9  000F              add [bx],cl
00001FBB  3CF0              cmp al,0xf0
00001FBD  0000              add [bx+si],al
00001FBF  00FF              add bh,bh
00001FC1  0000              add [bx+si],al
00001FC3  2020              and [bx+si],ah
00001FC5  2020              and [bx+si],ah
00001FC7  2020              and [bx+si],ah
00001FC9  2020              and [bx+si],ah
00001FCB  2020              and [bx+si],ah
00001FCD  2020              and [bx+si],ah
00001FCF  2020              and [bx+si],ah
00001FD1  2020              and [bx+si],ah
00001FD3  2020              and [bx+si],ah
00001FD5  2020              and [bx+si],ah
00001FD7  2020              and [bx+si],ah
00001FD9  2020              and [bx+si],ah
00001FDB  2020              and [bx+si],ah
00001FDD  2020              and [bx+si],ah
00001FDF  2020              and [bx+si],ah
00001FE1  2020              and [bx+si],ah
00001FE3  2020              and [bx+si],ah
00001FE5  2020              and [bx+si],ah
00001FE7  2020              and [bx+si],ah
00001FE9  2020              and [bx+si],ah
00001FEB  2020              and [bx+si],ah
00001FED  2020              and [bx+si],ah
00001FEF  FC                cld
00001FF0  FF04              inc word [si]
00001FF2  0300              add ax,[bx+si]
00001FF4  C3                ret
00001FF5  300C              xor [si],cl
00001FF7  0030              add [bx+si],dh
00001FF9  0300              add ax,[bx+si]
00001FFB  C0003C            rol byte [bx+si],0x3c
00001FFE  F02020            lock and [bx+si],ah
00002001  2020              and [bx+si],ah
00002003  2020              and [bx+si],ah
00002005  2020              and [bx+si],ah
00002007  2020              and [bx+si],ah
00002009  2020              and [bx+si],ah
0000200B  2020              and [bx+si],ah
0000200D  2020              and [bx+si],ah
0000200F  2020              and [bx+si],ah
00002011  2020              and [bx+si],ah
00002013  2020              and [bx+si],ah
00002015  2020              and [bx+si],ah
00002017  2020              and [bx+si],ah
00002019  2020              and [bx+si],ah
0000201B  2020              and [bx+si],ah
0000201D  2020              and [bx+si],ah
0000201F  2020              and [bx+si],ah
00002021  2020              and [bx+si],ah
00002023  2020              and [bx+si],ah
00002025  2020              and [bx+si],ah
00002027  2020              and [bx+si],ah
00002029  2020              and [bx+si],ah
0000202B  2020              and [bx+si],ah
0000202D  2020              and [bx+si],ah
0000202F  2020              and [bx+si],ah
00002031  2020              and [bx+si],ah
00002033  2020              and [bx+si],ah
00002035  2020              and [bx+si],ah
00002037  2020              and [bx+si],ah
00002039  2020              and [bx+si],ah
0000203B  2020              and [bx+si],ah
0000203D  2020              and [bx+si],ah
0000203F  2020              and [bx+si],ah
00002041  2020              and [bx+si],ah
00002043  2020              and [bx+si],ah
00002045  2020              and [bx+si],ah
00002047  2020              and [bx+si],ah
00002049  2020              and [bx+si],ah
0000204B  2020              and [bx+si],ah
0000204D  2020              and [bx+si],ah
0000204F  2020              and [bx+si],ah
00002051  2020              and [bx+si],ah
00002053  2020              and [bx+si],ah
00002055  2020              and [bx+si],ah
00002057  2020              and [bx+si],ah
00002059  2020              and [bx+si],ah
0000205B  2020              and [bx+si],ah
0000205D  2020              and [bx+si],ah
0000205F  2020              and [bx+si],ah
00002061  2020              and [bx+si],ah
00002063  2020              and [bx+si],ah
00002065  2020              and [bx+si],ah
00002067  2020              and [bx+si],ah
00002069  2020              and [bx+si],ah
0000206B  2020              and [bx+si],ah
0000206D  2020              and [bx+si],ah
0000206F  F8                clc
00002070  FE                db 0xFE
00002071  1005              adc [di],al
00002073  0000              add [bx+si],al
00002075  3F                aas
00002076  C00000            rol byte [bx+si],0x0
00002079  03C0              add ax,ax
0000207B  3C00              cmp al,0x0
0000207D  0003              add [bp+di],al
0000207F  0003              add [bp+di],al
00002081  0000              add [bx+si],al
00002083  00C0              add al,al
00002085  F0C000FC          lock rol byte [bx+si],0xfc
00002089  C3                ret
0000208A  0C30              or al,0x30
0000208C  00C3              add bl,al
0000208E  C0CC30            ror ah,0x30
00002091  0300              add ax,[bx+si]
00002093  C03C0C            sar byte [si],0xc
00002096  0300              add ax,[bx+si]
00002098  3000              xor [bx+si],al
0000209A  0C03              or al,0x3
0000209C  0C00              or al,0x0
0000209E  0F                db 0x0F
0000209F  0C03              or al,0x3
000020A1  3300              xor ax,[bx+si]
000020A3  0F                db 0x0F
000020A4  0C00              or al,0x0
000020A6  CC                int3
000020A7  0F0030            jmpe word [bx+si]
000020AA  00C0              add al,al
000020AC  30C0              xor al,al
000020AE  3000              xor [bx+si],al
000020B0  3030              xor [bx+si],dh
000020B2  C0C000            rol al,0x0
000020B5  0C33              or al,0x33
000020B7  0300              add ax,[bx+si]
000020B9  0003              add [bp+di],al
000020BB  CF                iret
000020BC  3C00              cmp al,0x0
000020BE  0000              add [bx+si],al
000020C0  3F                aas
000020C1  C00020            rol byte [bx+si],0x20
000020C4  2020              and [bx+si],ah
000020C6  2020              and [bx+si],ah
000020C8  2020              and [bx+si],ah
000020CA  2020              and [bx+si],ah
000020CC  2020              and [bx+si],ah
000020CE  2020              and [bx+si],ah
000020D0  2020              and [bx+si],ah
000020D2  2020              and [bx+si],ah
000020D4  2020              and [bx+si],ah
000020D6  2020              and [bx+si],ah
000020D8  2020              and [bx+si],ah
000020DA  2020              and [bx+si],ah
000020DC  2020              and [bx+si],ah
000020DE  2020              and [bx+si],ah
000020E0  2020              and [bx+si],ah
000020E2  2020              and [bx+si],ah
000020E4  2020              and [bx+si],ah
000020E6  2020              and [bx+si],ah
000020E8  2020              and [bx+si],ah
000020EA  2020              and [bx+si],ah
000020EC  2020              and [bx+si],ah
000020EE  20FC              and ah,bh
000020F0  FF04              inc word [si]
000020F2  0300              add ax,[bx+si]
000020F4  30CC              xor ah,cl
000020F6  0300              add ax,[bx+si]
000020F8  0C00              or al,0x0
000020FA  C0                db 0xC0
000020FB  3000              xor [bx+si],al
000020FD  0F                db 0x0F
000020FE  3C20              cmp al,0x20
00002100  2020              and [bx+si],ah
00002102  2020              and [bx+si],ah
00002104  2020              and [bx+si],ah
00002106  2020              and [bx+si],ah
00002108  2020              and [bx+si],ah
0000210A  2020              and [bx+si],ah
0000210C  2020              and [bx+si],ah
0000210E  2020              and [bx+si],ah
00002110  2020              and [bx+si],ah
00002112  2020              and [bx+si],ah
00002114  2020              and [bx+si],ah
00002116  2020              and [bx+si],ah
00002118  2020              and [bx+si],ah
0000211A  2020              and [bx+si],ah
0000211C  2020              and [bx+si],ah
0000211E  2020              and [bx+si],ah
00002120  2020              and [bx+si],ah
00002122  2020              and [bx+si],ah
00002124  2020              and [bx+si],ah
00002126  2020              and [bx+si],ah
00002128  2020              and [bx+si],ah
0000212A  2020              and [bx+si],ah
0000212C  2020              and [bx+si],ah
0000212E  2020              and [bx+si],ah
00002130  2020              and [bx+si],ah
00002132  2020              and [bx+si],ah
00002134  2020              and [bx+si],ah
00002136  2020              and [bx+si],ah
00002138  2020              and [bx+si],ah
0000213A  2020              and [bx+si],ah
0000213C  2020              and [bx+si],ah
0000213E  2020              and [bx+si],ah
00002140  2020              and [bx+si],ah
00002142  2020              and [bx+si],ah
00002144  2020              and [bx+si],ah
00002146  2020              and [bx+si],ah
00002148  2020              and [bx+si],ah
0000214A  2020              and [bx+si],ah
0000214C  2020              and [bx+si],ah
0000214E  2020              and [bx+si],ah
00002150  2020              and [bx+si],ah
00002152  2020              and [bx+si],ah
00002154  2020              and [bx+si],ah
00002156  2020              and [bx+si],ah
00002158  2020              and [bx+si],ah
0000215A  2020              and [bx+si],ah
0000215C  2020              and [bx+si],ah
0000215E  2020              and [bx+si],ah
00002160  2020              and [bx+si],ah
00002162  2020              and [bx+si],ah
00002164  2020              and [bx+si],ah
00002166  2020              and [bx+si],ah
00002168  2020              and [bx+si],ah
0000216A  2020              and [bx+si],ah
0000216C  2020              and [bx+si],ah
0000216E  20FA              and dl,bh
00002170  FE0C              dec byte [si]
00002172  0400              add al,0x0
00002174  FC                cld
00002175  0000              add [bx+si],al
00002177  0303              add ax,[bp+di]
00002179  0000              add [bx+si],al
0000217B  0C00              or al,0x0
0000217D  C00003            rol byte [bx+si],0x3
00002180  003C              add [si],bh
00002182  000C              add [si],cl
00002184  0003              add [bp+di],al
00002186  0030              add [bx+si],dh
00002188  0003              add [bp+di],al
0000218A  00C0              add al,al
0000218C  0003              add [bp+di],al
0000218E  00C0              add al,al
00002190  000C              add [si],cl
00002192  0030              add [bx+si],dh
00002194  003C              add [si],bh
00002196  000C              add [si],cl
00002198  00C0              add al,al
0000219A  0003              add [bp+di],al
0000219C  C0C000            rol al,0x0
0000219F  003F              add [bx],bh
000021A1  0000              add [bx+si],al
000021A3  2020              and [bx+si],ah
000021A5  2020              and [bx+si],ah
000021A7  2020              and [bx+si],ah
000021A9  2020              and [bx+si],ah
000021AB  2020              and [bx+si],ah
000021AD  2020              and [bx+si],ah
000021AF  2020              and [bx+si],ah
000021B1  2020              and [bx+si],ah
000021B3  2020              and [bx+si],ah
000021B5  2020              and [bx+si],ah
000021B7  2020              and [bx+si],ah
000021B9  2020              and [bx+si],ah
000021BB  2020              and [bx+si],ah
000021BD  2020              and [bx+si],ah
000021BF  2020              and [bx+si],ah
000021C1  2020              and [bx+si],ah
000021C3  2020              and [bx+si],ah
000021C5  2020              and [bx+si],ah
000021C7  2020              and [bx+si],ah
000021C9  2020              and [bx+si],ah
000021CB  2020              and [bx+si],ah
000021CD  2020              and [bx+si],ah
000021CF  2020              and [bx+si],ah
000021D1  2020              and [bx+si],ah
000021D3  2020              and [bx+si],ah
000021D5  2020              and [bx+si],ah
000021D7  2020              and [bx+si],ah
000021D9  2020              and [bx+si],ah
000021DB  2020              and [bx+si],ah
000021DD  2020              and [bx+si],ah
000021DF  2020              and [bx+si],ah
000021E1  2020              and [bx+si],ah
000021E3  2020              and [bx+si],ah
000021E5  2020              and [bx+si],ah
000021E7  2020              and [bx+si],ah
000021E9  2020              and [bx+si],ah
000021EB  2020              and [bx+si],ah
000021ED  2020              and [bx+si],ah
000021EF  2020              and [bx+si],ah
000021F1  2020              and [bx+si],ah
000021F3  2020              and [bx+si],ah
000021F5  2020              and [bx+si],ah
000021F7  2020              and [bx+si],ah
000021F9  2020              and [bx+si],ah
000021FB  2020              and [bx+si],ah
000021FD  2020              and [bx+si],ah
000021FF  2020              and [bx+si],ah
00002201  2020              and [bx+si],ah
00002203  2020              and [bx+si],ah
00002205  2020              and [bx+si],ah
00002207  2020              and [bx+si],ah
00002209  2020              and [bx+si],ah
0000220B  2020              and [bx+si],ah
0000220D  2020              and [bx+si],ah
0000220F  2020              and [bx+si],ah
00002211  2020              and [bx+si],ah
00002213  2020              and [bx+si],ah
00002215  2020              and [bx+si],ah
00002217  2020              and [bx+si],ah
00002219  2020              and [bx+si],ah
0000221B  2020              and [bx+si],ah
0000221D  2020              and [bx+si],ah
0000221F  2020              and [bx+si],ah
00002221  2020              and [bx+si],ah
00002223  2020              and [bx+si],ah
00002225  2020              and [bx+si],ah
00002227  2020              and [bx+si],ah
00002229  2020              and [bx+si],ah
0000222B  2020              and [bx+si],ah
0000222D  2020              and [bx+si],ah
0000222F  2020              and [bx+si],ah
00002231  2020              and [bx+si],ah
00002233  2020              and [bx+si],ah
00002235  2020              and [bx+si],ah
00002237  2020              and [bx+si],ah
00002239  2020              and [bx+si],ah
0000223B  2020              and [bx+si],ah
0000223D  2020              and [bx+si],ah
0000223F  2020              and [bx+si],ah
00002241  2020              and [bx+si],ah
00002243  2020              and [bx+si],ah
00002245  2020              and [bx+si],ah
00002247  2020              and [bx+si],ah
00002249  2020              and [bx+si],ah
0000224B  2020              and [bx+si],ah
0000224D  2020              and [bx+si],ah
0000224F  2020              and [bx+si],ah
00002251  2020              and [bx+si],ah
00002253  2020              and [bx+si],ah
00002255  2020              and [bx+si],ah
00002257  2020              and [bx+si],ah
00002259  2020              and [bx+si],ah
0000225B  2020              and [bx+si],ah
0000225D  2020              and [bx+si],ah
0000225F  2020              and [bx+si],ah
00002261  2020              and [bx+si],ah
00002263  2020              and [bx+si],ah
00002265  2020              and [bx+si],ah
00002267  2020              and [bx+si],ah
00002269  2020              and [bx+si],ah
0000226B  2020              and [bx+si],ah
0000226D  2020              and [bx+si],ah
0000226F  FA                cli
00002270  FE0C              dec byte [si]
00002272  0400              add al,0x0
00002274  3F                aas
00002275  0000              add [bx+si],al
00002277  00C0              add al,al
00002279  C00003            rol byte [bx+si],0x3
0000227C  0030              add [bx+si],dh
0000227E  0000              add [bx+si],al
00002280  C00F00            ror byte [bx],0x0
00002283  0300              add ax,[bx+si]
00002285  00C0              add al,al
00002287  0C00              or al,0x0
00002289  00C0              add al,al
0000228B  3000              xor [bx+si],al
0000228D  00C0              add al,al
0000228F  3000              xor [bx+si],al
00002291  0300              add ax,[bx+si]
00002293  0C00              or al,0x0
00002295  0F0003            sldt [bp+di]
00002298  0030              add [bx+si],dh
0000229A  0000              add [bx+si],al
0000229C  F03000            lock xor [bx+si],al
0000229F  000F              add [bx],cl
000022A1  C00020            rol byte [bx+si],0x20
000022A4  2020              and [bx+si],ah
000022A6  2020              and [bx+si],ah
000022A8  2020              and [bx+si],ah
000022AA  2020              and [bx+si],ah
000022AC  2020              and [bx+si],ah
000022AE  2020              and [bx+si],ah
000022B0  2020              and [bx+si],ah
000022B2  2020              and [bx+si],ah
000022B4  2020              and [bx+si],ah
000022B6  2020              and [bx+si],ah
000022B8  2020              and [bx+si],ah
000022BA  2020              and [bx+si],ah
000022BC  2020              and [bx+si],ah
000022BE  2020              and [bx+si],ah
000022C0  2020              and [bx+si],ah
000022C2  2020              and [bx+si],ah
000022C4  2020              and [bx+si],ah
000022C6  2020              and [bx+si],ah
000022C8  2020              and [bx+si],ah
000022CA  2020              and [bx+si],ah
000022CC  2020              and [bx+si],ah
000022CE  2020              and [bx+si],ah
000022D0  2020              and [bx+si],ah
000022D2  2020              and [bx+si],ah
000022D4  2020              and [bx+si],ah
000022D6  2020              and [bx+si],ah
000022D8  2020              and [bx+si],ah
000022DA  2020              and [bx+si],ah
000022DC  2020              and [bx+si],ah
000022DE  2020              and [bx+si],ah
000022E0  2020              and [bx+si],ah
000022E2  2020              and [bx+si],ah
000022E4  2020              and [bx+si],ah
000022E6  2020              and [bx+si],ah
000022E8  2020              and [bx+si],ah
000022EA  2020              and [bx+si],ah
000022EC  2020              and [bx+si],ah
000022EE  2020              and [bx+si],ah
000022F0  2020              and [bx+si],ah
000022F2  2020              and [bx+si],ah
000022F4  2020              and [bx+si],ah
000022F6  2020              and [bx+si],ah
000022F8  2020              and [bx+si],ah
000022FA  2020              and [bx+si],ah
000022FC  2020              and [bx+si],ah
000022FE  2020              and [bx+si],ah
00002300  2020              and [bx+si],ah
00002302  2020              and [bx+si],ah
00002304  2020              and [bx+si],ah
00002306  2020              and [bx+si],ah
00002308  2020              and [bx+si],ah
0000230A  2020              and [bx+si],ah
0000230C  2020              and [bx+si],ah
0000230E  2020              and [bx+si],ah
00002310  2020              and [bx+si],ah
00002312  2020              and [bx+si],ah
00002314  2020              and [bx+si],ah
00002316  2020              and [bx+si],ah
00002318  2020              and [bx+si],ah
0000231A  2020              and [bx+si],ah
0000231C  2020              and [bx+si],ah
0000231E  2020              and [bx+si],ah
00002320  2020              and [bx+si],ah
00002322  2020              and [bx+si],ah
00002324  2020              and [bx+si],ah
00002326  2020              and [bx+si],ah
00002328  2020              and [bx+si],ah
0000232A  2020              and [bx+si],ah
0000232C  2020              and [bx+si],ah
0000232E  2020              and [bx+si],ah
00002330  2020              and [bx+si],ah
00002332  2020              and [bx+si],ah
00002334  2020              and [bx+si],ah
00002336  2020              and [bx+si],ah
00002338  2020              and [bx+si],ah
0000233A  2020              and [bx+si],ah
0000233C  2020              and [bx+si],ah
0000233E  2020              and [bx+si],ah
00002340  2020              and [bx+si],ah
00002342  2020              and [bx+si],ah
00002344  2020              and [bx+si],ah
00002346  2020              and [bx+si],ah
00002348  2020              and [bx+si],ah
0000234A  2020              and [bx+si],ah
0000234C  2020              and [bx+si],ah
0000234E  2020              and [bx+si],ah
00002350  2020              and [bx+si],ah
00002352  2020              and [bx+si],ah
00002354  2020              and [bx+si],ah
00002356  2020              and [bx+si],ah
00002358  2020              and [bx+si],ah
0000235A  2020              and [bx+si],ah
0000235C  2020              and [bx+si],ah
0000235E  2020              and [bx+si],ah
00002360  2020              and [bx+si],ah
00002362  2020              and [bx+si],ah
00002364  2020              and [bx+si],ah
00002366  2020              and [bx+si],ah
00002368  2020              and [bx+si],ah
0000236A  2020              and [bx+si],ah
0000236C  2020              and [bx+si],ah
0000236E  20FA              and dl,bh
00002370  FE0C              dec byte [si]
00002372  0400              add al,0x0
00002374  0FC000            xadd [bx+si],al
00002377  0030              add [bx+si],dh
00002379  3000              xor [bx+si],al
0000237B  00C0              add al,al
0000237D  0C00              or al,0x0
0000237F  0030              add [bx+si],dh
00002381  03C0              add ax,ax
00002383  00C0              add al,al
00002385  0030              add [bx+si],dh
00002387  0300              add ax,[bx+si]
00002389  0030              add [bx+si],dh
0000238B  0C00              or al,0x0
0000238D  0030              add [bx+si],dh
0000238F  0C00              or al,0x0
00002391  00C0              add al,al
00002393  0300              add ax,[bx+si]
00002395  03C0              add ax,ax
00002397  00C0              add al,al
00002399  0C00              or al,0x0
0000239B  003C              add [si],bh
0000239D  0C00              or al,0x0
0000239F  0003              add [bp+di],al
000023A1  F00020            lock add [bx+si],ah
000023A4  2020              and [bx+si],ah
000023A6  2020              and [bx+si],ah
000023A8  2020              and [bx+si],ah
000023AA  2020              and [bx+si],ah
000023AC  2020              and [bx+si],ah
000023AE  2020              and [bx+si],ah
000023B0  2020              and [bx+si],ah
000023B2  2020              and [bx+si],ah
000023B4  2020              and [bx+si],ah
000023B6  2020              and [bx+si],ah
000023B8  2020              and [bx+si],ah
000023BA  2020              and [bx+si],ah
000023BC  2020              and [bx+si],ah
000023BE  2020              and [bx+si],ah
000023C0  2020              and [bx+si],ah
000023C2  2020              and [bx+si],ah
000023C4  2020              and [bx+si],ah
000023C6  2020              and [bx+si],ah
000023C8  2020              and [bx+si],ah
000023CA  2020              and [bx+si],ah
000023CC  2020              and [bx+si],ah
000023CE  2020              and [bx+si],ah
000023D0  2020              and [bx+si],ah
000023D2  2020              and [bx+si],ah
000023D4  2020              and [bx+si],ah
000023D6  2020              and [bx+si],ah
000023D8  2020              and [bx+si],ah
000023DA  2020              and [bx+si],ah
000023DC  2020              and [bx+si],ah
000023DE  2020              and [bx+si],ah
000023E0  2020              and [bx+si],ah
000023E2  2020              and [bx+si],ah
000023E4  2020              and [bx+si],ah
000023E6  2020              and [bx+si],ah
000023E8  2020              and [bx+si],ah
000023EA  2020              and [bx+si],ah
000023EC  2020              and [bx+si],ah
000023EE  2020              and [bx+si],ah
000023F0  2020              and [bx+si],ah
000023F2  2020              and [bx+si],ah
000023F4  2020              and [bx+si],ah
000023F6  2020              and [bx+si],ah
000023F8  2020              and [bx+si],ah
000023FA  2020              and [bx+si],ah
000023FC  2020              and [bx+si],ah
000023FE  2020              and [bx+si],ah
00002400  2020              and [bx+si],ah
00002402  2020              and [bx+si],ah
00002404  2020              and [bx+si],ah
00002406  2020              and [bx+si],ah
00002408  2020              and [bx+si],ah
0000240A  2020              and [bx+si],ah
0000240C  2020              and [bx+si],ah
0000240E  2020              and [bx+si],ah
00002410  2020              and [bx+si],ah
00002412  2020              and [bx+si],ah
00002414  2020              and [bx+si],ah
00002416  2020              and [bx+si],ah
00002418  2020              and [bx+si],ah
0000241A  2020              and [bx+si],ah
0000241C  2020              and [bx+si],ah
0000241E  2020              and [bx+si],ah
00002420  2020              and [bx+si],ah
00002422  2020              and [bx+si],ah
00002424  2020              and [bx+si],ah
00002426  2020              and [bx+si],ah
00002428  2020              and [bx+si],ah
0000242A  2020              and [bx+si],ah
0000242C  2020              and [bx+si],ah
0000242E  2020              and [bx+si],ah
00002430  2020              and [bx+si],ah
00002432  2020              and [bx+si],ah
00002434  2020              and [bx+si],ah
00002436  2020              and [bx+si],ah
00002438  2020              and [bx+si],ah
0000243A  2020              and [bx+si],ah
0000243C  2020              and [bx+si],ah
0000243E  2020              and [bx+si],ah
00002440  2020              and [bx+si],ah
00002442  2020              and [bx+si],ah
00002444  2020              and [bx+si],ah
00002446  2020              and [bx+si],ah
00002448  2020              and [bx+si],ah
0000244A  2020              and [bx+si],ah
0000244C  2020              and [bx+si],ah
0000244E  2020              and [bx+si],ah
00002450  2020              and [bx+si],ah
00002452  2020              and [bx+si],ah
00002454  2020              and [bx+si],ah
00002456  2020              and [bx+si],ah
00002458  2020              and [bx+si],ah
0000245A  2020              and [bx+si],ah
0000245C  2020              and [bx+si],ah
0000245E  2020              and [bx+si],ah
00002460  2020              and [bx+si],ah
00002462  2020              and [bx+si],ah
00002464  2020              and [bx+si],ah
00002466  2020              and [bx+si],ah
00002468  2020              and [bx+si],ah
0000246A  2020              and [bx+si],ah
0000246C  2020              and [bx+si],ah
0000246E  20FA              and dl,bh
00002470  FE0C              dec byte [si]
00002472  0400              add al,0x0
00002474  03F0              add si,ax
00002476  0000              add [bx+si],al
00002478  0C0C              or al,0xc
0000247A  0000              add [bx+si],al
0000247C  3003              xor [bp+di],al
0000247E  0000              add [bx+si],al
00002480  0C00              or al,0x0
00002482  F00030            lock add [bx+si],dh
00002485  000C              add [si],cl
00002487  00C0              add al,al
00002489  000C              add [si],cl
0000248B  0300              add ax,[bx+si]
0000248D  000C              add [si],cl
0000248F  0300              add ax,[bx+si]
00002491  0030              add [bx+si],dh
00002493  00C0              add al,al
00002495  00F0              add al,dh
00002497  0030              add [bx+si],dh
00002499  0300              add ax,[bx+si]
0000249B  000F              add [bx],cl
0000249D  0300              add ax,[bx+si]
0000249F  0000              add [bx+si],al
000024A1  FC                cld
000024A2  0020              add [bx+si],ah
000024A4  2020              and [bx+si],ah
000024A6  2020              and [bx+si],ah
000024A8  2020              and [bx+si],ah
000024AA  2020              and [bx+si],ah
000024AC  2020              and [bx+si],ah
000024AE  2020              and [bx+si],ah
000024B0  2020              and [bx+si],ah
000024B2  2020              and [bx+si],ah
000024B4  2020              and [bx+si],ah
000024B6  2020              and [bx+si],ah
000024B8  2020              and [bx+si],ah
000024BA  2020              and [bx+si],ah
000024BC  2020              and [bx+si],ah
000024BE  2020              and [bx+si],ah
000024C0  2020              and [bx+si],ah
000024C2  2020              and [bx+si],ah
000024C4  2020              and [bx+si],ah
000024C6  2020              and [bx+si],ah
000024C8  2020              and [bx+si],ah
000024CA  2020              and [bx+si],ah
000024CC  2020              and [bx+si],ah
000024CE  2020              and [bx+si],ah
000024D0  2020              and [bx+si],ah
000024D2  2020              and [bx+si],ah
000024D4  2020              and [bx+si],ah
000024D6  2020              and [bx+si],ah
000024D8  2020              and [bx+si],ah
000024DA  2020              and [bx+si],ah
000024DC  2020              and [bx+si],ah
000024DE  2020              and [bx+si],ah
000024E0  2020              and [bx+si],ah
000024E2  2020              and [bx+si],ah
000024E4  2020              and [bx+si],ah
000024E6  2020              and [bx+si],ah
000024E8  2020              and [bx+si],ah
000024EA  2020              and [bx+si],ah
000024EC  2020              and [bx+si],ah
000024EE  2020              and [bx+si],ah
000024F0  2020              and [bx+si],ah
000024F2  2020              and [bx+si],ah
000024F4  2020              and [bx+si],ah
000024F6  2020              and [bx+si],ah
000024F8  2020              and [bx+si],ah
000024FA  2020              and [bx+si],ah
000024FC  2020              and [bx+si],ah
000024FE  2020              and [bx+si],ah
00002500  2020              and [bx+si],ah
00002502  2020              and [bx+si],ah
00002504  2020              and [bx+si],ah
00002506  2020              and [bx+si],ah
00002508  2020              and [bx+si],ah
0000250A  2020              and [bx+si],ah
0000250C  2020              and [bx+si],ah
0000250E  2020              and [bx+si],ah
00002510  2020              and [bx+si],ah
00002512  2020              and [bx+si],ah
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
0000256E  20FC              and ah,bh
00002570  FF08              dec word [bx+si]
00002572  0303              add ax,[bp+di]
00002574  C0000C            rol byte [bx+si],0xc
00002577  3000              xor [bx+si],al
00002579  303C              xor [si],bh
0000257B  000C              add [si],cl
0000257D  0300              add ax,[bx+si]
0000257F  F00C00            lock or al,0x0
00002582  300C              xor [si],cl
00002584  000C              add [si],cl
00002586  3000              xor [bx+si],al
00002588  03C0              add ax,ax
0000258A  0020              add [bx+si],ah
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
000025D4  2020              and [bx+si],ah
000025D6  2020              and [bx+si],ah
000025D8  2020              and [bx+si],ah
000025DA  2020              and [bx+si],ah
000025DC  2020              and [bx+si],ah
000025DE  2020              and [bx+si],ah
000025E0  2020              and [bx+si],ah
000025E2  2020              and [bx+si],ah
000025E4  2020              and [bx+si],ah
000025E6  2020              and [bx+si],ah
000025E8  2020              and [bx+si],ah
000025EA  2020              and [bx+si],ah
000025EC  2020              and [bx+si],ah
000025EE  2020              and [bx+si],ah
000025F0  2020              and [bx+si],ah
000025F2  2020              and [bx+si],ah
000025F4  2020              and [bx+si],ah
000025F6  2020              and [bx+si],ah
000025F8  2020              and [bx+si],ah
000025FA  2020              and [bx+si],ah
000025FC  2020              and [bx+si],ah
000025FE  2020              and [bx+si],ah
00002600  2020              and [bx+si],ah
00002602  2020              and [bx+si],ah
00002604  2020              and [bx+si],ah
00002606  2020              and [bx+si],ah
00002608  2020              and [bx+si],ah
0000260A  2020              and [bx+si],ah
0000260C  2020              and [bx+si],ah
0000260E  2020              and [bx+si],ah
00002610  2020              and [bx+si],ah
00002612  2020              and [bx+si],ah
00002614  2020              and [bx+si],ah
00002616  2020              and [bx+si],ah
00002618  2020              and [bx+si],ah
0000261A  2020              and [bx+si],ah
0000261C  2020              and [bx+si],ah
0000261E  2020              and [bx+si],ah
00002620  2020              and [bx+si],ah
00002622  2020              and [bx+si],ah
00002624  2020              and [bx+si],ah
00002626  2020              and [bx+si],ah
00002628  2020              and [bx+si],ah
0000262A  2020              and [bx+si],ah
0000262C  2020              and [bx+si],ah
0000262E  2020              and [bx+si],ah
00002630  2020              and [bx+si],ah
00002632  2020              and [bx+si],ah
00002634  2020              and [bx+si],ah
00002636  2020              and [bx+si],ah
00002638  2020              and [bx+si],ah
0000263A  2020              and [bx+si],ah
0000263C  2020              and [bx+si],ah
0000263E  2020              and [bx+si],ah
00002640  2020              and [bx+si],ah
00002642  2020              and [bx+si],ah
00002644  2020              and [bx+si],ah
00002646  2020              and [bx+si],ah
00002648  2020              and [bx+si],ah
0000264A  2020              and [bx+si],ah
0000264C  2020              and [bx+si],ah
0000264E  2020              and [bx+si],ah
00002650  2020              and [bx+si],ah
00002652  2020              and [bx+si],ah
00002654  2020              and [bx+si],ah
00002656  2020              and [bx+si],ah
00002658  2020              and [bx+si],ah
0000265A  2020              and [bx+si],ah
0000265C  2020              and [bx+si],ah
0000265E  2020              and [bx+si],ah
00002660  2020              and [bx+si],ah
00002662  2020              and [bx+si],ah
00002664  2020              and [bx+si],ah
00002666  2020              and [bx+si],ah
00002668  2020              and [bx+si],ah
0000266A  2020              and [bx+si],ah
0000266C  2020              and [bx+si],ah
0000266E  20FC              and ah,bh
00002670  FF08              dec word [bx+si]
00002672  0300              add ax,[bx+si]
00002674  F00003            lock add [bp+di],al
00002677  0C00              or al,0x0
00002679  0C0F              or al,0xf
0000267B  0003              add [bp+di],al
0000267D  00C0              add al,al
0000267F  3C03              cmp al,0x3
00002681  000C              add [si],cl
00002683  0300              add ax,[bx+si]
00002685  030C              add cx,[si]
00002687  0000              add [bx+si],al
00002689  F00020            lock add [bx+si],ah
0000268C  2020              and [bx+si],ah
0000268E  2020              and [bx+si],ah
00002690  2020              and [bx+si],ah
00002692  2020              and [bx+si],ah
00002694  2020              and [bx+si],ah
00002696  2020              and [bx+si],ah
00002698  2020              and [bx+si],ah
0000269A  2020              and [bx+si],ah
0000269C  2020              and [bx+si],ah
0000269E  2020              and [bx+si],ah
000026A0  2020              and [bx+si],ah
000026A2  2020              and [bx+si],ah
000026A4  2020              and [bx+si],ah
000026A6  2020              and [bx+si],ah
000026A8  2020              and [bx+si],ah
000026AA  2020              and [bx+si],ah
000026AC  2020              and [bx+si],ah
000026AE  2020              and [bx+si],ah
000026B0  2020              and [bx+si],ah
000026B2  2020              and [bx+si],ah
000026B4  2020              and [bx+si],ah
000026B6  2020              and [bx+si],ah
000026B8  2020              and [bx+si],ah
000026BA  2020              and [bx+si],ah
000026BC  2020              and [bx+si],ah
000026BE  2020              and [bx+si],ah
000026C0  2020              and [bx+si],ah
000026C2  2020              and [bx+si],ah
000026C4  2020              and [bx+si],ah
000026C6  2020              and [bx+si],ah
000026C8  2020              and [bx+si],ah
000026CA  2020              and [bx+si],ah
000026CC  2020              and [bx+si],ah
000026CE  2020              and [bx+si],ah
000026D0  2020              and [bx+si],ah
000026D2  2020              and [bx+si],ah
000026D4  2020              and [bx+si],ah
000026D6  2020              and [bx+si],ah
000026D8  2020              and [bx+si],ah
000026DA  2020              and [bx+si],ah
000026DC  2020              and [bx+si],ah
000026DE  2020              and [bx+si],ah
000026E0  2020              and [bx+si],ah
000026E2  2020              and [bx+si],ah
000026E4  2020              and [bx+si],ah
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
00002752  2020              and [bx+si],ah
00002754  2020              and [bx+si],ah
00002756  2020              and [bx+si],ah
00002758  2020              and [bx+si],ah
0000275A  2020              and [bx+si],ah
0000275C  2020              and [bx+si],ah
0000275E  2020              and [bx+si],ah
00002760  2020              and [bx+si],ah
00002762  2020              and [bx+si],ah
00002764  2020              and [bx+si],ah
00002766  2020              and [bx+si],ah
00002768  2020              and [bx+si],ah
0000276A  2020              and [bx+si],ah
0000276C  2020              and [bx+si],ah
0000276E  20FC              and ah,bh
00002770  FF08              dec word [bx+si]
00002772  0300              add ax,[bx+si]
00002774  3C00              cmp al,0x0
00002776  00C3              add bl,al
00002778  0003              add [bp+di],al
0000277A  03C0              add ax,ax
0000277C  00C0              add al,al
0000277E  300F              xor [bx],cl
00002780  00C0              add al,al
00002782  0300              add ax,[bx+si]
00002784  C000C3            rol byte [bx+si],0xc3
00002787  0000              add [bx+si],al
00002789  3C00              cmp al,0x0
0000278B  2020              and [bx+si],ah
0000278D  2020              and [bx+si],ah
0000278F  2020              and [bx+si],ah
00002791  2020              and [bx+si],ah
00002793  2020              and [bx+si],ah
00002795  2020              and [bx+si],ah
00002797  2020              and [bx+si],ah
00002799  2020              and [bx+si],ah
0000279B  2020              and [bx+si],ah
0000279D  2020              and [bx+si],ah
0000279F  2020              and [bx+si],ah
000027A1  2020              and [bx+si],ah
000027A3  2020              and [bx+si],ah
000027A5  2020              and [bx+si],ah
000027A7  2020              and [bx+si],ah
000027A9  2020              and [bx+si],ah
000027AB  2020              and [bx+si],ah
000027AD  2020              and [bx+si],ah
000027AF  2020              and [bx+si],ah
000027B1  2020              and [bx+si],ah
000027B3  2020              and [bx+si],ah
000027B5  2020              and [bx+si],ah
000027B7  2020              and [bx+si],ah
000027B9  2020              and [bx+si],ah
000027BB  2020              and [bx+si],ah
000027BD  2020              and [bx+si],ah
000027BF  2020              and [bx+si],ah
000027C1  2020              and [bx+si],ah
000027C3  2020              and [bx+si],ah
000027C5  2020              and [bx+si],ah
000027C7  2020              and [bx+si],ah
000027C9  2020              and [bx+si],ah
000027CB  2020              and [bx+si],ah
000027CD  2020              and [bx+si],ah
000027CF  2020              and [bx+si],ah
000027D1  2020              and [bx+si],ah
000027D3  2020              and [bx+si],ah
000027D5  2020              and [bx+si],ah
000027D7  2020              and [bx+si],ah
000027D9  2020              and [bx+si],ah
000027DB  2020              and [bx+si],ah
000027DD  2020              and [bx+si],ah
000027DF  2020              and [bx+si],ah
000027E1  2020              and [bx+si],ah
000027E3  2020              and [bx+si],ah
000027E5  2020              and [bx+si],ah
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
000027FD  2020              and [bx+si],ah
000027FF  2020              and [bx+si],ah
00002801  2020              and [bx+si],ah
00002803  2020              and [bx+si],ah
00002805  2020              and [bx+si],ah
00002807  2020              and [bx+si],ah
00002809  2020              and [bx+si],ah
0000280B  2020              and [bx+si],ah
0000280D  2020              and [bx+si],ah
0000280F  2020              and [bx+si],ah
00002811  2020              and [bx+si],ah
00002813  2020              and [bx+si],ah
00002815  2020              and [bx+si],ah
00002817  2020              and [bx+si],ah
00002819  2020              and [bx+si],ah
0000281B  2020              and [bx+si],ah
0000281D  2020              and [bx+si],ah
0000281F  2020              and [bx+si],ah
00002821  2020              and [bx+si],ah
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
0000283F  2020              and [bx+si],ah
00002841  2020              and [bx+si],ah
00002843  2020              and [bx+si],ah
00002845  2020              and [bx+si],ah
00002847  2020              and [bx+si],ah
00002849  2020              and [bx+si],ah
0000284B  2020              and [bx+si],ah
0000284D  2020              and [bx+si],ah
0000284F  2020              and [bx+si],ah
00002851  2020              and [bx+si],ah
00002853  2020              and [bx+si],ah
00002855  2020              and [bx+si],ah
00002857  2020              and [bx+si],ah
00002859  2020              and [bx+si],ah
0000285B  2020              and [bx+si],ah
0000285D  2020              and [bx+si],ah
0000285F  2020              and [bx+si],ah
00002861  2020              and [bx+si],ah
00002863  2020              and [bx+si],ah
00002865  2020              and [bx+si],ah
00002867  2020              and [bx+si],ah
00002869  2020              and [bx+si],ah
0000286B  2020              and [bx+si],ah
0000286D  2020              and [bx+si],ah
0000286F  FC                cld
00002870  FF08              dec word [bx+si]
00002872  0300              add ax,[bx+si]
00002874  0F0000            sldt [bx+si]
00002877  30C0              xor al,al
00002879  00C0              add al,al
0000287B  F00030            lock add [bx+si],dh
0000287E  0C03              or al,0x3
00002880  C0                db 0xC0
00002881  3000              xor [bx+si],al
00002883  C0                db 0xC0
00002884  3000              xor [bx+si],al
00002886  30C0              xor al,al
00002888  000F              add [bx],cl
0000288A  0020              add [bx+si],ah
0000288C  2020              and [bx+si],ah
0000288E  2020              and [bx+si],ah
00002890  2020              and [bx+si],ah
00002892  2020              and [bx+si],ah
00002894  2020              and [bx+si],ah
00002896  2020              and [bx+si],ah
00002898  2020              and [bx+si],ah
0000289A  2020              and [bx+si],ah
0000289C  2020              and [bx+si],ah
0000289E  2020              and [bx+si],ah
000028A0  2020              and [bx+si],ah
000028A2  2020              and [bx+si],ah
000028A4  2020              and [bx+si],ah
000028A6  2020              and [bx+si],ah
000028A8  2020              and [bx+si],ah
000028AA  2020              and [bx+si],ah
000028AC  2020              and [bx+si],ah
000028AE  2020              and [bx+si],ah
000028B0  2020              and [bx+si],ah
000028B2  2020              and [bx+si],ah
000028B4  2020              and [bx+si],ah
000028B6  2020              and [bx+si],ah
000028B8  2020              and [bx+si],ah
000028BA  2020              and [bx+si],ah
000028BC  2020              and [bx+si],ah
000028BE  2020              and [bx+si],ah
000028C0  2020              and [bx+si],ah
000028C2  2020              and [bx+si],ah
000028C4  2020              and [bx+si],ah
000028C6  2020              and [bx+si],ah
000028C8  2020              and [bx+si],ah
000028CA  2020              and [bx+si],ah
000028CC  2020              and [bx+si],ah
000028CE  2020              and [bx+si],ah
000028D0  2020              and [bx+si],ah
000028D2  2020              and [bx+si],ah
000028D4  2020              and [bx+si],ah
000028D6  2020              and [bx+si],ah
000028D8  2020              and [bx+si],ah
000028DA  2020              and [bx+si],ah
000028DC  2020              and [bx+si],ah
000028DE  2020              and [bx+si],ah
000028E0  2020              and [bx+si],ah
000028E2  2020              and [bx+si],ah
000028E4  2020              and [bx+si],ah
000028E6  2020              and [bx+si],ah
000028E8  2020              and [bx+si],ah
000028EA  2020              and [bx+si],ah
000028EC  2020              and [bx+si],ah
000028EE  2020              and [bx+si],ah
000028F0  2020              and [bx+si],ah
000028F2  2020              and [bx+si],ah
000028F4  2020              and [bx+si],ah
000028F6  2020              and [bx+si],ah
000028F8  2020              and [bx+si],ah
000028FA  2020              and [bx+si],ah
000028FC  2020              and [bx+si],ah
000028FE  2020              and [bx+si],ah
00002900  2020              and [bx+si],ah
00002902  2020              and [bx+si],ah
00002904  2020              and [bx+si],ah
00002906  2020              and [bx+si],ah
00002908  2020              and [bx+si],ah
0000290A  2020              and [bx+si],ah
0000290C  2020              and [bx+si],ah
0000290E  2020              and [bx+si],ah
00002910  2020              and [bx+si],ah
00002912  2020              and [bx+si],ah
00002914  2020              and [bx+si],ah
00002916  2020              and [bx+si],ah
00002918  2020              and [bx+si],ah
0000291A  2020              and [bx+si],ah
0000291C  2020              and [bx+si],ah
0000291E  2020              and [bx+si],ah
00002920  2020              and [bx+si],ah
00002922  2020              and [bx+si],ah
00002924  2020              and [bx+si],ah
00002926  2020              and [bx+si],ah
00002928  2020              and [bx+si],ah
0000292A  2020              and [bx+si],ah
0000292C  2020              and [bx+si],ah
0000292E  2020              and [bx+si],ah
00002930  2020              and [bx+si],ah
00002932  2020              and [bx+si],ah
00002934  2020              and [bx+si],ah
00002936  2020              and [bx+si],ah
00002938  2020              and [bx+si],ah
0000293A  2020              and [bx+si],ah
0000293C  2020              and [bx+si],ah
0000293E  2020              and [bx+si],ah
00002940  2020              and [bx+si],ah
00002942  2020              and [bx+si],ah
00002944  2020              and [bx+si],ah
00002946  2020              and [bx+si],ah
00002948  2020              and [bx+si],ah
0000294A  2020              and [bx+si],ah
0000294C  2020              and [bx+si],ah
0000294E  2020              and [bx+si],ah
00002950  2020              and [bx+si],ah
00002952  2020              and [bx+si],ah
00002954  2020              and [bx+si],ah
00002956  2020              and [bx+si],ah
00002958  2020              and [bx+si],ah
0000295A  2020              and [bx+si],ah
0000295C  2020              and [bx+si],ah
0000295E  2020              and [bx+si],ah
00002960  2020              and [bx+si],ah
00002962  2020              and [bx+si],ah
00002964  2020              and [bx+si],ah
00002966  2020              and [bx+si],ah
00002968  2020              and [bx+si],ah
0000296A  2020              and [bx+si],ah
0000296C  2020              and [bx+si],ah
0000296E  20FC              and ah,bh
00002970  FE08              dec byte [bx+si]
00002972  0430              add al,0x30
00002974  FF0C              dec word [si]
00002976  00C3              add bl,al
00002978  00C3              add bl,al
0000297A  00FF              add bh,bh
0000297C  3CFF              cmp al,0xff
0000297E  00FF              add bh,bh
00002980  00FF              add bh,bh
00002982  00C3              add bl,al
00002984  00C3              add bl,al
00002986  0030              add [bx+si],dh
00002988  FF0C              dec word [si]
0000298A  0000              add [bx+si],al
0000298C  0000              add [bx+si],al
0000298E  0000              add [bx+si],al
00002990  0000              add [bx+si],al
00002992  0036EBC9          add [0xc9eb],dh
00002996  3AA536B7          cmp ah,[di+0xb736]
0000299A  C24410            ret 0x1044
0000299D  2AA236EB          sub ah,[bp+si+0xeb36]
000029A1  2AA636CD          sub ah,[bp+0xcd36]
000029A5  3623D2            ss and dx,dx
000029A8  44                inc sp
000029A9  10EB              adc bl,ch
000029AB  22A8363E          and ch,[bx+si+0x3e36]
000029AF  01C3              add bx,ax
000029B1  9A10CD0E10        call 0x100e:0xcd10
000029B6  2A1B              sub bl,[bp+di]
000029B8  3901              cmp [bx+di],ax
000029BA  1832              sbb [bp+si],dh
000029BC  3A943657          cmp dl,[si+0x5736]
000029C0  7E23              jng 0x29e5
000029C2  E67F              out 0x7f,al
000029C4  0203              add al,[bp+di]
000029C6  329436FE          xor dl,[si+0xfe36]
000029CA  20D2              and dl,dl
000029CC  4D                dec bp
000029CD  10FE              adc dh,bh
000029CF  0ACA              or cl,dl
000029D1  7F10              jg 0x29e3
000029D3  FE09              dec byte [bx+di]
000029D5  CA4D10            retf 0x104d
000029D8  FE0D              dec byte [di]
000029DA  CA8B10            retf 0x108b
000029DD  FE                db 0xFE
000029DE  1ACA              sbb cl,dl
000029E0  9F                lahf
000029E1  10C6              adc dh,al
000029E3  C0023E            rol byte [bp+si],0x3e
000029E6  DE0B              fimul word [bp+di]
000029E8  0203              add al,[bp+di]
000029EA  03C3              add ax,bx
000029EC  4D                dec bp
000029ED  107AFE            adc [bp+si-0x2],bh
000029F0  0D3E0A            or ax,0xa3e
000029F3  C27310            ret 0x1073
000029F6  0BC3              or ax,bx
000029F8  4D                dec bp
000029F9  1022              adc [bp+si],ah
000029FB  1B39              sbb di,[bx+di]
000029FD  3E0A02            or al,[ds:bp+si]
00002A00  60                pusha
00002A01  6922A436          imul sp,[bp+si],word 0x36a4
00002A05  2118              and [bx+si],bx
00002A07  32AF32A1          xor ch,[bx+0xa132]
00002A0B  36B7C9            ss mov bh,0xc9
00002A0E  7A32              jpe 0x2a42
00002A10  94                xchg ax,sp
00002A11  360BC5            ss or ax,bp
00002A14  E5CD              in ax,0xcd
00002A16  F9                stc
00002A17  10E1              adc cl,ah
00002A19  111D              adc [di],bx
00002A1B  3ACD              cmp cl,ch
00002A1D  3623C1            ss and ax,cx
00002A20  D2BA10CD          sar byte [bp+si+0xcd10],cl
00002A24  E310              jcxz 0x2a36
00002A26  C24D10            ret 0x104d
00002A29  3E0D0221          ds or ax,0x2102
00002A2D  5C                pop sp
00002A2E  00CD              add ch,cl
00002A30  C6                db 0xC6
00002A31  1F                pop ds
00002A32  21C8              and ax,cx
00002A34  1037              adc [bx],dh
00002A36  C9                leave
00002A37  5C                pop sp
00002A38  5C                pop sp
00002A39  5C                pop sp
00002A3A  09454E            or [di+0x4e],ax
00002A3D  44                inc sp
00002A3E  095374            or [bp+di+0x74],dx
00002A41  61                popa
00002A42  7465              jz 0x2aa9
00002A44  6D                insw
00002A45  656E              gs outsb
00002A47  7420              jz 0x2a69
00002A49  4D                dec bp
00002A4A  697373696E        imul si,[bp+di+0x73],word 0x6e69
00002A4F  670D0AC5          a32 or ax,0xc50a
00002A53  211D              and [di],bx
00002A55  39E5              cmp bp,sp
00002A57  115C00            adc [si+0x0],bx
00002A5A  0E                push cs
00002A5B  02CD              add cl,ch
00002A5D  D6                salc
00002A5E  1F                pop ds
00002A5F  361AEB            ss sbb ch,bl
00002A62  E179              loope 0x2add
00002A64  C1FE02            sar si,0x2
00002A67  C9                leave
00002A68  0E                push cs
00002A69  0BCD              or cx,bp
00002A6B  0500B7            add ax,0xb700
00002A6E  C8FCFE08          enter 0xfefc,0x8
00002A72  040C              add al,0xc
00002A74  3F                aas
00002A75  C3                ret
00002A76  0030              add [bx+si],dh
00002A78  C0                db 0xC0
00002A79  30C0              xor al,al
00002A7B  3F                aas
00002A7C  CF                iret
00002A7D  3F                aas
00002A7E  C03FC0            sar byte [bx],0xc0
00002A81  3F                aas
00002A82  C0                db 0xC0
00002A83  30C0              xor al,al
00002A85  30C0              xor al,al
00002A87  0C3F              or al,0x3f
00002A89  C3                ret
00002A8A  0000              add [bx+si],al
00002A8C  0000              add [bx+si],al
00002A8E  0000              add [bx+si],al
00002A90  0000              add [bx+si],al
00002A92  006564            add [di+0x64],ah
00002A95  206279            and [bp+si+0x79],ah
00002A98  207573            and [di+0x73],dh
00002A9B  65722E            gs jc 0x2acc
00002A9E  0D00EB            or ax,0xeb00
00002AA1  2ABD36EB          sub bh,[di+0xeb36]
00002AA5  1BCD              sbb cx,bp
00002AA7  3623D8            ss and bx,ax
00002AAA  22D1              and dl,cl
00002AAC  3622D3            ss and dl,bl
00002AAF  36115C00          adc [ss:si+0x0],bx
00002AB3  D50E              aad 0xe
00002AB5  0CCD              or al,0xcd
00002AB7  6323              arpl [bp+di],sp
00002AB9  E1CD              loope 0x2a88
00002ABB  94                xchg ax,sp
00002ABC  1F                pop ds
00002ABD  DAA52021          fisub dword [di+0x2120]
00002AC1  8F                db 0x8F
00002AC2  11CD              adc bp,cx
00002AC4  6221              bound sp,[bx+di]
00002AC6  218F1111          and [bx+0x1111],cx
00002ACA  151E0E            adc ax,0xe1e
00002ACD  0E                push cs
00002ACE  CD63              int 0x63
00002AD0  233E8232          and di,[0x3282]
00002AD4  3820              cmp [bx+si],ah
00002AD6  0E                push cs
00002AD7  0221              add ah,[bx+di]
00002AD9  7C11              jl 0x2aec
00002ADB  CD59              int 0x59
00002ADD  20CD              and ch,cl
00002ADF  3D2021            cmp ax,0x2120
00002AE2  1D3A22            sbb ax,0x223a
00002AE5  1B39              sbb di,[bx+di]
00002AE7  361AB7C920        sbb dh,[ss:bx+0x20c9]
00002AEC  205061            and [bx+si+0x61],dl
00002AEF  7373              jnc 0x2b64
00002AF1  2032              and [bp+si],dh
00002AF3  202D              and [di],ch
00002AF5  205265            and [bp+si+0x65],dl
00002AF8  61                popa
00002AF9  64696E672042      imul bp,[fs:bp+0x67],word 0x4220
00002AFF  3A4144            cmp al,[bx+di+0x44]
00002B02  54                push sp
00002B03  45                inc bp
00002B04  53                push bx
00002B05  54                push sp
00002B06  2020              and [bx+si],ah
00002B08  2E41              cs inc cx
00002B0A  53                push bx
00002B0B  4D                dec bp
00002B0C  0D00E4            or ax,0xe400
00002B0F  37                aaa
00002B10  5C                pop sp
00002B11  38A73500          cmp [bx+0x35],ah
00002B15  0000              add [bx+si],al
00002B17  000A              add [bp+si],cl
00002B19  02A800BA          add ch,[bx+si+0xba00]
00002B1D  2F                das
00002B1E  CDCB              int 0xcb
00002B20  11D8              adc ax,bx
00002B22  3AAB11E6          cmp ch,[bp+di+0xe611]
00002B26  20C0              and al,al
00002B28  3E55              ds push bp
00002B2A  C3                ret
00002B2B  DA11              ficom dword [bx+di]
00002B2D  2AE3              sub ah,bl
00002B2F  3622A7117C        and ah,[ss:bx+0x7c11]
00002B34  B5C2              mov ch,0xc2
00002B36  CB                retf
00002B37  1137              adc [bx],si
00002B39  C9                leave
00002B3A  2AA711CD          sub ah,[bx+0xcd11]
00002B3E  E211              loop 0x2b51
00002B40  DADD              fcmovu st5
00002B42  11FE              adc si,di
00002B44  033F              add di,[bx]
00002B46  D03E4532          sar byte [0x3245],1
00002B4A  0232              add dh,[bp+si]
00002B4C  AF                scasw
00002B4D  37                aaa
00002B4E  676F              a32 outsw
00002B50  C9                leave
00002B51  EB21              jmp short 0x2b74
00002B53  0000              add [bx+si],al
00002B55  22AD112E          and ch,[di+0x2e11]
00002B59  A022AB            mov al,[0xab22]
00002B5C  1121              adc [bx+di],sp
00002B5E  0000              add [bx+si],al
00002B60  3922              cmp [bp+si],sp
00002B62  A3117A            mov [0x7a11],ax
00002B65  B33E              mov bl,0x3e
00002B67  53                push bx
00002B68  CA2413            retf 0x1324
00002B6B  EBCD              jmp short 0x2b3a
00002B6D  F5                cmc
00002B6E  12FC              adc bh,ah
00002B70  FE08              dec byte [bx+si]
00002B72  0403              add al,0x3
00002B74  0F                db 0x0F
00002B75  F0C00C30          lock ror byte [si],0x30
00002B79  0C30              or al,0x30
00002B7B  0FF3CF            psllq mm1,mm7
00002B7E  F0                db 0xF0
00002B7F  0F                db 0x0F
00002B80  F0                db 0xF0
00002B81  0F                db 0x0F
00002B82  F00C30            lock or al,0x30
00002B85  0C30              or al,0x30
00002B87  030F              add cx,[bx]
00002B89  F0C00000          lock rol byte [bx+si],0x0
00002B8D  0000              add [bx+si],al
00002B8F  0000              add [bx+si],al
00002B91  0000              add [bx+si],al
00002B93  CA3D12            retf 0x123d
00002B96  2B7ECD            sub di,[bp-0x33]
00002B99  9F                lahf
00002B9A  12F1              adc dh,cl
00002B9C  F5                cmc
00002B9D  C5                db 0xC5
00002B9E  CD9F              int 0x9f
00002BA0  12F1              adc dh,cl
00002BA2  B9FA3D            mov cx,0x3dfa
00002BA5  12CD              adc cl,ch
00002BA7  9A15C31B12        call 0x121b:0xc315
00002BAC  F1                int1
00002BAD  CD85              int 0x85
00002BAF  15C300            adc ax,0xc3
00002BB2  12CD              adc cl,ch
00002BB4  9A152AA111        call 0x11a1:0x2a15
00002BB9  115C38            adc [si+0x38],bx
00002BBC  CD36              int 0x36
00002BBE  23C2              and ax,dx
00002BC0  44                inc sp
00002BC1  12CD              adc cl,ch
00002BC3  0015              add [di],dl
00002BC5  F5                cmc
00002BC6  E52A              in ax,0x2a
00002BC8  9F                lahf
00002BC9  1111              adc [bx+di],dx
00002BCB  E437              in al,0x37
00002BCD  CD36              int 0x36
00002BCF  23C2              and ax,dx
00002BD1  1E                push ds
00002BD2  13E1              adc sp,cx
00002BD4  F1                int1
00002BD5  11E4              adc sp,sp
00002BD7  37                aaa
00002BD8  B7CA              mov bh,0xca
00002BDA  7A12              jpe 0x2bee
00002BDC  FE01              inc byte [bx+di]
00002BDE  C27312            ret 0x1273
00002BE1  13FE              adc di,si
00002BE3  03FA              add di,dx
00002BE5  7912              jns 0x2bf9
00002BE7  EBB7              jmp short 0x2ba0
00002BE9  32AC1122          xor ch,[si+0x2211]
00002BED  AD                lodsw
00002BEE  11C9              adc cx,cx
00002BF0  CD9A              int 0x9a
00002BF2  152AA1            adc ax,0xa12a
00002BF5  11CD              adc bp,cx
00002BF7  3623CA            ss and cx,dx
00002BFA  1E                push ds
00002BFB  132B              adc bp,[bp+di]
00002BFD  7EFE              jng 0x2bfd
00002BFF  18C2              sbb dl,al
00002C01  811222A1          adc word [bp+si],0xa122
00002C05  113E2032          adc [0x3220],di
00002C09  A5                movsw
00002C0A  11C3              adc bx,ax
00002C0C  0012              add [bp+si],dl
00002C0E  07                pop es
00002C0F  21B312CD          and [bp+di+0xcd12],si
00002C13  2021              and [bx+di],ah
00002C15  11E3              adc bx,sp
00002C17  12CD              adc cl,ch
00002C19  3623DA            ss and bx,dx
00002C1C  1E                push ds
00002C1D  134623            adc ax,[bp+0x23]
00002C20  4E                dec si
00002C21  C9                leave
00002C22  0100              add [bx+si],ax
00002C24  0F0E              femms
00002C26  0F0E              femms
00002C28  1312              adc dx,[bp+si]
00002C2A  1312              adc dx,[bp+si]
00002C2C  0908              or [bx+si],cx
00002C2E  07                pop es
00002C2F  06                push es
00002C30  07                pop es
00002C31  06                push es
00002C32  0D0C0D            or ax,0xd0c
00002C35  0C0D              or al,0xd
00002C37  0C0D              or al,0xd
00002C39  0C0D              or al,0xd
00002C3B  0C0D              or al,0xd
00002C3D  0C13              or al,0x13
00002C3F  1213              adc dl,[bp+di]
00002C41  1217              adc dl,[bx]
00002C43  16                push ss
00002C44  17                pop ss
00002C45  16                push ss
00002C46  0B0A              or cx,[bp+si]
00002C48  1312              adc dx,[bp+si]
00002C4A  1110              adc [bx+si],dx
00002C4C  17                pop ss
00002C4D  16                push ss
00002C4E  17                pop ss
00002C4F  16                push ss
00002C50  0000              add [bx+si],al
00002C52  036465            add sp,[si+0x65]
00002C55  0400              add al,0x0
00002C57  0000              add [bx+si],al
00002C59  0000              add [bx+si],al
00002C5B  0000              add [bx+si],al
00002C5D  0001              add [bx+di],al
00002C5F  0000              add [bx+si],al
00002C61  0000              add [bx+si],al
00002C63  007E23            add [bp+0x23],bh
00002C66  FE00              inc byte [bx+si]
00002C68  CA1E13            retf 0x131e
00002C6B  FE09              dec byte [bx+di]
00002C6D  CAF5FC            retf 0xfcf5
00002C70  FE08              dec byte [bx+si]
00002C72  0400              add al,0x0
00002C74  C3                ret
00002C75  FC                cld
00002C76  3003              xor [bp+di],al
00002C78  0C03              or al,0x3
00002C7A  0C03              or al,0x3
00002C7C  FC                cld
00002C7D  F3FC              rep cld
00002C7F  03FC              add di,sp
00002C81  03FC              add di,sp
00002C83  030C              add cx,[si]
00002C85  030C              add cx,[si]
00002C87  00C3              add bl,al
00002C89  FC                cld
00002C8A  3000              xor [bx+si],al
00002C8C  0000              add [bx+si],al
00002C8E  0000              add [bx+si],al
00002C90  0000              add [bx+si],al
00002C92  0032              add [bp+si],dh
00002C94  0232              add dh,[bp+si]
00002C96  2100              and [bx+si],ax
00002C98  0022              add [bp+si],ah
00002C9A  AD                lodsw
00002C9B  1111              adc [bx+di],dx
00002C9D  AD                lodsw
00002C9E  113E0032          adc [0x3200],di
00002CA2  AC                lodsb
00002CA3  1137              adc [bx],si
00002CA5  C9                leave
00002CA6  CDE8              int 0xe8
00002CA8  14FE              adc al,0xfe
00002CAA  00C8              add al,cl
00002CAC  FE09              dec byte [bx+di]
00002CAE  CA3713            retf 0x1337
00002CB1  FE                db 0xFE
00002CB2  30FA              xor dl,bh
00002CB4  4C                dec sp
00002CB5  13FE              adc di,si
00002CB7  3AFA              cmp bh,dl
00002CB9  8E14              mov ss,[si]
00002CBB  FE                db 0xFE
00002CBC  3ACA              cmp cl,dl
00002CBE  B714              mov bh,0x14
00002CC0  CDF9              int 0xf9
00002CC2  18DA              sbb dl,bl
00002CC4  B714              mov bh,0x14
00002CC6  FE                db 0xFE
00002CC7  1CC2              sbb al,0xc2
00002CC9  82                db 0x82
00002CCA  137EFE            adc di,[bp-0x2]
00002CCD  034723            add ax,[bx+0x23]
00002CD0  F27413            repne jz 0x2ce6
00002CD3  E5FE              in ax,0xfe
00002CD5  015623            add [bp+0x23],dx
00002CD8  5E                pop si
00002CD9  E1C2              loope 0x2c9d
00002CDB  7613              jna 0x2cf0
00002CDD  5A                pop dx
00002CDE  16                push ss
00002CDF  00C3              add bl,al
00002CE1  7613              jna 0x2cf6
00002CE3  54                push sp
00002CE4  5D                pop bp
00002CE5  CD20              int 0x20
00002CE7  213EA132          and [0x32a1],di
00002CEB  AB                stosw
00002CEC  1178C3            adc [bx+si-0x3d],di
00002CEF  DB14              fist dword [si]
00002CF1  11D8              adc ax,bx
00002CF3  132A              adc bp,[bp+si]
00002CF5  A7                cmpsw
00002CF6  112B              adc [bp+di],bp
00002CF8  CD1F              int 0x1f
00002CFA  18DA              sbb dl,bl
00002CFC  1E                push ds
00002CFD  13EB              adc bp,bx
00002CFF  22A711EB          and ah,[bx+0xeb11]
00002D03  237EB7            and di,[bp-0x49]
00002D06  F0E67F            lock out 0x7f,al
00002D09  47                inc di
00002D0A  3AA511FE          cmp ah,[di+0xfe11]
00002D0E  2078C8            and [bx+si-0x38],bh
00002D11  2B7EB7            sub di,[bp-0x49]
00002D14  F2D113            repne rcl word [bp+di],1
00002D17  1A13              sbb dl,[bp+di]
00002D19  2AF2              sub dh,dl
00002D1B  36FE4FCA          dec byte [ss:bx-0x36]
00002D1F  C3                ret
00002D20  132A              adc bp,[bp+si]
00002D22  EA36FE50CA        jmp 0xca50:0xfe36
00002D27  C3                ret
00002D28  132A              adc bp,[bp+si]
00002D2A  EE                out dx,al
00002D2B  36FE4CCA          dec byte [ss:si-0x36]
00002D2F  C3                ret
00002D30  131B              adc bx,[bp+di]
00002D32  EB22              jmp short 0x2d56
00002D34  A7                cmpsw
00002D35  113EA032          adc [0x32a0],di
00002D39  AB                stosw
00002D3A  113E00C3          adc [0xc300],di
00002D3E  D814              fcom dword [si]
00002D40  47                inc di
00002D41  B73E              mov bh,0x3e
00002D43  20C8              and al,cl
00002D45  78C9              js 0x2d10
00002D47  112C              adc [si],bp
00002D49  001E115C          add [0x5c11],bl
00002D4D  001E115D          add [0x5d11],bl
00002D51  001E112F          add [0x2f11],bl
00002D55  0004              add [si],al
00002D57  112A              adc [bp+si],bp
00002D59  FF831124          inc word [bp+di+0x2411]
00002D5D  FF87112B          inc word [bx+0x2b11]
00002D61  0081125E          add [bx+di+0x5e12],al
00002D65  5E                pop si
00002D66  0007              add [bx],al
00002D68  115E00            adc [bp+0x0],bx
00002D6B  06                push es
00002D6C  112600FA          adc [0xfa00],sp
00002D70  FE0C              dec byte [si]
00002D72  0500C3            add ax,0xc300
00002D75  C3                ret
00002D76  0000              add [bx+si],al
00002D78  03FC              add di,sp
00002D7A  3F                aas
00002D7B  C00000            rol byte [bx+si],0x0
00002D7E  CC                int3
00002D7F  3300              xor ax,[bx+si]
00002D81  0000              add [bx+si],al
00002D83  0C30              or al,0x30
00002D85  0000              add [bx+si],al
00002D87  03FF              add di,di
00002D89  FFC0              inc ax
00002D8B  000C              add [si],cl
00002D8D  0000              add [bx+si],al
00002D8F  3000              xor [bx+si],al
00002D91  30C3              xor bl,al
00002D93  C3                ret
00002D94  0C00              or al,0x0
00002D96  C3                ret
00002D97  0C30              or al,0x30
00002D99  C3                ret
00002D9A  0030              add [bx+si],dh
00002D9C  C3                ret
00002D9D  C3                ret
00002D9E  0C00              or al,0x0
00002DA0  0C00              or al,0x0
00002DA2  0030              add [bx+si],dh
00002DA4  0003              add [bp+di],al
00002DA6  FF                db 0xFF
00002DA7  FFC0              inc ax
00002DA9  0000              add [bx+si],al
00002DAB  0000              add [bx+si],al
00002DAD  0000              add [bx+si],al
00002DAF  01C3              add bx,ax
00002DB1  9A10CD0E10        call 0x100e:0xcd10
00002DB6  2A1B              sub bl,[bp+di]
00002DB8  3901              cmp [bx+di],ax
00002DBA  1832              sbb [bp+si],dh
00002DBC  3A943657          cmp dl,[si+0x5736]
00002DC0  7E23              jng 0x2de5
00002DC2  E67F              out 0x7f,al
00002DC4  0203              add al,[bp+di]
00002DC6  329436FE          xor dl,[si+0xfe36]
00002DCA  20D2              and dl,dl
00002DCC  4D                dec bp
00002DCD  10FE              adc dh,bh
00002DCF  0ACA              or cl,dl
00002DD1  7F10              jg 0x2de3
00002DD3  FE09              dec byte [bx+di]
00002DD5  CA4D10            retf 0x104d
00002DD8  FE0D              dec byte [di]
00002DDA  CA8B10            retf 0x108b
00002DDD  FE                db 0xFE
00002DDE  1ACA              sbb cl,dl
00002DE0  9F                lahf
00002DE1  10C6              adc dh,al
00002DE3  C0023E            rol byte [bp+si],0x3e
00002DE6  DE0B              fimul word [bp+di]
00002DE8  0203              add al,[bp+di]
00002DEA  03C3              add ax,bx
00002DEC  4D                dec bp
00002DED  107AFE            adc [bp+si-0x2],bh
00002DF0  0D3E0A            or ax,0xa3e
00002DF3  C27310            ret 0x1073
00002DF6  0BC3              or ax,bx
00002DF8  4D                dec bp
00002DF9  1022              adc [bp+si],ah
00002DFB  1B39              sbb di,[bx+di]
00002DFD  3E0A02            or al,[ds:bp+si]
00002E00  60                pusha
00002E01  6922A436          imul sp,[bp+si],word 0x36a4
00002E05  2118              and [bx+si],bx
00002E07  32AF32A1          xor ch,[bx+0xa132]
00002E0B  36B7C9            ss mov bh,0xc9
00002E0E  7A32              jpe 0x2e42
00002E10  94                xchg ax,sp
00002E11  360BC5            ss or ax,bp
00002E14  E5CD              in ax,0xcd
00002E16  F9                stc
00002E17  10E1              adc cl,ah
00002E19  111D              adc [di],bx
00002E1B  3ACD              cmp cl,ch
00002E1D  3623C1            ss and ax,cx
00002E20  D2BA10CD          sar byte [bp+si+0xcd10],cl
00002E24  E310              jcxz 0x2e36
00002E26  C24D10            ret 0x104d
00002E29  3E0D0221          ds or ax,0x2102
00002E2D  5C                pop sp
00002E2E  00CD              add ch,cl
00002E30  C6                db 0xC6
00002E31  1F                pop ds
00002E32  21C8              and ax,cx
00002E34  1037              adc [bx],dh
00002E36  C9                leave
00002E37  5C                pop sp
00002E38  5C                pop sp
00002E39  5C                pop sp
00002E3A  09454E            or [di+0x4e],ax
00002E3D  44                inc sp
00002E3E  095374            or [bp+di+0x74],dx
00002E41  61                popa
00002E42  7465              jz 0x2ea9
00002E44  6D                insw
00002E45  656E              gs outsb
00002E47  7420              jz 0x2e69
00002E49  4D                dec bp
00002E4A  697373696E        imul si,[bp+di+0x73],word 0x6e69
00002E4F  670D0AC5          a32 or ax,0xc50a
00002E53  211D              and [di],bx
00002E55  39E5              cmp bp,sp
00002E57  115C00            adc [si+0x0],bx
00002E5A  0E                push cs
00002E5B  02CD              add cl,ch
00002E5D  D6                salc
00002E5E  1F                pop ds
00002E5F  361AEB            ss sbb ch,bl
00002E62  E179              loope 0x2edd
00002E64  C1FE02            sar si,0x2
00002E67  C9                leave
00002E68  0E                push cs
00002E69  0BCD              or cx,bp
00002E6B  0500B7            add ax,0xb700
00002E6E  C8FAFE0C          enter 0xfefa,0xc
00002E72  050030            add ax,0x3000
00002E75  F0C00000          lock rol byte [bx+si],0x0
00002E79  FF0F              dec word [bx]
00002E7B  F00000            lock add [bx+si],al
00002E7E  330C              xor cx,[si]
00002E80  C00000            rol byte [bx+si],0x0
00002E83  030C              add cx,[si]
00002E85  0000              add [bx+si],al
00002E87  00FF              add bh,bh
00002E89  FFF0              push ax
00002E8B  0003              add [bp+di],al
00002E8D  0000              add [bx+si],al
00002E8F  0C00              or al,0x0
00002E91  0C30              or al,0x30
00002E93  F0C3              lock ret
00002E95  0030              add [bx+si],dh
00002E97  C3                ret
00002E98  0C30              or al,0x30
00002E9A  C00C30            ror byte [si],0x30
00002E9D  F0C3              lock ret
00002E9F  0003              add [bp+di],al
00002EA1  0000              add [bx+si],al
00002EA3  0C00              or al,0x0
00002EA5  00FF              add bh,bh
00002EA7  FFF0              push ax
00002EA9  0000              add [bx+si],al
00002EAB  0000              add [bx+si],al
00002EAD  0000              add [bx+si],al
00002EAF  36115C00          adc [ss:si+0x0],bx
00002EB3  D50E              aad 0xe
00002EB5  0CCD              or al,0xcd
00002EB7  6323              arpl [bp+di],sp
00002EB9  E1CD              loope 0x2e88
00002EBB  94                xchg ax,sp
00002EBC  1F                pop ds
00002EBD  DAA52021          fisub dword [di+0x2120]
00002EC1  8F                db 0x8F
00002EC2  11CD              adc bp,cx
00002EC4  6221              bound sp,[bx+di]
00002EC6  218F1111          and [bx+0x1111],cx
00002ECA  151E0E            adc ax,0xe1e
00002ECD  0E                push cs
00002ECE  CD63              int 0x63
00002ED0  233E8232          and di,[0x3282]
00002ED4  3820              cmp [bx+si],ah
00002ED6  0E                push cs
00002ED7  0221              add ah,[bx+di]
00002ED9  7C11              jl 0x2eec
00002EDB  CD59              int 0x59
00002EDD  20CD              and ch,cl
00002EDF  3D2021            cmp ax,0x2120
00002EE2  1D3A22            sbb ax,0x223a
00002EE5  1B39              sbb di,[bx+di]
00002EE7  361AB7C920        sbb dh,[ss:bx+0x20c9]
00002EEC  205061            and [bx+si+0x61],dl
00002EEF  7373              jnc 0x2f64
00002EF1  2032              and [bp+si],dh
00002EF3  202D              and [di],ch
00002EF5  205265            and [bp+si+0x65],dl
00002EF8  61                popa
00002EF9  64696E672042      imul bp,[fs:bp+0x67],word 0x4220
00002EFF  3A4144            cmp al,[bx+di+0x44]
00002F02  54                push sp
00002F03  45                inc bp
00002F04  53                push bx
00002F05  54                push sp
00002F06  2020              and [bx+si],ah
00002F08  2E41              cs inc cx
00002F0A  53                push bx
00002F0B  4D                dec bp
00002F0C  0D00E4            or ax,0xe400
00002F0F  37                aaa
00002F10  5C                pop sp
00002F11  38A73500          cmp [bx+0x35],ah
00002F15  0000              add [bx+si],al
00002F17  000A              add [bp+si],cl
00002F19  02A800BA          add ch,[bx+si+0xba00]
00002F1D  2F                das
00002F1E  CDCB              int 0xcb
00002F20  11D8              adc ax,bx
00002F22  3AAB11E6          cmp ch,[bp+di+0xe611]
00002F26  20C0              and al,al
00002F28  3E55              ds push bp
00002F2A  C3                ret
00002F2B  DA11              ficom dword [bx+di]
00002F2D  2AE3              sub ah,bl
00002F2F  3622A7117C        and ah,[ss:bx+0x7c11]
00002F34  B5C2              mov ch,0xc2
00002F36  CB                retf
00002F37  1137              adc [bx],si
00002F39  C9                leave
00002F3A  2AA711CD          sub ah,[bx+0xcd11]
00002F3E  E211              loop 0x2f51
00002F40  DADD              fcmovu st5
00002F42  11FE              adc si,di
00002F44  033F              add di,[bx]
00002F46  D03E4532          sar byte [0x3245],1
00002F4A  0232              add dh,[bp+si]
00002F4C  AF                scasw
00002F4D  37                aaa
00002F4E  676F              a32 outsw
00002F50  C9                leave
00002F51  EB21              jmp short 0x2f74
00002F53  0000              add [bx+si],al
00002F55  22AD112E          and ch,[di+0x2e11]
00002F59  A022AB            mov al,[0xab22]
00002F5C  1121              adc [bx+di],sp
00002F5E  0000              add [bx+si],al
00002F60  3922              cmp [bp+si],sp
00002F62  A3117A            mov [0x7a11],ax
00002F65  B33E              mov bl,0x3e
00002F67  53                push bx
00002F68  CA2413            retf 0x1324
00002F6B  EBCD              jmp short 0x2f3a
00002F6D  F5                cmc
00002F6E  12FA              adc bh,dl
00002F70  FE0C              dec byte [si]
00002F72  05000C            add ax,0xc00
00002F75  3C30              cmp al,0x30
00002F77  0000              add [bx+si],al
00002F79  3F                aas
00002F7A  C3                ret
00002F7B  FC                cld
00002F7C  0000              add [bx+si],al
00002F7E  0CC3              or al,0xc3
00002F80  3000              xor [bx+si],al
00002F82  0000              add [bx+si],al
00002F84  C3                ret
00002F85  0000              add [bx+si],al
00002F87  003F              add [bx],bh
00002F89  FF                db 0xFF
00002F8A  FC                cld
00002F8B  0000              add [bx+si],al
00002F8D  C00003            rol byte [bx+si],0x3
00002F90  0003              add [bp+di],al
00002F92  0C3C              or al,0x3c
00002F94  30C0              xor al,al
00002F96  0C30              or al,0x30
00002F98  C3                ret
00002F99  0C30              or al,0x30
00002F9B  030C              add cx,[si]
00002F9D  3C30              cmp al,0x30
00002F9F  C000C0            rol byte [bx+si],0xc0
00002FA2  0003              add [bp+di],al
00002FA4  0000              add [bx+si],al
00002FA6  3F                aas
00002FA7  FF                db 0xFF
00002FA8  FC                cld
00002FA9  0000              add [bx+si],al
00002FAB  0000              add [bx+si],al
00002FAD  0000              add [bx+si],al
00002FAF  15C300            adc ax,0xc3
00002FB2  12CD              adc cl,ch
00002FB4  9A152AA111        call 0x11a1:0x2a15
00002FB9  115C38            adc [si+0x38],bx
00002FBC  CD36              int 0x36
00002FBE  23C2              and ax,dx
00002FC0  44                inc sp
00002FC1  12CD              adc cl,ch
00002FC3  0015              add [di],dl
00002FC5  F5                cmc
00002FC6  E52A              in ax,0x2a
00002FC8  9F                lahf
00002FC9  1111              adc [bx+di],dx
00002FCB  E437              in al,0x37
00002FCD  CD36              int 0x36
00002FCF  23C2              and ax,dx
00002FD1  1E                push ds
00002FD2  13E1              adc sp,cx
00002FD4  F1                int1
00002FD5  11E4              adc sp,sp
00002FD7  37                aaa
00002FD8  B7CA              mov bh,0xca
00002FDA  7A12              jpe 0x2fee
00002FDC  FE01              inc byte [bx+di]
00002FDE  C27312            ret 0x1273
00002FE1  13FE              adc di,si
00002FE3  03FA              add di,dx
00002FE5  7912              jns 0x2ff9
00002FE7  EBB7              jmp short 0x2fa0
00002FE9  32AC1122          xor ch,[si+0x2211]
00002FED  AD                lodsw
00002FEE  11C9              adc cx,cx
00002FF0  CD9A              int 0x9a
00002FF2  152AA1            adc ax,0xa12a
00002FF5  11CD              adc bp,cx
00002FF7  3623CA            ss and cx,dx
00002FFA  1E                push ds
00002FFB  132B              adc bp,[bp+di]
00002FFD  7EFE              jng 0x2ffd
00002FFF  18C2              sbb dl,al
00003001  811222A1          adc word [bp+si],0xa122
00003005  113E2032          adc [0x3220],di
00003009  A5                movsw
0000300A  11C3              adc bx,ax
0000300C  0012              add [bp+si],dl
0000300E  07                pop es
0000300F  21B312CD          and [bp+di+0xcd12],si
00003013  2021              and [bx+di],ah
00003015  11E3              adc bx,sp
00003017  12CD              adc cl,ch
00003019  3623DA            ss and bx,dx
0000301C  1E                push ds
0000301D  134623            adc ax,[bp+0x23]
00003020  4E                dec si
00003021  C9                leave
00003022  0100              add [bx+si],ax
00003024  0F0E              femms
00003026  0F0E              femms
00003028  1312              adc dx,[bp+si]
0000302A  1312              adc dx,[bp+si]
0000302C  0908              or [bx+si],cx
0000302E  07                pop es
0000302F  06                push es
00003030  07                pop es
00003031  06                push es
00003032  0D0C0D            or ax,0xd0c
00003035  0C0D              or al,0xd
00003037  0C0D              or al,0xd
00003039  0C0D              or al,0xd
0000303B  0C0D              or al,0xd
0000303D  0C13              or al,0x13
0000303F  1213              adc dl,[bp+di]
00003041  1217              adc dl,[bx]
00003043  16                push ss
00003044  17                pop ss
00003045  16                push ss
00003046  0B0A              or cx,[bp+si]
00003048  1312              adc dx,[bp+si]
0000304A  1110              adc [bx+si],dx
0000304C  17                pop ss
0000304D  16                push ss
0000304E  17                pop ss
0000304F  16                push ss
00003050  0000              add [bx+si],al
00003052  036465            add sp,[si+0x65]
00003055  0400              add al,0x0
00003057  0000              add [bx+si],al
00003059  0000              add [bx+si],al
0000305B  0000              add [bx+si],al
0000305D  0001              add [bx+di],al
0000305F  0000              add [bx+si],al
00003061  0000              add [bx+si],al
00003063  007E23            add [bp+0x23],bh
00003066  FE00              inc byte [bx+si]
00003068  CA1E13            retf 0x131e
0000306B  FE09              dec byte [bx+di]
0000306D  CAF5FA            retf 0xfaf5
00003070  FE0C              dec byte [si]
00003072  050003            add ax,0x300
00003075  0F                db 0x0F
00003076  0C00              or al,0x0
00003078  000F              add [bx],cl
0000307A  F0FF00            lock inc word [bx+si]
0000307D  0003              add [bp+di],al
0000307F  30CC              xor ah,cl
00003081  0000              add [bx+si],al
00003083  0030              add [bx+si],dh
00003085  C00000            rol byte [bx+si],0x0
00003088  0FFF              ud0
0000308A  FF00              inc word [bx+si]
0000308C  0030              add [bx+si],dh
0000308E  0000              add [bx+si],al
00003090  C000C3            rol byte [bx+si],0xc3
00003093  0F                db 0x0F
00003094  0C30              or al,0x30
00003096  030C              add cx,[si]
00003098  30C3              xor bl,al
0000309A  0C00              or al,0x0
0000309C  C3                ret
0000309D  0F                db 0x0F
0000309E  0C30              or al,0x30
000030A0  0030              add [bx+si],dh
000030A2  0000              add [bx+si],al
000030A4  C0000F            rol byte [bx+si],0xf
000030A7  FF                db 0xFF
000030A8  FF00              inc word [bx+si]
000030AA  0000              add [bx+si],al
000030AC  0000              add [bx+si],al
000030AE  0037              add [bx],dh
000030B0  13FE              adc di,si
000030B2  30FA              xor dl,bh
000030B4  4C                dec sp
000030B5  13FE              adc di,si
000030B7  3AFA              cmp bh,dl
000030B9  8E14              mov ss,[si]
000030BB  FE                db 0xFE
000030BC  3ACA              cmp cl,dl
000030BE  B714              mov bh,0x14
000030C0  CDF9              int 0xf9
000030C2  18DA              sbb dl,bl
000030C4  B714              mov bh,0x14
000030C6  FE                db 0xFE
000030C7  1CC2              sbb al,0xc2
000030C9  82                db 0x82
000030CA  137EFE            adc di,[bp-0x2]
000030CD  034723            add ax,[bx+0x23]
000030D0  F27413            repne jz 0x30e6
000030D3  E5FE              in ax,0xfe
000030D5  015623            add [bp+0x23],dx
000030D8  5E                pop si
000030D9  E1C2              loope 0x309d
000030DB  7613              jna 0x30f0
000030DD  5A                pop dx
000030DE  16                push ss
000030DF  00C3              add bl,al
000030E1  7613              jna 0x30f6
000030E3  54                push sp
000030E4  5D                pop bp
000030E5  CD20              int 0x20
000030E7  213EA132          and [0x32a1],di
000030EB  AB                stosw
000030EC  1178C3            adc [bx+si-0x3d],di
000030EF  DB14              fist dword [si]
000030F1  11D8              adc ax,bx
000030F3  132A              adc bp,[bp+si]
000030F5  A7                cmpsw
000030F6  112B              adc [bp+di],bp
000030F8  CD1F              int 0x1f
000030FA  18DA              sbb dl,bl
000030FC  1E                push ds
000030FD  13EB              adc bp,bx
000030FF  22A711EB          and ah,[bx+0xeb11]
00003103  237EB7            and di,[bp-0x49]
00003106  F0E67F            lock out 0x7f,al
00003109  47                inc di
0000310A  3AA511FE          cmp ah,[di+0xfe11]
0000310E  2078C8            and [bx+si-0x38],bh
00003111  2B7EB7            sub di,[bp-0x49]
00003114  F2D113            repne rcl word [bp+di],1
00003117  1A13              sbb dl,[bp+di]
00003119  2AF2              sub dh,dl
0000311B  36FE4FCA          dec byte [ss:bx-0x36]
0000311F  C3                ret
00003120  132A              adc bp,[bp+si]
00003122  EA36FE50CA        jmp 0xca50:0xfe36
00003127  C3                ret
00003128  132A              adc bp,[bp+si]
0000312A  EE                out dx,al
0000312B  36FE4CCA          dec byte [ss:si-0x36]
0000312F  C3                ret
00003130  131B              adc bx,[bp+di]
00003132  EB22              jmp short 0x3156
00003134  A7                cmpsw
00003135  113EA032          adc [0x32a0],di
00003139  AB                stosw
0000313A  113E00C3          adc [0xc300],di
0000313E  D814              fcom dword [si]
00003140  47                inc di
00003141  B73E              mov bh,0x3e
00003143  20C8              and al,cl
00003145  78C9              js 0x3110
00003147  112C              adc [si],bp
00003149  001E115C          add [0x5c11],bl
0000314D  001E115D          add [0x5d11],bl
00003151  001E112F          add [0x2f11],bl
00003155  0004              add [si],al
00003157  112A              adc [bp+si],bp
00003159  FF831124          inc word [bp+di+0x2411]
0000315D  FF87112B          inc word [bx+0x2b11]
00003161  0081125E          add [bx+di+0x5e12],al
00003165  5E                pop si
00003166  0007              add [bx],al
00003168  115E00            adc [bp+0x0],bx
0000316B  06                push es
0000316C  112600FC          adc [0xfc00],sp
00003170  F9                stc
00003171  080F              or [bx],cl
00003173  3F                aas
00003174  00C0              add al,al
00003176  C0CFFC            ror bh,0xfc
00003179  0003              add [bp+di],al
0000317B  F0C0CFFC          lock ror bh,0xfc
0000317F  FF00              inc word [bx+si]
00003181  00C0              add al,al
00003183  C3                ret
00003184  30F3              xor bl,dh
00003186  CC                int3
00003187  0000              add [bx+si],al
00003189  0C0C              or al,0xc
0000318B  C0CC00            ror ah,0x0
0000318E  C0C000            rol al,0x0
00003191  C00C0C            ror byte [si],0xc
00003194  CC                int3
00003195  CC                int3
00003196  0000              add [bx+si],al
00003198  0C0C              or al,0xc
0000319A  C0CC00            ror ah,0x0
0000319D  C0C000            rol al,0x0
000031A0  C00C0C            ror byte [si],0xc
000031A3  C0CFF0            ror bh,0xf0
000031A6  000C              add [si],cl
000031A8  0CC0              or al,0xc0
000031AA  CF                iret
000031AB  F0FF00            lock inc word [bx+si]
000031AE  00C3              add bl,al
000031B0  CF                iret
000031B1  FC                cld
000031B2  C0CC00            ror ah,0x0
000031B5  000C              add [si],cl
000031B7  0CC0              or al,0xc0
000031B9  CC                int3
000031BA  00CC              add ah,cl
000031BC  0000              add [bx+si],al
000031BE  C0CC0C            ror ah,0xc
000031C1  C0CC00            ror ah,0x0
000031C4  000C              add [si],cl
000031C6  0C33              or al,0x33
000031C8  0C00              or al,0x0
000031CA  C3                ret
000031CB  0000              add [bx+si],al
000031CD  3F                aas
000031CE  0C0C              or al,0xc
000031D0  C0CFFC            ror bh,0xfc
000031D3  0003              add [bp+di],al
000031D5  F00C0F            lock or al,0xf
000031D8  FC                cld
000031D9  C0C000            rol al,0x0
000031DC  0000              add [bx+si],al
000031DE  0000              add [bx+si],al
000031E0  0000              add [bx+si],al
000031E2  0000              add [bx+si],al
000031E4  0000              add [bx+si],al
000031E6  0000              add [bx+si],al
000031E8  0000              add [bx+si],al
000031EA  0021              add [bx+di],ah
000031EC  B56F              mov ch,0x6f
000031EE  7EB7              jng 0x31a7
000031F0  37                aaa
000031F1  F8                clc
000031F2  2BB62BB6          sub si,[bp+0xb62b]
000031F6  C0                db 0xC0
000031F7  37                aaa
000031F8  C9                leave
000031F9  CDAE              int 0xae
000031FB  2ECD37            cs int 0x37
000031FE  14CD              adc al,0xcd
00003200  AF                scasw
00003201  41                inc cx
00003202  CDA4              int 0xa4
00003204  41                inc cx
00003205  D8FE              fdivr st6
00003207  8D                db 0x8D
00003208  CA8A41            retf 0x418a
0000320B  B7C9              mov bh,0xc9
0000320D  CD37              int 0x37
0000320F  14CD              adc al,0xcd
00003211  AF                scasw
00003212  41                inc cx
00003213  CD6B              int 0x6b
00003215  4D                dec bp
00003216  D8FE              fdivr st6
00003218  A0CA9E            mov al,[0x9eca]
0000321B  41                inc cx
0000321C  B7C9              mov bh,0xc9
0000321E  7AE6              jpe 0x3206
00003220  7FFE              jg 0x3220
00003222  2DC8CD            sub ax,0xcdc8
00003225  45                inc bp
00003226  1BC8              sbb cx,ax
00003228  CD6B              int 0x6b
0000322A  4D                dec bp
0000322B  D8CD              fmul st5
0000322D  2F                das
0000322E  1BC8              sbb cx,ax
00003230  E67F              out 0x7f,al
00003232  FE0C              dec byte [si]
00003234  C83E20CD          enter 0x203e,0xcd
00003238  C414              les dx,[si]
0000323A  CD83              int 0x83
0000323C  4D                dec bp
0000323D  C3                ret
0000323E  E113              loope 0x3253
00003240  FE0C              dec byte [si]
00003242  C8FE8CC8          enter 0x8cfe,0xc8
00003246  C3                ret
00003247  361BFE            ss sbb di,si
0000324A  2EC8FE2CC8        cs enter 0x2cfe,0xc8
0000324F  FE                db 0xFE
00003250  3BC8              cmp cx,ax
00003252  FE                db 0xFE
00003253  3F                aas
00003254  C8FE21C9          enter 0x21fe,0xc9
00003258  0000              add [bx+si],al
0000325A  003A              add [bp+si],bh
0000325C  023EB7C8          add bh,[0xc8b7]
00003260  47                inc di
00003261  3A09              cmp cl,[bx+di]
00003263  3EB7C8            ds mov bh,0xc8
00003266  21E9              and cx,bp
00003268  41                inc cx
00003269  36FF34            push word [ss:si]
0000326C  90                nop
0000326D  D2FC              sar ah,cl
0000326F  FC                cld
00003270  F9                stc
00003271  080F              or [bx],cl
00003273  0FC030            xadd [bx+si],dh
00003276  3033              xor [bp+di],dh
00003278  FF00              inc word [bx+si]
0000327A  00FC              add ah,bh
0000327C  3033              xor [bp+di],dh
0000327E  FF                db 0xFF
0000327F  3F                aas
00003280  C00030            rol byte [bx+si],0x30
00003283  30CC              xor ah,cl
00003285  3CF3              cmp al,0xf3
00003287  0000              add [bx+si],al
00003289  0303              add ax,[bp+di]
0000328B  3033              xor [bp+di],dh
0000328D  0030              add [bx+si],dh
0000328F  3000              xor [bx+si],al
00003291  3003              xor [bp+di],al
00003293  0333              add si,[bp+di]
00003295  3300              xor ax,[bx+si]
00003297  0003              add [bp+di],al
00003299  0330              add si,[bx+si]
0000329B  3300              xor ax,[bx+si]
0000329D  3030              xor [bx+si],dh
0000329F  0030              add [bx+si],dh
000032A1  0303              add ax,[bp+di]
000032A3  3033              xor [bp+di],dh
000032A5  FC                cld
000032A6  0003              add [bp+di],al
000032A8  0330              add si,[bx+si]
000032AA  33FC              xor di,sp
000032AC  3F                aas
000032AD  C00030            rol byte [bx+si],0x30
000032B0  F3FF30            rep push word [bx+si]
000032B3  3300              xor ax,[bx+si]
000032B5  0003              add [bp+di],al
000032B7  0330              add si,[bx+si]
000032B9  3300              xor ax,[bx+si]
000032BB  3300              xor ax,[bx+si]
000032BD  0030              add [bx+si],dh
000032BF  3303              xor ax,[bp+di]
000032C1  3033              xor [bp+di],dh
000032C3  0000              add [bx+si],al
000032C5  0303              add ax,[bp+di]
000032C7  0CC3              or al,0xc3
000032C9  0030              add [bx+si],dh
000032CB  C0000F            rol byte [bx+si],0xf
000032CE  C3                ret
000032CF  0330              add si,[bx+si]
000032D1  33FF              xor di,di
000032D3  0000              add [bx+si],al
000032D5  FC                cld
000032D6  0303              add ax,[bp+di]
000032D8  FF30              push word [bx+si]
000032DA  3000              xor [bx+si],al
000032DC  0000              add [bx+si],al
000032DE  0000              add [bx+si],al
000032E0  0000              add [bx+si],al
000032E2  0000              add [bx+si],al
000032E4  0000              add [bx+si],al
000032E6  0000              add [bx+si],al
000032E8  0000              add [bx+si],al
000032EA  003E7EB7          add [0xb77e],bh
000032EE  C8353EA0          enter 0x3e35,0xa0
000032F2  C3                ret
000032F3  C414              les dx,[si]
000032F5  F5                cmc
000032F6  C5                db 0xC5
000032F7  D5E5              aad 0xe5
000032F9  3A9C6FB7          cmp bl,[si+0xb76f]
000032FD  C4A942E1          les bp,[bx+di+0xe142]
00003301  D1C1              rol cx,1
00003303  F1                int1
00003304  C9                leave
00003305  CD83              int 0x83
00003307  4D                dec bp
00003308  E67F              out 0x7f,al
0000330A  FE0D              dec byte [di]
0000330C  C0CD6B            ror ch,0x6b
0000330F  4D                dec bp
00003310  E67F              out 0x7f,al
00003312  FE0A              dec byte [bp+si]
00003314  CC                int3
00003315  E113              loope 0x332a
00003317  C9                leave
00003318  CD96              int 0x96
0000331A  42                inc dx
0000331B  21876D7E          and [bx+0x7e6d],ax
0000331F  3600B7CA2C        add [ss:bx+0x2cca],dh
00003324  43                inc bx
00003325  CD59              int 0x59
00003327  46                inc si
00003328  DADA              fcmovu st2
0000332A  42                inc dx
0000332B  60                pusha
0000332C  692B7E2B          imul bp,[bp+di],word 0x2b7e
00003330  B62B              mov dh,0x2b
00003332  B62B              mov dh,0x2b
00003334  C2CA42            ret 0x42ca
00003337  360021            add [ss:bx+di],ah
0000333A  0200              add al,[bx+si]
0000333C  095E23            or [bp+0x23],bx
0000333F  56                push si
00003340  1313              adc dx,[bp+di]
00003342  7BE6              jpo 0x332a
00003344  FC                cld
00003345  B2CA              mov dl,0xca
00003347  F8                clc
00003348  42                inc dx
00003349  CD08              int 0x8
0000334B  4F                dec di
0000334C  1F                pop ds
0000334D  1F                pop ds
0000334E  E63F              out 0x3f,al
00003350  47                inc di
00003351  CDF0              int 0xf0
00003353  4E                dec si
00003354  803DCD            cmp byte [di],0xcd
00003357  17                pop ss
00003358  4F                dec di
00003359  AF                scasw
0000335A  02CD              add cl,ch
0000335C  214611            and [bp+0x11],ax
0000335F  0010              add [bx+si],dl
00003361  636BCD            arpl [bp+di-0x33],bp
00003364  7819              js 0x337f
00003366  37                aaa
00003367  F5                cmc
00003368  3E7ECD            ds jng 0x3338
0000336B  D24ECD            ror byte [bp-0x33],cl
0000336E  71FC              jno 0x336c
00003370  F9                stc
00003371  080F              or [bx],cl
00003373  03F0              add si,ax
00003375  0C0C              or al,0xc
00003377  0CFF              or al,0xff
00003379  C0003F            rol byte [bx+si],0x3f
0000337C  0C0C              or al,0xc
0000337E  FFCF              dec di
00003380  F0000C            lock add [si],cl
00003383  0C33              or al,0x33
00003385  0F                db 0x0F
00003386  3CC0              cmp al,0xc0
00003388  0000              add [bx+si],al
0000338A  C0CC0C            ror ah,0xc
0000338D  C00C0C            ror byte [si],0xc
00003390  000C              add [si],cl
00003392  00C0              add al,al
00003394  CC                int3
00003395  CC                int3
00003396  C00000            rol byte [bx+si],0x0
00003399  C0CC0C            ror ah,0xc
0000339C  C00C0C            ror byte [si],0xc
0000339F  000C              add [si],cl
000033A1  00C0              add al,al
000033A3  CC                int3
000033A4  0CFF              or al,0xff
000033A6  0000              add [bx+si],al
000033A8  C0CC0C            ror ah,0xc
000033AB  FF0F              dec word [bx]
000033AD  F0000C            lock add [si],cl
000033B0  3CFF              cmp al,0xff
000033B2  CC                int3
000033B3  0CC0              or al,0xc0
000033B5  0000              add [bx+si],al
000033B7  C0CC0C            ror ah,0xc
000033BA  C00CC0            ror byte [si],0xc0
000033BD  000C              add [si],cl
000033BF  0CC0              or al,0xc0
000033C1  CC                int3
000033C2  0CC0              or al,0xc0
000033C4  0000              add [bx+si],al
000033C6  C0C330            rol bl,0x30
000033C9  C00C30            ror byte [si],0x30
000033CC  0003              add [bp+di],al
000033CE  F0C0CC0C          lock ror ah,0xc
000033D2  FFC0              inc ax
000033D4  003F              add [bx],bh
000033D6  00C0              add al,al
000033D8  FFCC              dec sp
000033DA  0C00              or al,0x0
000033DC  0000              add [bx+si],al
000033DE  0000              add [bx+si],al
000033E0  0000              add [bx+si],al
000033E2  0000              add [bx+si],al
000033E4  0000              add [bx+si],al
000033E6  0000              add [bx+si],al
000033E8  0000              add [bx+si],al
000033EA  003A              add [bp+si],bh
000033EC  8B6DCD            mov bp,[di-0x33]
000033EF  17                pop ss
000033F0  4F                dec di
000033F1  60                pusha
000033F2  6922A66D          imul sp,[bp+si],word 0x6da6
000033F6  CD68              int 0x68
000033F8  19CD              sbb bp,cx
000033FA  FD                std
000033FB  47                inc di
000033FC  3A916D32          cmp dl,[bx+di+0x326d]
00003400  8C6D3A            mov [di+0x3a],gs
00003403  92                xchg ax,dx
00003404  6D                insw
00003405  328D6D6F          xor cl,[di+0x6f6d]
00003409  260022            add [es:bp+si],ah
0000340C  8E6DCD            mov gs,[di-0x33]
0000340F  87523A            xchg dx,[bp+si+0x3a]
00003412  8A6DF4            mov ch,[di-0xc]
00003415  FE4EF4            dec byte [bp-0xc]
00003418  124C0A            adc cl,[si+0xa]
0000341B  E620              out 0x20,al
0000341D  CAE543            retf 0x43e5
00003420  3A8A6D3D          cmp cl,[bp+si+0x3d6d]
00003424  CD17              int 0x17
00003426  4F                dec di
00003427  21CE              and si,cx
00003429  69BECAE2430A      imul di,[bp+0xe2ca],word 0xa43
0000342F  E604              out 0x4,al
00003431  C2E543            ret 0x43e5
00003434  0AE6              or ah,dh
00003436  11FE              adc si,di
00003438  11C2              adc dx,ax
0000343A  E243              loop 0x347f
0000343C  CD68              int 0x68
0000343E  19CD              sbb bp,cx
00003440  FD                std
00003441  47                inc di
00003442  3ABE6D2A          cmp bh,[bp+0x2a6d]
00003446  8E6DCD            mov gs,[di-0x33]
00003449  EB1A              jmp short 0x3465
0000344B  228E6DC3          and cl,[bp+0xc36d]
0000344F  9F                lahf
00003450  43                inc bx
00003451  3E3F              ds aas
00003453  FE                db 0xFE
00003454  AF                scasw
00003455  32906D21          xor dl,[bx+si+0x216d]
00003459  886D7E            mov [di+0x7e],ch
0000345C  36002F            add [ss:bx],ch
0000345F  B7CC              mov bh,0xcc
00003461  8752C2            xchg dx,[bp+si-0x3e]
00003464  0044CD            add [si-0x33],al
00003467  FF1F              call far [bx]
00003469  CDE0              int 0xe0
0000346B  24CD              and al,0xcd
0000346D  E31F              jcxz 0x348e
0000346F  FC                cld
00003470  F9                stc
00003471  080F              or [bx],cl
00003473  00FC              add ah,bh
00003475  0303              add ax,[bp+di]
00003477  033F              add di,[bx]
00003479  F0000F            lock add [bx],cl
0000347C  C3                ret
0000347D  033F              add di,[bx]
0000347F  F3FC              rep cld
00003481  0003              add [bp+di],al
00003483  030C              add cx,[si]
00003485  C3                ret
00003486  CF                iret
00003487  3000              xor [bx+si],al
00003489  0030              add [bx+si],dh
0000348B  3303              xor ax,[bp+di]
0000348D  3003              xor [bp+di],al
0000348F  0300              add ax,[bx+si]
00003491  0300              add ax,[bx+si]
00003493  3033              xor [bp+di],dh
00003495  3330              xor si,[bx+si]
00003497  0000              add [bx+si],al
00003499  3033              xor [bp+di],dh
0000349B  0330              add si,[bx+si]
0000349D  0303              add ax,[bp+di]
0000349F  0003              add [bp+di],al
000034A1  0030              add [bx+si],dh
000034A3  3303              xor ax,[bp+di]
000034A5  3F                aas
000034A6  C00030            rol byte [bx+si],0x30
000034A9  3303              xor ax,[bp+di]
000034AB  3F                aas
000034AC  C3                ret
000034AD  FC                cld
000034AE  0003              add [bp+di],al
000034B0  0F                db 0x0F
000034B1  3F                aas
000034B2  F30330            rep add si,[bx+si]
000034B5  0000              add [bx+si],al
000034B7  3033              xor [bp+di],dh
000034B9  0330              add si,[bx+si]
000034BB  0330              add si,[bx+si]
000034BD  0003              add [bp+di],al
000034BF  0330              add si,[bx+si]
000034C1  3303              xor ax,[bp+di]
000034C3  3000              xor [bx+si],al
000034C5  0030              add [bx+si],dh
000034C7  30CC              xor ah,cl
000034C9  3003              xor [bp+di],al
000034CB  0C00              or al,0x0
000034CD  00FC              add ah,bh
000034CF  3033              xor [bp+di],dh
000034D1  033F              add di,[bx]
000034D3  F0000F            lock add [bx],cl
000034D6  C0                db 0xC0
000034D7  303F              xor [bx],bh
000034D9  F30300            rep add ax,[bx+si]
000034DC  0000              add [bx+si],al
000034DE  0000              add [bx+si],al
000034E0  0000              add [bx+si],al
000034E2  0000              add [bx+si],al
000034E4  0000              add [bx+si],al
000034E6  0000              add [bx+si],al
000034E8  0000              add [bx+si],al
000034EA  00D2              add dl,dl
000034EC  69BEFAC24421      imul di,[bp+0xc2fa],word 0x2144
000034F2  FC                cld
000034F3  FF09              dec word [bx+di]
000034F5  3435              xor al,0x35
000034F7  CA9144            retf 0x4491
000034FA  CD2D              int 0x2d
000034FC  46                inc si
000034FD  C3                ret
000034FE  7B44              jpo 0x3544
00003500  3D3600            cmp ax,0x36
00003503  2B2B              sub bp,[bp+di]
00003505  2B2B              sub bp,[bp+di]
00003507  E521              in ax,0x21
00003509  D269BE            shr byte [bx+di-0x42],cl
0000350C  E1F2              loope 0x3500
0000350E  91                xchg ax,cx
0000350F  44                inc sp
00003510  D5CD              aad 0xcd
00003512  C544D1            lds ax,[si-0x2f]
00003515  21FC              and sp,di
00003517  FF09              dec word [bx+di]
00003519  7EB7              jng 0x34d2
0000351B  CAA144            retf 0x44a1
0000351E  CD2D              int 0x2d
00003520  46                inc si
00003521  21D2              and dx,dx
00003523  69BEFAC244BA      imul di,[bp+0xc2fa],word 0xba44
00003529  F2A6              repne cmpsb
0000352B  44                inc sp
0000352C  FE                db 0xFE
0000352D  FFF2              push dx
0000352F  A6                cmpsb
00003530  44                inc sp
00003531  E1D1              loope 0x3504
00003533  C9                leave
00003534  CD68              int 0x68
00003536  19CD              sbb bp,cx
00003538  9F                lahf
00003539  47                inc di
0000353A  DA                db 0xDA
0000353B  FA                cli
0000353C  44                inc sp
0000353D  16                push ss
0000353E  10CD              adc ch,cl
00003540  FD                std
00003541  47                inc di
00003542  CD39              int 0x39
00003544  19DA              sbb dx,bx
00003546  ED                in ax,dx
00003547  44                inc sp
00003548  F5                cmc
00003549  C50B              lds cx,[bp+di]
0000354B  0B0B              or cx,[bp+di]
0000354D  0BCD              or cx,bp
0000354F  B94DCD            mov cx,0xcd4d
00003552  3846C1            cmp [bp-0x3f],al
00003555  F1                int1
00003556  C2D044            ret 0x44d0
00003559  C3                ret
0000355A  1546CD            adc ax,0xcd46
0000355D  3846CD            cmp [bp-0x33],al
00003560  21467A            and [bp+0x7a],ax
00003563  E6FE              out 0xfe,al
00003565  57                push di
00003566  C3                ret
00003567  7819              js 0x3582
00003569  16                push ss
0000356A  15C50B            adc ax,0xbc5
0000356D  0B0B              or cx,[bp+di]
0000356F  0102              add [bp+si],ax
00003571  0311              add dx,[bx+di]
00003573  B91D21            mov cx,0x211d
00003576  1000              adc [bx+si],al
00003578  7E07              jng 0x3581
0000357A  07                pop es
0000357B  07                pop es
0000357C  07                pop es
0000357D  E60F              out 0xf,al
0000357F  C6                db 0xC6
00003580  3012              xor [bp+si],dl
00003582  137EE6            adc di,[bp-0x1a]
00003585  0FC63012          shufps xmm6,[bx+si],0x12
00003589  1313              adc dx,[bp+di]
0000358B  2305              and ax,[di]
0000358D  C27835            ret 0x3578
00003590  0D2020            or ax,0x2020
00003593  FC                cld
00003594  1F                pop ds
00003595  A7                cmpsw
00003596  335601            xor dx,[bp+0x1]
00003599  6215              bound dx,[di]
0000359B  6215              bound dx,[di]
0000359D  2020              and [bx+si],ah
0000359F  FC                cld
000035A0  1F                pop ds
000035A1  97                xchg ax,di
000035A2  20972002          and [bx+0x220],dl
000035A6  06                push es
000035A7  61                popa
000035A8  1D8320            sbb ax,0x2083
000035AB  AD                lodsw
000035AC  02D5              add dl,ch
000035AE  1313              adc dx,[bp+di]
000035B0  1A13              sbb dl,[bp+di]
000035B2  06                push es
000035B3  004FCD            add [bx-0x33],cl
000035B6  3836CD48          cmp [0x48cd],dh
000035BA  360DFA22          ss or ax,0x22fa
000035BE  36047D            ss add al,0x7d
000035C1  1213              adc dl,[bp+di]
000035C3  7C12              jl 0x35d7
000035C5  133A              adc di,[bp+si]
000035C7  5F                pop di
000035C8  36B7C2            ss mov bh,0xc2
000035CB  07                pop es
000035CC  367EFE            ss jng 0x35cd
000035CF  20CA              and dl,cl
000035D1  0136FE09          add [0x9fe],si
000035D5  CA0136            retf 0x3601
000035D8  FE                db 0xFE
000035D9  2CCA              sub al,0xca
000035DB  0136FE3B          add [0x3bfe],si
000035DF  CA0136            retf 0x3601
000035E2  FE                db 0xFE
000035E3  7CCA              jl 0x35af
000035E5  2236FE0D          and dh,[0xdfe]
000035E9  CA2236            retf 0x3622
000035EC  B7CA              mov bh,0xca
000035EE  2236FE61          and dh,[0x61fe]
000035F2  DA                db 0xDA
000035F3  FD                std
000035F4  35FE7B            xor ax,0x7bfe
000035F7  F2FD              repne std
000035F9  35EE20            xor ax,0x20ee
000035FC  7723              ja 0x3621
000035FE  C3                ret
000035FF  CD35              int 0x35
00003601  360023            add [ss:bp+di],ah
00003604  C3                ret
00003605  B535              mov ch,0x35
00003607  3A5F36            cmp bl,[bx+0x36]
0000360A  96                xchg ax,si
0000360B  CA1C36            retf 0x361c
0000360E  7EFE              jng 0x360e
00003610  0DCA22            or ax,0x22ca
00003613  36B7CA            ss mov bh,0xca
00003616  223623C3          and dh,[0xc323]
0000361A  07                pop es
0000361B  36360023          add [ss:bp+di],ah
0000361F  C3                ret
00003620  CD35              int 0x35
00003622  36001B            add [ss:bp+di],bl
00003625  1A671B            sbb ah,[bx+0x1b]
00003628  1A6F7E            sbb ch,[bx+0x7e]
0000362B  B7C2              mov bh,0xc2
0000362D  303605D1          xor [0xd105],dh
00003631  AF                scasw
00003632  1213              adc dl,[bp+di]
00003634  7812              js 0x3648
00003636  B7C9              mov bh,0xc9
00003638  7EFE              jng 0x3638
0000363A  20CA              and dl,cl
0000363C  43                inc bx
0000363D  36FE09            dec byte [ss:bx+di]
00003640  C24736            ret 0x3647
00003643  23C3              and ax,bx
00003645  3836C97E          cmp [0x7ec9],dh
00003649  FE                db 0xFE
0000364A  27                daa
0000364B  CA5836            retf 0x3658
0000364E  FE                db 0xFE
0000364F  22CA              and cl,dl
00003651  58                pop ax
00003652  36AF              ss scasw
00003654  325F36            xor bl,[bx+0x36]
00003657  C9                leave
00003658  360023            add [ss:bp+di],ah
0000365B  325F36            xor bl,[bx+0x36]
0000365E  C9                leave
0000365F  0011              add [bx+di],dl
00003661  F232D5            repne xor dl,ch
00003664  EB7E              jmp short 0x36e4
00003666  23BECA7B          and di,[bp+0x7bca]
0000366A  363C2B            ss cmp al,0x2b
0000366D  7723              ja 0x3692
0000366F  8716005F          xchg dx,[0x5f00]
00003673  195E23            sbb [bp+0x23],bx
00003676  56                push si
00003677  EBD1              jmp short 0x364a
00003679  AF                scasw
0000367A  C9                leave
0000367B  37                aaa
0000367C  D1C9              ror cx,1
0000367E  C3                ret
0000367F  54                push sp
00003680  54                push sp
00003681  54                push sp
00003682  54                push sp
00003683  54                push sp
00003684  54                push sp
00003685  54                push sp
00003686  54                push sp
00003687  54                push sp
00003688  54                push sp
00003689  54                push sp
0000368A  54                push sp
0000368B  54                push sp
0000368C  54                push sp
0000368D  54                push sp
0000368E  54                push sp
0000368F  54                push sp
00003690  0000              add [bx+si],al
00003692  53                push bx
00003693  040D              add al,0xd
00003695  0002              add [bp+si],al
00003697  0000              add [bx+si],al
00003699  FF00              inc word [bx+si]
0000369B  0000              add [bx+si],al
0000369D  013D              add [di],di
0000369F  0000              add [bx+si],al
000036A1  0000              add [bx+si],al
000036A3  881D              mov [di],bl
000036A5  3200              xor al,[bx+si]
000036A7  88F8              mov al,bh
000036A9  87F4              xchg si,sp
000036AB  48                dec ax
000036AC  06                push es
000036AD  0000              add [bx+si],al
000036AF  0000              add [bx+si],al
000036B1  006868            add [bx+si+0x68],ch
000036B4  686800            push word 0x68
000036B7  0000              add [bx+si],al
000036B9  0000              add [bx+si],al
000036BB  0000              add [bx+si],al
000036BD  2A3A              sub bh,[bp+si]
000036BF  FE                db 0xFE
000036C0  3BE2              cmp sp,dx
000036C2  48                dec ax
000036C3  06                push es
000036C4  C8C53600          enter 0x36c5,0x0
000036C8  800000            add byte [bx+si],0x0
000036CB  06                push es
000036CC  C8FF0000          enter 0xff,0x0
000036D0  001E3A1E          add [0x1e3a],bl
000036D4  3A2A              cmp ch,[bp+si]
000036D6  3AFE              cmp bh,dh
000036D8  3B00              cmp ax,[bx+si]
000036DA  0000              add [bx+si],al
000036DC  00B23600          add [bp+si+0x36],dh
000036E0  00993800          add [bx+di+0x38],bl
000036E4  0000              add [bx+si],al
000036E6  0000              add [bx+si],al
000036E8  0008              add [bx+si],cl
000036EA  0800              or [bx+si],al
000036EC  6F                outsw
000036ED  356F35            xor ax,0x356f
000036F0  6F                outsw
000036F1  356F35            xor ax,0x356f
000036F4  2000              and [bx+si],al
000036F6  0000              add [bx+si],al
000036F8  0000              add [bx+si],al
000036FA  0001              add [bx+di],al
000036FC  53                push bx
000036FD  54                push sp
000036FE  41                inc cx
000036FF  43                inc bx
00003700  4B                dec bx
00003701  20A06F35          and [bx+si+0x356f],ah
00003705  0000              add [bx+si],al
00003707  3A30              cmp dh,[bx+si]
00003709  3030              xor [bx+si],dh
0000370B  3130              xor [bx+si],si
0000370D  3031              xor [bx+di],dh
0000370F  300D              xor [di],cl
00003711  0A30              or dh,[bx+si]
00003713  3230              xor dh,[bx+si]
00003715  3930              cmp [bx+si],si
00003717  3130              xor [bx+si],si
00003719  41                inc cx
0000371A  30363042          xor [0x4230],dh
0000371E  3037              xor [bx],dh
00003720  304330            xor [bp+di+0x30],al
00003723  3030              xor [bx+si],dh
00003725  44                inc sp
00003726  3030              xor [bx+si],dh
00003728  32440D            xor al,[si+0xd]
0000372B  0A30              or dh,[bx+si]
0000372D  37                aaa
0000372E  37                aaa
0000372F  3835              cmp [di],dh
00003731  41                inc cx
00003732  0D0A3F            or ax,0x3f0a
00003735  0000              add [bx+si],al
00003737  0100              add [bx+si],ax
00003739  0000              add [bx+si],al
0000373B  3B37              cmp si,[bx]
0000373D  48                dec ax
0000373E  37                aaa
0000373F  872E021D          xchg bp,[0x1d02]
00003743  002C              add [si],ch
00003745  0100              add [bx+si],ax
00003747  000A              add [bp+si],cl
00003749  06                push es
0000374A  0B07              or ax,[bx]
0000374C  49                dec cx
0000374D  54                push sp
0000374E  41                inc cx
0000374F  4C                dec sp
00003750  204D41            and [di+0x41],cl
00003753  52                push dx
00003754  4B                dec bx
00003755  45                inc bp
00003756  54                push sp
00003757  49                dec cx
00003758  4E                dec si
00003759  47                inc di
0000375A  20434F            and [bp+di+0x4f],al
0000375D  52                push dx
0000375E  50                push ax
0000375F  4F                dec di
00003760  52                push dx
00003761  41                inc cx
00003762  54                push sp
00003763  49                dec cx
00003764  4F                dec di
00003765  4E                dec si
00003766  0D0A0A            or ax,0xa0a
00003769  0D0DCF            or ax,0xcf0d
0000376C  CF                iret
0000376D  CF                iret
0000376E  CF                iret
0000376F  CF                iret
00003770  CF                iret
00003771  CF                iret
00003772  CF                iret
00003773  CF                iret
00003774  CF                iret
00003775  CF                iret
00003776  CF                iret
00003777  CF                iret
00003778  CF                iret
00003779  CF                iret
0000377A  CF                iret
0000377B  CF                iret
0000377C  CF                iret
0000377D  CF                iret
0000377E  CF                iret
0000377F  CF                iret
00003780  3E20C2            ds and dl,al
00003783  1219              adc bl,[bx+di]
00003785  21AE2535          and [bp+0x3525],bp
00003789  AF                scasw
0000378A  32DC              xor bl,ah
0000378C  07                pop es
0000378D  CD5C              int 0x5c
0000378F  1DCD66            sbb ax,0x66cd
00003792  1A3A              sbb bh,[bp+si]
00003794  0000              add [bx+si],al
00003796  3DC8CD            cmp ax,0xcdc8
00003799  661AC9            o32 sbb cl,cl
0000379C  CDD5              int 0xd5
0000379E  1ACD              sbb cl,ch
000037A0  7820              js 0x37c2
000037A2  2A04              sub al,[si]
000037A4  0222              add ah,[bp+si]
000037A6  D2062AB0          rol byte [0xb02a],cl
000037AA  2522BE            and ax,0xbe22
000037AD  06                push es
000037AE  22CE              and cl,dh
000037B0  06                push es
000037B1  2AAC2522          sub ch,[si+0x2225]
000037B5  CA06E1            retf 0xe106
000037B8  C9                leave
000037B9  2133              and [bp+di],si
000037BB  023A              add bh,[bp+si]
000037BD  05023D            add ax,0x3d02
000037C0  BEDA50            mov si,0x50da
000037C3  1923              sbb [bp+di],sp
000037C5  C3                ret
000037C6  48                dec ax
000037C7  19463A            sbb [bp+0x3a],ax
000037CA  0302              add ax,[bp+si]
000037CC  B8DA59            mov ax,0x59da
000037CF  197832            sbb [bx+si+0x32],di
000037D2  0502CD            add ax,0xcd02
000037D5  771A              ja 0x37f1
000037D7  C9                leave
000037D8  3E0C32            ds or al,0x32
000037DB  DC07              fadd qword [bx]
000037DD  CD5C              int 0x5c
000037DF  1DC93E            sbb ax,0x3ec9
000037E2  0A32              or dh,[bp+si]
000037E4  366F              ss outsw
000037E6  00A00100          add [bx+si+0x1],ah
000037EA  00A032DC          add [bx+si+0xdc32],ah
000037EE  07                pop es
000037EF  3A9707F5          cmp dl,[bx+0xf507]
000037F3  F620              mul byte [bx+si]
000037F5  329707CD          xor dl,[bx+0xcd07]
000037F9  5C                pop sp
000037FA  1DF132            sbb ax,0x32f1
000037FD  97                xchg ax,di
000037FE  07                pop es
000037FF  C9                leave
00003800  7EE6              jng 0x37e8
00003802  7FCD              jg 0x37d1
00003804  57                push di
00003805  1B3E13D2          sbb di,[0xd213]
00003809  FE                db 0xFE
0000380A  37                aaa
0000380B  B7C9              mov bh,0xc9
0000380D  CDAD              int 0xad
0000380F  4F                dec di
00003810  CD87              int 0x87
00003812  52                push dx
00003813  C22038            ret 0x3820
00003816  11F9              adc cx,di
00003818  713A              jno 0x3854
0000381A  EA6AB7C427        jmp 0x27c4:0xb76a
0000381F  2011              and [bx+di],dl
00003821  FB                sti
00003822  71CD              jno 0x37f1
00003824  27                daa
00003825  203A              and [bp+si],bh
00003827  EA6AC630CD        jmp 0xcd30:0xc66a
0000382C  6923CD1F          imul sp,[bp+di],word 0x1fcd
00003830  2020              and [bx+si],ah
00003832  0E                push cs
00003833  00AFCD51          add [bx+0x51cd],ch
00003837  4F                dec di
00003838  02FD              add bh,ch
0000383A  713A              jno 0x3876
0000383C  2000              and [bx+si],al
0000383E  CDF0              int 0xf0
00003840  20CD              and ch,cl
00003842  6923D630          imul sp,[bp+di],word 0x30d6
00003846  D8FE              fdivr st6
00003848  04D0              add al,0xd0
0000384A  32EA              xor ch,dl
0000384C  6AAF              push byte -0x51
0000384E  32A56DC9          xor ah,[di+0xc96d]
00003852  CD7C              int 0x7c
00003854  3ACD              cmp cl,ch
00003856  42                inc dx
00003857  0D3AE6            or ax,0xe63a
0000385A  6AB7              push byte -0x49
0000385C  0102              add [bp+si],ax
0000385E  72C4              jc 0x3824
00003860  27                daa
00003861  20CA              and dl,cl
00003863  59                pop cx
00003864  0DCDAC            or ax,0xaccd
00003867  52                push dx
00003868  C4                db 0xC4
00003869  F020CD            lock and ch,cl
0000386C  F4                hlt
0000386D  2B3A              sub di,[bp+si]
0000386F  E76A              out 0x6a,ax
00003871  B7C0              mov bh,0xc0
00003873  3AE6              cmp ah,dh
00003875  6AB7              push byte -0x49
00003877  C3                ret
00003878  6238              bound di,[bx+si]
0000387A  CD7C              int 0x7c
0000387C  3AC3              cmp al,bl
0000387E  42                inc dx
0000387F  0D3EFF            or ax,0xff3e
00003882  32EB              xor ch,bl
00003884  6ACD              push byte -0x33
00003886  7C3A              jl 0x38c2
00003888  C3                ret
00003889  180D              sbb [di],cl
0000388B  CDC4              int 0xc4
0000388D  4F                dec di
0000388E  3A9B6FB7          cmp bl,[bp+di+0xb76f]
00003892  C2A438            ret 0x38a4
00003895  1107              adc [bx],ax
00003897  7209              jc 0x38a2
00003899  45                inc bp
0000389A  4E                dec si
0000389B  44                inc sp
0000389C  0009              add [bx+di],cl
0000389E  45                inc bp
0000389F  51                push cx
000038A0  55                push bp
000038A1  092A              or [bp+si],bp
000038A3  2B31              sub si,[bx+di]
000038A5  3030              xor [bx+si],dh
000038A7  48                dec ax
000038A8  0020              add [bx+si],ah
000038AA  41                inc cx
000038AB  54                push sp
000038AC  202C              and [si],ch
000038AE  52                push dx
000038AF  4F                dec di
000038B0  58                pop ax
000038B1  3300              xor ax,[bx+si]
000038B3  2C30              sub al,0x30
000038B5  42                inc dx
000038B6  48                dec ax
000038B7  2C30              sub al,0x30
000038B9  37                aaa
000038BA  48                dec ax
000038BB  00482C            add [bx+si+0x2c],cl
000038BE  304148            xor [bx+di+0x48],al
000038C1  004800            add [bx+si+0x0],cl
000038C4  3330              xor si,[bx+si]
000038C6  48                dec ax
000038C7  00482C            add [bx+si+0x2c],cl
000038CA  304448            xor [si+0x48],al
000038CD  0072CD            add [bp+si-0x33],dh
000038D0  3B51D8            cmp dx,[bx+di-0x28]
000038D3  3AEA              cmp ch,dl
000038D5  6AB7              push byte -0x49
000038D7  CAEF38            retf 0x38ef
000038DA  CDAD              int 0xad
000038DC  4F                dec di
000038DD  CD87              int 0x87
000038DF  52                push dx
000038E0  CC                int3
000038E1  27                daa
000038E2  2011              and [bx+di],dl
000038E4  0372CD            add si,[bp+si-0x33]
000038E7  8752CC            xchg dx,[bp+si-0x34]
000038EA  27                daa
000038EB  20CD              and ch,cl
000038ED  59                pop cx
000038EE  4F                dec di
000038EF  3AA26D32          cmp ah,[bp+si+0x326d]
000038F3  A4                movsb
000038F4  6D                insw
000038F5  115C00            adc [si+0x0],bx
000038F8  21606A            and [bx+si+0x6a],sp
000038FB  CDDD              int 0xdd
000038FD  390E1314          cmp [0x1413],cx
00003901  45                inc bp
00003902  44                inc sp
00003903  49                dec cx
00003904  54                push sp
00003905  2028              and [bx+si],ch
00003907  4F                dec di
00003908  52                push dx
00003909  205265            and [bp+si+0x65],dl
0000390C  7475              jz 0x3983
0000390E  726E              jc 0x397e
00003910  2900              sub [bx+si],ax
00003912  C8326C00          enter 0x6c32,0x0
00003916  C3                ret
00003917  7E0B              jng 0x3924
00003919  CDD4              int 0xd4
0000391B  9F                lahf
0000391C  39480D            cmp [bx+si+0xd],cx
0000391F  0A4C53            or cl,[si+0x53]
00003922  4D                dec bp
00003923  41                inc cx
00003924  4C                dec sp
00003925  4C                dec sp
00003926  094453            or [si+0x53],ax
00003929  0930              or [bx+si],si
0000392B  3430              xor al,0x30
0000392D  30480D            xor [bx+si+0xd],cl
00003930  0A4C42            or cl,[si+0x42]
00003933  49                dec cx
00003934  47                inc di
00003935  094453            or [si+0x53],ax
00003938  0930              or [bx+si],si
0000393A  3430              xor al,0x30
0000393C  30480D            xor [bx+si+0xd],cl
0000393F  0A474F            or al,[bx+0x4f]
00003942  4D                dec bp
00003943  53                push bx
00003944  47                inc di
00003945  094453            or [si+0x53],ax
00003948  0930              or [bx+si],si
0000394A  3430              xor al,0x30
0000394C  30480D            xor [bx+si+0xd],cl
0000394F  0A09              or cl,[bx+di]
00003951  4D                dec bp
00003952  53                push bx
00003953  47                inc di
00003954  0927              or [bx],sp
00003956  44                inc sp
00003957  41                inc cx
00003958  54                push sp
00003959  41                inc cx
0000395A  205441            and [si+0x41],dl
0000395D  42                inc dx
0000395E  4C                dec sp
0000395F  45                inc bp
00003960  204154            and [bx+di+0x54],al
00003963  2027              and [bx],ah
00003965  2C44              sub al,0x44
00003967  41                inc cx
00003968  54                push sp
00003969  41                inc cx
0000396A  0D0A09            or ax,0x90a
0000396D  4D                dec bp
0000396E  53                push bx
0000396F  47                inc di
00003970  0927              or [bx],sp
00003972  52                push dx
00003973  4F                dec di
00003974  43                inc bx
00003975  4B                dec bx
00003976  205441            and [si+0x41],dl
00003979  42                inc dx
0000397A  4C                dec sp
0000397B  45                inc bp
0000397C  204154            and [bx+di+0x54],al
0000397F  2027              and [bx],ah
00003981  2C52              sub al,0x52
00003983  4F                dec di
00003984  58                pop ax
00003985  330D              xor cx,[di]
00003987  0A5354            or dl,[bp+di+0x54]
0000398A  41                inc cx
0000398B  43                inc bx
0000398C  4B                dec bx
0000398D  094551            or [di+0x51],ax
00003990  55                push bp
00003991  092A              or [bp+si],bp
00003993  2B31              sub si,[bx+di]
00003995  3030              xor [bx+si],dh
00003997  48                dec ax
00003998  0D0A09            or ax,0x90a
0000399B  45                inc bp
0000399C  4E                dec si
0000399D  44                inc sp
0000399E  0D0A0D            or ax,0xd0a
000039A1  0A1A              or bl,[bp+si]
000039A3  1A1A              sbb bl,[bp+si]
000039A5  1A1A              sbb bl,[bp+si]
000039A7  1A1A              sbb bl,[bp+si]
000039A9  1A1A              sbb bl,[bp+si]
000039AB  1A1A              sbb bl,[bp+si]
000039AD  1A1A              sbb bl,[bp+si]
000039AF  1A1A              sbb bl,[bp+si]
000039B1  1A1A              sbb bl,[bp+si]
000039B3  1A1A              sbb bl,[bp+si]
000039B5  1A1A              sbb bl,[bp+si]
000039B7  1A1A              sbb bl,[bp+si]
000039B9  1A1A              sbb bl,[bp+si]
000039BB  1A1A              sbb bl,[bp+si]
000039BD  1A1A              sbb bl,[bp+si]
000039BF  1A1A              sbb bl,[bp+si]
000039C1  1A1A              sbb bl,[bp+si]
000039C3  1A1A              sbb bl,[bp+si]
000039C5  1A1A              sbb bl,[bp+si]
000039C7  1A1A              sbb bl,[bp+si]
000039C9  1A1A              sbb bl,[bp+si]
000039CB  1A1A              sbb bl,[bp+si]
000039CD  1A1A              sbb bl,[bp+si]
000039CF  1A1A              sbb bl,[bp+si]
000039D1  1A1A              sbb bl,[bp+si]
000039D3  1A1A              sbb bl,[bp+si]
000039D5  1A1A              sbb bl,[bp+si]
000039D7  1A1A              sbb bl,[bp+si]
000039D9  1A1A              sbb bl,[bp+si]
000039DB  1A1A              sbb bl,[bp+si]
000039DD  1A1A              sbb bl,[bp+si]
000039DF  1A1A              sbb bl,[bp+si]
000039E1  1A1A              sbb bl,[bp+si]
000039E3  1A1A              sbb bl,[bp+si]
000039E5  1A1A              sbb bl,[bp+si]
000039E7  1A1A              sbb bl,[bp+si]
000039E9  1A1A              sbb bl,[bp+si]
000039EB  1A1A              sbb bl,[bp+si]
000039ED  1A1A              sbb bl,[bp+si]
000039EF  1A1A              sbb bl,[bp+si]
000039F1  1A1A              sbb bl,[bp+si]
000039F3  1A1A              sbb bl,[bp+si]
000039F5  1A1A              sbb bl,[bp+si]
000039F7  1A1A              sbb bl,[bp+si]
000039F9  1A1A              sbb bl,[bp+si]
000039FB  1A1A              sbb bl,[bp+si]
000039FD  1A1A              sbb bl,[bp+si]
000039FF  1A1A              sbb bl,[bp+si]
00003A01  1A1A              sbb bl,[bp+si]
00003A03  1A1A              sbb bl,[bp+si]
00003A05  1A1A              sbb bl,[bp+si]
00003A07  1A1A              sbb bl,[bp+si]
00003A09  1A1A              sbb bl,[bp+si]
00003A0B  1A1A              sbb bl,[bp+si]
00003A0D  1A1A              sbb bl,[bp+si]
00003A0F  1A1A              sbb bl,[bp+si]
00003A11  1A1A              sbb bl,[bp+si]
00003A13  1A1A              sbb bl,[bp+si]
00003A15  1A1A              sbb bl,[bp+si]
00003A17  1A1A              sbb bl,[bp+si]
00003A19  1A1A              sbb bl,[bp+si]
00003A1B  1A1A              sbb bl,[bp+si]
00003A1D  1A02              sbb al,[bp+si]
00003A1F  41                inc cx
00003A20  44                inc sp
00003A21  54                push sp
00003A22  45                inc bp
00003A23  53                push bx
00003A24  54                push sp
00003A25  2020              and [bx+si],ah
00003A27  41                inc cx
00003A28  53                push bx
00003A29  4D                dec bp
00003A2A  47                inc di
00003A2B  CD26              int 0x26
00003A2D  1BB7C23D          sbb si,[bx+0x3dc2]
00003A31  3A78FE            cmp bh,[bx+si-0x2]
00003A34  FFF5              push bp
00003A36  CD59              int 0x59
00003A38  4F                dec di
00003A39  F1                int1
00003A3A  E1C1              loope 0x39fd
00003A3C  C9                leave
00003A3D  CD1F              int 0x1f
00003A3F  20898942          and [bx+di+0x4289],cl
00003A43  41                inc cx
00003A44  44                inc sp
00003A45  2015              and [di],dl
00003A47  204E41            and [bp+0x41],cl
00003A4A  4D                dec bp
00003A4B  45                inc bp
00003A4C  3A20              cmp ah,[bx+si]
00003A4E  00E1              add cl,ah
00003A50  E5CD              in ax,0xcd
00003A52  3120              xor [bx+si],sp
00003A54  CD59              int 0x59
00003A56  4F                dec di
00003A57  C3                ret
00003A58  FA                cli
00003A59  3909              cmp [bx+di],cx
00003A5B  26CD01            es int 0x1
00003A5E  1DC0CD            sbb ax,0xcdc0
00003A61  1F                pop ds
00003A62  20898915          and [bx+di+0x1589],cl
00003A66  2000              and [bx+si],al
00003A68  CD31              int 0x31
00003A6A  20CD              and ch,cl
00003A6C  684F20            push word 0x204f
00003A6F  4E                dec si
00003A70  4F                dec di
00003A71  54                push sp
00003A72  20464F            and [bp+0x4f],al
00003A75  55                push bp
00003A76  4E                dec si
00003A77  44                inc sp
00003A78  0F00AFC9CD        verw [bx+0xcdc9]
00003A7D  4D                dec bp
00003A7E  4F                dec di
00003A7F  0E                push cs
00003A80  1320              adc sp,[bx+si]
00003A82  53                push bx
00003A83  41                inc cx
00003A84  56                push si
00003A85  49                dec cx
00003A86  4E                dec si
00003A87  47                inc di
00003A88  2000              and [bx+si],al
00003A8A  D511              aad 0x11
00003A8C  766A              jna 0x3af8
00003A8E  CD1F              int 0x1f
00003A90  2015              and [di],dl
00003A92  2000              and [bx+si],al
00003A94  CD27              int 0x27
00003A96  20D1              and cl,dl
00003A98  C3                ret
00003A99  59                pop cx
00003A9A  4F                dec di
00003A9B  CD1F              int 0x1f
00003A9D  2020              and [bx+si],ah
00003A9F  28592F            sub [bx+di+0x2f],bl
00003AA2  4E                dec si
00003AA3  293A              sub [bp+si],di
00003AA5  2000              and [bx+si],al
00003AA7  CD59              int 0x59
00003AA9  4F                dec di
00003AAA  CDF0              int 0xf0
00003AAC  20CD              and ch,cl
00003AAE  F4                hlt
00003AAF  2BCD              sub cx,bp
00003AB1  761B              jna 0x3ace
00003AB3  FE                db 0xFE
00003AB4  59                pop cx
00003AB5  CABA3A            retf 0x3aba
00003AB8  3E4E              ds dec si
00003ABA  CD69              int 0x69
00003ABC  23FE              and di,si
00003ABE  59                pop cx
00003ABF  C9                leave
00003AC0  C501              lds ax,[bx+di]
00003AC2  0003              add [bp+di],al
00003AC4  C3                ret
00003AC5  D7                xlatb
00003AC6  3AC5              cmp al,ch
00003AC8  0100              add [bx+si],ax
00003ACA  09C3              or bx,ax
00003ACC  D7                xlatb
00003ACD  3AC5              cmp al,ch
00003ACF  06                push es
00003AD0  19C3              sbb bx,ax
00003AD2  D7                xlatb
00003AD3  3AC5              cmp al,ch
00003AD5  06                push es
00003AD6  40                inc ax
00003AD7  CD94              int 0x94
00003AD9  21C2              and dx,ax
00003ADB  F23A3A            repne cmp bh,[bp+si]
00003ADE  E66A              out 0x6a,al
00003AE0  B7CA              mov bh,0xca
00003AE2  EC                in al,dx
00003AE3  3A0B              cmp cl,[bp+di]
00003AE5  0B79E6            or di,[bx+di-0x1a]
00003AE8  07                pop es
00003AE9  CC                int3
00003AEA  AC                lodsb
00003AEB  52                push dx
00003AEC  0B78B7            or di,[bx+si-0x49]
00003AEF  F2D7              repne xlatb
00003AF1  3AC1              cmp al,cl
00003AF3  C3                ret
00003AF4  94                xchg ax,sp
00003AF5  213A              and [bp+si],di
00003AF7  E66A              out 0x6a,al
00003AF9  B7CA              mov bh,0xca
00003AFB  27                daa
00003AFC  3B21              cmp sp,[bx+di]
00003AFE  E76A              out 0x6a,ax
00003B00  7E36              jng 0x3b38
00003B02  00B7C03E          add [bx+0x3ec0],dh
00003B06  FF32              push word [bp+si]
00003B08  8F                db 0x8F
00003B09  68CDC4            push word 0xc4cd
00003B0C  4F                dec di
00003B0D  110F              adc [bx],cx
00003B0F  72CD              jc 0x3ade
00003B11  27                daa
00003B12  20CD              and ch,cl
00003B14  59                pop cx
00003B15  4F                dec di
00003B16  CDAA              int 0xaa
00003B18  3A3E0032          cmp bh,[0x3200]
00003B1C  8F                db 0x8F
00003B1D  6877C0            push word 0xc077
00003B20  2F                das
00003B21  329068C3          xor dl,[bx+si+0xc368]
00003B25  C7                db 0xC7
00003B26  59                pop cx
00003B27  211F              and [bx],bx
00003B29  72CD              jc 0x3af8
00003B2B  3B51D8            cmp dx,[bx+di-0x28]
00003B2E  CD2D              int 0x2d
00003B30  51                push cx
00003B31  CDAD              int 0xad
00003B33  4F                dec di
00003B34  116469            adc [si+0x69],sp
00003B37  21A26ACD          and [bp+si+0xcd6a],sp
00003B3B  DA39              fidivr dword [bx+di]
00003B3D  0E                push cs
00003B3E  1314              adc dx,[si]
00003B40  50                push ax
00003B41  52                push dx
00003B42  49                dec cx
00003B43  4E                dec si
00003B44  54                push sp
00003B45  00C8              add al,cl
00003B47  CD5C              int 0x5c
00003B49  3ACA              cmp cl,dl
00003B4B  343B              xor al,0x3b
00003B4D  2B7EFE            sub di,[bp-0x2]
00003B50  1BC4              sbb ax,sp
00003B52  57                push di
00003B53  3BC3              cmp ax,bx
00003B55  5F                pop di
00003B56  51                push cx
00003B57  1111              adc [bx+di],dx
00003B59  72CD              jc 0x3b28
00003B5B  27                daa
00003B5C  20CD              and ch,cl
00003B5E  D04F3A            ror byte [bx+0x3a],1
00003B61  A26D3C            mov [0x3c6d],al
00003B64  32A46D3A          xor ah,[si+0x3a6d]
00003B68  A4                movsb
00003B69  6D                insw
00003B6A  CDF6              int 0xf6
00003B6C  1F                pop ds
00003B6D  CD62              int 0x62
00003B6F  4F                dec di
00003B70  3DCDF6            cmp ax,0xf6cd
00003B73  1F                pop ds
00003B74  1115              adc [di],dx
00003B76  72CD              jc 0x3b45
00003B78  E83BC2            call 0xfdb6
00003B7B  A13B11            mov ax,[0x113b]
00003B7E  8A6921            mov ch,[bx+di+0x21]
00003B81  B86ACD            mov ax,0xcd6a
00003B84  DA39              fidivr dword [bx+di]
00003B86  1313              adc dx,[bp+di]
00003B88  2020              and [bx+si],ah
00003B8A  204F55            and [bx+0x55],cl
00003B8D  54                push sp
00003B8E  50                push ax
00003B8F  55                push bp
00003B90  54                push sp
00003B91  2015              and [di],dl
00003B93  204E41            and [bp+0x41],cl
00003B96  4D                dec bp
00003B97  45                inc bp
00003B98  00CA              add dl,cl
00003B9A  673B3E            cmp di,[esi]
00003B9D  FF32              push word [bp+si]
00003B9F  206921            and [bx+di+0x21],ch
00003BA2  CE                into
00003BA3  6A11              push byte +0x11
00003BA5  1372CD            adc si,[bp+si-0x33]
00003BA8  754F              jnz 0x3bf9
00003BAA  221E69CD          and bl,[0xcd69]
00003BAE  624F11            bound cx,[bx+0x11]
00003BB1  17                pop ss
00003BB2  72CD              jc 0x3b81
00003BB4  E83B32            call 0x6df2
00003BB7  1D6911            sbb ax,0x1169
00003BBA  1972CD            sbb [bp+si-0x33],si
00003BBD  E83B32            call 0x6dfb
00003BC0  1B693A            sbb bp,[bx+di+0x3a]
00003BC3  2069B7            and [bx+di-0x49],ch
00003BC6  2F                das
00003BC7  111B              adc [bp+di],bx
00003BC9  72CC              jc 0x3b97
00003BCB  E83B32            call 0x6e09
00003BCE  21693A            and [bx+di+0x3a],bp
00003BD1  2069B7            and [bx+di-0x49],ch
00003BD4  C0111D            rcl byte [bx+di],0x1d
00003BD7  72CD              jc 0x3ba6
00003BD9  27                daa
00003BDA  20CD              and ch,cl
00003BDC  D04FCD            ror byte [bx-0x33],1
00003BDF  59                pop cx
00003BE0  4F                dec di
00003BE1  CDF0              int 0xf0
00003BE3  20CD              and ch,cl
00003BE5  F4                hlt
00003BE6  2BC9              sub cx,cx
00003BE8  CD1F              int 0x1f
00003BEA  2013              and [bp+di],dl
00003BEC  1300              adc ax,[bx+si]
00003BEE  CD27              int 0x27
00003BF0  20CD              and ch,cl
00003BF2  F73B              idiv word [bp+di]
00003BF4  C3                ret
00003BF5  56                push si
00003BF6  23CD              and cx,bp
00003BF8  9B                wait
00003BF9  3A3EFFC8          cmp bh,[0xc8ff]
00003BFD  2F                das
00003BFE  59                pop cx
00003BFF  45                inc bp
00003C00  4C                dec sp
00003C01  4C                dec sp
00003C02  4F                dec di
00003C03  57                push di
00003C04  A8FF              test al,0xff
00003C06  0000              add [bx+si],al
00003C08  004752            add [bx+0x52],al
00003C0B  45                inc bp
00003C0C  45                inc bp
00003C0D  4E                dec si
00003C0E  20A85500          and [bx+si+0x55],ch
00003C12  0000              add [bx+si],al
00003C14  52                push dx
00003C15  45                inc bp
00003C16  44                inc sp
00003C17  2020              and [bx+si],ah
00003C19  20A8AA00          and [bx+si+0xaa],ch
00003C1D  0000              add [bx+si],al
00003C1F  42                inc dx
00003C20  4C                dec sp
00003C21  41                inc cx
00003C22  43                inc bx
00003C23  4B                dec bx
00003C24  20A80000          and [bx+si+0x0],ch
00003C28  0000              add [bx+si],al
00003C2A  53                push bx
00003C2B  59                pop cx
00003C2C  53                push bx
00003C2D  49                dec cx
00003C2E  4E                dec si
00003C2F  54                push sp
00003C30  A81D              test al,0x1d
00003C32  0100              add [bx+si],ax
00003C34  004B49            add [bp+di+0x49],cl
00003C37  4C                dec sp
00003C38  4C                dec sp
00003C39  2020              and [bx+si],ah
00003C3B  A803              test al,0x3
00003C3D  0100              add [bx+si],ax
00003C3F  004B49            add [bp+di+0x49],cl
00003C42  4C                dec sp
00003C43  4C                dec sp
00003C44  45                inc bp
00003C45  52                push dx
00003C46  A809              test al,0x9
00003C48  0100              add [bx+si],ax
00003C4A  004B42            add [bp+di+0x42],cl
00003C4D  49                dec cx
00003C4E  56                push si
00003C4F  49                dec cx
00003C50  50                push ax
00003C51  A8DB              test al,0xdb
00003C53  0300              add ax,[bx+si]
00003C55  004B42            add [bp+di+0x42],cl
00003C58  49                dec cx
00003C59  56                push si
00003C5A  43                inc bx
00003C5B  53                push bx
00003C5C  A8DD              test al,0xdd
00003C5E  0300              add ax,[bx+si]
00003C60  004B45            add [bp+di+0x45],cl
00003C63  59                pop cx
00003C64  42                inc dx
00003C65  44                inc sp
00003C66  20A8A702          and [bx+si+0x2a7],ch
00003C6A  0000              add [bx+si],al
00003C6C  47                inc di
00003C6D  4C                dec sp
00003C6E  4F                dec di
00003C6F  52                push dx
00003C70  59                pop cx
00003C71  20A04901          and [bx+si+0x149],ah
00003C75  0000              add [bx+si],al
00003C77  54                push sp
00003C78  49                dec cx
00003C79  54                push sp
00003C7A  4C                dec sp
00003C7B  45                inc bp
00003C7C  20A83312          and [bx+si+0x1233],ch
00003C80  0000              add [bx+si],al
00003C82  50                push ax
00003C83  45                inc bp
00003C84  4E                dec si
00003C85  43                inc bx
00003C86  49                dec cx
00003C87  4C                dec sp
00003C88  A831              test al,0x31
00003C8A  1200              adc al,[bx+si]
00003C8C  005052            add [bx+si+0x52],dl
00003C8F  49                dec cx
00003C90  4E                dec si
00003C91  54                push sp
00003C92  20A8B40F          and [bx+si+0xfb4],ch
00003C96  0000              add [bx+si],al
00003C98  53                push bx
00003C99  47                inc di
00003C9A  46                inc si
00003C9B  4C                dec sp
00003C9C  47                inc di
00003C9D  20A82C12          and [bx+si+0x122c],ch
00003CA1  0000              add [bx+si],al
00003CA3  50                push ax
00003CA4  41                inc cx
00003CA5  55                push bp
00003CA6  53                push bx
00003CA7  45                inc bp
00003CA8  20A85701          and [bx+si+0x157],ch
00003CAC  0000              add [bx+si],al
00003CAE  42                inc dx
00003CAF  45                inc bp
00003CB0  47                inc di
00003CB1  49                dec cx
00003CB2  4E                dec si
00003CB3  20A85E01          and [bx+si+0x15e],ch
00003CB7  0000              add [bx+si],al
00003CB9  53                push bx
00003CBA  54                push sp
00003CBB  41                inc cx
00003CBC  43                inc bx
00003CBD  4B                dec bx
00003CBE  20A86F36          and [bx+si+0x366f],ch
00003CC2  0000              add [bx+si],al
00003CC4  50                push ax
00003CC5  45                inc bp
00003CC6  52                push dx
00003CC7  4D                dec bp
00003CC8  41                inc cx
00003CC9  20A82D12          and [bx+si+0x122d],ch
00003CCD  0000              add [bx+si],al
00003CCF  50                push ax
00003CD0  41                inc cx
00003CD1  52                push dx
00003CD2  41                inc cx
00003CD3  4D                dec bp
00003CD4  20A84810          and [bx+si+0x1048],ch
00003CD8  0000              add [bx+si],al
00003CDA  52                push dx
00003CDB  52                push dx
00003CDC  49                dec cx
00003CDD  4E                dec si
00003CDE  54                push sp
00003CDF  20A86701          and [bx+si+0x167],ch
00003CE3  0000              add [bx+si],al
00003CE5  41                inc cx
00003CE6  4E                dec si
00003CE7  47                inc di
00003CE8  4C                dec sp
00003CE9  45                inc bp
00003CEA  20A85010          and [bx+si+0x1050],ch
00003CEE  0000              add [bx+si],al
00003CF0  42                inc dx
00003CF1  55                push bp
00003CF2  54                push sp
00003CF3  54                push sp
00003CF4  4E                dec si
00003CF5  20A85F10          and [bx+si+0x105f],ch
00003CF9  0000              add [bx+si],al
00003CFB  58                pop ax
00003CFC  50                push ax
00003CFD  4F                dec di
00003CFE  53                push bx
00003CFF  2020              and [bx+si],ah
00003D01  A853              test al,0x53
00003D03  1000              adc [bx+si],al
00003D05  005950            add [bx+di+0x50],bl
00003D08  4F                dec di
00003D09  53                push bx
00003D0A  2020              and [bx+si],ah
00003D0C  A855              test al,0x55
00003D0E  1000              adc [bx+si],al
00003D10  005856            add [bx+si+0x56],bl
00003D13  45                inc bp
00003D14  4C                dec sp
00003D15  4F                dec di
00003D16  20A85910          and [bx+si+0x1059],ch
00003D1A  0000              add [bx+si],al
00003D1C  59                pop cx
00003D1D  56                push si
00003D1E  45                inc bp
00003D1F  4C                dec sp
00003D20  4F                dec di
00003D21  20A85710          and [bx+si+0x1057],ch
00003D25  0000              add [bx+si],al
00003D27  43                inc bx
00003D28  4C                dec sp
00003D29  49                dec cx
00003D2A  50                push ax
00003D2B  2020              and [bx+si],ah
00003D2D  A8FB              test al,0xfb
00003D2F  1100              adc [bx+si],ax
00003D31  005245            add [bp+si+0x45],dl
00003D34  43                inc bx
00003D35  4F                dec di
00003D36  52                push dx
00003D37  44                inc sp
00003D38  A807              test al,0x7
00003D3A  1200              adc al,[bx+si]
00003D3C  00474F            add [bx+0x4f],al
00003D3F  4E                dec si
00003D40  45                inc bp
00003D41  2020              and [bx+si],ah
00003D43  A806              test al,0x6
00003D45  1200              adc al,[bx+si]
00003D47  00434C            add [bp+di+0x4c],al
00003D4A  45                inc bp
00003D4B  41                inc cx
00003D4C  52                push dx
00003D4D  20A0A501          and [bx+si+0x1a5],ah
00003D51  0000              add [bx+si],al
00003D53  45                inc bp
00003D54  52                push dx
00003D55  41                inc cx
00003D56  53                push bx
00003D57  45                inc bp
00003D58  20A87A08          and [bx+si+0x87a],ch
00003D5C  0000              add [bx+si],al
00003D5E  56                push si
00003D5F  50                push ax
00003D60  52                push dx
00003D61  4F                dec di
00003D62  47                inc di
00003D63  20A88D08          and [bx+si+0x88d],ch
00003D67  0000              add [bx+si],al
00003D69  52                push dx
00003D6A  55                push bp
00003D6B  4B                dec bx
00003D6C  2020              and [bx+si],ah
00003D6E  20A8CB11          and [bx+si+0x11cb],ch
00003D72  0000              add [bx+si],al
00003D74  53                push bx
00003D75  48                dec ax
00003D76  49                dec cx
00003D77  50                push ax
00003D78  53                push bx
00003D79  20A80B12          and [bx+si+0x120b],ch
00003D7D  0000              add [bx+si],al
00003D7F  4C                dec sp
00003D80  54                push sp
00003D81  49                dec cx
00003D82  4D                dec bp
00003D83  45                inc bp
00003D84  52                push dx
00003D85  A825              test al,0x25
00003D87  1200              adc al,[bx+si]
00003D89  004652            add [bp+0x52],al
00003D8C  41                inc cx
00003D8D  4D                dec bp
00003D8E  45                inc bp
00003D8F  20A8BB01          and [bx+si+0x1bb],ch
00003D93  0000              add [bx+si],al
00003D95  46                inc si
00003D96  55                push bp
00003D97  4C                dec sp
00003D98  4C                dec sp
00003D99  2020              and [bx+si],ah
00003D9B  A8CB              test al,0xcb
00003D9D  0100              add [bx+si],ax
00003D9F  00494E            add [bx+di+0x4e],cl
00003DA2  49                dec cx
00003DA3  54                push sp
00003DA4  43                inc bx
00003DA5  20A8D811          and [bx+si+0x11d8],ch
00003DA9  0000              add [bx+si],al
00003DAB  4D                dec bp
00003DAC  41                inc cx
00003DAD  4E                dec si
00003DAE  59                pop cx
00003DAF  2020              and [bx+si],ah
00003DB1  A805              test al,0x5
00003DB3  1200              adc al,[bx+si]
00003DB5  00524F            add [bp+si+0x4f],dl
00003DB8  4B                dec bx
00003DB9  4C                dec sp
00003DBA  4F                dec di
00003DBB  50                push ax
00003DBC  A8D5              test al,0xd5
00003DBE  0100              add [bx+si],ax
00003DC0  005241            add [bp+si+0x41],dl
00003DC3  4E                dec si
00003DC4  44                inc sp
00003DC5  4D                dec bp
00003DC6  20A82A07          and [bx+si+0x72a],ch
00003DCA  0000              add [bx+si],al
00003DCC  53                push bx
00003DCD  49                dec cx
00003DCE  5A                pop dx
00003DCF  45                inc bp
00003DD0  2020              and [bx+si],ah
00003DD2  A8C9              test al,0xc9
00003DD4  1100              adc [bx+si],ax
00003DD6  00524E            add [bp+si+0x4e],dl
00003DD9  44                inc sp
00003DDA  3120              xor [bx+si],sp
00003DDC  20A86110          and [bx+si+0x1061],ch
00003DE0  0000              add [bx+si],al
00003DE2  52                push dx
00003DE3  4E                dec si
00003DE4  44                inc sp
00003DE5  3220              xor ah,[bx+si]
00003DE7  20A86310          and [bx+si+0x1063],ch
00003DEB  0000              add [bx+si],al
00003DED  52                push dx
00003DEE  58                pop ax
00003DEF  50                push ax
00003DF0  2020              and [bx+si],ah
00003DF2  20A8CC11          and [bx+si+0x11cc],ch
00003DF6  0000              add [bx+si],al
00003DF8  52                push dx
00003DF9  59                pop cx
00003DFA  50                push ax
00003DFB  2020              and [bx+si],ah
00003DFD  20A8CE11          and [bx+si+0x11ce],ch
00003E01  0000              add [bx+si],al
00003E03  57                push di
00003E04  41                inc cx
00003E05  59                pop cx
00003E06  2020              and [bx+si],ah
00003E08  20A80002          and [bx+si+0x200],ch
00003E0C  0000              add [bx+si],al
00003E0E  4F                dec di
00003E0F  4E                dec si
00003E10  45                inc bp
00003E11  2020              and [bx+si],ah
00003E13  20A8F401          and [bx+si+0x1f4],ch
00003E17  0000              add [bx+si],al
00003E19  52                push dx
00003E1A  4E                dec si
00003E1B  44                inc sp
00003E1C  3320              xor sp,[bx+si]
00003E1E  20A86510          and [bx+si+0x1065],ch
00003E22  0000              add [bx+si],al
00003E24  52                push dx
00003E25  58                pop ax
00003E26  56                push si
00003E27  2020              and [bx+si],ah
00003E29  20A8D011          and [bx+si+0x11d0],ch
00003E2D  0000              add [bx+si],al
00003E2F  52                push dx
00003E30  4E                dec si
00003E31  44                inc sp
00003E32  3420              xor al,0x20
00003E34  20A86710          and [bx+si+0x1067],ch
00003E38  0000              add [bx+si],al
00003E3A  52                push dx
00003E3B  59                pop cx
00003E3C  56                push si
00003E3D  2020              and [bx+si],ah
00003E3F  20A8D211          and [bx+si+0x11d2],ch
00003E43  0000              add [bx+si],al
00003E45  43                inc bx
00003E46  4C                dec sp
00003E47  4F                dec di
00003E48  44                inc sp
00003E49  2020              and [bx+si],ah
00003E4B  A879              test al,0x79
00003E4D  06                push es
00003E4E  0000              add [bx+si],al
00003E50  53                push bx
00003E51  54                push sp
00003E52  41                inc cx
00003E53  52                push dx
00003E54  54                push sp
00003E55  20A81B02          and [bx+si+0x21b],ch
00003E59  0000              add [bx+si],al
00003E5B  49                dec cx
00003E5C  4E                dec si
00003E5D  54                push sp
00003E5E  45                inc bp
00003E5F  52                push dx
00003E60  20A8DA11          and [bx+si+0x11da],ch
00003E64  0000              add [bx+si],al
00003E66  43                inc bx
00003E67  54                push sp
00003E68  52                push dx
00003E69  4C                dec sp
00003E6A  2020              and [bx+si],ah
00003E6C  A864              test al,0x64
00003E6E  0200              add al,[bx+si]
00003E70  004D4F            add [di+0x4f],cl
00003E73  56                push si
00003E74  45                inc bp
00003E75  2020              and [bx+si],ah
00003E77  A863              test al,0x63
00003E79  0400              add al,0x0
00003E7B  005344            add [bp+di+0x44],dl
00003E7E  52                push dx
00003E7F  2020              and [bx+si],ah
00003E81  20A8DF03          and [bx+si+0x3df],ch
00003E85  0000              add [bx+si],al
00003E87  41                inc cx
00003E88  54                push sp
00003E89  55                push bp
00003E8A  48                dec ax
00003E8B  2020              and [bx+si],ah
00003E8D  A8E2              test al,0xe2
00003E8F  0400              add al,0x0
00003E91  004153            add [bx+di+0x53],al
00003E94  54                push sp
00003E95  52                push dx
00003E96  2020              and [bx+si],ah
00003E98  A8F9              test al,0xf9
00003E9A  06                push es
00003E9B  0000              add [bx+si],al
00003E9D  53                push bx
00003E9E  48                dec ax
00003E9F  4F                dec di
00003EA0  4F                dec di
00003EA1  54                push sp
00003EA2  20A86907          and [bx+si+0x769],ch
00003EA6  0000              add [bx+si],al
00003EA8  4D                dec bp
00003EA9  49                dec cx
00003EAA  53                push bx
00003EAB  53                push bx
00003EAC  4C                dec sp
00003EAD  20A8D907          and [bx+si+0x7d9],ch
00003EB1  0000              add [bx+si],al
00003EB3  45                inc bp
00003EB4  58                pop ax
00003EB5  50                push ax
00003EB6  4C                dec sp
00003EB7  4F                dec di
00003EB8  20A8E509          and [bx+si+0x9e5],ch
00003EBC  0000              add [bx+si],al
00003EBE  4E                dec si
00003EBF  4F                dec di
00003EC0  4E                dec si
00003EC1  45                inc bp
00003EC2  2020              and [bx+si],ah
00003EC4  A832              test al,0x32
00003EC6  0A00              or al,[bx+si]
00003EC8  005245            add [bp+si+0x45],dl
00003ECB  4E                dec si
00003ECC  44                inc sp
00003ECD  2020              and [bx+si],ah
00003ECF  A803              test al,0x3
00003ED1  0B00              or ax,[bx+si]
00003ED3  005253            add [bp+si+0x53],dl
00003ED6  54                push sp
00003ED7  4F                dec di
00003ED8  52                push dx
00003ED9  20A8B00A          and [bx+si+0xab0],ch
00003EDD  0000              add [bx+si],al
00003EDF  41                inc cx
00003EE0  4E                dec si
00003EE1  4E                dec si
00003EE2  4F                dec di
00003EE3  59                pop cx
00003EE4  20A8B80B          and [bx+si+0xbb8],ch
00003EE8  0000              add [bx+si],al
00003EEA  4C                dec sp
00003EEB  49                dec cx
00003EEC  54                push sp
00003EED  54                push sp
00003EEE  4C                dec sp
00003EEF  45                inc bp
00003EF0  A860              test al,0x60
00003EF2  0B00              or ax,[bx+si]
00003EF4  00574F            add [bx+0x4f],dl
00003EF7  55                push bp
00003EF8  4E                dec si
00003EF9  44                inc sp
00003EFA  20A8180C          and [bx+si+0xc18],ch
00003EFE  0000              add [bx+si],al
00003F00  41                inc cx
00003F01  54                push sp
00003F02  54                push sp
00003F03  41                inc cx
00003F04  43                inc bx
00003F05  4B                dec bx
00003F06  A8E1              test al,0xe1
00003F08  0C00              or al,0x0
00003F0A  004546            add [di+0x46],al
00003F0D  49                dec cx
00003F0E  52                push dx
00003F0F  45                inc bp
00003F10  20A83D0D          and [bx+si+0xd3d],ch
00003F14  0000              add [bx+si],al
00003F16  45                inc bp
00003F17  42                inc dx
00003F18  55                push bp
00003F19  4C                dec sp
00003F1A  49                dec cx
00003F1B  54                push sp
00003F1C  A8A8              test al,0xa8
00003F1E  0D0000            or ax,0x0
00003F21  50                push ax
00003F22  53                push bx
00003F23  43                inc bx
00003F24  4F                dec di
00003F25  52                push dx
00003F26  45                inc bp
00003F27  A82F              test al,0x2f
00003F29  0E                push cs
00003F2A  0000              add [bx+si],al
00003F2C  54                push sp
00003F2D  52                push dx
00003F2E  49                dec cx
00003F2F  45                inc bp
00003F30  53                push bx
00003F31  20A8F30E          and [bx+si+0xef3],ch
00003F35  0000              add [bx+si],al
00003F37  47                inc di
00003F38  41                inc cx
00003F39  4D                dec bp
00003F3A  4F                dec di
00003F3B  56                push si
00003F3C  52                push dx
00003F3D  A839              test al,0x39
00003F3F  0F0000            sldt [bx+si]
00003F42  48                dec ax
00003F43  59                pop cx
00003F44  50                push ax
00003F45  45                inc bp
00003F46  52                push dx
00003F47  20A8700F          and [bx+si+0xf70],ch
00003F4B  0000              add [bx+si],al
00003F4D  48                dec ax
00003F4E  49                dec cx
00003F4F  54                push sp
00003F50  2020              and [bx+si],ah
00003F52  20A80812          and [bx+si+0x1208],ch
00003F56  0000              add [bx+si],al
00003F58  52                push dx
00003F59  47                inc di
00003F5A  54                push sp
00003F5B  46                inc si
00003F5C  4C                dec sp
00003F5D  47                inc di
00003F5E  A828              test al,0x28
00003F60  1200              adc al,[bx+si]
00003F62  004354            add [bp+di+0x54],al
00003F65  52                push dx
00003F66  4C                dec sp
00003F67  3120              xor [bx+si],sp
00003F69  A882              test al,0x82
00003F6B  0200              add al,[bx+si]
00003F6D  004C46            add [si+0x46],cl
00003F70  54                push sp
00003F71  46                inc si
00003F72  4C                dec sp
00003F73  47                inc di
00003F74  A829              test al,0x29
00003F76  1200              adc al,[bx+si]
00003F78  004354            add [bp+di+0x54],al
00003F7B  52                push dx
00003F7C  4C                dec sp
00003F7D  3220              xor ah,[bx+si]
00003F7F  A892              test al,0x92
00003F81  0200              add al,[bx+si]
00003F83  005453            add [si+0x53],dl
00003F86  54                push sp
00003F87  46                inc si
00003F88  4C                dec sp
00003F89  47                inc di
00003F8A  A82A              test al,0x2a
00003F8C  1200              adc al,[bx+si]
00003F8E  005446            add [si+0x46],dl
00003F91  4C                dec sp
00003F92  41                inc cx
00003F93  47                inc di
00003F94  20A86010          and [bx+si+0x1060],ch
00003F98  0000              add [bx+si],al
00003F9A  43                inc bx
00003F9B  54                push sp
00003F9C  52                push dx
00003F9D  4C                dec sp
00003F9E  45                inc bp
00003F9F  20A8A602          and [bx+si+0x2a6],ch
00003FA3  0000              add [bx+si],al
00003FA5  43                inc bx
00003FA6  54                push sp
00003FA7  52                push dx
00003FA8  4C                dec sp
00003FA9  3320              xor sp,[bx+si]
00003FAB  A8A1              test al,0xa1
00003FAD  0200              add al,[bx+si]
00003FAF  004859            add [bx+si+0x59],cl
00003FB2  50                push ax
00003FB3  4B                dec bx
00003FB4  45                inc bp
00003FB5  59                pop cx
00003FB6  A826              test al,0x26
00003FB8  0300              add ax,[bx+si]
00003FBA  004B42            add [bp+di+0x42],cl
00003FBD  3420              xor al,0x20
00003FBF  2020              and [bx+si],ah
00003FC1  A8CA              test al,0xca
00003FC3  0200              add al,[bx+si]
00003FC5  004C46            add [si+0x46],cl
00003FC8  54                push sp
00003FC9  4B                dec bx
00003FCA  45                inc bp
00003FCB  59                pop cx
00003FCC  A832              test al,0x32
00003FCE  0300              add ax,[bx+si]
00003FD0  004B42            add [bp+di+0x42],cl
00003FD3  352020            xor ax,0x2020
00003FD6  20A8D202          and [bx+si+0x2d2],ch
00003FDA  0000              add [bx+si],al
00003FDC  52                push dx
00003FDD  47                inc di
00003FDE  54                push sp
00003FDF  4B                dec bx
00003FE0  45                inc bp
00003FE1  59                pop cx
00003FE2  A845              test al,0x45
00003FE4  0300              add ax,[bx+si]
00003FE6  004B42            add [bp+di+0x42],cl
00003FE9  362020            and [ss:bx+si],ah
00003FEC  20A8DA02          and [bx+si+0x2da],ch
00003FF0  0000              add [bx+si],al
00003FF2  54                push sp
00003FF3  53                push bx
00003FF4  54                push sp
00003FF5  4B                dec bx
00003FF6  45                inc bp
00003FF7  59                pop cx
00003FF8  A858              test al,0x58
00003FFA  0300              add ax,[bx+si]
00003FFC  004B42            add [bp+di+0x42],cl
00003FFF  37                aaa
00004000  2020              and [bx+si],ah
00004002  20A8E202          and [bx+si+0x2e2],ch
00004006  0000              add [bx+si],al
00004008  46                inc si
00004009  49                dec cx
0000400A  52                push dx
0000400B  4B                dec bx
0000400C  45                inc bp
0000400D  59                pop cx
0000400E  A86B              test al,0x6b
00004010  0300              add ax,[bx+si]
00004012  004B42            add [bp+di+0x42],cl
00004015  3820              cmp [bx+si],ah
00004017  2020              and [bx+si],ah
00004019  A8EA              test al,0xea
0000401B  0200              add al,[bx+si]
0000401D  005347            add [bp+di+0x47],dl
00004020  4B                dec bx
00004021  45                inc bp
00004022  59                pop cx
00004023  20A87703          and [bx+si+0x377],ch
00004027  0000              add [bx+si],al
00004029  4B                dec bx
0000402A  42                inc dx
0000402B  3920              cmp [bx+si],sp
0000402D  2020              and [bx+si],ah
0000402F  A8F2              test al,0xf2
00004031  0200              add al,[bx+si]
00004033  004558            add [di+0x58],al
00004036  4B                dec bx
00004037  45                inc bp
00004038  59                pop cx
00004039  20A87E03          and [bx+si+0x37e],ch
0000403D  0000              add [bx+si],al
0000403F  4B                dec bx
00004040  42                inc dx
00004041  41                inc cx
00004042  2020              and [bx+si],ah
00004044  20A8FA02          and [bx+si+0x2fa],ch
00004048  0000              add [bx+si],al
0000404A  53                push bx
0000404B  4B                dec bx
0000404C  49                dec cx
0000404D  4C                dec sp
0000404E  4C                dec sp
0000404F  31A88103          xor [bx+si+0x381],bp
00004053  0000              add [bx+si],al
00004055  4B                dec bx
00004056  42                inc dx
00004057  3120              xor [bx+si],sp
00004059  2020              and [bx+si],ah
0000405B  A802              test al,0x2
0000405D  0300              add ax,[bx+si]
0000405F  00534B            add [bp+di+0x4b],dl
00004062  49                dec cx
00004063  4C                dec sp
00004064  4C                dec sp
00004065  32A88D03          xor ch,[bx+si+0x38d]
00004069  0000              add [bx+si],al
0000406B  4B                dec bx
0000406C  42                inc dx
0000406D  3220              xor ah,[bx+si]
0000406F  2020              and [bx+si],ah
00004071  A80A              test al,0xa
00004073  0300              add ax,[bx+si]
00004075  004241            add [bp+si+0x41],al
00004078  43                inc bx
00004079  4B                dec bx
0000407A  47                inc di
0000407B  52                push dx
0000407C  A8BA              test al,0xba
0000407E  0300              add ax,[bx+si]
00004080  004B42            add [bp+di+0x42],cl
00004083  3320              xor sp,[bx+si]
00004085  2020              and [bx+si],ah
00004087  A813              test al,0x13
00004089  0300              add ax,[bx+si]
0000408B  004342            add [bp+di+0x42],al
0000408E  57                push di
0000408F  2020              and [bx+si],ah
00004091  20A89903          and [bx+si+0x399],ch
00004095  0000              add [bx+si],al
00004097  4B                dec bx
00004098  42                inc dx
00004099  45                inc bp
0000409A  58                pop ax
0000409B  49                dec cx
0000409C  54                push sp
0000409D  A81B              test al,0x1b
0000409F  0300              add ax,[bx+si]
000040A1  004859            add [bx+si+0x59],cl
000040A4  50                push ax
000040A5  46                inc si
000040A6  4C                dec sp
000040A7  47                inc di
000040A8  A827              test al,0x27
000040AA  1200              adc al,[bx+si]
000040AC  00484B            add [bx+si+0x4b],cl
000040AF  45                inc bp
000040B0  58                pop ax
000040B1  54                push sp
000040B2  20A83003          and [bx+si+0x330],ch
000040B6  0000              add [bx+si],al
000040B8  4C                dec sp
000040B9  46                inc si
000040BA  54                push sp
000040BB  4F                dec di
000040BC  46                inc si
000040BD  46                inc si
000040BE  A83E              test al,0x3e
000040C0  0300              add ax,[bx+si]
000040C2  005247            add [bp+si+0x47],dl
000040C5  54                push sp
000040C6  4F                dec di
000040C7  46                inc si
000040C8  46                inc si
000040C9  A851              test al,0x51
000040CB  0300              add ax,[bx+si]
000040CD  005453            add [si+0x53],dl
000040D0  54                push sp
000040D1  4F                dec di
000040D2  46                inc si
000040D3  46                inc si
000040D4  A864              test al,0x64
000040D6  0300              add ax,[bx+si]
000040D8  004649            add [bp+0x49],al
000040DB  52                push dx
000040DC  46                inc si
000040DD  4C                dec sp
000040DE  47                inc di
000040DF  A82B              test al,0x2b
000040E1  1200              adc al,[bx+si]
000040E3  005350            add [bp+di+0x50],dl
000040E6  45                inc bp
000040E7  45                inc bp
000040E8  44                inc sp
000040E9  20A82D12          and [bx+si+0x122d],ch
000040ED  0000              add [bx+si],al
000040EF  53                push bx
000040F0  43                inc bx
000040F1  48                dec ax
000040F2  52                push dx
000040F3  4F                dec di
000040F4  4D                dec bp
000040F5  A82E              test al,0x2e
000040F7  1200              adc al,[bx+si]
000040F9  004342            add [bp+di+0x42],al
000040FC  43                inc bx
000040FD  4F                dec di
000040FE  4E                dec si
000040FF  2000              and [bx+si],al
00004101  0000              add [bx+si],al
00004103  0000              add [bx+si],al
00004105  0000              add [bx+si],al
00004107  0000              add [bx+si],al
00004109  0000              add [bx+si],al
0000410B  0000              add [bx+si],al
0000410D  0000              add [bx+si],al
0000410F  0000              add [bx+si],al
00004111  0000              add [bx+si],al
00004113  0000              add [bx+si],al
00004115  0000              add [bx+si],al
00004117  0000              add [bx+si],al
00004119  0000              add [bx+si],al
0000411B  0000              add [bx+si],al
0000411D  0000              add [bx+si],al
0000411F  0000              add [bx+si],al
00004121  0000              add [bx+si],al
00004123  0000              add [bx+si],al
00004125  0000              add [bx+si],al
00004127  0000              add [bx+si],al
00004129  0000              add [bx+si],al
0000412B  0000              add [bx+si],al
0000412D  0000              add [bx+si],al
0000412F  0000              add [bx+si],al
00004131  0000              add [bx+si],al
00004133  0000              add [bx+si],al
00004135  0000              add [bx+si],al
00004137  0000              add [bx+si],al
00004139  0000              add [bx+si],al
0000413B  0000              add [bx+si],al
0000413D  0000              add [bx+si],al
0000413F  0000              add [bx+si],al
00004141  0000              add [bx+si],al
00004143  0000              add [bx+si],al
00004145  0000              add [bx+si],al
00004147  0000              add [bx+si],al
00004149  0000              add [bx+si],al
0000414B  0000              add [bx+si],al
0000414D  0000              add [bx+si],al
0000414F  0000              add [bx+si],al
00004151  0000              add [bx+si],al
00004153  0000              add [bx+si],al
00004155  0000              add [bx+si],al
00004157  0000              add [bx+si],al
00004159  0000              add [bx+si],al
0000415B  0000              add [bx+si],al
0000415D  0000              add [bx+si],al
0000415F  0000              add [bx+si],al
00004161  0000              add [bx+si],al
00004163  0000              add [bx+si],al
00004165  0000              add [bx+si],al
00004167  0000              add [bx+si],al
00004169  0000              add [bx+si],al
0000416B  0000              add [bx+si],al
0000416D  0000              add [bx+si],al
0000416F  0000              add [bx+si],al
00004171  0000              add [bx+si],al
00004173  0000              add [bx+si],al
00004175  0000              add [bx+si],al
00004177  0000              add [bx+si],al
00004179  0000              add [bx+si],al
0000417B  0000              add [bx+si],al
0000417D  0000              add [bx+si],al
0000417F  00                db 0x00
