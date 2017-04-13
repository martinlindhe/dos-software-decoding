00000100  EB7E              jmp short 0x180
00000102  0D0A0D            or ax,0xd0a
00000105  0A0D              or cl,[di]
00000107  0A0D              or cl,[di]
00000109  0A0D              or cl,[di]
0000010B  0A0D              or cl,[di]
0000010D  0A0D              or cl,[di]
0000010F  0A0D              or cl,[di]
00000111  0A0D              or cl,[di]
00000113  0A0D              or cl,[di]
00000115  0A0D              or cl,[di]
00000117  0A5A61            or bl,[bp+si+0x61]
0000011A  7878              js 0x194
0000011C  6F                outsw
0000011D  6E                outsb
0000011E  206973            and [bx+di+0x73],ch
00000121  206272            and [bp+si+0x72],ah
00000124  6F                outsw
00000125  7567              jnz 0x18e
00000127  687420            push word 0x2074
0000012A  746F              jz 0x19b
0000012C  20796F            and [bx+di+0x6f],bh
0000012F  7520              jnz 0x151
00000131  627920            bound di,[bx+di+0x20]
00000134  3A0D              cmp cl,[di]
00000136  0A0D              or cl,[di]
00000138  0A20              or ah,[bx+si]
0000013A  2020              and [bx+si],ah
0000013C  C4                db 0xc4
0000013D  C4                db 0xc4
0000013E  C420              les sp,[bx+si]
00000140  54                push sp
00000141  686520            push word 0x2065
00000144  44                inc sp
00000145  7570              jnz 0x1b7
00000147  6C                insb
00000148  696361746F        imul sp,[bp+di+0x61],word 0x6f74
0000014D  7273              jc 0x1c2
0000014F  20C4              and ah,al
00000151  C4                db 0xc4
00000152  C40D              les cx,[di]
00000154  0A0D              or cl,[di]
00000156  0A0D              or cl,[di]
00000158  0A0D              or cl,[di]
0000015A  0A0D              or cl,[di]
0000015C  0A0D              or cl,[di]
0000015E  0A0D              or cl,[di]
00000160  0A0D              or cl,[di]
00000162  0A0D              or cl,[di]
00000164  0A0D              or cl,[di]
00000166  0A0D              or cl,[di]
00000168  0A1A              or bl,[bp+si]
0000016A  0000              add [bx+si],al
0000016C  0000              add [bx+si],al
0000016E  0000              add [bx+si],al
00000170  0000              add [bx+si],al
00000172  0000              add [bx+si],al
00000174  0000              add [bx+si],al
00000176  0000              add [bx+si],al
00000178  0000              add [bx+si],al
0000017A  0000              add [bx+si],al
0000017C  0000              add [bx+si],al
0000017E  0000              add [bx+si],al
00000180  8CC8              mov ax,cs
00000182  052000            add ax,0x20
00000185  50                push ax
00000186  050005            add ax,0x500
00000189  A30102            mov [0x201],ax
0000018C  31C0              xor ax,ax
0000018E  50                push ax
0000018F  CB                retf
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
000001D2  0000              add [bx+si],al
000001D4  0000              add [bx+si],al
000001D6  0000              add [bx+si],al
000001D8  0000              add [bx+si],al
000001DA  0000              add [bx+si],al
000001DC  0000              add [bx+si],al
000001DE  0000              add [bx+si],al
000001E0  0000              add [bx+si],al
000001E2  0000              add [bx+si],al
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
000001FA  0000              add [bx+si],al
000001FC  0000              add [bx+si],al
000001FE  0000              add [bx+si],al
00000200  B86005            mov ax,0x560
00000203  8ED8              mov ds,ax
00000205  8ED0              mov ss,ax
00000207  BC4269            mov sp,0x6942
0000020A  B800B8            mov ax,0xb800
0000020D  8EC0              mov es,ax
0000020F  E83A00            call word 0x24c
00000212  BF0000            mov di,0x0
00000215  B9B267            mov cx,0x67b2
00000218  E85F01            call word 0x37a
0000021B  FA                cli
0000021C  E421              in al,0x21
0000021E  24FE              and al,0xfe
00000220  E621              out 0x21,al
00000222  1E                push ds
00000223  8CC8              mov ax,cs
00000225  8D169101          lea dx,[0x191]
00000229  33C9              xor cx,cx
0000022B  8ED9              mov ds,cx
0000022D  BB7000            mov bx,0x70
00000230  8917              mov [bx],dx
00000232  894702            mov [bx+0x2],ax
00000235  1F                pop ds
00000236  FB                sti
00000237  E80D01            call word 0x347
0000023A  7304              jnc 0x240
0000023C  B000              mov al,0x0
0000023E  EB06              jmp short 0x246
00000240  891E0300          mov [0x3],bx
00000244  B020              mov al,0x20
00000246  A20000            mov [0x0],al
00000249  E97401            jmp word 0x3c0
0000024C  B80400            mov ax,0x4
0000024F  CD10              int 0x10
00000251  B40B              mov ah,0xb
00000253  33DB              xor bx,bx
00000255  CD10              int 0x10
00000257  B40B              mov ah,0xb
00000259  BB0101            mov bx,0x101
0000025C  CD10              int 0x10
0000025E  B90020            mov cx,0x2000
00000261  33C0              xor ax,ax
00000263  8BF8              mov di,ax
00000265  FC                cld
00000266  F3AB              rep stosw
00000268  C3                ret
00000269  52                push dx
0000026A  50                push ax
0000026B  BADA03            mov dx,0x3da
0000026E  EC                in al,dx
0000026F  2408              and al,0x8
00000271  74FB              jz 0x26e
00000273  EC                in al,dx
00000274  2408              and al,0x8
00000276  75FB              jnz 0x273
00000278  E2F4              loop 0x26e
0000027A  58                pop ax
0000027B  5A                pop dx
0000027C  C3                ret
0000027D  33C0              xor ax,ax
0000027F  CD1A              int 0x1a
00000281  3A160500          cmp dl,[0x5]
00000285  74F6              jz 0x27d
00000287  88160500          mov [0x5],dl
0000028B  C3                ret
0000028C  C606010001        mov byte [0x1],0x1
00000291  53                push bx
00000292  51                push cx
00000293  57                push di
00000294  E84204            call word 0x6d9
00000297  2E8B3F            mov di,[cs:bx]
0000029A  83C706            add di,byte +0x6
0000029D  BBD400            mov bx,0xd4
000002A0  D0E0              shl al,1
000002A2  02D8              add bl,al
000002A4  7302              jnc 0x2a8
000002A6  FEC7              inc bh
000002A8  B90500            mov cx,0x5
000002AB  E81C00            call word 0x2ca
000002AE  7303              jnc 0x2b3
000002B0  FE45FF            inc byte [di-0x1]
000002B3  4F                dec di
000002B4  4B                dec bx
000002B5  E81200            call word 0x2ca
000002B8  730C              jnc 0x2c6
000002BA  4F                dec di
000002BB  8A05              mov al,[di]
000002BD  FEC0              inc al
000002BF  37                aaa
000002C0  8805              mov [di],al
000002C2  7302              jnc 0x2c6
000002C4  E2F4              loop 0x2ba
000002C6  5F                pop di
000002C7  59                pop cx
000002C8  5B                pop bx
000002C9  C3                ret
000002CA  8A05              mov al,[di]
000002CC  2E0207            add al,[cs:bx]
000002CF  37                aaa
000002D0  8805              mov [di],al
000002D2  C3                ret
000002D3  0100              add [bx+si],ax
000002D5  0105              add [di],ax
000002D7  0200              add al,[bx+si]
000002D9  0300              add ax,[bx+si]
000002DB  050053            add ax,0x5300
000002DE  E8F803            call word 0x6d9
000002E1  2E8B5702          mov dx,[cs:bx+0x2]
000002E5  2E8B1F            mov bx,[cs:bx]
000002E8  B90800            mov cx,0x8
000002EB  803F00            cmp byte [bx],0x0
000002EE  7507              jnz 0x2f7
000002F0  43                inc bx
000002F1  42                inc dx
000002F2  E2F7              loop 0x2eb
000002F4  4B                dec bx
000002F5  4A                dec dx
000002F6  41                inc cx
000002F7  E80600            call word 0x300
000002FA  43                inc bx
000002FB  42                inc dx
000002FC  E2F9              loop 0x2f7
000002FE  5B                pop bx
000002FF  C3                ret
00000300  8A07              mov al,[bx]
00000302  0430              add al,0x30
00000304  51                push cx
00000305  53                push bx
00000306  E82A00            call word 0x333
00000309  5B                pop bx
0000030A  59                pop cx
0000030B  C3                ret
0000030C  2E8A07            mov al,[cs:bx]
0000030F  3CFF              cmp al,0xff
00000311  740E              jz 0x321
00000313  A20200            mov [0x2],al
00000316  43                inc bx
00000317  2E8B17            mov dx,[cs:bx]
0000031A  43                inc bx
0000031B  43                inc bx
0000031C  E80300            call word 0x322
0000031F  EBEB              jmp short 0x30c
00000321  C3                ret
00000322  2E8A07            mov al,[cs:bx]
00000325  43                inc bx
00000326  0AC0              or al,al
00000328  7408              jz 0x332
0000032A  53                push bx
0000032B  E80500            call word 0x333
0000032E  5B                pop bx
0000032F  42                inc dx
00000330  EBF0              jmp short 0x322
00000332  C3                ret
00000333  50                push ax
00000334  B90100            mov cx,0x1
00000337  B700              mov bh,0x0
00000339  B402              mov ah,0x2
0000033B  CD10              int 0x10
0000033D  58                pop ax
0000033E  B409              mov ah,0x9
00000340  8A1E0200          mov bl,[0x2]
00000344  CD10              int 0x10
00000346  C3                ret
00000347  33DB              xor bx,bx
00000349  BA0102            mov dx,0x201
0000034C  EE                out dx,al
0000034D  EC                in al,dx
0000034E  A801              test al,0x1
00000350  7404              jz 0x356
00000352  FEC3              inc bl
00000354  780E              js 0x364
00000356  A802              test al,0x2
00000358  7404              jz 0x35e
0000035A  FEC7              inc bh
0000035C  7806              js 0x364
0000035E  2403              and al,0x3
00000360  75EB              jnz 0x34d
00000362  F8                clc
00000363  C3                ret
00000364  F9                stc
00000365  C3                ret
00000366  BA0102            mov dx,0x201
00000369  EC                in al,dx
0000036A  2430              and al,0x30
0000036C  3C30              cmp al,0x30
0000036E  C3                ret
0000036F  B401              mov ah,0x1
00000371  CD16              int 0x16
00000373  7404              jz 0x379
00000375  B400              mov ah,0x0
00000377  CD16              int 0x16
00000379  C3                ret
0000037A  B000              mov al,0x0
0000037C  2BCF              sub cx,di
0000037E  06                push es
0000037F  1E                push ds
00000380  07                pop es
00000381  FC                cld
00000382  F3AA              rep stosb
00000384  07                pop es
00000385  C3                ret
00000386  06                push es
00000387  1E                push ds
00000388  1E                push ds
00000389  07                pop es
0000038A  0E                push cs
0000038B  1F                pop ds
0000038C  F3A4              rep movsb
0000038E  1F                pop ds
0000038F  07                pop es
00000390  C3                ret
00000391  50                push ax
00000392  53                push bx
00000393  51                push cx
00000394  52                push dx
00000395  56                push si
00000396  57                push di
00000397  1E                push ds
00000398  2EA10100          mov ax,[cs:0x1]
0000039C  8ED8              mov ds,ax
0000039E  F606000020        test byte [0x0],0x20
000003A3  7407              jz 0x3ac
000003A5  E89FFF            call word 0x347
000003A8  891E5500          mov [0x55],bx
000003AC  E8221D            call word 0x20d1
000003AF  1F                pop ds
000003B0  5F                pop di
000003B1  5E                pop si
000003B2  5A                pop dx
000003B3  59                pop cx
000003B4  5B                pop bx
000003B5  58                pop ax
000003B6  CF                iretw
000003B7  0000              add [bx+si],al
000003B9  0000              add [bx+si],al
000003BB  0000              add [bx+si],al
000003BD  0000              add [bx+si],al
000003BF  00E4              add ah,ah
000003C1  61                popaw
000003C2  0C60              or al,0x60
000003C4  E661              out 0x61,al
000003C6  E895FE            call word 0x25e
000003C9  BBA806            mov bx,0x6a8
000003CC  E83DFF            call word 0x30c
000003CF  E81C02            call word 0x5ee
000003D2  7211              jc 0x3e5
000003D4  E887FE            call word 0x25e
000003D7  E82E03            call word 0x708
000003DA  BBD806            mov bx,0x6d8
000003DD  E82CFF            call word 0x30c
000003E0  E80B02            call word 0x5ee
000003E3  73E1              jnc 0x3c6
000003E5  E8BE03            call word 0x7a6
000003E8  80260000EF        and byte [0x0],0xef
000003ED  2E8B3EE804        mov di,[cs:0x4e8]
000003F2  B91000            mov cx,0x10
000003F5  03CF              add cx,di
000003F7  E880FF            call word 0x37a
000003FA  2E8B3EEC04        mov di,[cs:0x4ec]
000003FF  B90A00            mov cx,0xa
00000402  03CF              add cx,di
00000404  E873FF            call word 0x37a
00000407  2E8B1EF004        mov bx,[cs:0x4f0]
0000040C  2E8B3EEE04        mov di,[cs:0x4ee]
00000411  C60703            mov byte [bx],0x3
00000414  C7050105          mov word [di],0x501
00000418  C6450200          mov byte [di+0x2],0x0
0000041C  F606000002        test byte [0x0],0x2
00000421  740D              jz 0x430
00000423  C6470103          mov byte [bx+0x1],0x3
00000427  C745030105        mov word [di+0x3],0x501
0000042C  C6450500          mov byte [di+0x5],0x0
00000430  C7061F000000      mov word [0x1f],0x0
00000436  E825FE            call word 0x25e
00000439  E8CC02            call word 0x708
0000043C  F606000010        test byte [0x0],0x10
00000441  7505              jnz 0x448
00000443  BBF406            mov bx,0x6f4
00000446  EB03              jmp short 0x44b
00000448  BB0707            mov bx,0x707
0000044B  BA0F0D            mov dx,0xd0f
0000044E  E8D1FE            call word 0x322
00000451  B93600            mov cx,0x36
00000454  C606250001        mov byte [0x25],0x1
00000459  E8A402            call word 0x700
0000045C  E85505            call word 0x9b4
0000045F  730F              jnc 0x470
00000461  E8E101            call word 0x645
00000464  C606680000        mov byte [0x68],0x0
00000469  C6066C0000        mov byte [0x6c],0x0
0000046E  EB03              jmp short 0x473
00000470  E84101            call word 0x5b4
00000473  E8BB0A            call word 0xf31
00000476  BB2401            mov bx,0x124
00000479  B8D0FF            mov ax,0xffd0
0000047C  A37000            mov [0x70],ax
0000047F  884702            mov [bx+0x2],al
00000482  884708            mov [bx+0x8],al
00000485  88470E            mov [bx+0xe],al
00000488  E82C10            call word 0x14b7
0000048B  E8BA04            call word 0x948
0000048E  E81C1C            call word 0x20ad
00000491  E85A0E            call word 0x12ee
00000494  E8161C            call word 0x20ad
00000497  E8D70C            call word 0x1171
0000049A  E8A113            call word 0x183e
0000049D  E8251A            call word 0x1ec5
000004A0  722F              jc 0x4d1
000004A2  E8081C            call word 0x20ad
000004A5  E8480C            call word 0x10f0
000004A8  E8FC17            call word 0x1ca7
000004AB  E8FF1B            call word 0x20ad
000004AE  E80902            call word 0x6ba
000004B1  E8F91B            call word 0x20ad
000004B4  E87A0A            call word 0xf31
000004B7  E8F31B            call word 0x20ad
000004BA  E84210            call word 0x14ff
000004BD  7212              jc 0x4d1
000004BF  F6060100FF        test byte [0x1],0xff
000004C4  74C5              jz 0x48b
000004C6  E814FE            call word 0x2dd
000004C9  E89200            call word 0x55e
000004CC  E86501            call word 0x634
000004CF  EBBA              jmp short 0x48b
000004D1  E8E004            call word 0x9b4
000004D4  A30C00            mov [0xc],ax
000004D7  C606A600FF        mov byte [0xa6],0xff
000004DC  B90A00            mov cx,0xa
000004DF  C7063B006400      mov word [0x3b],0x64
000004E5  C606210001        mov byte [0x21],0x1
000004EA  C6066F0001        mov byte [0x6f],0x1
000004EF  51                push cx
000004F0  C606A00008        mov byte [0xa0],0x8
000004F5  E88700            call word 0x57f
000004F8  C606A00009        mov byte [0xa0],0x9
000004FD  E87F00            call word 0x57f
00000500  59                pop cx
00000501  E2EC              loop 0x4ef
00000503  E8971C            call word 0x219d
00000506  BFAC00            mov di,0xac
00000509  B93C01            mov cx,0x13c
0000050C  E86BFE            call word 0x37a
0000050F  E8C701            call word 0x6d9
00000512  2E8B5F08          mov bx,[cs:bx+0x8]
00000516  FE0F              dec byte [bx]
00000518  8036000010        xor byte [0x0],0x10
0000051D  E8B901            call word 0x6d9
00000520  2E8B5F08          mov bx,[cs:bx+0x8]
00000524  F607FF            test byte [bx],0xff
00000527  7511              jnz 0x53a
00000529  8036000010        xor byte [0x0],0x10
0000052E  E8A801            call word 0x6d9
00000531  2E8B5F08          mov bx,[cs:bx+0x8]
00000535  F607FF            test byte [bx],0xff
00000538  7403              jz 0x53d
0000053A  E9F9FE            jmp word 0x436
0000053D  BB1A07            mov bx,0x71a
00000540  E8C9FD            call word 0x30c
00000543  BE9000            mov si,0x90
00000546  BF1700            mov di,0x17
00000549  E87E00            call word 0x5ca
0000054C  83C608            add si,byte +0x8
0000054F  E87800            call word 0x5ca
00000552  E8B301            call word 0x708
00000555  B99000            mov cx,0x90
00000558  E8A501            call word 0x700
0000055B  E968FE            jmp word 0x3c6
0000055E  E87801            call word 0x6d9
00000561  2E8B7708          mov si,[cs:bx+0x8]
00000565  2E8B7F0A          mov di,[cs:bx+0xa]
00000569  2E8B1F            mov bx,[cs:bx]
0000056C  F605FF            test byte [di],0xff
0000056F  750D              jnz 0x57e
00000571  807F0302          cmp byte [bx+0x3],0x2
00000575  7C07              jl 0x57e
00000577  FE04              inc byte [si]
00000579  FE05              inc byte [di]
0000057B  E9C301            jmp word 0x741
0000057E  C3                ret
0000057F  813E0C006B09      cmp word [0xc],0x96b
00000585  740F              jz 0x596
00000587  813E0C00A309      cmp word [0xc],0x9a3
0000058D  7407              jz 0x596
0000058F  F606680080        test byte [0x68],0x80
00000594  7509              jnz 0x59f
00000596  BB7000            mov bx,0x70
00000599  BE8A47            mov si,0x478a
0000059C  E8110A            call word 0xfb0
0000059F  E80B1B            call word 0x20ad
000005A2  E84B0B            call word 0x10f0
000005A5  E8051B            call word 0x20ad
000005A8  E80F01            call word 0x6ba
000005AB  E8FF1A            call word 0x20ad
000005AE  E88009            call word 0xf31
000005B1  E9F91A            jmp word 0x20ad
000005B4  BFB262            mov di,0x62b2
000005B7  B99A66            mov cx,0x669a
000005BA  B080              mov al,0x80
000005BC  E8BDFD            call word 0x37c
000005BF  C606680080        mov byte [0x68],0x80
000005C4  C6066C0001        mov byte [0x6c],0x1
000005C9  C3                ret
000005CA  56                push si
000005CB  57                push di
000005CC  B90800            mov cx,0x8
000005CF  8A04              mov al,[si]
000005D1  3A05              cmp al,[di]
000005D3  7F09              jg 0x5de
000005D5  7504              jnz 0x5db
000005D7  46                inc si
000005D8  47                inc di
000005D9  E2F4              loop 0x5cf
000005DB  5F                pop di
000005DC  5E                pop si
000005DD  C3                ret
000005DE  5F                pop di
000005DF  5E                pop si
000005E0  56                push si
000005E1  57                push di
000005E2  B90400            mov cx,0x4
000005E5  06                push es
000005E6  1E                push ds
000005E7  07                pop es
000005E8  F3A5              rep movsw
000005EA  07                pop es
000005EB  5F                pop di
000005EC  5E                pop si
000005ED  C3                ret
000005EE  B9B400            mov cx,0xb4
000005F1  51                push cx
000005F2  E888FC            call word 0x27d
000005F5  B401              mov ah,0x1
000005F7  CD16              int 0x16
000005F9  7419              jz 0x614
000005FB  B400              mov ah,0x0
000005FD  CD16              int 0x16
000005FF  3C31              cmp al,0x31
00000601  7C11              jl 0x614
00000603  3C32              cmp al,0x32
00000605  7F0D              jg 0x614
00000607  2C30              sub al,0x30
00000609  80260000F0        and byte [0x0],0xf0
0000060E  08060000          or [0x0],al
00000612  EB1D              jmp short 0x631
00000614  F606000020        test byte [0x0],0x20
00000619  7411              jz 0x62c
0000061B  E848FD            call word 0x366
0000061E  740C              jz 0x62c
00000620  3C10              cmp al,0x10
00000622  7504              jnz 0x628
00000624  B002              mov al,0x2
00000626  EBE1              jmp short 0x609
00000628  B001              mov al,0x1
0000062A  EBDD              jmp short 0x609
0000062C  59                pop cx
0000062D  E2C2              loop 0x5f1
0000062F  F8                clc
00000630  C3                ret
00000631  59                pop cx
00000632  F9                stc
00000633  C3                ret
00000634  53                push bx
00000635  E8A100            call word 0x6d9
00000638  2E8B5F06          mov bx,[cs:bx+0x6]
0000063C  BA2517            mov dx,0x1725
0000063F  B90200            mov cx,0x2
00000642  E9B2FC            jmp word 0x2f7
00000645  BF2D63            mov di,0x632d
00000648  B91600            mov cx,0x16
0000064B  BE6B04            mov si,0x46b
0000064E  06                push es
0000064F  1E                push ds
00000650  1E                push ds
00000651  07                pop es
00000652  0E                push cs
00000653  1F                pop ds
00000654  FC                cld
00000655  51                push cx
00000656  56                push si
00000657  57                push di
00000658  B91100            mov cx,0x11
0000065B  F3A5              rep movsw
0000065D  5F                pop di
0000065E  5E                pop si
0000065F  59                pop cx
00000660  83C728            add di,byte +0x28
00000663  83C602            add si,byte +0x2
00000666  E2ED              loop 0x655
00000668  1F                pop ds
00000669  07                pop es
0000066A  C3                ret
0000066B  8080808080        add byte [bx+si-0x7f80],0x80
00000670  8080808080        add byte [bx+si-0x7f80],0x80
00000675  8080808080        add byte [bx+si-0x7f80],0x80
0000067A  8080808080        add byte [bx+si-0x7f80],0x80
0000067F  8080808080        add byte [bx+si-0x7f80],0x80
00000684  8082838181        add byte [bp+si-0x7e7d],0x81
00000689  818181818181      add word [bx+di-0x7e7f],0x8181
0000068F  818181818181      add word [bx+di-0x7e7f],0x8181
00000695  818181818181      add word [bx+di-0x7e7f],0x8181
0000069B  818181818181      add word [bx+di-0x7e7f],0x8181
000006A1  818181818181      add word [bx+di-0x7e7f],0x8181
000006A7  818184858687      add word [bx+di-0x7a7c],0x8786
000006AD  8080808080        add byte [bx+si-0x7f80],0x80
000006B2  8080808080        add byte [bx+si-0x7f80],0x80
000006B7  808080B9B0        add byte [bx+si-0x4680],0xb0
000006BC  00BE1009          add [bp+0x910],bh
000006C0  BF0A00            mov di,0xa
000006C3  BB0A20            mov bx,0x200a
000006C6  FC                cld
000006C7  51                push cx
000006C8  B92200            mov cx,0x22
000006CB  F3A5              rep movsw
000006CD  59                pop cx
000006CE  83C60C            add si,byte +0xc
000006D1  83C70C            add di,byte +0xc
000006D4  87DF              xchg bx,di
000006D6  E2EF              loop 0x6c7
000006D8  C3                ret
000006D9  F606000010        test byte [0x0],0x10
000006DE  7504              jnz 0x6e4
000006E0  BBE804            mov bx,0x4e8
000006E3  C3                ret
000006E4  BBF404            mov bx,0x4f4
000006E7  C3                ret
000006E8  90                nop
000006E9  0009              add [bx+di],cl
000006EB  16                push ss
000006EC  41                inc cx
000006ED  000E0014          add [0x1400],cl
000006F1  001F              add [bx],bl
000006F3  0098001F          add [bx+si+0x1f00],bl
000006F7  16                push ss
000006F8  46                inc si
000006F9  0011              add [bx+di],dl
000006FB  0015              add [di],dl
000006FD  0020              add [bx+si],ah
000006FF  0051E8            add [bx+di-0x18],dl
00000702  79FB              jns 0x6ff
00000704  59                pop cx
00000705  E2F9              loop 0x700
00000707  C3                ret
00000708  BB6706            mov bx,0x667
0000070B  E8FEFB            call word 0x30c
0000070E  8036000010        xor byte [0x0],0x10
00000713  C606020002        mov byte [0x2],0x2
00000718  E8C2FB            call word 0x2dd
0000071B  BB6806            mov bx,0x668
0000071E  F606000010        test byte [0x0],0x10
00000723  7403              jz 0x728
00000725  BB6F06            mov bx,0x66f
00000728  2E8B17            mov dx,[cs:bx]
0000072B  83C302            add bx,byte +0x2
0000072E  E8F1FB            call word 0x322
00000731  8036000010        xor byte [0x0],0x10
00000736  C606020003        mov byte [0x2],0x3
0000073B  E89FFB            call word 0x2dd
0000073E  E8F3FE            call word 0x634
00000741  E895FF            call word 0x6d9
00000744  2E8B5F08          mov bx,[cs:bx+0x8]
00000748  8A0F              mov cl,[bx]
0000074A  81E10F00          and cx,0xf
0000074E  7420              jz 0x770
00000750  FEC9              dec cl
00000752  741C              jz 0x770
00000754  BF991D            mov di,0x1d99
00000757  BA993D            mov dx,0x3d99
0000075A  57                push di
0000075B  52                push dx
0000075C  51                push cx
0000075D  2E8B361F26        mov si,[cs:0x261f]
00000762  E81D00            call word 0x782
00000765  59                pop cx
00000766  5A                pop dx
00000767  5F                pop di
00000768  83C204            add dx,byte +0x4
0000076B  83C704            add di,byte +0x4
0000076E  E2EA              loop 0x75a
00000770  BB1700            mov bx,0x17
00000773  BA0917            mov dx,0x1709
00000776  B90800            mov cx,0x8
00000779  C606020003        mov byte [0x2],0x3
0000077E  53                push bx
0000077F  E969FB            jmp word 0x2eb
00000782  B91000            mov cx,0x10
00000785  2E8B04            mov ax,[cs:si]
00000788  260905            or [es:di],ax
0000078B  2E8B4401          mov ax,[cs:si+0x1]
0000078F  26094501          or [es:di+0x1],ax
00000793  2E8B4402          mov ax,[cs:si+0x2]
00000797  26094502          or [es:di+0x2],ax
0000079B  83C606            add si,byte +0x6
0000079E  83C750            add di,byte +0x50
000007A1  87FA              xchg di,dx
000007A3  E2E0              loop 0x785
000007A5  C3                ret
000007A6  E8B5FA            call word 0x25e
000007A9  F606000040        test byte [0x0],0x40
000007AE  7401              jz 0x7b1
000007B0  C3                ret
000007B1  F606000020        test byte [0x0],0x20
000007B6  7515              jnz 0x7cd
000007B8  BBFD05            mov bx,0x5fd
000007BB  E84EFB            call word 0x30c
000007BE  B9B400            mov cx,0xb4
000007C1  E83CFF            call word 0x700
000007C4  E897FA            call word 0x25e
000007C7  800E000040        or byte [0x0],0x40
000007CC  C3                ret
000007CD  BB3A06            mov bx,0x63a
000007D0  E839FB            call word 0x30c
000007D3  E899FB            call word 0x36f
000007D6  74FB              jz 0x7d3
000007D8  3C4B              cmp al,0x4b
000007DA  7404              jz 0x7e0
000007DC  3C6B              cmp al,0x6b
000007DE  750D              jnz 0x7ed
000007E0  80260000DF        and byte [0x0],0xdf
000007E5  800E000040        or byte [0x0],0x40
000007EA  E971FA            jmp word 0x25e
000007ED  3C6A              cmp al,0x6a
000007EF  7404              jz 0x7f5
000007F1  3C4A              cmp al,0x4a
000007F3  75DE              jnz 0x7d3
000007F5  800E000040        or byte [0x0],0x40
000007FA  E961FA            jmp word 0x25e
000007FD  0304              add ax,[si]
000007FF  0C4F              or al,0x4f
00000801  6E                outsb
00000802  6C                insb
00000803  7920              jns 0x825
00000805  4B                dec bx
00000806  657962            gs jns 0x86b
00000809  6F                outsw
0000080A  61                popaw
0000080B  7264              jc 0x871
0000080D  20436F            and [bp+di+0x6f],al
00000810  6E                outsb
00000811  7472              jz 0x885
00000813  6F                outsw
00000814  6C                insb
00000815  204176            and [bx+di+0x76],al
00000818  61                popaw
00000819  696C61626C        imul bp,[si+0x61],word 0x6c62
0000081E  650003            add [gs:bp+di],al
00000821  0A0E4A6F          or cl,[0x6f4a]
00000825  7973              jns 0x89a
00000827  7469              jz 0x892
00000829  636B20            arpl [bp+di+0x20],bp
0000082C  4E                dec si
0000082D  6F                outsw
0000082E  7420              jz 0x850
00000830  41                inc cx
00000831  7474              jz 0x8a7
00000833  61                popaw
00000834  636865            arpl [bx+si+0x65],bp
00000837  6400FF            fs add bh,bh
0000083A  030B              add cx,[bp+di]
0000083C  0C4B              or al,0x4b
0000083E  657962            gs jns 0x8a3
00000841  6F                outsw
00000842  61                popaw
00000843  7264              jc 0x8a9
00000845  20436F            and [bp+di+0x6f],al
00000848  6E                outsb
00000849  7472              jz 0x8bd
0000084B  6F                outsw
0000084C  6C                insb
0000084D  3D4B00            cmp ax,0x4b
00000850  030B              add cx,[bp+di]
00000852  0E                push cs
00000853  4A                dec dx
00000854  6F                outsw
00000855  7973              jns 0x8ca
00000857  7469              jz 0x8c2
00000859  636B20            arpl [bp+di+0x20],bp
0000085C  43                inc bx
0000085D  6F                outsw
0000085E  6E                outsb
0000085F  7472              jz 0x8d3
00000861  6F                outsw
00000862  6C                insb
00000863  3D4A00            cmp ax,0x4a
00000866  FF03              inc word [bp+di]
00000868  051631            add ax,0x3116
0000086B  55                push bp
0000086C  50                push ax
0000086D  0003              add [bp+di],al
0000086F  1B163255          sbb dx,[0x5532]
00000873  50                push ax
00000874  0003              add [bp+di],al
00000876  051754            add ax,0x5417
00000879  4F                dec di
0000087A  50                push ax
0000087B  0003              add [bp+di],al
0000087D  1817              sbb [bx],dl
0000087F  45                inc bp
00000880  4E                dec si
00000881  45                inc bp
00000882  4D                dec bp
00000883  59                pop cx
00000884  20504C            and [bx+si+0x4c],dl
00000887  41                inc cx
00000888  4E                dec si
00000889  45                inc bp
0000088A  53                push bx
0000088B  0002              add [bp+si],al
0000088D  051846            add ax,0x4618
00000890  55                push bp
00000891  45                inc bp
00000892  4C                dec sp
00000893  2020              and [bx+si],ah
00000895  204500            and [di+0x0],al
00000898  021C              add bl,[si]
0000089A  184600            sbb [bp+0x0],al
0000089D  0103              add [bp+di],ax
0000089F  07                pop es
000008A0  48                dec ax
000008A1  0001              add [bx+di],al
000008A3  030E4C00          add cx,[0x4c]
000008A7  FF03              inc word [bp+di]
000008A9  100C              adc [si],cl
000008AB  5A                pop dx
000008AC  204120            and [bx+di+0x20],al
000008AF  58                pop ax
000008B0  205820            and [bx+si+0x20],bl
000008B3  4F                dec di
000008B4  204E00            and [bp+0x0],cl
000008B7  0207              add al,[bx]
000008B9  0E                push cs
000008BA  6320              arpl [bx+si],sp
000008BC  3139              xor [bx+di],di
000008BE  3834              cmp [si],dh
000008C0  205365            and [bp+di+0x65],dl
000008C3  6761              a32 popaw
000008C5  20456E            and [di+0x6e],al
000008C8  7465              jz 0x92f
000008CA  7270              jc 0x93c
000008CC  7269              jc 0x937
000008CE  7365              jnc 0x935
000008D0  7320              jnc 0x8f2
000008D2  49                dec cx
000008D3  6E                outsb
000008D4  632E00FF          arpl [0xff00],bp
000008D8  0311              add dx,[bx+di]
000008DA  0C45              or al,0x45
000008DC  6E                outsb
000008DD  7465              jz 0x944
000008DF  7200              jc 0x8e1
000008E1  030D              add cx,[di]
000008E3  0E                push cs
000008E4  3120              xor [bx+si],sp
000008E6  6F                outsw
000008E7  7220              jc 0x909
000008E9  3220              xor ah,[bx+si]
000008EB  50                push ax
000008EC  6C                insb
000008ED  61                popaw
000008EE  7965              jns 0x955
000008F0  7273              jc 0x965
000008F2  00FF              add bh,bh
000008F4  50                push ax
000008F5  6C                insb
000008F6  61                popaw
000008F7  7965              jns 0x95e
000008F9  7220              jc 0x91b
000008FB  3120              xor [bx+si],sp
000008FD  59                pop cx
000008FE  6F                outsw
000008FF  7572              jnz 0x973
00000901  205475            and [si+0x75],dl
00000904  726E              jc 0x974
00000906  00506C            add [bx+si+0x6c],dl
00000909  61                popaw
0000090A  7965              jns 0x971
0000090C  7220              jc 0x92e
0000090E  3220              xor ah,[bx+si]
00000910  59                pop cx
00000911  6F                outsw
00000912  7572              jnz 0x986
00000914  205475            and [si+0x75],dl
00000917  726E              jc 0x987
00000919  0003              add [bp+di],al
0000091B  100E2020          adc [0x2020],cl
0000091F  2020              and [bx+si],ah
00000921  2020              and [bx+si],ah
00000923  2020              and [bx+si],ah
00000925  2020              and [bx+si],ah
00000927  2000              and [bx+si],al
00000929  0310              add dx,[bx+si]
0000092B  0F                db 0x0f
0000092C  204741            and [bx+0x41],al
0000092F  4D                dec bp
00000930  45                inc bp
00000931  204F56            and [bx+0x56],cl
00000934  45                inc bp
00000935  52                push dx
00000936  2000              and [bx+si],al
00000938  0310              add dx,[bx+si]
0000093A  1020              adc [bx+si],ah
0000093C  2020              and [bx+si],ah
0000093E  2020              and [bx+si],ah
00000940  2020              and [bx+si],ah
00000942  2020              and [bx+si],ah
00000944  2020              and [bx+si],ah
00000946  00FF              add bh,bh
00000948  E88EFD            call word 0x6d9
0000094B  2E8B5F04          mov bx,[cs:bx+0x4]
0000094F  8A4702            mov al,[bx+0x2]
00000952  8B2F              mov bp,[bx]
00000954  8BD5              mov dx,bp
00000956  81C55E07          add bp,0x75e
0000095A  2EFF6600          jmp word [cs:bp+0x0]
0000095E  6B09FC            imul cx,[bx+di],byte -0x4
00000961  07                pop es
00000962  210A              and [bp+si],cx
00000964  FC                cld
00000965  07                pop es
00000966  FF09              dec word [bx+di]
00000968  FC                cld
00000969  07                pop es
0000096A  100A              adc [bp+si],cl
0000096C  FC                cld
0000096D  07                pop es
0000096E  210A              and [bp+si],cx
00000970  FC                cld
00000971  07                pop es
00000972  A309FC            mov [0xfc09],ax
00000975  07                pop es
00000976  43                inc bx
00000977  17                pop ss
00000978  43                inc bx
00000979  17                pop ss
0000097A  6B09FC            imul cx,[bx+di],byte -0x4
0000097D  07                pop es
0000097E  320A              xor cl,[bp+si]
00000980  FC                cld
00000981  07                pop es
00000982  031A              add bx,[bp+si]
00000984  0218              add bl,[bx+si]
00000986  6B09FC            imul cx,[bx+di],byte -0x4
00000989  07                pop es
0000098A  210A              and [bp+si],cx
0000098C  FC                cld
0000098D  07                pop es
0000098E  320A              xor cl,[bp+si]
00000990  FC                cld
00000991  07                pop es
00000992  43                inc bx
00000993  0AFC              or bh,ah
00000995  07                pop es
00000996  100A              adc [bp+si],cl
00000998  FC                cld
00000999  07                pop es
0000099A  210A              and [bp+si],cx
0000099C  FC                cld
0000099D  07                pop es
0000099E  A309FC            mov [0xfc09],ax
000009A1  07                pop es
000009A2  43                inc bx
000009A3  17                pop ss
000009A4  43                inc bx
000009A5  17                pop ss
000009A6  6B09FC            imul cx,[bx+di],byte -0x4
000009A9  07                pop es
000009AA  43                inc bx
000009AB  0AFC              or bh,ah
000009AD  07                pop es
000009AE  031A              add bx,[bp+si]
000009B0  0218              add bl,[bx+si]
000009B2  FF                db 0xff
000009B3  FF                db 0xff
000009B4  E822FD            call word 0x6d9
000009B7  2E8B5F04          mov bx,[cs:bx+0x4]
000009BB  8127FCFF          and word [bx],0xfffc
000009BF  C6470200          mov byte [bx+0x2],0x0
000009C3  BD5E07            mov bp,0x75e
000009C6  032F              add bp,[bx]
000009C8  2E8B4600          mov ax,[cs:bp+0x0]
000009CC  3D6B09            cmp ax,0x96b
000009CF  7408              jz 0x9d9
000009D1  3D4317            cmp ax,0x1743
000009D4  7505              jnz 0x9db
000009D6  E80400            call word 0x9dd
000009D9  F8                clc
000009DA  C3                ret
000009DB  F9                stc
000009DC  C3                ret
000009DD  E8F9FC            call word 0x6d9
000009E0  2E8B5F04          mov bx,[cs:bx+0x4]
000009E4  830702            add word [bx],byte +0x2
000009E7  BE5E07            mov si,0x75e
000009EA  0337              add si,[bx]
000009EC  2E813CFFFF        cmp word [cs:si],0xffff
000009F1  7504              jnz 0x9f7
000009F3  C7070000          mov word [bx],0x0
000009F7  C6470200          mov byte [bx+0x2],0x0
000009FB  C3                ret
000009FC  BB7000            mov bx,0x70
000009FF  FF0F              dec word [bx]
00000A01  FF4702            inc word [bx+0x2]
00000A04  8B07              mov ax,[bx]
00000A06  3D0700            cmp ax,0x7
00000A09  7516              jnz 0xa21
00000A0B  F606680001        test byte [0x68],0x1
00000A10  740A              jz 0xa1c
00000A12  8036680080        xor byte [0x68],0x80
00000A17  8026680080        and byte [0x68],0x80
00000A1C  800E6E0001        or byte [0x6e],0x1
00000A21  3DD0FF            cmp ax,0xffd0
00000A24  7E0C              jng 0xa32
00000A26  BB7000            mov bx,0x70
00000A29  BE8A47            mov si,0x478a
00000A2C  E88105            call word 0xfb0
00000A2F  E81400            call word 0xa46
00000A32  F6066C00FF        test byte [0x6c],0xff
00000A37  7503              jnz 0xa3c
00000A39  E9440C            jmp word 0x1680
00000A3C  833E7000D0        cmp word [0x70],byte -0x30
00000A41  7F02              jg 0xa45
00000A43  EB98              jmp short 0x9dd
00000A45  C3                ret
00000A46  BF1A64            mov di,0x641a
00000A49  8B4702            mov ax,[bx+0x2]
00000A4C  D1F8              sar ax,1
00000A4E  D1F8              sar ax,1
00000A50  B428              mov ah,0x28
00000A52  F6EC              imul ah
00000A54  03F8              add di,ax
00000A56  8B07              mov ax,[bx]
00000A58  D1F8              sar ax,1
00000A5A  03F8              add di,ax
00000A5C  8B360600          mov si,[0x6]
00000A60  3DE8FF            cmp ax,0xffe8
00000A63  7F01              jg 0xa66
00000A65  C3                ret
00000A66  0BC0              or ax,ax
00000A68  7D0E              jnl 0xa78
00000A6A  B91800            mov cx,0x18
00000A6D  47                inc di
00000A6E  49                dec cx
00000A6F  40                inc ax
00000A70  75FB              jnz 0xa6d
00000A72  0BC9              or cx,cx
00000A74  7E11              jng 0xa87
00000A76  EB0C              jmp short 0xa84
00000A78  8BCA              mov cx,dx
00000A7A  D1F9              sar cx,1
00000A7C  83F918            cmp cx,byte +0x18
00000A7F  7C03              jl 0xa84
00000A81  B91800            mov cx,0x18
00000A84  E8FFF8            call word 0x386
00000A87  8B07              mov ax,[bx]
00000A89  D1F8              sar ax,1
00000A8B  3D1000            cmp ax,0x10
00000A8E  7D5B              jnl 0xaeb
00000A90  3DEDFF            cmp ax,0xffed
00000A93  7E56              jng 0xaeb
00000A95  BFB262            mov di,0x62b2
00000A98  03F8              add di,ax
00000A9A  8B4702            mov ax,[bx+0x2]
00000A9D  D1F8              sar ax,1
00000A9F  D1F8              sar ax,1
00000AA1  BA2800            mov dx,0x28
00000AA4  F7EA              imul dx
00000AA6  03F8              add di,ax
00000AA8  8B5702            mov dx,[bx+0x2]
00000AAB  8BC2              mov ax,dx
00000AAD  8B1E0600          mov bx,[0x6]
00000AB1  83C318            add bx,byte +0x18
00000AB4  250300            and ax,0x3
00000AB7  B406              mov ah,0x6
00000AB9  F6E4              mul ah
00000ABB  03D8              add bx,ax
00000ABD  2E8B0F            mov cx,[cs:bx]
00000AC0  2E037F02          add di,[cs:bx+0x2]
00000AC4  2E8A4704          mov al,[cs:bx+0x4]
00000AC8  83FA64            cmp dx,byte +0x64
00000ACB  7D1E              jnl 0xaeb
00000ACD  83FA0C            cmp dx,byte +0xc
00000AD0  7C02              jl 0xad4
00000AD2  8805              mov [di],al
00000AD4  83C728            add di,byte +0x28
00000AD7  83C204            add dx,byte +0x4
00000ADA  E2EC              loop 0xac8
00000ADC  2E8A4705          mov al,[cs:bx+0x5]
00000AE0  8805              mov [di],al
00000AE2  3C80              cmp al,0x80
00000AE4  7402              jz 0xae8
00000AE6  0402              add al,0x2
00000AE8  884528            mov [di+0x28],al
00000AEB  A17000            mov ax,[0x70]
00000AEE  3D0A00            cmp ax,0xa
00000AF1  7F09              jg 0xafc
00000AF3  3DF0FF            cmp ax,0xfff0
00000AF6  7C04              jl 0xafc
00000AF8  B0FF              mov al,0xff
00000AFA  EB02              jmp short 0xafe
00000AFC  B010              mov al,0x10
00000AFE  A2A600            mov [0xa6],al
00000B01  C3                ret
00000B02  0203              add al,[bp+di]
00000B04  0101              add [bx+di],ax
00000B06  0101              add [bx+di],ax
00000B08  0101              add [bx+di],ax
00000B0A  0101              add [bx+di],ax
00000B0C  0101              add [bx+di],ax
00000B0E  0101              add [bx+di],ax
00000B10  0101              add [bx+di],ax
00000B12  0101              add [bx+di],ax
00000B14  0101              add [bx+di],ax
00000B16  0101              add [bx+di],ax
00000B18  0101              add [bx+di],ax
00000B1A  0F0017            lldt [bx]
00000B1D  0081850F          add [bx+di+0xf85],al
00000B21  0018              add [bx+si],bl
00000B23  0081850F          add [bx+di+0xf85],al
00000B27  0017              add [bx],dl
00000B29  0081840F          add [bx+di+0xf84],al
00000B2D  0018              add [bx+si],bl
00000B2F  00818480          add [bx+di-0x7f7c],al
00000B33  8080808080        add byte [bx+si-0x7f80],0x80
00000B38  8080808080        add byte [bx+si-0x7f80],0x80
00000B3D  8080808080        add byte [bx+si-0x7f80],0x80
00000B42  8080808080        add byte [bx+si-0x7f80],0x80
00000B47  8080801000        add byte [bx+si+0x1080],0x0
00000B4C  17                pop ss
00000B4D  00808010          add [bx+si+0x1080],al
00000B51  0018              add [bx+si],bl
00000B53  00808011          add [bx+si+0x1180],al
00000B57  0017              add [bx],dl
00000B59  00808011          add [bx+si+0x1180],al
00000B5D  0018              add [bx+si],bl
00000B5F  008080BF          add [bx+si-0x4080],al
00000B63  8A47B9            mov al,[bx-0x47]
00000B66  8A62E9            mov ah,[bp+si-0x17]
00000B69  0FF83C            psubb mm7,[si]
00000B6C  007514            add [di+0x14],dh
00000B6F  E8BF01            call word 0xd31
00000B72  FE4702            inc byte [bx+0x2]
00000B75  C6066C0000        mov byte [0x6c],0x0
00000B7A  C7060900151E      mov word [0x9],0x1e15
00000B80  E90101            jmp word 0xc84
00000B83  3C01              cmp al,0x1
00000B85  7509              jnz 0xb90
00000B87  FE4702            inc byte [bx+0x2]
00000B8A  BB073A            mov bx,0x3a07
00000B8D  E9FD00            jmp word 0xc8d
00000B90  BBB73A            mov bx,0x3ab7
00000B93  BEF20A            mov si,0xaf2
00000B96  C606680081        mov byte [0x68],0x81
00000B9B  C6060B0000        mov byte [0xb],0x0
00000BA0  E9BC00            jmp word 0xc5f
00000BA3  3C00              cmp al,0x0
00000BA5  7510              jnz 0xbb7
00000BA7  FE4702            inc byte [bx+0x2]
00000BAA  C7060900151E      mov word [0x9],0x1e15
00000BB0  C6066C0001        mov byte [0x6c],0x1
00000BB5  EBAB              jmp short 0xb62
00000BB7  3C01              cmp al,0x1
00000BB9  750F              jnz 0xbca
00000BBB  FE4702            inc byte [bx+0x2]
00000BBE  C70606003209      mov word [0x6],0x932
00000BC4  BBB73A            mov bx,0x3ab7
00000BC7  E9C300            jmp word 0xc8d
00000BCA  BB5F3A            mov bx,0x3a5f
00000BCD  BEF20A            mov si,0xaf2
00000BD0  C606680001        mov byte [0x68],0x1
00000BD5  C6060B0000        mov byte [0xb],0x0
00000BDA  E98200            jmp word 0xc5f
00000BDD  BDAF3A            mov bp,0x3aaf
00000BE0  C7060900151E      mov word [0x9],0x1e15
00000BE6  C6060B0000        mov byte [0xb],0x0
00000BEB  EB64              jmp short 0xc51
00000BED  90                nop
00000BEE  BDB13A            mov bp,0x3ab1
00000BF1  C70609002A1E      mov word [0x9],0x1e2a
00000BF7  C6060B0001        mov byte [0xb],0x1
00000BFC  EB53              jmp short 0xc51
00000BFE  90                nop
00000BFF  BDB33A            mov bp,0x3ab3
00000C02  C7060900471E      mov word [0x9],0x1e47
00000C08  C6060B0000        mov byte [0xb],0x0
00000C0D  EB42              jmp short 0xc51
00000C0F  90                nop
00000C10  BDB53A            mov bp,0x3ab5
00000C13  C7060900551E      mov word [0x9],0x1e55
00000C19  C6060B0000        mov byte [0xb],0x0
00000C1E  EB31              jmp short 0xc51
00000C20  90                nop
00000C21  BDB13A            mov bp,0x3ab1
00000C24  C7060900691E      mov word [0x9],0x1e69
00000C2A  C6060B0003        mov byte [0xb],0x3
00000C2F  EB20              jmp short 0xc51
00000C31  90                nop
00000C32  BDB13A            mov bp,0x3ab1
00000C35  C7060900771E      mov word [0x9],0x1e77
00000C3B  C6060B0005        mov byte [0xb],0x5
00000C40  EB0F              jmp short 0xc51
00000C42  90                nop
00000C43  BDB33A            mov bp,0x3ab3
00000C46  C7060900841E      mov word [0x9],0x1e84
00000C4C  C6060B0001        mov byte [0xb],0x1
00000C51  FE4702            inc byte [bx+0x2]
00000C54  2E8B5E00          mov bx,[cs:bp+0x0]
00000C58  0AC0              or al,al
00000C5A  7428              jz 0xc84
00000C5C  BEEA0A            mov si,0xaea
00000C5F  80266E00FE        and byte [0x6e],0xfe
00000C64  56                push si
00000C65  E82500            call word 0xc8d
00000C68  2E803F00          cmp byte [cs:bx],0x0
00000C6C  740C              jz 0xc7a
00000C6E  B92400            mov cx,0x24
00000C71  BF3601            mov di,0x136
00000C74  BEFA0A            mov si,0xafa
00000C77  E80CF7            call word 0x386
00000C7A  E860FD            call word 0x9dd
00000C7D  5E                pop si
00000C7E  BB7000            mov bx,0x70
00000C81  E9A400            jmp word 0xd28
00000C84  C70606000209      mov word [0x6],0x902
00000C8A  BB9B39            mov bx,0x399b
00000C8D  BF8A47            mov di,0x478a
00000C90  B91200            mov cx,0x12
00000C93  51                push cx
00000C94  B118              mov cl,0x18
00000C96  2E8A07            mov al,[cs:bx]
00000C99  B400              mov ah,0x0
00000C9B  3CFC              cmp al,0xfc
00000C9D  723D              jc 0xcdc
00000C9F  3CFD              cmp al,0xfd
00000CA1  7518              jnz 0xcbb
00000CA3  43                inc bx
00000CA4  2E8A07            mov al,[cs:bx]
00000CA7  8BE8              mov bp,ax
00000CA9  43                inc bx
00000CAA  2E8A07            mov al,[cs:bx]
00000CAD  E86E00            call word 0xd1e
00000CB0  49                dec cx
00000CB1  4D                dec bp
00000CB2  75F6              jnz 0xcaa
00000CB4  43                inc bx
00000CB5  0BC9              or cx,cx
00000CB7  75DD              jnz 0xc96
00000CB9  EB27              jmp short 0xce2
00000CBB  3CFE              cmp al,0xfe
00000CBD  750F              jnz 0xcce
00000CBF  43                inc bx
00000CC0  2E8A07            mov al,[cs:bx]
00000CC3  43                inc bx
00000CC4  03F8              add di,ax
00000CC6  03F8              add di,ax
00000CC8  2BC8              sub cx,ax
00000CCA  7416              jz 0xce2
00000CCC  EBC8              jmp short 0xc96
00000CCE  3CFF              cmp al,0xff
00000CD0  7507              jnz 0xcd9
00000CD2  D1E1              shl cx,1
00000CD4  03F9              add di,cx
00000CD6  43                inc bx
00000CD7  EB09              jmp short 0xce2
00000CD9  59                pop cx
00000CDA  43                inc bx
00000CDB  C3                ret
00000CDC  E83F00            call word 0xd1e
00000CDF  43                inc bx
00000CE0  E2B4              loop 0xc96
00000CE2  81C75001          add di,0x150
00000CE6  59                pop cx
00000CE7  E2AA              loop 0xc93
00000CE9  C3                ret
00000CEA  4A                dec dx
00000CEB  00DC              add ah,bl
00000CED  FF30              push word [bx+si]
00000CEF  003C              add [si],bh
00000CF1  004A00            add [bp+si+0x0],cl
00000CF4  DCFF              fdiv to st7
00000CF6  3000              xor [bx+si],al
00000CF8  48                dec ax
00000CF9  00F0              add al,dh
00000CFB  006DEF            add [di-0x11],ch
00000CFE  0000              add [bx+si],al
00000D00  F2006DFB          repne add [di-0x5],ch
00000D04  0000              add [bx+si],al
00000D06  F3006D07          rep add [di+0x7],ch
00000D0A  0000              add [bx+si],al
00000D0C  F1                int1
00000D0D  0073F3            add [bp+di-0xd],dh
00000D10  0000              add [bx+si],al
00000D12  F4                hlt
00000D13  0073FF            add [bp+di-0x1],dh
00000D16  0000              add [bx+si],al
00000D18  F5                cmc
00000D19  00730B            add [bp+di+0xb],dh
00000D1C  0000              add [bx+si],al
00000D1E  57                push di
00000D1F  51                push cx
00000D20  E84202            call word 0xf65
00000D23  59                pop cx
00000D24  5F                pop di
00000D25  47                inc di
00000D26  47                inc di
00000D27  C3                ret
00000D28  BF7000            mov di,0x70
00000D2B  B90800            mov cx,0x8
00000D2E  E955F6            jmp word 0x386
00000D31  53                push bx
00000D32  51                push cx
00000D33  56                push si
00000D34  57                push di
00000D35  E8A1F9            call word 0x6d9
00000D38  2E8B5F06          mov bx,[cs:bx+0x6]
00000D3C  F707FFFF          test word [bx],0xffff
00000D40  7534              jnz 0xd76
00000D42  C7070200          mov word [bx],0x2
00000D46  E815F5            call word 0x25e
00000D49  BB7B0B            mov bx,0xb7b
00000D4C  BA0C0F            mov dx,0xf0c
00000D4F  E8D0F5            call word 0x322
00000D52  B004              mov al,0x4
00000D54  E835F5            call word 0x28c
00000D57  B004              mov al,0x4
00000D59  E830F5            call word 0x28c
00000D5C  B93600            mov cx,0x36
00000D5F  E89EF9            call word 0x700
00000D62  E8F9F4            call word 0x25e
00000D65  E8A0F9            call word 0x708
00000D68  B000              mov al,0x0
00000D6A  A26800            mov [0x68],al
00000D6D  A26C00            mov [0x6c],al
00000D70  C7067000D0FF      mov word [0x70],0xffd0
00000D76  5F                pop di
00000D77  5E                pop si
00000D78  5A                pop dx
00000D79  5B                pop bx
00000D7A  C3                ret
00000D7B  3130              xor [bx+si],si
00000D7D  3030              xor [bx+si],dh
00000D7F  20506F            and [bx+si+0x6f],dl
00000D82  696E742042        imul bp,[bp+0x74],word 0x4220
00000D87  4F                dec di
00000D88  4E                dec si
00000D89  55                push bp
00000D8A  53                push bx
00000D8B  00807F02          add [bx+si+0x27f],al
00000D8F  007E2C            add [bp+0x2c],bh
00000D92  807F0364          cmp byte [bx+0x3],0x64
00000D96  7D26              jnl 0xdbe
00000D98  803F12            cmp byte [bx],0x12
00000D9B  7213              jc 0xdb0
00000D9D  803F16            cmp byte [bx],0x16
00000DA0  770E              ja 0xdb0
00000DA2  807F024A          cmp byte [bx+0x2],0x4a
00000DA6  7F16              jg 0xdbe
00000DA8  807F0300          cmp byte [bx+0x3],0x0
00000DAC  7C10              jl 0xdbe
00000DAE  EB0C              jmp short 0xdbc
00000DB0  807F024A          cmp byte [bx+0x2],0x4a
00000DB4  7F0B              jg 0xdc1
00000DB6  807F0300          cmp byte [bx+0x3],0x0
00000DBA  7C05              jl 0xdc1
00000DBC  F9                stc
00000DBD  C3                ret
00000DBE  C607FF            mov byte [bx],0xff
00000DC1  F8                clc
00000DC2  C3                ret
00000DC3  BF8A01            mov di,0x18a
00000DC6  B0A0              mov al,0xa0
00000DC8  F66703            mul byte [bx+0x3]
00000DCB  024702            add al,[bx+0x2]
00000DCE  7302              jnc 0xdd2
00000DD0  FEC4              inc ah
00000DD2  03F8              add di,ax
00000DD4  8A07              mov al,[bx]
00000DD6  3CF0              cmp al,0xf0
00000DD8  7203              jc 0xddd
00000DDA  E90601            jmp word 0xee3
00000DDD  BD1326            mov bp,0x2613
00000DE0  B400              mov ah,0x0
00000DE2  D1E0              shl ax,1
00000DE4  D1E0              shl ax,1
00000DE6  03E8              add bp,ax
00000DE8  2E8B7600          mov si,[cs:bp+0x0]
00000DEC  2EFF6602          jmp word [cs:bp+0x2]
00000DF0  B91800            mov cx,0x18
00000DF3  51                push cx
00000DF4  B103              mov cl,0x3
00000DF6  2E8B849000        mov ax,[cs:si+0x90]
00000DFB  2305              and ax,[di]
00000DFD  2E0B04            or ax,[cs:si]
00000E00  8905              mov [di],ax
00000E02  46                inc si
00000E03  46                inc si
00000E04  47                inc di
00000E05  47                inc di
00000E06  E2EE              loop 0xdf6
00000E08  59                pop cx
00000E09  83C74A            add di,byte +0x4a
00000E0C  E2E5              loop 0xdf3
00000E0E  C3                ret
00000E0F  81C74001          add di,0x140
00000E13  B91000            mov cx,0x10
00000E16  2E8B04            mov ax,[cs:si]
00000E19  0905              or [di],ax
00000E1B  2E8B4402          mov ax,[cs:si+0x2]
00000E1F  094502            or [di+0x2],ax
00000E22  83C604            add si,byte +0x4
00000E25  83C750            add di,byte +0x50
00000E28  E2EC              loop 0xe16
00000E2A  C3                ret
00000E2B  81C74101          add di,0x141
00000E2F  B91000            mov cx,0x10
00000E32  2E8B04            mov ax,[cs:si]
00000E35  0905              or [di],ax
00000E37  2E8B4402          mov ax,[cs:si+0x2]
00000E3B  094502            or [di+0x2],ax
00000E3E  2E8B4404          mov ax,[cs:si+0x4]
00000E42  094504            or [di+0x4],ax
00000E45  83C606            add si,byte +0x6
00000E48  83C750            add di,byte +0x50
00000E4B  E2E5              loop 0xe32
00000E4D  C3                ret
00000E4E  81C74101          add di,0x141
00000E52  B91000            mov cx,0x10
00000E55  8B05              mov ax,[di]
00000E57  2E234440          and ax,[cs:si+0x40]
00000E5B  2E0B04            or ax,[cs:si]
00000E5E  8905              mov [di],ax
00000E60  8B4502            mov ax,[di+0x2]
00000E63  2E234442          and ax,[cs:si+0x42]
00000E67  2E0B4402          or ax,[cs:si+0x2]
00000E6B  894502            mov [di+0x2],ax
00000E6E  83C604            add si,byte +0x4
00000E71  83C750            add di,byte +0x50
00000E74  E2DF              loop 0xe55
00000E76  C3                ret
00000E77  81C74001          add di,0x140
00000E7B  B91000            mov cx,0x10
00000E7E  51                push cx
00000E7F  B103              mov cl,0x3
00000E81  8B05              mov ax,[di]
00000E83  2E234460          and ax,[cs:si+0x60]
00000E87  2E0B04            or ax,[cs:si]
00000E8A  8905              mov [di],ax
00000E8C  46                inc si
00000E8D  46                inc si
00000E8E  47                inc di
00000E8F  47                inc di
00000E90  E2EF              loop 0xe81
00000E92  59                pop cx
00000E93  83C74A            add di,byte +0x4a
00000E96  E2E6              loop 0xe7e
00000E98  C3                ret
00000E99  81C78202          add di,0x282
00000E9D  B90800            mov cx,0x8
00000EA0  2E8B04            mov ax,[cs:si]
00000EA3  0905              or [di],ax
00000EA5  46                inc si
00000EA6  46                inc si
00000EA7  83C750            add di,byte +0x50
00000EAA  E2F4              loop 0xea0
00000EAC  C3                ret
00000EAD  81C78202          add di,0x282
00000EB1  B90800            mov cx,0x8
00000EB4  8B05              mov ax,[di]
00000EB6  2E234408          and ax,[cs:si+0x8]
00000EBA  2E0B04            or ax,[cs:si]
00000EBD  8905              mov [di],ax
00000EBF  46                inc si
00000EC0  46                inc si
00000EC1  83C750            add di,byte +0x50
00000EC4  E2EE              loop 0xeb4
00000EC6  C3                ret
00000EC7  B91000            mov cx,0x10
00000ECA  81C7E001          add di,0x1e0
00000ECE  51                push cx
00000ECF  B103              mov cl,0x3
00000ED1  2E8B04            mov ax,[cs:si]
00000ED4  2105              and [di],ax
00000ED6  46                inc si
00000ED7  46                inc si
00000ED8  47                inc di
00000ED9  47                inc di
00000EDA  E2F5              loop 0xed1
00000EDC  59                pop cx
00000EDD  83C74A            add di,byte +0x4a
00000EE0  E2EC              loop 0xece
00000EE2  C3                ret
00000EE3  53                push bx
00000EE4  52                push dx
00000EE5  3CFF              cmp al,0xff
00000EE7  7445              jz 0xf2e
00000EE9  250F00            and ax,0xf
00000EEC  BE4D0E            mov si,0xe4d
00000EEF  D1E0              shl ax,1
00000EF1  D1E0              shl ax,1
00000EF3  03F0              add si,ax
00000EF5  2E8B1C            mov bx,[cs:si]
00000EF8  2E8B7402          mov si,[cs:si+0x2]
00000EFC  B91800            mov cx,0x18
00000EFF  51                push cx
00000F00  B103              mov cl,0x3
00000F02  2E8B07            mov ax,[cs:bx]
00000F05  8BD0              mov dx,ax
00000F07  F7D0              not ax
00000F09  2304              and ax,[si]
00000F0B  2315              and dx,[di]
00000F0D  0BC2              or ax,dx
00000F0F  8905              mov [di],ax
00000F11  46                inc si
00000F12  46                inc si
00000F13  47                inc di
00000F14  47                inc di
00000F15  81FBAD0E          cmp bx,0xead
00000F19  7408              jz 0xf23
00000F1B  81FBDF0E          cmp bx,0xedf
00000F1F  7402              jz 0xf23
00000F21  43                inc bx
00000F22  43                inc bx
00000F23  E2DD              loop 0xf02
00000F25  59                pop cx
00000F26  83C74A            add di,byte +0x4a
00000F29  83C62A            add si,byte +0x2a
00000F2C  E2D1              loop 0xeff
00000F2E  5A                pop dx
00000F2F  5B                pop bx
00000F30  C3                ret
00000F31  BB2D63            mov bx,0x632d
00000F34  BF1009            mov di,0x910
00000F37  B91600            mov cx,0x16
00000F3A  51                push cx
00000F3B  B122              mov cl,0x22
00000F3D  8A07              mov al,[bx]
00000F3F  A880              test al,0x80
00000F41  740D              jz 0xf50
00000F43  51                push cx
00000F44  57                push di
00000F45  53                push bx
00000F46  247F              and al,0x7f
00000F48  8807              mov [bx],al
00000F4A  E81300            call word 0xf60
00000F4D  5B                pop bx
00000F4E  5F                pop di
00000F4F  59                pop cx
00000F50  47                inc di
00000F51  47                inc di
00000F52  43                inc bx
00000F53  E2E8              loop 0xf3d
00000F55  59                pop cx
00000F56  81C73C02          add di,0x23c
00000F5A  83C306            add bx,byte +0x6
00000F5D  E2DB              loop 0xf3a
00000F5F  C3                ret
00000F60  BA5000            mov dx,0x50
00000F63  EB03              jmp short 0xf68
00000F65  BA3000            mov dx,0x30
00000F68  BEDD1F            mov si,0x1fdd
00000F6B  B400              mov ah,0x0
00000F6D  D1E0              shl ax,1
00000F6F  03F0              add si,ax
00000F71  2E8B34            mov si,[cs:si]
00000F74  B108              mov cl,0x8
00000F76  2E8B04            mov ax,[cs:si]
00000F79  8905              mov [di],ax
00000F7B  46                inc si
00000F7C  46                inc si
00000F7D  03FA              add di,dx
00000F7F  E2F5              loop 0xf76
00000F81  C3                ret
00000F82  BA5000            mov dx,0x50
00000F85  BEDD1F            mov si,0x1fdd
00000F88  B400              mov ah,0x0
00000F8A  D1E0              shl ax,1
00000F8C  03F0              add si,ax
00000F8E  2E8B34            mov si,[cs:si]
00000F91  B104              mov cl,0x4
00000F93  2E8B04            mov ax,[cs:si]
00000F96  268905            mov [es:di],ax
00000F99  46                inc si
00000F9A  46                inc si
00000F9B  81F70020          xor di,0x2000
00000F9F  2E8B04            mov ax,[cs:si]
00000FA2  268905            mov [es:di],ax
00000FA5  46                inc si
00000FA6  46                inc si
00000FA7  81F70020          xor di,0x2000
00000FAB  03FA              add di,dx
00000FAD  E2E4              loop 0xf93
00000FAF  C3                ret
00000FB0  BF8A01            mov di,0x18a
00000FB3  8B4702            mov ax,[bx+0x2]
00000FB6  3D6400            cmp ax,0x64
00000FB9  7D17              jnl 0xfd2
00000FBB  034706            add ax,[bx+0x6]
00000FBE  3D0C00            cmp ax,0xc
00000FC1  7E0F              jng 0xfd2
00000FC3  8B07              mov ax,[bx]
00000FC5  3D4A00            cmp ax,0x4a
00000FC8  7D08              jnl 0xfd2
00000FCA  034704            add ax,[bx+0x4]
00000FCD  3D0600            cmp ax,0x6
00000FD0  7F02              jg 0xfd4
00000FD2  F8                clc
00000FD3  C3                ret
00000FD4  837F0200          cmp word [bx+0x2],byte +0x0
00000FD8  7D10              jnl 0xfea
00000FDA  8B4F06            mov cx,[bx+0x6]
00000FDD  034F02            add cx,[bx+0x2]
00000FE0  B8A0FF            mov ax,0xffa0
00000FE3  F76F02            imul word [bx+0x2]
00000FE6  03F0              add si,ax
00000FE8  EB20              jmp short 0x100a
00000FEA  B85000            mov ax,0x50
00000FED  F76702            mul word [bx+0x2]
00000FF0  03F8              add di,ax
00000FF2  03F8              add di,ax
00000FF4  8B4702            mov ax,[bx+0x2]
00000FF7  034706            add ax,[bx+0x6]
00000FFA  3D6400            cmp ax,0x64
00000FFD  7E08              jng 0x1007
00000FFF  B96400            mov cx,0x64
00001002  2B4F02            sub cx,[bx+0x2]
00001005  EB03              jmp short 0x100a
00001007  8B4F06            mov cx,[bx+0x6]
0000100A  833F00            cmp word [bx],byte +0x0
0000100D  7D0D              jnl 0x101c
0000100F  8B5704            mov dx,[bx+0x4]
00001012  0317              add dx,[bx]
00001014  33C0              xor ax,ax
00001016  2B07              sub ax,[bx]
00001018  03F0              add si,ax
0000101A  EB16              jmp short 0x1032
0000101C  033F              add di,[bx]
0000101E  8B07              mov ax,[bx]
00001020  034704            add ax,[bx+0x4]
00001023  3D4A00            cmp ax,0x4a
00001026  7E07              jng 0x102f
00001028  BA4A00            mov dx,0x4a
0000102B  2B17              sub dx,[bx]
0000102D  EB03              jmp short 0x1032
0000102F  8B5704            mov dx,[bx+0x4]
00001032  03C9              add cx,cx
00001034  06                push es
00001035  1E                push ds
00001036  07                pop es
00001037  FC                cld
00001038  51                push cx
00001039  56                push si
0000103A  57                push di
0000103B  8BCA              mov cx,dx
0000103D  F3A4              rep movsb
0000103F  5F                pop di
00001040  5E                pop si
00001041  59                pop cx
00001042  83C750            add di,byte +0x50
00001045  83C630            add si,byte +0x30
00001048  E2EE              loop 0x1038
0000104A  07                pop es
0000104B  F9                stc
0000104C  C3                ret
0000104D  7D0E              jnl 0x105d
0000104F  2C4F              sub al,0x4f
00001051  AF                scasw
00001052  0E                push cs
00001053  B250              mov dl,0x50
00001055  AD                lodsw
00001056  0E                push cs
00001057  AC                lodsb
00001058  53                push bx
00001059  AD                lodsw
0000105A  0E                push cs
0000105B  2C58              sub al,0x58
0000105D  AD                lodsw
0000105E  0E                push cs
0000105F  3255AD            xor dl,[di-0x53]
00001062  0E                push cs
00001063  B259              mov dl,0x59
00001065  AD                lodsw
00001066  0E                push cs
00001067  8A47AD            mov al,[bx-0x53]
0000106A  0E                push cs
0000106B  0A4CAD            or cl,[si-0x53]
0000106E  0E                push cs
0000106F  8A50AD            mov dl,[bx+si-0x53]
00001072  0E                push cs
00001073  1049AD            adc [bx+di-0x53],cl
00001076  0E                push cs
00001077  90                nop
00001078  4D                dec bp
00001079  AD                lodsw
0000107A  0E                push cs
0000107B  1052FF            adc [bp+si-0x1],dl
0000107E  FF                db 0xff
0000107F  FF                db 0xff
00001080  FF                db 0xff
00001081  FF                db 0xff
00001082  FF                db 0xff
00001083  FF                db 0xff
00001084  FF                db 0xff
00001085  FF                db 0xff
00001086  FF                db 0xff
00001087  FF                db 0xff
00001088  FF                db 0xff
00001089  FF                db 0xff
0000108A  FF                db 0xff
0000108B  FF                db 0xff
0000108C  FF                db 0xff
0000108D  FF                db 0xff
0000108E  FF                db 0xff
0000108F  FF                db 0xff
00001090  FF                db 0xff
00001091  FF                db 0xff
00001092  FF                db 0xff
00001093  FF                db 0xff
00001094  FF                db 0xff
00001095  FF                db 0xff
00001096  FF03              inc word [bp+di]
00001098  FF                db 0xff
00001099  FF                db 0xff
0000109A  FF                db 0xff
0000109B  FFF0              push ax
0000109D  00F0              add al,dh
0000109F  FF                db 0xff
000010A0  FF                db 0xff
000010A1  FF00              inc word [bx+si]
000010A3  0000              add [bx+si],al
000010A5  3F                aas
000010A6  FFF0              push ax
000010A8  0000              add [bx+si],al
000010AA  0000              add [bx+si],al
000010AC  FF00              inc word [bx+si]
000010AE  00FF              add bh,bh
000010B0  FF                db 0xff
000010B1  FF                db 0xff
000010B2  FF                db 0xff
000010B3  FF                db 0xff
000010B4  FF03              inc word [bp+di]
000010B6  FF                db 0xff
000010B7  FF                db 0xff
000010B8  FF                db 0xff
000010B9  FF                db 0xff
000010BA  FF00              inc word [bx+si]
000010BC  0FFF              ud0
000010BE  FF                db 0xff
000010BF  FF                db 0xff
000010C0  FF00              inc word [bx+si]
000010C2  00FF              add bh,bh
000010C4  FF                db 0xff
000010C5  FF                db 0xff
000010C6  FF00              inc word [bx+si]
000010C8  0003              add [bp+di],al
000010CA  FF                db 0xff
000010CB  FF                db 0xff
000010CC  FF00              inc word [bx+si]
000010CE  0000              add [bx+si],al
000010D0  0FFF              ud0
000010D2  FF00              inc word [bx+si]
000010D4  0000              add [bx+si],al
000010D6  003F              add [bx],bh
000010D8  FF00              inc word [bx+si]
000010DA  0000              add [bx+si],al
000010DC  0000              add [bx+si],al
000010DE  FF00              inc word [bx+si]
000010E0  0000              add [bx+si],al
000010E2  0000              add [bx+si],al
000010E4  0000              add [bx+si],al
000010E6  0000              add [bx+si],al
000010E8  0000              add [bx+si],al
000010EA  0000              add [bx+si],al
000010EC  0000              add [bx+si],al
000010EE  0000              add [bx+si],al
000010F0  BBA600            mov bx,0xa6
000010F3  803FFF            cmp byte [bx],0xff
000010F6  7403              jz 0x10fb
000010F8  E89D00            call word 0x1198
000010FB  BBAC00            mov bx,0xac
000010FE  A0A200            mov al,[0xa2]
00001101  8A26A400          mov ah,[0xa4]
00001105  0404              add al,0x4
00001107  B91700            mov cx,0x17
0000110A  33ED              xor bp,bp
0000110C  50                push ax
0000110D  803FFF            cmp byte [bx],0xff
00001110  7420              jz 0x1132
00001112  81FBF400          cmp bx,0xf4
00001116  7202              jc 0x111a
00001118  04F8              add al,0xf8
0000111A  3A4702            cmp al,[bx+0x2]
0000111D  730A              jnc 0x1129
0000111F  386704            cmp [bx+0x4],ah
00001122  7705              ja 0x1129
00001124  58                pop ax
00001125  53                push bx
00001126  45                inc bp
00001127  EB0A              jmp short 0x1133
00001129  53                push bx
0000112A  51                push cx
0000112B  55                push bp
0000112C  E86900            call word 0x1198
0000112F  5D                pop bp
00001130  59                pop cx
00001131  5B                pop bx
00001132  58                pop ax
00001133  83C306            add bx,byte +0x6
00001136  E2D4              loop 0x110c
00001138  55                push bp
00001139  BBA000            mov bx,0xa0
0000113C  E85900            call word 0x1198
0000113F  E86B0F            call word 0x20ad
00001142  59                pop cx
00001143  83F900            cmp cx,byte +0x0
00001146  7408              jz 0x1150
00001148  5B                pop bx
00001149  51                push cx
0000114A  E84B00            call word 0x1198
0000114D  59                pop cx
0000114E  E2F8              loop 0x1148
00001150  F6066E0001        test byte [0x6e],0x1
00001155  7419              jz 0x1170
00001157  F6066F00FF        test byte [0x6f],0xff
0000115C  7512              jnz 0x1170
0000115E  B90600            mov cx,0x6
00001161  BB3601            mov bx,0x136
00001164  51                push cx
00001165  53                push bx
00001166  E82F00            call word 0x1198
00001169  5B                pop bx
0000116A  59                pop cx
0000116B  83C306            add bx,byte +0x6
0000116E  E2F4              loop 0x1164
00001170  C3                ret
00001171  BBAC00            mov bx,0xac
00001174  B91D00            mov cx,0x1d
00001177  803FFF            cmp byte [bx],0xff
0000117A  7416              jz 0x1192
0000117C  8B7701            mov si,[bx+0x1]
0000117F  81E60700          and si,0x7
00001183  D1E6              shl si,1
00001185  81C6F50F          add si,0xff5
00001189  2E8B04            mov ax,[cs:si]
0000118C  004702            add [bx+0x2],al
0000118F  006703            add [bx+0x3],ah
00001192  83C306            add bx,byte +0x6
00001195  E2E0              loop 0x1177
00001197  C3                ret
00001198  E8F1FB            call word 0xd8c
0000119B  7357              jnc 0x11f4
0000119D  53                push bx
0000119E  E822FC            call word 0xdc3
000011A1  5B                pop bx
000011A2  8A5702            mov dl,[bx+0x2]
000011A5  0A5703            or dl,[bx+0x3]
000011A8  8A4703            mov al,[bx+0x3]
000011AB  24FC              and al,0xfc
000011AD  B40A              mov ah,0xa
000011AF  F6E4              mul ah
000011B1  8A5F02            mov bl,[bx+0x2]
000011B4  B700              mov bh,0x0
000011B6  D1EB              shr bx,1
000011B8  03D8              add bx,ax
000011BA  81C3B262          add bx,0x62b2
000011BE  B080              mov al,0x80
000011C0  0807              or [bx],al
000011C2  084701            or [bx+0x1],al
000011C5  084702            or [bx+0x2],al
000011C8  084728            or [bx+0x28],al
000011CB  084729            or [bx+0x29],al
000011CE  08472A            or [bx+0x2a],al
000011D1  084750            or [bx+0x50],al
000011D4  084751            or [bx+0x51],al
000011D7  084752            or [bx+0x52],al
000011DA  F6C203            test dl,0x3
000011DD  7415              jz 0x11f4
000011DF  084703            or [bx+0x3],al
000011E2  08472B            or [bx+0x2b],al
000011E5  084753            or [bx+0x53],al
000011E8  084778            or [bx+0x78],al
000011EB  084779            or [bx+0x79],al
000011EE  08477A            or [bx+0x7a],al
000011F1  08477B            or [bx+0x7b],al
000011F4  C3                ret
000011F5  FF01              inc word [bx+di]
000011F7  03FD              add di,bp
000011F9  FD                std
000011FA  03FC              add di,sp
000011FC  FE                db 0xfe
000011FD  FE                db 0xfe
000011FE  FE00              inc byte [bx+si]
00001200  0000              add [bx+si],al
00001202  0003              add [bp+di],al
00001204  0300              add ax,[bx+si]
00001206  0000              add [bx+si],al
00001208  0000              add [bx+si],al
0000120A  0000              add [bx+si],al
0000120C  0000              add [bx+si],al
0000120E  0000              add [bx+si],al
00001210  B400              mov ah,0x0
00001212  CD16              int 0x16
00001214  50                push ax
00001215  B401              mov ah,0x1
00001217  CD16              int 0x16
00001219  7403              jz 0x121e
0000121B  58                pop ax
0000121C  EBF2              jmp short 0x1210
0000121E  58                pop ax
0000121F  C3                ret
00001220  E87A0F            call word 0x219d
00001223  BF2100            mov di,0x21
00001226  B93400            mov cx,0x34
00001229  E84EF1            call word 0x37a
0000122C  B401              mov ah,0x1
0000122E  CD16              int 0x16
00001230  74FA              jz 0x122c
00001232  B400              mov ah,0x0
00001234  CD16              int 0x16
00001236  3D1B01            cmp ax,0x11b
00001239  75F1              jnz 0x122c
0000123B  C3                ret
0000123C  B401              mov ah,0x1
0000123E  CD16              int 0x16
00001240  740B              jz 0x124d
00001242  E8CBFF            call word 0x1210
00001245  3D1B01            cmp ax,0x11b
00001248  7503              jnz 0x124d
0000124A  E8D3FF            call word 0x1220
0000124D  8B1E5500          mov bx,[0x55]
00001251  8AE7              mov ah,bh
00001253  2A260400          sub ah,[0x4]
00001257  E84200            call word 0x129c
0000125A  B004              mov al,0x4
0000125C  F6E4              mul ah
0000125E  8AE3              mov ah,bl
00001260  2A260300          sub ah,[0x3]
00001264  E83500            call word 0x129c
00001267  8AD4              mov dl,ah
00001269  D0EC              shr ah,1
0000126B  02C4              add al,ah
0000126D  BB7C10            mov bx,0x107c
00001270  2ED7              cs xlatb
00001272  F6C201            test dl,0x1
00001275  7504              jnz 0x127b
00001277  B104              mov cl,0x4
00001279  D2E8              shr al,cl
0000127B  C3                ret
0000127C  7722              ja 0x12a0
0000127E  225577            and dl,[di+0x77]
00001281  2222              and ah,[bp+si]
00001283  55                push bp
00001284  337225            xor si,[bp+si+0x25]
00001287  1133              adc [bp+di],si
00001289  88881133          mov [bx+si+0x3311],cl
0000128D  88881133          mov [bx+si+0x3311],cl
00001291  60                pushaw
00001292  0411              add al,0x11
00001294  660000            o32 add [bx+si],al
00001297  44                inc sp
00001298  660000            o32 add [bx+si],al
0000129B  44                inc sp
0000129C  80C410            add ah,0x10
0000129F  7903              jns 0x12a4
000012A1  32E4              xor ah,ah
000012A3  C3                ret
000012A4  80FC1F            cmp ah,0x1f
000012A7  7C02              jl 0x12ab
000012A9  B41F              mov ah,0x1f
000012AB  D0EC              shr ah,1
000012AD  D0EC              shr ah,1
000012AF  C3                ret
000012B0  B401              mov ah,0x1
000012B2  CD16              int 0x16
000012B4  742A              jz 0x12e0
000012B6  E857FF            call word 0x1210
000012B9  3D1B01            cmp ax,0x11b
000012BC  7503              jnz 0x12c1
000012BE  E85FFF            call word 0x1220
000012C1  3C20              cmp al,0x20
000012C3  7507              jnz 0x12cc
000012C5  C6063F0001        mov byte [0x3f],0x1
000012CA  EB14              jmp short 0x12e0
000012CC  3D0052            cmp ax,0x5200
000012CF  7D0F              jnl 0x12e0
000012D1  3D0046            cmp ax,0x4600
000012D4  7E0A              jng 0x12e0
000012D6  8AC4              mov al,ah
000012D8  2C47              sub al,0x47
000012DA  BBE310            mov bx,0x10e3
000012DD  2ED7              cs xlatb
000012DF  C3                ret
000012E0  B008              mov al,0x8
000012E2  C3                ret
000012E3  07                pop es
000012E4  0205              add al,[di]
000012E6  0803              or [bp+di],al
000012E8  0801              or [bx+di],al
000012EA  08060004          or [0x400],al
000012EE  F606000020        test byte [0x0],0x20
000012F3  7402              jz 0x12f7
000012F5  EB10              jmp short 0x1307
000012F7  E8B6FF            call word 0x12b0
000012FA  BBA000            mov bx,0xa0
000012FD  250F00            and ax,0xf
00001300  3C08              cmp al,0x8
00001302  7513              jnz 0x1317
00001304  E9CA00            jmp word 0x13d1
00001307  E832FF            call word 0x123c
0000130A  250F00            and ax,0xf
0000130D  3C08              cmp al,0x8
0000130F  BBA000            mov bx,0xa0
00001312  7503              jnz 0x1317
00001314  E9BA00            jmp word 0x13d1
00001317  C606080000        mov byte [0x8],0x0
0000131C  3C04              cmp al,0x4
0000131E  7306              jnc 0x1326
00001320  A801              test al,0x1
00001322  7429              jz 0x134d
00001324  EB49              jmp short 0x136f
00001326  C606080002        mov byte [0x8],0x2
0000132B  A801              test al,0x1
0000132D  750F              jnz 0x133e
0000132F  807F0400          cmp byte [bx+0x4],0x0
00001333  7527              jnz 0x135c
00001335  C606080000        mov byte [0x8],0x0
0000133A  04FD              add al,0xfd
0000133C  EB31              jmp short 0x136f
0000133E  807F0414          cmp byte [bx+0x4],0x14
00001342  7227              jc 0x136b
00001344  C606080000        mov byte [0x8],0x0
00001349  04FC              add al,0xfc
0000134B  EB22              jmp short 0x136f
0000134D  3C00              cmp al,0x0
0000134F  C606080001        mov byte [0x8],0x1
00001354  750C              jnz 0x1362
00001356  807F0400          cmp byte [bx+0x4],0x0
0000135A  740C              jz 0x1368
0000135C  804704FE          add byte [bx+0x4],0xfe
00001360  EB0D              jmp short 0x136f
00001362  807F0414          cmp byte [bx+0x4],0x14
00001366  7203              jc 0x136b
00001368  EB67              jmp short 0x13d1
0000136A  90                nop
0000136B  80470402          add byte [bx+0x4],0x2
0000136F  BEA712            mov si,0x12a7
00001372  8BC8              mov cx,ax
00001374  D0E0              shl al,1
00001376  03F0              add si,ax
00001378  2E8B04            mov ax,[cs:si]
0000137B  004702            add [bx+0x2],al
0000137E  006703            add [bx+0x3],ah
00001381  F606080001        test byte [0x8],0x1
00001386  7513              jnz 0x139b
00001388  F606080002        test byte [0x8],0x2
0000138D  740C              jz 0x139b
0000138F  8BC1              mov ax,cx
00001391  3C05              cmp al,0x5
00001393  7604              jna 0x1399
00001395  B4FF              mov ah,0xff
00001397  EB02              jmp short 0x139b
00001399  B401              mov ah,0x1
0000139B  807F0206          cmp byte [bx+0x2],0x6
0000139F  7708              ja 0x13a9
000013A1  7410              jz 0x13b3
000013A3  C6470206          mov byte [bx+0x2],0x6
000013A7  EB0A              jmp short 0x13b3
000013A9  807F022E          cmp byte [bx+0x2],0x2e
000013AD  7604              jna 0x13b3
000013AF  C647022E          mov byte [bx+0x2],0x2e
000013B3  B028              mov al,0x28
000013B5  024704            add al,[bx+0x4]
000013B8  384703            cmp [bx+0x3],al
000013BB  7707              ja 0x13c4
000013BD  7412              jz 0x13d1
000013BF  884703            mov [bx+0x3],al
000013C2  EB0D              jmp short 0x13d1
000013C4  B03E              mov al,0x3e
000013C6  024704            add al,[bx+0x4]
000013C9  384703            cmp [bx+0x3],al
000013CC  7603              jna 0x13d1
000013CE  884703            mov [bx+0x3],al
000013D1  F606680080        test byte [0x68],0x80
000013D6  7469              jz 0x1441
000013D8  8A4704            mov al,[bx+0x4]
000013DB  D0E8              shr al,1
000013DD  D0E8              shr al,1
000013DF  3C03              cmp al,0x3
000013E1  7E02              jng 0x13e5
000013E3  B003              mov al,0x3
000013E5  8807              mov [bx],al
000013E7  F6066C00FF        test byte [0x6c],0xff
000013EC  7453              jz 0x1441
000013EE  8B5702            mov dx,[bx+0x2]
000013F1  BBAC00            mov bx,0xac
000013F4  B90600            mov cx,0x6
000013F7  803FFF            cmp byte [bx],0xff
000013FA  7439              jz 0x1435
000013FC  8B4702            mov ax,[bx+0x2]
000013FF  2AC2              sub al,dl
00001401  F6DC              neg ah
00001403  02E6              add ah,dh
00001405  2AC4              sub al,ah
00001407  7D02              jnl 0x140b
00001409  F6D8              neg al
0000140B  3C03              cmp al,0x3
0000140D  7F26              jg 0x1435
0000140F  A0A400            mov al,[0xa4]
00001412  2A4704            sub al,[bx+0x4]
00001415  7D02              jnl 0x1419
00001417  F6D8              neg al
00001419  3C03              cmp al,0x3
0000141B  7F18              jg 0x1435
0000141D  C706A6001C05      mov word [0xa6],0x51c
00001423  A1A200            mov ax,[0xa2]
00001426  0408              add al,0x8
00001428  80EC08            sub ah,0x8
0000142B  A3A800            mov [0xa8],ax
0000142E  C606270001        mov byte [0x27],0x1
00001433  EB1A              jmp short 0x144f
00001435  83C306            add bx,byte +0x6
00001438  E2BD              loop 0x13f7
0000143A  C606A600FF        mov byte [0xa6],0xff
0000143F  EB0E              jmp short 0x144f
00001441  8B4702            mov ax,[bx+0x2]
00001444  894708            mov [bx+0x8],ax
00001447  B014              mov al,0x14
00001449  2A4704            sub al,[bx+0x4]
0000144C  004709            add [bx+0x9],al
0000144F  F606000020        test byte [0x0],0x20
00001454  7402              jz 0x1458
00001456  EB0E              jmp short 0x1466
00001458  F6063F00FF        test byte [0x3f],0xff
0000145D  C6063F0000        mov byte [0x3f],0x0
00001462  7512              jnz 0x1476
00001464  EB40              jmp short 0x14a6
00001466  E8FDEE            call word 0x366
00001469  3A066900          cmp al,[0x69]
0000146D  7437              jz 0x14a6
0000146F  A26900            mov [0x69],al
00001472  3C30              cmp al,0x30
00001474  7430              jz 0x14a6
00001476  BB0001            mov bx,0x100
00001479  B90600            mov cx,0x6
0000147C  803FFF            cmp byte [bx],0xff
0000147F  7406              jz 0x1487
00001481  83C306            add bx,byte +0x6
00001484  E2F6              loop 0x147c
00001486  C3                ret
00001487  C6062B0001        mov byte [0x2b],0x1
0000148C  C6470101          mov byte [bx+0x1],0x1
00001490  A1A200            mov ax,[0xa2]
00001493  894702            mov [bx+0x2],ax
00001496  89475C            mov [bx+0x5c],ax
00001499  A0A400            mov al,[0xa4]
0000149C  884704            mov [bx+0x4],al
0000149F  A0A000            mov al,[0xa0]
000014A2  0412              add al,0x12
000014A4  8807              mov [bx],al
000014A6  C3                ret
000014A7  00FE              add dh,bh
000014A9  0201              add al,[bx+di]
000014AB  0002              add [bp+si],al
000014AD  FE                db 0xfe
000014AE  FF02              inc word [bp+si]
000014B0  FF02              inc word [bp+si]
000014B2  03FE              add di,si
000014B4  FD                std
000014B5  FE01              inc byte [bx+di]
000014B7  BED113            mov si,0x13d1
000014BA  BFA000            mov di,0xa0
000014BD  B9DD13            mov cx,0x13dd
000014C0  2BCE              sub cx,si
000014C2  E8C1EE            call word 0x386
000014C5  BEDD13            mov si,0x13dd
000014C8  BF5700            mov di,0x57
000014CB  B9ED13            mov cx,0x13ed
000014CE  2BCE              sub cx,si
000014D0  E8B3EE            call word 0x386
000014D3  C6066D00FF        mov byte [0x6d],0xff
000014D8  C606670012        mov byte [0x67],0x12
000014DD  BB5700            mov bx,0x57
000014E0  C6066E0000        mov byte [0x6e],0x0
000014E5  B500              mov ch,0x0
000014E7  8A0E6600          mov cl,[0x66]
000014EB  B8181E            mov ax,0x1e18
000014EE  51                push cx
000014EF  D1E1              shl cx,1
000014F1  03C1              add ax,cx
000014F3  8BF8              mov di,ax
000014F5  8A07              mov al,[bx]
000014F7  E888FA            call word 0xf82
000014FA  43                inc bx
000014FB  59                pop cx
000014FC  E2ED              loop 0x14eb
000014FE  C3                ret
000014FF  BBA000            mov bx,0xa0
00001502  B400              mov ah,0x0
00001504  8A4704            mov al,[bx+0x4]
00001507  B104              mov cl,0x4
00001509  F6E1              mul cl
0000150B  BB7913            mov bx,0x1379
0000150E  03D8              add bx,ax
00001510  B90600            mov cx,0x6
00001513  B80700            mov ax,0x7
00001516  03C1              add ax,cx
00001518  BA4001            mov dx,0x140
0000151B  F7E2              mul dx
0000151D  050600            add ax,0x6
00001520  8BF8              mov di,ax
00001522  51                push cx
00001523  2E8A07            mov al,[cs:bx]
00001526  E859FA            call word 0xf82
00001529  43                inc bx
0000152A  59                pop cx
0000152B  E2E6              loop 0x1513
0000152D  FE0E6700          dec byte [0x67]
00001531  7544              jnz 0x1577
00001533  F606680080        test byte [0x68],0x80
00001538  7407              jz 0x1541
0000153A  C606670014        mov byte [0x67],0x14
0000153F  EB05              jmp short 0x1546
00001541  C606670003        mov byte [0x67],0x3
00001546  BB5700            mov bx,0x57
00001549  B80F00            mov ax,0xf
0000154C  2A066600          sub al,[0x66]
00001550  03D8              add bx,ax
00001552  FE07              inc byte [bx]
00001554  53                push bx
00001555  E88DFF            call word 0x14e5
00001558  5B                pop bx
00001559  803F5D            cmp byte [bx],0x5d
0000155C  7219              jc 0x1577
0000155E  FE0E6600          dec byte [0x66]
00001562  803E660003        cmp byte [0x66],0x3
00001567  730E              jnc 0x1577
00001569  C606250001        mov byte [0x25],0x1
0000156E  803E660000        cmp byte [0x66],0x0
00001573  7502              jnz 0x1577
00001575  F9                stc
00001576  C3                ret
00001577  F8                clc
00001578  C3                ret
00001579  51                push cx
0000157A  53                push bx
0000157B  53                push bx
0000157C  53                push bx
0000157D  53                push bx
0000157E  52                push dx
0000157F  0000              add [bx+si],al
00001581  51                push cx
00001582  53                push bx
00001583  53                push bx
00001584  53                push bx
00001585  54                push sp
00001586  50                push ax
00001587  0000              add [bx+si],al
00001589  51                push cx
0000158A  53                push bx
0000158B  53                push bx
0000158C  53                push bx
0000158D  52                push dx
0000158E  46                inc si
0000158F  0000              add [bx+si],al
00001591  51                push cx
00001592  53                push bx
00001593  53                push bx
00001594  54                push sp
00001595  50                push ax
00001596  46                inc si
00001597  0000              add [bx+si],al
00001599  51                push cx
0000159A  53                push bx
0000159B  53                push bx
0000159C  52                push dx
0000159D  46                inc si
0000159E  46                inc si
0000159F  0000              add [bx+si],al
000015A1  51                push cx
000015A2  53                push bx
000015A3  54                push sp
000015A4  50                push ax
000015A5  46                inc si
000015A6  46                inc si
000015A7  0000              add [bx+si],al
000015A9  51                push cx
000015AA  53                push bx
000015AB  52                push dx
000015AC  46                inc si
000015AD  46                inc si
000015AE  46                inc si
000015AF  0000              add [bx+si],al
000015B1  51                push cx
000015B2  54                push sp
000015B3  50                push ax
000015B4  46                inc si
000015B5  46                inc si
000015B6  46                inc si
000015B7  0000              add [bx+si],al
000015B9  51                push cx
000015BA  52                push dx
000015BB  46                inc si
000015BC  46                inc si
000015BD  46                inc si
000015BE  46                inc si
000015BF  0000              add [bx+si],al
000015C1  4F                dec di
000015C2  50                push ax
000015C3  46                inc si
000015C4  46                inc si
000015C5  46                inc si
000015C6  46                inc si
000015C7  0000              add [bx+si],al
000015C9  46                inc si
000015CA  46                inc si
000015CB  46                inc si
000015CC  46                inc si
000015CD  46                inc si
000015CE  46                inc si
000015CF  0000              add [bx+si],al
000015D1  0000              add [bx+si],al
000015D3  06                push es
000015D4  2800              sub [bx+si],al
000015D6  0010              add [bx+si],dl
000015D8  00063E00          add [0x3e],al
000015DC  005555            add [di+0x55],dl
000015DF  55                push bp
000015E0  55                push bp
000015E1  55                push bp
000015E2  55                push bp
000015E3  55                push bp
000015E4  55                push bp
000015E5  55                push bp
000015E6  55                push bp
000015E7  55                push bp
000015E8  55                push bp
000015E9  55                push bp
000015EA  55                push bp
000015EB  55                push bp
000015EC  0FC606230001      shufps xmm0,oword [0x23],byte 0x1
000015F2  8A07              mov al,[bx]
000015F4  3C04              cmp al,0x4
000015F6  7522              jnz 0x161a
000015F8  53                push bx
000015F9  BB5700            mov bx,0x57
000015FC  B80F00            mov ax,0xf
000015FF  2A066600          sub al,[0x66]
00001603  03D8              add bx,ax
00001605  C60755            mov byte [bx],0x55
00001608  3C00              cmp al,0x0
0000160A  7408              jz 0x1614
0000160C  FE066600          inc byte [0x66]
00001610  C647FF55          mov byte [bx-0x1],0x55
00001614  5B                pop bx
00001615  B003              mov al,0x3
00001617  E972EC            jmp word 0x28c
0000161A  7C36              jl 0x1652
0000161C  3C0F              cmp al,0xf
0000161E  7E10              jng 0x1630
00001620  3C17              cmp al,0x17
00001622  7C2E              jl 0x1652
00001624  3C1A              cmp al,0x1a
00001626  7F2A              jg 0x1652
00001628  E83400            call word 0x165f
0000162B  B000              mov al,0x0
0000162D  E95CEC            jmp word 0x28c
00001630  53                push bx
00001631  3C0F              cmp al,0xf
00001633  7505              jnz 0x163a
00001635  E82700            call word 0x165f
00001638  B00F              mov al,0xf
0000163A  BB4F14            mov bx,0x144f
0000163D  2ED7              cs xlatb
0000163F  5B                pop bx
00001640  3CFF              cmp al,0xff
00001642  740E              jz 0x1652
00001644  3C05              cmp al,0x5
00001646  7507              jnz 0x164f
00001648  B004              mov al,0x4
0000164A  E83FEC            call word 0x28c
0000164D  B004              mov al,0x4
0000164F  E93AEC            jmp word 0x28c
00001652  C3                ret
00001653  0302              add ax,[bp+si]
00001655  FF05              inc word [di]
00001657  FF                db 0xff
00001658  FF03              inc word [bp+di]
0000165A  FF04              inc word [si]
0000165C  0402              add al,0x2
0000165E  0053E8            add [bp+di-0x18],dl
00001661  76F0              jna 0x1653
00001663  2E8B5F06          mov bx,[cs:bx+0x6]
00001667  F707FFFF          test word [bx],0xffff
0000166B  740B              jz 0x1678
0000166D  FE4F01            dec byte [bx+0x1]
00001670  7D06              jnl 0x1678
00001672  C6470109          mov byte [bx+0x1],0x9
00001676  FE0F              dec byte [bx]
00001678  5B                pop bx
00001679  C3                ret
0000167A  0000              add [bx+si],al
0000167C  0000              add [bx+si],al
0000167E  0000              add [bx+si],al
00001680  E856F0            call word 0x6d9
00001683  2E8B5F04          mov bx,[cs:bx+0x4]
00001687  F64702FF          test byte [bx+0x2],0xff
0000168B  7523              jnz 0x16b0
0000168D  833E70001A        cmp word [0x70],byte +0x1a
00001692  7F1B              jg 0x16af
00001694  FE4702            inc byte [bx+0x2]
00001697  8A5F04            mov bl,[bx+0x4]
0000169A  81E30700          and bx,0x7
0000169E  D1E3              shl bx,1
000016A0  81C31815          add bx,0x1518
000016A4  2E8B07            mov ax,[cs:bx]
000016A7  A36A00            mov [0x6a],ax
000016AA  C6063E0006        mov byte [0x3e],0x6
000016AF  C3                ret
000016B0  FE0E3E00          dec byte [0x3e]
000016B4  75F9              jnz 0x16af
000016B6  C6063E0006        mov byte [0x3e],0x6
000016BB  8B366A00          mov si,[0x6a]
000016BF  2E8A04            mov al,[cs:si]
000016C2  3CFF              cmp al,0xff
000016C4  7506              jnz 0x16cc
000016C6  FE4704            inc byte [bx+0x4]
000016C9  E911F3            jmp word 0x9dd
000016CC  BFAC00            mov di,0xac
000016CF  B90C00            mov cx,0xc
000016D2  803DFF            cmp byte [di],0xff
000016D5  7406              jz 0x16dd
000016D7  83C706            add di,byte +0x6
000016DA  E2F6              loop 0x16d2
000016DC  C3                ret
000016DD  83066A0002        add word [0x6a],byte +0x2
000016E2  2E8A04            mov al,[cs:si]
000016E5  98                cbw
000016E6  8905              mov [di],ax
000016E8  BBFE14            mov bx,0x14fe
000016EB  2ED7              cs xlatb
000016ED  894504            mov [di+0x4],ax
000016F0  2E8A4401          mov al,[cs:si+0x1]
000016F4  D1E0              shl ax,1
000016F6  BB0E15            mov bx,0x150e
000016F9  03D8              add bx,ax
000016FB  2E8B07            mov ax,[cs:bx]
000016FE  894502            mov [di+0x2],ax
00001701  C3                ret
00001702  0C00              or al,0x0
00001704  140A              adc al,0xa
00001706  0000              add [bx+si],al
00001708  0014              add [si],dl
0000170A  1010              adc [bx+si],dl
0000170C  0011              add [bx+di],dl
0000170E  4A                dec dx
0000170F  004A0C            add [bp+si+0xc],cl
00001712  4A                dec dx
00001713  184A24            sbb [bp+si+0x24],cl
00001716  4A                dec dx
00001717  3028              xor [bx+si],ch
00001719  154B15            adc ax,0x154b
0000171C  91                xchg ax,cx
0000171D  156E15            adc ax,0x156e
00001720  B415              mov ah,0x15
00001722  D515              aad 0x15
00001724  F615              not byte [di]
00001726  19160600          sbb [0x6],dx
0000172A  0D0406            or ax,0x604
0000172D  0204              add al,[si]
0000172F  0007              add [bx],al
00001731  020D              add cl,[di]
00001733  0404              add al,0x4
00001735  0004              add [si],al
00001737  03060106          add ax,[0x601]
0000173B  0404              add al,0x4
0000173D  020F              add cl,[bx]
0000173F  0006020D          add [0xd02],al
00001743  0404              add al,0x4
00001745  0007              add [bx],al
00001747  0204              add al,[si]
00001749  04FF              add al,0xff
0000174B  06                push es
0000174C  00060206          add [0x602],al
00001750  0304              add ax,[si]
00001752  020D              add cl,[di]
00001754  0404              add al,0x4
00001756  0004              add [si],al
00001758  02060004          add al,[0x400]
0000175C  0407              add al,0x7
0000175E  0006030C          add [0xc03],al
00001762  02060006          add al,[0x600]
00001766  02060407          add al,[0x704]
0000176A  000D              add [di],cl
0000176C  04FF              add al,0xff
0000176E  06                push es
0000176F  0106030D          add [0xd03],ax
00001773  0404              add al,0x4
00001775  0004              add [si],al
00001777  02060206          add al,[0x602]
0000177B  0004              add [si],al
0000177D  0404              add al,0x4
0000177F  010F              add [bx],cx
00001781  020D              add cl,[di]
00001783  040C              add al,0xc
00001785  00060106          add [0x601],al
00001789  040C              add al,0xc
0000178B  000F              add [bx],cl
0000178D  0404              add al,0x4
0000178F  03FF              add di,di
00001791  06                push es
00001792  000D              add [di],cl
00001794  0406              add al,0x6
00001796  0204              add al,[si]
00001798  0407              add al,0x7
0000179A  0204              add al,[si]
0000179C  0006020D          add [0xd02],al
000017A0  040F              add al,0xf
000017A2  0004              add [si],al
000017A4  020C              add cl,[si]
000017A6  030C              add cx,[si]
000017A8  01060006          add [0x600],ax
000017AC  020D              add cl,[di]
000017AE  040C              add al,0xc
000017B0  030604FF          add ax,[0xff04]
000017B4  06                push es
000017B5  020D              add cl,[di]
000017B7  0404              add al,0x4
000017B9  0004              add [si],al
000017BB  02060007          add al,[0x700]
000017BF  0304              add ax,[si]
000017C1  010D              add [di],cx
000017C3  0304              add ax,[si]
000017C5  0104              add [si],ax
000017C7  030F              add cx,[bx]
000017C9  020C              add cl,[si]
000017CB  0007              add [bx],al
000017CD  000D              add [di],cl
000017CF  040F              add al,0xf
000017D1  0304              add ax,[si]
000017D3  04FF              add al,0xff
000017D5  06                push es
000017D6  0106030D          add [0xd03],ax
000017DA  0406              add al,0x6
000017DC  0206040D          add al,[0xd04]
000017E0  0404              add al,0x4
000017E2  020D              add cl,[di]
000017E4  040C              add al,0xc
000017E6  0004              add [si],al
000017E8  0207              add al,[bx]
000017EA  0004              add [si],al
000017EC  02060106          add al,[0x601]
000017F0  0304              add ax,[si]
000017F2  000D              add [di],cl
000017F4  02FF              add bh,bh
000017F6  06                push es
000017F7  01060204          add [0x402],ax
000017FB  000D              add [di],cl
000017FD  0404              add al,0x4
000017FF  0004              add [si],al
00001801  0006030C          add [0xc03],al
00001805  0104              add [si],ax
00001807  0307              add ax,[bx]
00001809  0104              add [si],ax
0000180B  030C              add cx,[si]
0000180D  000C              add [si],cl
0000180F  0104              add [si],ax
00001811  0307              add ax,[bx]
00001813  0104              add [si],ax
00001815  030C              add cx,[si]
00001817  00FF              add bh,bh
00001819  06                push es
0000181A  01060306          add [0x603],ax
0000181E  01060306          add [0x603],ax
00001822  00060404          add [0x404],al
00001826  0004              add [si],al
00001828  0407              add al,0x7
0000182A  0006020D          add [0xd02],al
0000182E  040C              add al,0xc
00001830  02060106          add al,[0x601]
00001834  03060106          add ax,[0x601]
00001838  0307              add ax,[bx]
0000183A  010D              add [di],cx
0000183C  03FF              add di,di
0000183E  F6066800FF        test byte [0x68],0xff
00001843  7522              jnz 0x1867
00001845  833E700041        cmp word [0x70],byte +0x41
0000184A  7F07              jg 0x1853
0000184C  833E700000        cmp word [0x70],byte +0x0
00001851  7F14              jg 0x1867
00001853  803EA4000C        cmp byte [0xa4],0xc
00001858  7F12              jg 0x186c
0000185A  803E6D0000        cmp byte [0x6d],0x0
0000185F  7E0B              jng 0x186c
00001861  FE0E6D00          dec byte [0x6d]
00001865  EB05              jmp short 0x186c
00001867  C6066D0012        mov byte [0x6d],0x12
0000186C  BBF400            mov bx,0xf4
0000186F  803FFF            cmp byte [bx],0xff
00001872  7409              jz 0x187d
00001874  83C306            add bx,byte +0x6
00001877  803FFF            cmp byte [bx],0xff
0000187A  7401              jz 0x187d
0000187C  C3                ret
0000187D  F6066D00FF        test byte [0x6d],0xff
00001882  7503              jnz 0x1887
00001884  E98B00            jmp word 0x1912
00001887  E83309            call word 0x21bd
0000188A  240F              and al,0xf
0000188C  3C0C              cmp al,0xc
0000188E  7DEC              jnl 0x187c
00001890  B406              mov ah,0x6
00001892  F6E4              mul ah
00001894  BFAC00            mov di,0xac
00001897  03F8              add di,ax
00001899  8A05              mov al,[di]
0000189B  3C06              cmp al,0x6
0000189D  751C              jnz 0x18bb
0000189F  8B4502            mov ax,[di+0x2]
000018A2  3A06F600          cmp al,[0xf6]
000018A6  74D4              jz 0x187c
000018A8  3A06FC00          cmp al,[0xfc]
000018AC  74CE              jz 0x187c
000018AE  894702            mov [bx+0x2],ax
000018B1  C747041420        mov word [bx+0x4],0x2014
000018B6  C7070800          mov word [bx],0x8
000018BA  C3                ret
000018BB  3C0C              cmp al,0xc
000018BD  7409              jz 0x18c8
000018BF  3C0F              cmp al,0xf
000018C1  7518              jnz 0x18db
000018C3  B80002            mov ax,0x200
000018C6  EB03              jmp short 0x18cb
000018C8  B80001            mov ax,0x100
000018CB  034502            add ax,[di+0x2]
000018CE  894702            mov [bx+0x2],ax
000018D1  C7071D02          mov word [bx],0x21d
000018D5  C747041100        mov word [bx+0x4],0x11
000018DA  C3                ret
000018DB  3C0D              cmp al,0xd
000018DD  7513              jnz 0x18f2
000018DF  8B4502            mov ax,[di+0x2]
000018E2  2D0101            sub ax,0x101
000018E5  894702            mov [bx+0x2],ax
000018E8  C7072103          mov word [bx],0x321
000018EC  C747041000        mov word [bx+0x4],0x10
000018F1  C3                ret
000018F2  3C17              cmp al,0x17
000018F4  7C1B              jl 0x1911
000018F6  3C1A              cmp al,0x1a
000018F8  7F17              jg 0x1911
000018FA  B402              mov ah,0x2
000018FC  0406              add al,0x6
000018FE  8907              mov [bx],ax
00001900  8B4502            mov ax,[di+0x2]
00001903  050002            add ax,0x200
00001906  894702            mov [bx+0x2],ax
00001909  8A4504            mov al,[di+0x4]
0000190C  B400              mov ah,0x0
0000190E  894704            mov [bx+0x4],ax
00001911  C3                ret
00001912  B84A00            mov ax,0x4a
00001915  2A06A200          sub al,[0xa2]
00001919  3A06A300          cmp al,[0xa3]
0000191D  7F03              jg 0x1922
0000191F  A0A300            mov al,[0xa3]
00001922  2AE0              sub ah,al
00001924  0206A200          add al,[0xa2]
00001928  0226A300          add ah,[0xa3]
0000192C  894702            mov [bx+0x2],ax
0000192F  894702            mov [bx+0x2],ax
00001932  A0A400            mov al,[0xa4]
00001935  B430              mov ah,0x30
00001937  894704            mov [bx+0x4],ax
0000193A  C7070E06          mov word [bx],0x60e
0000193E  FE0E6D00          dec byte [0x6d]
00001942  C3                ret
00001943  8B6F02            mov bp,[bx+0x2]
00001946  81E5FF00          and bp,0xff
0000194A  D1E5              shl bp,1
0000194C  81C55417          add bp,0x1754
00001950  2EFF6600          jmp word [cs:bp+0x0]
00001954  60                pushaw
00001955  17                pop ss
00001956  82                db 0x82
00001957  17                pop ss
00001958  E517              in ax,0x17
0000195A  82                db 0x82
0000195B  17                pop ss
0000195C  E517              in ax,0x17
0000195E  F9                stc
0000195F  17                pop ss
00001960  C70609007A17      mov word [0x9],0x177a
00001966  BFCA00            mov di,0xca
00001969  803DFF            cmp byte [di],0xff
0000196C  750D              jnz 0x197b
0000196E  FE4702            inc byte [bx+0x2]
00001971  BE7C17            mov si,0x177c
00001974  B90600            mov cx,0x6
00001977  E90CEA            jmp word 0x386
0000197A  F8                clc
0000197B  C3                ret
0000197C  0A04              or al,[si]
0000197E  4A                dec dx
0000197F  3C00              cmp al,0x0
00001981  00BFAC00          add [bx+0xac],bh
00001985  B90500            mov cx,0x5
00001988  803DFF            cmp byte [di],0xff
0000198B  7409              jz 0x1996
0000198D  83C706            add di,byte +0x6
00001990  E2F6              loop 0x1988
00001992  FE4702            inc byte [bx+0x2]
00001995  C3                ret
00001996  E82408            call word 0x21bd
00001999  8AE8              mov ch,al
0000199B  2407              and al,0x7
0000199D  3C05              cmp al,0x5
0000199F  7D25              jnl 0x19c6
000019A1  B406              mov ah,0x6
000019A3  F6E4              mul ah
000019A5  BFAC00            mov di,0xac
000019A8  03F8              add di,ax
000019AA  803DFF            cmp byte [di],0xff
000019AD  7517              jnz 0x19c6
000019AF  BEC717            mov si,0x17c7
000019B2  03F0              add si,ax
000019B4  51                push cx
000019B5  B90600            mov cx,0x6
000019B8  E8CBE9            call word 0x386
000019BB  59                pop cx
000019BC  B103              mov cl,0x3
000019BE  D2ED              shr ch,cl
000019C0  80E50F            and ch,0xf
000019C3  886DFE            mov [di-0x2],ch
000019C6  C3                ret
000019C7  17                pop ss
000019C8  0543F3            add ax,0xf343
000019CB  005017            add [bx+si+0x17],dl
000019CE  054BFB            add ax,0xfb4b
000019D1  005117            add [bx+di+0x17],dl
000019D4  055303            add ax,0x353
000019D7  005217            add [bp+si+0x17],dl
000019DA  055B0B            add ax,0xb5b
000019DD  005317            add [bp+di+0x17],dl
000019E0  056313            add ax,0x1363
000019E3  0054BF            add [si-0x41],dl
000019E6  AC                lodsb
000019E7  00B90600          add [bx+di+0x6],bh
000019EB  803DFF            cmp byte [di],0xff
000019EE  7508              jnz 0x19f8
000019F0  83C706            add di,byte +0x6
000019F3  E2F6              loop 0x19eb
000019F5  FE4702            inc byte [bx+0x2]
000019F8  C3                ret
000019F9  C7060900151E      mov word [0x9],0x1e15
000019FF  E9DBEF            jmp word 0x9dd
00001A02  8B6F02            mov bp,[bx+0x2]
00001A05  81E5FF00          and bp,0xff
00001A09  D1E5              shl bp,1
00001A0B  81C52118          add bp,0x1821
00001A0F  2EFF5600          call word [cs:bp+0x0]
00001A13  C6066D0012        mov byte [0x6d],0x12
00001A18  BB7000            mov bx,0x70
00001A1B  BE8A47            mov si,0x478a
00001A1E  E98FF5            jmp word 0xfb0
00001A21  2D1881            sub ax,0x8118
00001A24  18A418C4          sbb [si-0x3be8],ah
00001A28  18E3              sbb bl,ah
00001A2A  186E19            sbb [bp+0x19],ch
00001A2D  C606330001        mov byte [0x33],0x1
00001A32  C606400014        mov byte [0x40],0x14
00001A37  833E720018        cmp word [0x72],byte +0x18
00001A3C  7504              jnz 0x1a42
00001A3E  FE4702            inc byte [bx+0x2]
00001A41  C3                ret
00001A42  A0F400            mov al,[0xf4]
00001A45  3C07              cmp al,0x7
00001A47  7C0E              jl 0x1a57
00001A49  3C0A              cmp al,0xa
00001A4B  7F0A              jg 0x1a57
00001A4D  C606160001        mov byte [0x16],0x1
00001A52  80470202          add byte [bx+0x2],0x2
00001A56  C3                ret
00001A57  FF0E7000          dec word [0x70]
00001A5B  FF067200          inc word [0x72]
00001A5F  BB3601            mov bx,0x136
00001A62  B90600            mov cx,0x6
00001A65  FE4F02            dec byte [bx+0x2]
00001A68  FE4703            inc byte [bx+0x3]
00001A6B  83C306            add bx,byte +0x6
00001A6E  E2F5              loop 0x1a65
00001A70  A17000            mov ax,[0x70]
00001A73  040E              add al,0xe
00001A75  A2F600            mov [0xf6],al
00001A78  A17200            mov ax,[0x72]
00001A7B  041C              add al,0x1c
00001A7D  A2F700            mov [0xf7],al
00001A80  C3                ret
00001A81  FE0E4000          dec byte [0x40]
00001A85  7F09              jg 0x1a90
00001A87  FE4702            inc byte [bx+0x2]
00001A8A  80266E007F        and byte [0x6e],0x7f
00001A8F  C3                ret
00001A90  A0F400            mov al,[0xf4]
00001A93  3C07              cmp al,0x7
00001A95  7CD9              jl 0x1a70
00001A97  3C0A              cmp al,0xa
00001A99  7FD5              jg 0x1a70
00001A9B  C606160001        mov byte [0x16],0x1
00001AA0  FE4702            inc byte [bx+0x2]
00001AA3  C3                ret
00001AA4  803EF400FF        cmp byte [0xf4],0xff
00001AA9  7518              jnz 0x1ac3
00001AAB  F6061600FF        test byte [0x16],0xff
00001AB0  7403              jz 0x1ab5
00001AB2  FE4702            inc byte [bx+0x2]
00001AB5  FE4702            inc byte [bx+0x2]
00001AB8  E81EEC            call word 0x6d9
00001ABB  2E8B5F06          mov bx,[cs:bx+0x6]
00001ABF  C7070200          mov word [bx],0x2
00001AC3  C3                ret
00001AC4  C6066F0001        mov byte [0x6f],0x1
00001AC9  C6066E0000        mov byte [0x6e],0x0
00001ACE  833E700057        cmp word [0x70],byte +0x57
00001AD3  7505              jnz 0x1ada
00001AD5  80470202          add byte [bx+0x2],0x2
00001AD9  C3                ret
00001ADA  FF067000          inc word [0x70]
00001ADE  FF0E7200          dec word [0x72]
00001AE2  C3                ret
00001AE3  FE4702            inc byte [bx+0x2]
00001AE6  C6066F0000        mov byte [0x6f],0x0
00001AEB  C6066E0001        mov byte [0x6e],0x1
00001AF0  BE4A19            mov si,0x194a
00001AF3  BF3601            mov di,0x136
00001AF6  B92400            mov cx,0x24
00001AF9  E88AE8            call word 0x386
00001AFC  BF8A47            mov di,0x478a
00001AFF  B9800D            mov cx,0xd80
00001B02  B85555            mov ax,0x5555
00001B05  06                push es
00001B06  1E                push ds
00001B07  07                pop es
00001B08  F3AB              rep stosw
00001B0A  07                pop es
00001B0B  B109              mov cl,0x9
00001B0D  E8F0EB            call word 0x700
00001B10  B91400            mov cx,0x14
00001B13  C7063B006400      mov word [0x3b],0x64
00001B19  C606210001        mov byte [0x21],0x1
00001B1E  51                push cx
00001B1F  E88B05            call word 0x20ad
00001B22  E84CF6            call word 0x1171
00001B25  E8C8F5            call word 0x10f0
00001B28  E88205            call word 0x20ad
00001B2B  E87901            call word 0x1ca7
00001B2E  E87C05            call word 0x20ad
00001B31  E886EB            call word 0x6ba
00001B34  E87605            call word 0x20ad
00001B37  E8F7F3            call word 0xf31
00001B3A  E87005            call word 0x20ad
00001B3D  BB7000            mov bx,0x70
00001B40  BE8A47            mov si,0x478a
00001B43  E86AF4            call word 0xfb0
00001B46  59                pop cx
00001B47  E2D5              loop 0x1b1e
00001B49  C3                ret
00001B4A  0803              or [bp+di],al
00001B4C  3218              xor bl,[bx+si]
00001B4E  006008            add [bx+si+0x8],ah
00001B51  0438              add al,0x38
00001B53  1800              sbb [bx+si],al
00001B55  60                pushaw
00001B56  0800              or [bx+si],al
00001B58  3224              xor ah,[si]
00001B5A  006008            add [bx+si+0x8],ah
00001B5D  0138              add [bx+si],di
00001B5F  2400              and al,0x0
00001B61  60                pushaw
00001B62  0802              or [bp+si],al
00001B64  3230              xor dh,[bx+si]
00001B66  006008            add [bx+si+0x8],ah
00001B69  07                pop es
00001B6A  3830              cmp [bx+si],dh
00001B6C  0060E8            add [bx+si-0x18],ah
00001B6F  ED                in ax,dx
00001B70  E6F6              out 0xf6,al
00001B72  06                push es
00001B73  16                push ss
00001B74  00FF              add bh,bh
00001B76  741F              jz 0x1b97
00001B78  BBF219            mov bx,0x19f2
00001B7B  BA0C0F            mov dx,0xf0c
00001B7E  E8A1E7            call word 0x322
00001B81  B004              mov al,0x4
00001B83  E806E7            call word 0x28c
00001B86  B004              mov al,0x4
00001B88  E801E7            call word 0x28c
00001B8B  B004              mov al,0x4
00001B8D  E8FCE6            call word 0x28c
00001B90  B004              mov al,0x4
00001B92  E8F7E6            call word 0x28c
00001B95  EB0E              jmp short 0x1ba5
00001B97  BBE219            mov bx,0x19e2
00001B9A  BA0C0F            mov dx,0xf0c
00001B9D  E882E7            call word 0x322
00001BA0  B002              mov al,0x2
00001BA2  E8E7E6            call word 0x28c
00001BA5  B93600            mov cx,0x36
00001BA8  E855EB            call word 0x700
00001BAB  E8B0E6            call word 0x25e
00001BAE  E82CEE            call word 0x9dd
00001BB1  E800EA            call word 0x5b4
00001BB4  E851EB            call word 0x708
00001BB7  E8FDF8            call word 0x14b7
00001BBA  E874F3            call word 0xf31
00001BBD  C606680080        mov byte [0x68],0x80
00001BC2  C606160000        mov byte [0x16],0x0
00001BC7  C6066C0001        mov byte [0x6c],0x1
00001BCC  C7067000D0FF      mov word [0x70],0xffd0
00001BD2  80266E00FD        and byte [0x6e],0xfd
00001BD7  BFAC00            mov di,0xac
00001BDA  B93C01            mov cx,0x13c
00001BDD  E89AE7            call word 0x37a
00001BE0  F8                clc
00001BE1  C3                ret
00001BE2  3230              xor dh,[bx+si]
00001BE4  3020              xor [bx+si],ah
00001BE6  50                push ax
00001BE7  6F                outsw
00001BE8  696E742042        imul bp,[bp+0x74],word 0x4220
00001BED  4F                dec di
00001BEE  4E                dec si
00001BEF  55                push bp
00001BF0  53                push bx
00001BF1  0032              add [bp+si],dh
00001BF3  3030              xor [bx+si],dh
00001BF5  3020              xor [bx+si],ah
00001BF7  50                push ax
00001BF8  6F                outsw
00001BF9  696E742042        imul bp,[bp+0x74],word 0x4220
00001BFE  4F                dec di
00001BFF  4E                dec si
00001C00  55                push bp
00001C01  53                push bx
00001C02  00800E6E          add [bx+si+0x6e0e],al
00001C06  0082C706          add [bp+si+0x6c7],al
00001C0A  0900              or [bx+si],ax
00001C0C  751A              jnz 0x1c28
00001C0E  C6060B0000        mov byte [0xb],0x0
00001C13  BE431A            mov si,0x1a43
00001C16  BF7000            mov di,0x70
00001C19  B90800            mov cx,0x8
00001C1C  E867E7            call word 0x386
00001C1F  BE4B1A            mov si,0x1a4b
00001C22  BFF400            mov di,0xf4
00001C25  B90600            mov cx,0x6
00001C28  E85BE7            call word 0x386
00001C2B  C605FF            mov byte [di],0xff
00001C2E  B92400            mov cx,0x24
00001C31  BF3601            mov di,0x136
00001C34  BE511A            mov si,0x1a51
00001C37  E84CE7            call word 0x386
00001C3A  BB803D            mov bx,0x3d80
00001C3D  E84DF0            call word 0xc8d
00001C40  E99AED            jmp word 0x9dd
00001C43  57                push di
00001C44  00F3              add bl,dh
00001C46  FF14              call word [si]
00001C48  0030              add [bx+si],dh
00001C4A  000E0665          add [0x6506],cl
00001C4E  0F                db 0x0f
00001C4F  0A30              or dh,[bx+si]
00001C51  F60557            test byte [di],0x57
00001C54  F30000            rep add [bx+si],al
00001C57  F70557FF          test word [di],0xff57
00001C5B  0A00              or al,[bx+si]
00001C5D  F8                clc
00001C5E  05570B            add ax,0xb57
00001C61  1400              adc al,0x0
00001C63  F9                stc
00001C64  055DF7            add ax,0xf75d
00001C67  0000              add [bx+si],al
00001C69  FA                cli
00001C6A  055D03            add ax,0x35d
00001C6D  0A00              or al,[bx+si]
00001C6F  FB                sti
00001C70  055D0F            add ax,0xf5d
00001C73  1400              adc al,0x0
00001C75  807C5C22          cmp byte [si+0x5c],0x22
00001C79  7C2A              jl 0x1ca5
00001C7B  807C5C2E          cmp byte [si+0x5c],0x2e
00001C7F  7F24              jg 0x1ca5
00001C81  BADEFF            mov dx,0xffde
00001C84  03167000          add dx,[0x70]
00001C88  8A445C            mov al,[si+0x5c]
00001C8B  98                cbw
00001C8C  03D0              add dx,ax
00001C8E  8A4402            mov al,[si+0x2]
00001C91  98                cbw
00001C92  2BD0              sub dx,ax
00001C94  83FA03            cmp dx,byte +0x3
00001C97  7D0C              jnl 0x1ca5
00001C99  83FAFD            cmp dx,byte -0x3
00001C9C  7E07              jng 0x1ca5
00001C9E  F9                stc
00001C9F  C6066F0001        mov byte [0x6f],0x1
00001CA4  C3                ret
00001CA5  F8                clc
00001CA6  C3                ret
00001CA7  BBA000            mov bx,0xa0
00001CAA  B91600            mov cx,0x16
00001CAD  803FFF            cmp byte [bx],0xff
00001CB0  741B              jz 0x1ccd
00001CB2  8A4705            mov al,[bx+0x5]
00001CB5  0AC0              or al,al
00001CB7  7414              jz 0x1ccd
00001CB9  D0E8              shr al,1
00001CBB  D0E8              shr al,1
00001CBD  D0E8              shr al,1
00001CBF  251E00            and ax,0x1e
00001CC2  BD361B            mov bp,0x1b36
00001CC5  03E8              add bp,ax
00001CC7  51                push cx
00001CC8  2EFF5600          call word [cs:bp+0x0]
00001CCC  59                pop cx
00001CCD  83C306            add bx,byte +0x6
00001CD0  E2DB              loop 0x1cad
00001CD2  BB2401            mov bx,0x124
00001CD5  BE201B            mov si,0x1b20
00001CD8  B90300            mov cx,0x3
00001CDB  8A4705            mov al,[bx+0x5]
00001CDE  250300            and ax,0x3
00001CE1  D1E0              shl ax,1
00001CE3  03F0              add si,ax
00001CE5  FE4705            inc byte [bx+0x5]
00001CE8  8A260B00          mov ah,[0xb]
00001CEC  F6C401            test ah,0x1
00001CEF  7505              jnz 0x1cf6
00001CF1  C607FF            mov byte [bx],0xff
00001CF4  EB1F              jmp short 0x1d15
00001CF6  C6071B            mov byte [bx],0x1b
00001CF9  A07000            mov al,[0x70]
00001CFC  3C28              cmp al,0x28
00001CFE  7505              jnz 0x1d05
00001D00  C606290001        mov byte [0x29],0x1
00001D05  2E0204            add al,[cs:si]
00001D08  884702            mov [bx+0x2],al
00001D0B  A07200            mov al,[0x72]
00001D0E  2E024401          add al,[cs:si+0x1]
00001D12  884703            mov [bx+0x3],al
00001D15  D0EC              shr ah,1
00001D17  83C306            add bx,byte +0x6
00001D1A  83C608            add si,byte +0x8
00001D1D  E2CD              loop 0x1cec
00001D1F  C3                ret
00001D20  100C              adc [si],cl
00001D22  16                push ss
00001D23  101C              adc [si],bl
00001D25  1422              adc al,0x22
00001D27  1810              sbb [bx+si],dl
00001D29  2016241C          and [0x1c24],dl
00001D2D  2822              sub [bp+si],ah
00001D2F  2C10              sub al,0x10
00001D31  1416              adc al,0x16
00001D33  181C              sbb [si],bl
00001D35  1C22              sbb al,0x22
00001D37  204F1B            and [bx+0x1b],cl
00001D3A  811BC11B          sbb word [bp+di],0x1bc1
00001D3E  651B3D            sbb di,[gs:di]
00001D41  1C44              sbb al,0x44
00001D43  1BFE              sbb di,si
00001D45  47                inc di
00001D46  05807F            add ax,0x7f80
00001D49  057075            add ax,0x7570
00001D4C  29EB              sub bx,bp
00001D4E  16                push ss
00001D4F  FE4705            inc byte [bx+0x5]
00001D52  807F0520          cmp byte [bx+0x5],0x20
00001D56  751E              jnz 0x1d76
00001D58  F606680080        test byte [0x68],0x80
00001D5D  7506              jnz 0x1d65
00001D5F  81FBF400          cmp bx,0xf4
00001D63  7208              jc 0x1d6d
00001D65  C607FF            mov byte [bx],0xff
00001D68  C6470500          mov byte [bx+0x5],0x0
00001D6C  C3                ret
00001D6D  C6070B            mov byte [bx],0xb
00001D70  C747041400        mov word [bx+0x4],0x14
00001D75  C3                ret
00001D76  FE07              inc byte [bx]
00001D78  803F0A            cmp byte [bx],0xa
00001D7B  7503              jnz 0x1d80
00001D7D  C60708            mov byte [bx],0x8
00001D80  C3                ret
00001D81  8A4705            mov al,[bx+0x5]
00001D84  3C20              cmp al,0x20
00001D86  7513              jnz 0x1d9b
00001D88  FE4F03            dec byte [bx+0x3]
00001D8B  FE4F04            dec byte [bx+0x4]
00001D8E  807F0410          cmp byte [bx+0x4],0x10
00001D92  75E2              jnz 0x1d76
00001D94  C60705            mov byte [bx],0x5
00001D97  FE4705            inc byte [bx+0x5]
00001D9A  C3                ret
00001D9B  3C21              cmp al,0x21
00001D9D  7511              jnz 0x1db0
00001D9F  FE4F03            dec byte [bx+0x3]
00001DA2  FE4F04            dec byte [bx+0x4]
00001DA5  7401              jz 0x1da8
00001DA7  C3                ret
00001DA8  C60708            mov byte [bx],0x8
00001DAB  C647052E          mov byte [bx+0x5],0x2e
00001DAF  C3                ret
00001DB0  FE4705            inc byte [bx+0x5]
00001DB3  807F0530          cmp byte [bx+0x5],0x30
00001DB7  75BD              jnz 0x1d76
00001DB9  C607FF            mov byte [bx],0xff
00001DBC  C6470500          mov byte [bx+0x5],0x0
00001DC0  C3                ret
00001DC1  F6066E0080        test byte [0x6e],0x80
00001DC6  7401              jz 0x1dc9
00001DC8  C3                ret
00001DC9  51                push cx
00001DCA  8B0EA200          mov cx,[0xa2]
00001DCE  2A6F03            sub ch,[bx+0x3]
00001DD1  2A4F02            sub cl,[bx+0x2]
00001DD4  7C0A              jl 0x1de0
00001DD6  C6470102          mov byte [bx+0x1],0x2
00001DDA  C6470500          mov byte [bx+0x5],0x0
00001DDE  EB5B              jmp short 0x1e3b
00001DE0  8AC1              mov al,cl
00001DE2  F6D8              neg al
00001DE4  8AE5              mov ah,ch
00001DE6  0AE4              or ah,ah
00001DE8  7D02              jnl 0x1dec
00001DEA  F6DC              neg ah
00001DEC  3AE0              cmp ah,al
00001DEE  7518              jnz 0x1e08
00001DF0  3C04              cmp al,0x4
00001DF2  7E02              jng 0x1df6
00001DF4  B002              mov al,0x2
00001DF6  284702            sub [bx+0x2],al
00001DF9  F6C580            test ch,0x80
00001DFC  7405              jz 0x1e03
00001DFE  284703            sub [bx+0x3],al
00001E01  EB25              jmp short 0x1e28
00001E03  004703            add [bx+0x3],al
00001E06  EB20              jmp short 0x1e28
00001E08  7F09              jg 0x1e13
00001E0A  3C06              cmp al,0x6
00001E0C  7E02              jng 0x1e10
00001E0E  B004              mov al,0x4
00001E10  284702            sub [bx+0x2],al
00001E13  B006              mov al,0x6
00001E15  3AE0              cmp ah,al
00001E17  7D02              jnl 0x1e1b
00001E19  8AC4              mov al,ah
00001E1B  F6C580            test ch,0x80
00001E1E  7505              jnz 0x1e25
00001E20  004703            add [bx+0x3],al
00001E23  EB03              jmp short 0x1e28
00001E25  284703            sub [bx+0x3],al
00001E28  A0A400            mov al,[0xa4]
00001E2B  F6066E0002        test byte [0x6e],0x2
00001E30  7506              jnz 0x1e38
00001E32  3C0E              cmp al,0xe
00001E34  7E02              jng 0x1e38
00001E36  B00F              mov al,0xf
00001E38  884704            mov [bx+0x4],al
00001E3B  59                pop cx
00001E3C  C3                ret
00001E3D  8A4705            mov al,[bx+0x5]
00001E40  3C55              cmp al,0x55
00001E42  7D1E              jnl 0x1e62
00001E44  BEB41C            mov si,0x1cb4
00001E47  250F00            and ax,0xf
00001E4A  03F0              add si,ax
00001E4C  2E8B04            mov ax,[cs:si]
00001E4F  3A4702            cmp al,[bx+0x2]
00001E52  7506              jnz 0x1e5a
00001E54  C6470555          mov byte [bx+0x5],0x55
00001E58  EB1B              jmp short 0x1e75
00001E5A  FE4F02            dec byte [bx+0x2]
00001E5D  FE4703            inc byte [bx+0x3]
00001E60  EB40              jmp short 0x1ea2
00001E62  3C5F              cmp al,0x5f
00001E64  7405              jz 0x1e6b
00001E66  FE4705            inc byte [bx+0x5]
00001E69  EB0A              jmp short 0x1e75
00001E6B  806F0202          sub byte [bx+0x2],0x2
00001E6F  80470302          add byte [bx+0x3],0x2
00001E73  EB2D              jmp short 0x1ea2
00001E75  53                push bx
00001E76  E84403            call word 0x21bd
00001E79  5B                pop bx
00001E7A  2403              and al,0x3
00001E7C  BEB91C            mov si,0x1cb9
00001E7F  B403              mov ah,0x3
00001E81  F6E4              mul ah
00001E83  03F0              add si,ax
00001E85  2E8A04            mov al,[cs:si]
00001E88  004702            add [bx+0x2],al
00001E8B  2E8A4401          mov al,[cs:si+0x1]
00001E8F  004703            add [bx+0x3],al
00001E92  2E8A4402          mov al,[cs:si+0x2]
00001E96  024704            add al,[bx+0x4]
00001E99  3C14              cmp al,0x14
00001E9B  7202              jc 0x1e9f
00001E9D  B013              mov al,0x13
00001E9F  884704            mov [bx+0x4],al
00001EA2  8A4704            mov al,[bx+0x4]
00001EA5  D0E8              shr al,1
00001EA7  D0E8              shr al,1
00001EA9  3C03              cmp al,0x3
00001EAB  7E02              jng 0x1eaf
00001EAD  B003              mov al,0x3
00001EAF  0417              add al,0x17
00001EB1  8807              mov [bx],al
00001EB3  C3                ret
00001EB4  222A              and ch,[bp+si]
00001EB6  323A              xor bh,[bp+si]
00001EB8  42                inc dx
00001EB9  00FF              add bh,bh
00001EBB  FF02              inc word [bp+si]
00001EBD  0100              add [bx+si],ax
00001EBF  0001              add [bx+di],al
00001EC1  01FE              add si,di
00001EC3  FF00              inc word [bx+si]
00001EC5  B90E00            mov cx,0xe
00001EC8  BEA000            mov si,0xa0
00001ECB  BBAC00            mov bx,0xac
00001ECE  8A07              mov al,[bx]
00001ED0  3CFF              cmp al,0xff
00001ED2  740E              jz 0x1ee2
00001ED4  3C08              cmp al,0x8
00001ED6  740A              jz 0x1ee2
00001ED8  3C09              cmp al,0x9
00001EDA  7406              jz 0x1ee2
00001EDC  E8C400            call word 0x1fa3
00001EDF  7301              jnc 0x1ee2
00001EE1  C3                ret
00001EE2  83C306            add bx,byte +0x6
00001EE5  E2E7              loop 0x1ece
00001EE7  807C021A          cmp byte [si+0x2],0x1a
00001EEB  7D05              jnl 0x1ef2
00001EED  B8FEFF            mov ax,0xfffe
00001EF0  EB03              jmp short 0x1ef5
00001EF2  B8F9FF            mov ax,0xfff9
00001EF5  03067000          add ax,[0x70]
00001EF9  7507              jnz 0x1f02
00001EFB  FF160900          call word [0x9]
00001EFF  7301              jnc 0x1f02
00001F01  C3                ret
00001F02  C6066F0000        mov byte [0x6f],0x0
00001F07  BE0001            mov si,0x100
00001F0A  B90600            mov cx,0x6
00001F0D  803CFF            cmp byte [si],0xff
00001F10  746F              jz 0x1f81
00001F12  51                push cx
00001F13  B10E              mov cl,0xe
00001F15  BBAC00            mov bx,0xac
00001F18  803FFF            cmp byte [bx],0xff
00001F1B  743D              jz 0x1f5a
00001F1D  E88300            call word 0x1fa3
00001F20  7338              jnc 0x1f5a
00001F22  803F1D            cmp byte [bx],0x1d
00001F25  7C07              jl 0x1f2e
00001F27  803F21            cmp byte [bx],0x21
00001F2A  7F02              jg 0x1f2e
00001F2C  EB2C              jmp short 0x1f5a
00001F2E  803F0E            cmp byte [bx],0xe
00001F31  7505              jnz 0x1f38
00001F33  E85200            call word 0x1f88
00001F36  721F              jc 0x1f57
00001F38  E8B2F6            call word 0x15ed
00001F3B  C60708            mov byte [bx],0x8
00001F3E  F606680080        test byte [0x68],0x80
00001F43  7404              jz 0x1f49
00001F45  C6470102          mov byte [bx+0x1],0x2
00001F49  C747041410        mov word [bx+0x4],0x1014
00001F4E  C604FF            mov byte [si],0xff
00001F51  C7063B005000      mov word [0x3b],0x50
00001F57  59                pop cx
00001F58  EB27              jmp short 0x1f81
00001F5A  83C306            add bx,byte +0x6
00001F5D  E2B9              loop 0x1f18
00001F5F  F6066E0082        test byte [0x6e],0x82
00001F64  750C              jnz 0x1f72
00001F66  833E700000        cmp word [0x70],byte +0x0
00001F6B  7E13              jng 0x1f80
00001F6D  E87900            call word 0x1fe9
00001F70  730E              jnc 0x1f80
00001F72  FF160900          call word [0x9]
00001F76  7308              jnc 0x1f80
00001F78  C7040800          mov word [si],0x8
00001F7C  C6440540          mov byte [si+0x5],0x40
00001F80  59                pop cx
00001F81  83C606            add si,byte +0x6
00001F84  E287              loop 0x1f0d
00001F86  F8                clc
00001F87  C3                ret
00001F88  C7040800          mov word [si],0x8
00001F8C  C6440540          mov byte [si+0x5],0x40
00001F90  8B4702            mov ax,[bx+0x2]
00001F93  2C02              sub al,0x2
00001F95  80C402            add ah,0x2
00001F98  894402            mov [si+0x2],ax
00001F9B  FE4705            inc byte [bx+0x5]
00001F9E  807F0536          cmp byte [bx+0x5],0x36
00001FA2  C3                ret
00001FA3  8A4702            mov al,[bx+0x2]
00001FA6  2A4402            sub al,[si+0x2]
00001FA9  7D02              jnl 0x1fad
00001FAB  F6D8              neg al
00001FAD  3C03              cmp al,0x3
00001FAF  7734              ja 0x1fe5
00001FB1  8A4703            mov al,[bx+0x3]
00001FB4  2A4403            sub al,[si+0x3]
00001FB7  7D02              jnl 0x1fbb
00001FB9  F6D8              neg al
00001FBB  3C03              cmp al,0x3
00001FBD  7726              ja 0x1fe5
00001FBF  8A07              mov al,[bx]
00001FC1  3C12              cmp al,0x12
00001FC3  7308              jnc 0x1fcd
00001FC5  3C05              cmp al,0x5
00001FC7  7404              jz 0x1fcd
00001FC9  3C0E              cmp al,0xe
00001FCB  7510              jnz 0x1fdd
00001FCD  8A4704            mov al,[bx+0x4]
00001FD0  2A4404            sub al,[si+0x4]
00001FD3  7D02              jnl 0x1fd7
00001FD5  F6D8              neg al
00001FD7  3C03              cmp al,0x3
00001FD9  770A              ja 0x1fe5
00001FDB  EB0A              jmp short 0x1fe7
00001FDD  8A4404            mov al,[si+0x4]
00001FE0  384704            cmp [bx+0x4],al
00001FE3  7202              jc 0x1fe7
00001FE5  F8                clc
00001FE6  C3                ret
00001FE7  F9                stc
00001FE8  C3                ret
00001FE9  807C5C1A          cmp byte [si+0x5c],0x1a
00001FED  7D05              jnl 0x1ff4
00001FEF  BAFEFF            mov dx,0xfffe
00001FF2  EB03              jmp short 0x1ff7
00001FF4  BAF9FF            mov dx,0xfff9
00001FF7  03167000          add dx,[0x70]
00001FFB  8A445C            mov al,[si+0x5c]
00001FFE  98                cbw
00001FFF  03D0              add dx,ax
00002001  8A4402            mov al,[si+0x2]
00002004  98                cbw
00002005  2BD0              sub dx,ax
00002007  83FA03            cmp dx,byte +0x3
0000200A  7D07              jnl 0x2013
0000200C  83FAFD            cmp dx,byte -0x3
0000200F  7E02              jng 0x2013
00002011  F9                stc
00002012  C3                ret
00002013  F8                clc
00002014  C3                ret
00002015  E87E00            call word 0x2096
00002018  3D1400            cmp ax,0x14
0000201B  7C4A              jl 0x2067
0000201D  3D1E00            cmp ax,0x1e
00002020  7F45              jg 0x2067
00002022  807C0404          cmp byte [si+0x4],0x4
00002026  7F3F              jg 0x2067
00002028  EB3B              jmp short 0x2065
0000202A  E80B00            call word 0x2038
0000202D  7301              jnc 0x2030
0000202F  C3                ret
00002030  807C0405          cmp byte [si+0x4],0x5
00002034  7C31              jl 0x2067
00002036  EB2D              jmp short 0x2065
00002038  E85B00            call word 0x2096
0000203B  3D0E00            cmp ax,0xe
0000203E  7C27              jl 0x2067
00002040  3D1E00            cmp ax,0x1e
00002043  7F22              jg 0x2067
00002045  EB1E              jmp short 0x2065
00002047  E8EEFF            call word 0x2038
0000204A  7301              jnc 0x204d
0000204C  C3                ret
0000204D  807C040C          cmp byte [si+0x4],0xc
00002051  7F14              jg 0x2067
00002053  EB10              jmp short 0x2065
00002055  E83E00            call word 0x2096
00002058  3D1800            cmp ax,0x18
0000205B  7F08              jg 0x2065
0000205D  807C040C          cmp byte [si+0x4],0xc
00002061  7C02              jl 0x2065
00002063  EB02              jmp short 0x2067
00002065  F8                clc
00002066  C3                ret
00002067  F9                stc
00002068  C3                ret
00002069  E8BEFF            call word 0x202a
0000206C  7301              jnc 0x206f
0000206E  C3                ret
0000206F  807C040E          cmp byte [si+0x4],0xe
00002073  7FF2              jg 0x2067
00002075  EBEE              jmp short 0x2065
00002077  E8B0FF            call word 0x202a
0000207A  72F2              jc 0x206e
0000207C  807C040E          cmp byte [si+0x4],0xe
00002080  7CE5              jl 0x2067
00002082  EBE1              jmp short 0x2065
00002084  E8C0FF            call word 0x2047
00002087  73A7              jnc 0x2030
00002089  C3                ret
0000208A  E80900            call word 0x2096
0000208D  7CD6              jl 0x2065
0000208F  3D0C00            cmp ax,0xc
00002092  7FD1              jg 0x2065
00002094  EBD1              jmp short 0x2067
00002096  8A4402            mov al,[si+0x2]
00002099  98                cbw
0000209A  2B067000          sub ax,[0x70]
0000209E  C3                ret
0000209F  C7063B002800      mov word [0x3b],0x28
000020A5  C3                ret
000020A6  C7063B006400      mov word [0x3b],0x64
000020AC  C3                ret
000020AD  50                push ax
000020AE  57                push di
000020AF  F7063B00FFFF      test word [0x3b],0xffff
000020B5  7417              jz 0x20ce
000020B7  FF0E3B00          dec word [0x3b]
000020BB  7505              jnz 0x20c2
000020BD  E8DD00            call word 0x219d
000020C0  EB0C              jmp short 0x20ce
000020C2  E8F800            call word 0x21bd
000020C5  040A              add al,0xa
000020C7  8AE0              mov ah,al
000020C9  8BF8              mov di,ax
000020CB  E8D600            call word 0x21a4
000020CE  58                pop ax
000020CF  5F                pop di
000020D0  C3                ret
000020D1  33C0              xor ax,ax
000020D3  B90400            mov cx,0x4
000020D6  BB2500            mov bx,0x25
000020D9  F60701            test byte [bx],0x1
000020DC  750C              jnz 0x20ea
000020DE  40                inc ax
000020DF  3D0400            cmp ax,0x4
000020E2  7501              jnz 0x20e5
000020E4  C3                ret
000020E5  83C302            add bx,byte +0x2
000020E8  E2EF              loop 0x20d9
000020EA  B90800            mov cx,0x8
000020ED  8AE0              mov ah,al
000020EF  53                push bx
000020F0  83C302            add bx,byte +0x2
000020F3  3C00              cmp al,0x0
000020F5  7407              jz 0x20fe
000020F7  83C1FE            add cx,byte -0x2
000020FA  FEC8              dec al
000020FC  EBF5              jmp short 0x20f3
000020FE  E8B600            call word 0x21b7
00002101  5B                pop bx
00002102  BE121F            mov si,0x1f12
00002105  8AC4              mov al,ah
00002107  B400              mov ah,0x0
00002109  D1E0              shl ax,1
0000210B  03F0              add si,ax
0000210D  2E8B34            mov si,[cs:si]
00002110  56                push si
00002111  C3                ret
00002112  1A1F              sbb bl,[bx]
00002114  831F35            sbb word [bx],byte +0x35
00002117  1F                pop ds
00002118  641F              fs pop ds
0000211A  BF5C03            mov di,0x35c
0000211D  8A4701            mov al,[bx+0x1]
00002120  3C18              cmp al,0x18
00002122  7504              jnz 0x2128
00002124  E87100            call word 0x2198
00002127  C3                ret
00002128  A801              test al,0x1
0000212A  7403              jz 0x212f
0000212C  BFFF00            mov di,0xff
0000212F  FE4701            inc byte [bx+0x1]
00002132  EB62              jmp short 0x2196
00002134  90                nop
00002135  BFFE33            mov di,0x33fe
00002138  B4B4              mov ah,0xb4
0000213A  8A4701            mov al,[bx+0x1]
0000213D  3AC4              cmp al,ah
0000213F  7509              jnz 0x214a
00002141  E85400            call word 0x2198
00002144  B000              mov al,0x0
00002146  A23300            mov [0x33],al
00002149  C3                ret
0000214A  8A263300          mov ah,[0x33]
0000214E  80FC00            cmp ah,0x0
00002151  7404              jz 0x2157
00002153  D0E8              shr al,1
00002155  D0E8              shr al,1
00002157  A801              test al,0x1
00002159  7403              jz 0x215e
0000215B  BFFF19            mov di,0x19ff
0000215E  FE4701            inc byte [bx+0x1]
00002161  EB33              jmp short 0x2196
00002163  90                nop
00002164  BFB004            mov di,0x4b0
00002167  B404              mov ah,0x4
00002169  8A4701            mov al,[bx+0x1]
0000216C  3AC4              cmp al,ah
0000216E  7504              jnz 0x2174
00002170  E82500            call word 0x2198
00002173  C3                ret
00002174  B9C4FF            mov cx,0xffc4
00002177  B400              mov ah,0x0
00002179  F7E1              mul cx
0000217B  03F8              add di,ax
0000217D  FE4701            inc byte [bx+0x1]
00002180  EB14              jmp short 0x2196
00002182  90                nop
00002183  BF2C01            mov di,0x12c
00002186  B402              mov ah,0x2
00002188  8A4701            mov al,[bx+0x1]
0000218B  3AC4              cmp al,ah
0000218D  7504              jnz 0x2193
0000218F  E80600            call word 0x2198
00002192  C3                ret
00002193  FE4701            inc byte [bx+0x1]
00002196  EB0C              jmp short 0x21a4
00002198  B80000            mov ax,0x0
0000219B  8907              mov [bx],ax
0000219D  E461              in al,0x61
0000219F  24FC              and al,0xfc
000021A1  E661              out 0x61,al
000021A3  C3                ret
000021A4  B0B6              mov al,0xb6
000021A6  E643              out 0x43,al
000021A8  8BC7              mov ax,di
000021AA  E642              out 0x42,al
000021AC  8AC4              mov al,ah
000021AE  E642              out 0x42,al
000021B0  E461              in al,0x61
000021B2  0C03              or al,0x3
000021B4  E661              out 0x61,al
000021B6  C3                ret
000021B7  882F              mov [bx],ch
000021B9  43                inc bx
000021BA  E2FB              loop 0x21b7
000021BC  C3                ret
000021BD  33C0              xor ax,ax
000021BF  CD1A              int 0x1a
000021C1  89163800          mov [0x38],dx
000021C5  2A363A00          sub dh,[0x3a]
000021C9  00163A00          add [0x3a],dl
000021CD  02D6              add dl,dh
000021CF  8BC2              mov ax,dx
000021D1  B251              mov dl,0x51
000021D3  25FF03            and ax,0x3ff
000021D6  F6F2              div dl
000021D8  8AC4              mov al,ah
000021DA  B400              mov ah,0x0
000021DC  C3                ret
000021DD  99                cwd
000021DE  20B120A1          and [bx+di-0x5ee0],dh
000021E2  20A920B9          and [bx+di-0x46e0],ch
000021E6  20C1              and cl,al
000021E8  20C9              and cl,cl
000021EA  20D1              and cl,dl
000021EC  20E1              and cl,ah
000021EE  20F1              and cl,dh
000021F0  2001              and [bx+di],al
000021F2  2111              and [bx+di],dx
000021F4  2121              and [bx+di],sp
000021F6  2131              and [bx+di],si
000021F8  214121            and [bx+di+0x21],ax
000021FB  51                push cx
000021FC  216121            and [bx+di+0x21],sp
000021FF  7121              jno 0x2222
00002201  81219121          and word [bx+di],0x2191
00002205  A121B1            mov ax,[0xb121]
00002208  21C1              and cx,ax
0000220A  21D1              and cx,dx
0000220C  21E1              and cx,sp
0000220E  21F1              and cx,si
00002210  2101              and [bx+di],ax
00002212  2211              and dl,[bx+di]
00002214  2221              and ah,[bx+di]
00002216  2231              and dh,[bx+di]
00002218  224122            and al,[bx+di+0x22]
0000221B  51                push cx
0000221C  226122            and ah,[bx+di+0x22]
0000221F  7122              jno 0x2243
00002221  81229122          and word [bp+si],0x2291
00002225  97                xchg ax,di
00002226  22A722B7          and ah,[bx-0x48de]
0000222A  22C7              and al,bh
0000222C  22D7              and dl,bh
0000222E  22E7              and ah,bh
00002230  22F7              and dh,bh
00002232  2207              and al,[bx]
00002234  2317              and dx,[bx]
00002236  2329              and bp,[bx+di]
00002238  233B              and di,[bp+di]
0000223A  234B23            and cx,[bp+di+0x23]
0000223D  5B                pop bx
0000223E  237523            and si,[di+0x23]
00002241  8523              test [bp+di],sp
00002243  95                xchg ax,bp
00002244  236B23            and bp,[bp+di+0x23]
00002247  A5                movsw
00002248  23B5232F          and si,[di+0x2f23]
0000224C  23C5              and ax,bp
0000224E  23CD              and cx,bp
00002250  23DD              and bx,bp
00002252  23ED              and bp,bp
00002254  23FD              and di,bp
00002256  230F              and cx,[bx]
00002258  241F              and al,0x1f
0000225A  242F              and al,0x2f
0000225C  2435              and al,0x35
0000225E  2445              and al,0x45
00002260  2455              and al,0x55
00002262  2465              and al,0x65
00002264  2475              and al,0x75
00002266  2485              and al,0x85
00002268  2495              and al,0x95
0000226A  24A5              and al,0xa5
0000226C  24B5              and al,0xb5
0000226E  24C5              and al,0xc5
00002270  24D5              and al,0xd5
00002272  24E5              and al,0xe5
00002274  24F5              and al,0xf5
00002276  2405              and al,0x5
00002278  251525            and ax,0x2515
0000227B  252535            and ax,0x3525
0000227E  254525            and ax,0x2545
00002281  53                push bx
00002282  256325            and ax,0x2563
00002285  7325              jnc 0x22ac
00002287  832593            and word [di],byte -0x6d
0000228A  25A325            and ax,0x25a3
0000228D  B325              mov bl,0x25
0000228F  C3                ret
00002290  25D325            and ax,0x25d3
00002293  E325              jcxz 0x22ba
00002295  F3250326          rep and ax,0x2603
00002299  0000              add [bx+si],al
0000229B  0000              add [bx+si],al
0000229D  0000              add [bx+si],al
0000229F  0000              add [bx+si],al
000022A1  0000              add [bx+si],al
000022A3  0000              add [bx+si],al
000022A5  0000              add [bx+si],al
000022A7  0000              add [bx+si],al
000022A9  0001              add [bx+di],al
000022AB  0015              add [di],dl
000022AD  015515            add [di+0x15],dx
000022B0  55                push bp
000022B1  55                push bp
000022B2  55                push bp
000022B3  55                push bp
000022B4  55                push bp
000022B5  55                push bp
000022B6  55                push bp
000022B7  55                push bp
000022B8  55                push bp
000022B9  55                push bp
000022BA  55                push bp
000022BB  55                push bp
000022BC  55                push bp
000022BD  55                push bp
000022BE  55                push bp
000022BF  55                push bp
000022C0  55                push bp
000022C1  55                push bp
000022C2  56                push si
000022C3  55                push bp
000022C4  6A56              push byte +0x56
000022C6  AA                stosb
000022C7  6AAA              push byte -0x56
000022C9  AA                stosb
000022CA  AA                stosb
000022CB  AA                stosb
000022CC  AA                stosb
000022CD  AA                stosb
000022CE  AA                stosb
000022CF  AA                stosb
000022D0  AA                stosb
000022D1  AA                stosb
000022D2  A8AA              test al,0xaa
000022D4  80A8008000        sub byte [bx+si-0x8000],0x0
000022D9  0000              add [bx+si],al
000022DB  0000              add [bx+si],al
000022DD  0000              add [bx+si],al
000022DF  0000              add [bx+si],al
000022E1  0000              add [bx+si],al
000022E3  0000              add [bx+si],al
000022E5  0000              add [bx+si],al
000022E7  0000              add [bx+si],al
000022E9  0000              add [bx+si],al
000022EB  000F              add [bx],cl
000022ED  00FF              add bh,bh
000022EF  0FFF              ud0
000022F1  0000              add [bx+si],al
000022F3  0000              add [bx+si],al
000022F5  0000              add [bx+si],al
000022F7  0000              add [bx+si],al
000022F9  FC                cld
000022FA  00FF              add bh,bh
000022FC  F0                lock
000022FD  FF                db 0xff
000022FE  FF                db 0xff
000022FF  FF                db 0xff
00002300  FF00              inc word [bx+si]
00002302  0000              add [bx+si],al
00002304  0000              add [bx+si],al
00002306  0000              add [bx+si],al
00002308  0000              add [bx+si],al
0000230A  0000              add [bx+si],al
0000230C  00C0              add al,al
0000230E  00FF              add bh,bh
00002310  005555            add [di+0x55],dl
00002313  55                push bp
00002314  55                push bp
00002315  55                push bp
00002316  55                push bp
00002317  55                push bp
00002318  55                push bp
00002319  55                push bp
0000231A  50                push ax
0000231B  55                push bp
0000231C  0F50FF            movmskps edi,xmm7
0000231F  0FFF              ud0
00002321  55                push bp
00002322  55                push bp
00002323  55                push bp
00002324  55                push bp
00002325  55                push bp
00002326  55                push bp
00002327  0155FC            add [di-0x4],dx
0000232A  05FFF0            add ax,0xf0ff
0000232D  FF                db 0xff
0000232E  FF                db 0xff
0000232F  FF                db 0xff
00002330  FF5555            call word [di+0x55]
00002333  55                push bp
00002334  55                push bp
00002335  55                push bp
00002336  55                push bp
00002337  55                push bp
00002338  55                push bp
00002339  55                push bp
0000233A  55                push bp
0000233B  1555C0            adc ax,0xc055
0000233E  55                push bp
0000233F  FF01              inc word [bx+di]
00002341  0FFF              ud0
00002343  303F              xor [bx],bh
00002345  3F                aas
00002346  C03FFF            sar byte [bx],byte 0xff
00002349  3F                aas
0000234A  FF                db 0xff
0000234B  3F                aas
0000234C  FF                db 0xff
0000234D  3F                aas
0000234E  FF                db 0xff
0000234F  3F                aas
00002350  FF                db 0xff
00002351  FF                db 0xff
00002352  FF                db 0xff
00002353  FF                db 0xff
00002354  FF                db 0xff
00002355  FF                db 0xff
00002356  FF03              inc word [bp+di]
00002358  FF                db 0xff
00002359  FC                cld
0000235A  0FFF              ud0
0000235C  F0                lock
0000235D  FF                db 0xff
0000235E  FF                db 0xff
0000235F  FF                db 0xff
00002360  FF                db 0xff
00002361  FF                db 0xff
00002362  FF                db 0xff
00002363  FF                db 0xff
00002364  FF                db 0xff
00002365  FF                db 0xff
00002366  FF                db 0xff
00002367  FF                db 0xff
00002368  FF                db 0xff
00002369  FF                db 0xff
0000236A  FF                db 0xff
0000236B  3F                aas
0000236C  FFC0              inc ax
0000236E  FF                db 0xff
0000236F  FF00              inc word [bx+si]
00002371  0000              add [bx+si],al
00002373  FC                cld
00002374  00FF              add bh,bh
00002376  F0                lock
00002377  FF                db 0xff
00002378  FC                cld
00002379  FFF0              push ax
0000237B  FF0F              dec word [bx]
0000237D  F0FF0F            lock dec word [bx]
00002380  FF01              inc word [bx+di]
00002382  55                push bp
00002383  FC                cld
00002384  05FFF0            add ax,0xf0ff
00002387  FF                db 0xff
00002388  FC                cld
00002389  FFF0              push ax
0000238B  FF0F              dec word [bx]
0000238D  F0FF0F            lock dec word [bx]
00002390  FF0F              dec word [bx]
00002392  FFF0              push ax
00002394  3F                aas
00002395  FFC0              inc ax
00002397  FF                db 0xff
00002398  FF                db 0xff
00002399  FF                db 0xff
0000239A  FF                db 0xff
0000239B  FF                db 0xff
0000239C  FF                db 0xff
0000239D  FF                db 0xff
0000239E  FF                db 0xff
0000239F  FF                db 0xff
000023A0  FF                db 0xff
000023A1  FF                db 0xff
000023A2  FF                db 0xff
000023A3  FF                db 0xff
000023A4  FF                db 0xff
000023A5  FF                db 0xff
000023A6  FF03              inc word [bp+di]
000023A8  FF                db 0xff
000023A9  FC                cld
000023AA  0FFCF0            paddb mm6,mm0
000023AD  FC                cld
000023AE  FF                db 0xff
000023AF  FC                cld
000023B0  FF                db 0xff
000023B1  3F                aas
000023B2  FF                db 0xff
000023B3  3F                aas
000023B4  FF                db 0xff
000023B5  3F                aas
000023B6  FF                db 0xff
000023B7  3F                aas
000023B8  FC                cld
000023B9  3F                aas
000023BA  F03F              lock aas
000023BC  0F30              wrmsr
000023BE  FF0F              dec word [bx]
000023C0  FF                db 0xff
000023C1  FC                cld
000023C2  FF                db 0xff
000023C3  FC                cld
000023C4  FF                db 0xff
000023C5  FC                cld
000023C6  FF00              inc word [bx+si]
000023C8  FF                db 0xff
000023C9  FF0F              dec word [bx]
000023CB  FFF0              push ax
000023CD  FF                db 0xff
000023CE  FF                db 0xff
000023CF  FF                db 0xff
000023D0  FF0F              dec word [bx]
000023D2  FF503F            call word [bx+si+0x3f]
000023D5  55                push bp
000023D6  40                inc ax
000023D7  55                push bp
000023D8  55                push bp
000023D9  55                push bp
000023DA  55                push bp
000023DB  55                push bp
000023DC  55                push bp
000023DD  55                push bp
000023DE  55                push bp
000023DF  55                push bp
000023E0  55                push bp
000023E1  FF                db 0xff
000023E2  FF                db 0xff
000023E3  FF                db 0xff
000023E4  FF                db 0xff
000023E5  FF                db 0xff
000023E6  FF03              inc word [bp+di]
000023E8  FF540F            call word [si+0xf]
000023EB  55                push bp
000023EC  50                push ax
000023ED  55                push bp
000023EE  55                push bp
000023EF  55                push bp
000023F0  55                push bp
000023F1  FF                db 0xff
000023F2  FF                db 0xff
000023F3  FF                db 0xff
000023F4  FF                db 0xff
000023F5  FF                db 0xff
000023F6  FF                db 0xff
000023F7  FF                db 0xff
000023F8  FF                db 0xff
000023F9  FF                db 0xff
000023FA  FF                db 0xff
000023FB  3F                aas
000023FC  FF40FF            inc word [bx+si-0x1]
000023FF  55                push bp
00002400  003F              add [bx],bh
00002402  FF                db 0xff
00002403  3F                aas
00002404  FF                db 0xff
00002405  3F                aas
00002406  FF                db 0xff
00002407  3F                aas
00002408  FC                cld
00002409  3F                aas
0000240A  F03F              lock aas
0000240C  053055            add ax,0x5530
0000240F  0555FF            add ax,0xff55
00002412  FF                db 0xff
00002413  FF                db 0xff
00002414  FF                db 0xff
00002415  FF                db 0xff
00002416  FF                db 0xff
00002417  FF                db 0xff
00002418  FF                db 0xff
00002419  FF                db 0xff
0000241A  FF                db 0xff
0000241B  FF                db 0xff
0000241C  FF                db 0xff
0000241D  FF                db 0xff
0000241E  FF                db 0xff
0000241F  FF                db 0xff
00002420  FFAAFFAA          jmp word far [bp+si-0x5501]
00002424  AB                stosw
00002425  AA                stosb
00002426  AA                stosb
00002427  AA                stosb
00002428  AA                stosb
00002429  AA                stosb
0000242A  AA                stosb
0000242B  AA                stosb
0000242C  AA                stosb
0000242D  FFAAFFFE          jmp word far [bp+si-0x101]
00002431  55                push bp
00002432  FF                db 0xff
00002433  FD                std
00002434  57                push di
00002435  FFF5              push bp
00002437  FF                db 0xff
00002438  FF                db 0xff
00002439  FF                db 0xff
0000243A  FF                db 0xff
0000243B  FF                db 0xff
0000243C  FF                db 0xff
0000243D  FF                db 0xff
0000243E  FF                db 0xff
0000243F  FF                db 0xff
00002440  FF                db 0xff
00002441  FF                db 0xff
00002442  FF                db 0xff
00002443  FF                db 0xff
00002444  FF5FFF            call word far [bx-0x1]
00002447  D57F              aad 0x7f
00002449  FF55FF            call word [di-0x1]
0000244C  FD                std
0000244D  FF                db 0xff
0000244E  FF                db 0xff
0000244F  FF                db 0xff
00002450  FF                db 0xff
00002451  FF                db 0xff
00002452  FF                db 0xff
00002453  FF                db 0xff
00002454  FF                db 0xff
00002455  FF                db 0xff
00002456  FF                db 0xff
00002457  FF                db 0xff
00002458  FF                db 0xff
00002459  FF                db 0xff
0000245A  FF57FF            call word [bx-0x1]
0000245D  F5                cmc
0000245E  5F                pop di
0000245F  FFD5              call bp
00002461  57                push di
00002462  FF555F            call word [di+0x5f]
00002465  55                push bp
00002466  55                push bp
00002467  55                push bp
00002468  55                push bp
00002469  55                push bp
0000246A  55                push bp
0000246B  55                push bp
0000246C  55                push bp
0000246D  55                push bp
0000246E  55                push bp
0000246F  55                push bp
00002470  55                push bp
00002471  FF                db 0xff
00002472  FF                db 0xff
00002473  FF                db 0xff
00002474  FF                db 0xff
00002475  7FFF              jg 0x2476
00002477  55                push bp
00002478  FF5557            call word [di+0x57]
0000247B  55                push bp
0000247C  55                push bp
0000247D  55                push bp
0000247E  55                push bp
0000247F  55                push bp
00002480  55                push bp
00002481  FF                db 0xff
00002482  FF                db 0xff
00002483  FF                db 0xff
00002484  FF                db 0xff
00002485  FF                db 0xff
00002486  FF                db 0xff
00002487  FF                db 0xff
00002488  FF                db 0xff
00002489  FF                db 0xff
0000248A  FF5FFF            call word far [bx-0x1]
0000248D  55                push bp
0000248E  7F55              jg 0x24e5
00002490  55                push bp
00002491  5F                pop di
00002492  FF5FFF            call word far [bx-0x1]
00002495  5F                pop di
00002496  FF5FFF            call word far [bx-0x1]
00002499  5F                pop di
0000249A  FF5FFF            call word far [bx-0x1]
0000249D  5F                pop di
0000249E  FF5FFF            call word far [bx-0x1]
000024A1  5F                pop di
000024A2  F5                cmc
000024A3  5F                pop di
000024A4  55                push bp
000024A5  55                push bp
000024A6  55                push bp
000024A7  FF                db 0xff
000024A8  FF                db 0xff
000024A9  FFF5              push bp
000024AB  FF55F5            call word [di-0xb]
000024AE  55                push bp
000024AF  55                push bp
000024B0  55                push bp
000024B1  55                push bp
000024B2  55                push bp
000024B3  55                push bp
000024B4  55                push bp
000024B5  55                push bp
000024B6  55                push bp
000024B7  AA                stosb
000024B8  AA                stosb
000024B9  FE                db 0xfe
000024BA  AA                stosb
000024BB  FF                db 0xff
000024BC  FA                cli
000024BD  FF                db 0xff
000024BE  FF                db 0xff
000024BF  FF                db 0xff
000024C0  FF                db 0xff
000024C1  FF                db 0xff
000024C2  FF                db 0xff
000024C3  FF                db 0xff
000024C4  FF                db 0xff
000024C5  FF                db 0xff
000024C6  FF5557            call word [di+0x57]
000024C9  A5                movsw
000024CA  55                push bp
000024CB  AA                stosb
000024CC  95                xchg ax,bp
000024CD  EAAAFFAAFF        jmp word 0xffaa:0xffaa
000024D2  FE                db 0xfe
000024D3  FF                db 0xff
000024D4  FF                db 0xff
000024D5  FF                db 0xff
000024D6  FFD5              call bp
000024D8  6A56              push byte +0x56
000024DA  AA                stosb
000024DB  6AAA              push byte -0x56
000024DD  AA                stosb
000024DE  A5                movsw
000024DF  AA                stosb
000024E0  55                push bp
000024E1  AA                stosb
000024E2  A5                movsw
000024E3  FA                cli
000024E4  AA                stosb
000024E5  FF                db 0xff
000024E6  EA558A5A8A        jmp word 0x8a5a:0x8a55
000024EB  AA                stosb
000024EC  82                db 0x82
000024ED  AA                stosb
000024EE  A2AAA2            mov [0xa2aa],al
000024F1  AA                stosb
000024F2  A0FAA8            mov al,[0xa8fa]
000024F5  FF                db 0xff
000024F6  E8AAAA            call word 0xcfa3
000024F9  AA                stosb
000024FA  AA                stosb
000024FB  AA                stosb
000024FC  AA                stosb
000024FD  AA                stosb
000024FE  AA                stosb
000024FF  AA                stosb
00002500  AF                scasw
00002501  AA                stosb
00002502  FFAFFF5F          jmp word far [bx+0x5fff]
00002506  FFAAAFAA          jmp word far [bp+si-0x5551]
0000250A  FFAFFFFF          jmp word far [bx-0x1]
0000250E  FF                db 0xff
0000250F  FF                db 0xff
00002510  FF                db 0xff
00002511  FF                db 0xff
00002512  FF                db 0xff
00002513  FF                db 0xff
00002514  FF                db 0xff
00002515  FF                db 0xff
00002516  FF5555            call word [di+0x55]
00002519  55                push bp
0000251A  55                push bp
0000251B  55                push bp
0000251C  55                push bp
0000251D  55                push bp
0000251E  55                push bp
0000251F  55                push bp
00002520  55                push bp
00002521  55                push bp
00002522  005005            add [bx+si+0x5],dl
00002525  014500            add [di+0x0],ax
00002528  005555            add [di+0x55],dl
0000252B  55                push bp
0000252C  55                push bp
0000252D  55                push bp
0000252E  55                push bp
0000252F  55                push bp
00002530  55                push bp
00002531  55                push bp
00002532  55                push bp
00002533  055540            add ax,0x4055
00002536  155500            adc ax,0x55
00002539  55                push bp
0000253A  54                push sp
0000253B  55                push bp
0000253C  55                push bp
0000253D  55                push bp
0000253E  55                push bp
0000253F  55                push bp
00002540  55                push bp
00002541  55                push bp
00002542  55                push bp
00002543  55                push bp
00002544  50                push ax
00002545  55                push bp
00002546  50                push ax
00002547  55                push bp
00002548  41                inc cx
00002549  55                push bp
0000254A  45                inc bp
0000254B  55                push bp
0000254C  50                push ax
0000254D  55                push bp
0000254E  015015            add [bx+si+0x15],dx
00002551  015515            add [di+0x15],dx
00002554  55                push bp
00002555  015550            add [di+0x50],dx
00002558  055540            add ax,0x4055
0000255B  154555            adc ax,0x5545
0000255E  055515            add ax,0x1555
00002561  55                push bp
00002562  155415            adc ax,0x1554
00002565  54                push sp
00002566  55                push bp
00002567  54                push sp
00002568  55                push bp
00002569  105555            adc [di+0x55],dl
0000256C  55                push bp
0000256D  55                push bp
0000256E  55                push bp
0000256F  55                push bp
00002570  55                push bp
00002571  55                push bp
00002572  55                push bp
00002573  55                push bp
00002574  55                push bp
00002575  015550            add [di+0x50],dx
00002578  055540            add ax,0x4055
0000257B  55                push bp
0000257C  55                push bp
0000257D  55                push bp
0000257E  55                push bp
0000257F  55                push bp
00002580  55                push bp
00002581  55                push bp
00002582  55                push bp
00002583  55                push bp
00002584  55                push bp
00002585  55                push bp
00002586  55                push bp
00002587  55                push bp
00002588  55                push bp
00002589  155500            adc ax,0x55
0000258C  55                push bp
0000258D  54                push sp
0000258E  015550            add [di+0x50],dx
00002591  55                push bp
00002592  55                push bp
00002593  55                push bp
00002594  55                push bp
00002595  55                push bp
00002596  55                push bp
00002597  55                push bp
00002598  55                push bp
00002599  55                push bp
0000259A  55                push bp
0000259B  55                push bp
0000259C  55                push bp
0000259D  55                push bp
0000259E  55                push bp
0000259F  055540            add ax,0x4055
000025A2  155500            adc ax,0x55
000025A5  55                push bp
000025A6  45                inc bp
000025A7  55                push bp
000025A8  055515            add ax,0x1555
000025AB  55                push bp
000025AC  155415            adc ax,0x1554
000025AF  54                push sp
000025B0  55                push bp
000025B1  54                push sp
000025B2  55                push bp
000025B3  50                push ax
000025B4  55                push bp
000025B5  005550            add [di+0x50],dl
000025B8  014150            add [bx+di+0x50],ax
000025BB  45                inc bp
000025BC  55                push bp
000025BD  45                inc bp
000025BE  55                push bp
000025BF  055515            add ax,0x1555
000025C2  55                push bp
000025C3  155555            adc ax,0x5555
000025C6  55                push bp
000025C7  55                push bp
000025C8  55                push bp
000025C9  55                push bp
000025CA  55                push bp
000025CB  55                push bp
000025CC  54                push sp
000025CD  55                push bp
000025CE  40                inc ax
000025CF  54                push sp
000025D0  054055            add ax,0x5540
000025D3  055555            add ax,0x5555
000025D6  55                push bp
000025D7  55                push bp
000025D8  55                push bp
000025D9  55                push bp
000025DA  55                push bp
000025DB  55                push bp
000025DC  55                push bp
000025DD  155515            adc ax,0x1555
000025E0  55                push bp
000025E1  155505            adc ax,0x555
000025E4  55                push bp
000025E5  45                inc bp
000025E6  55                push bp
000025E7  45                inc bp
000025E8  55                push bp
000025E9  41                inc cx
000025EA  55                push bp
000025EB  51                push cx
000025EC  55                push bp
000025ED  51                push cx
000025EE  55                push bp
000025EF  51                push cx
000025F0  55                push bp
000025F1  41                inc cx
000025F2  55                push bp
000025F3  45                inc bp
000025F4  55                push bp
000025F5  45                inc bp
000025F6  55                push bp
000025F7  055A15            add ax,0x155a
000025FA  AA                stosb
000025FB  1AAA5556          sbb ch,[bp+si+0x5655]
000025FF  55                push bp
00002600  5A                pop dx
00002601  55                push bp
00002602  AF                scasw
00002603  5A                pop dx
00002604  AF                scasw
00002605  AA                stosb
00002606  AF                scasw
00002607  AA                stosb
00002608  AF                scasw
00002609  AA                stosb
0000260A  5F                pop di
0000260B  A5                movsw
0000260C  5F                pop di
0000260D  0000              add [bx+si],al
0000260F  A955AA            test ax,0xaa55
00002612  A5                movsw
00002613  AA                stosb
00002614  AA                stosb
00002615  EAAAD6AAD5        jmp word 0xd5aa:0xd6aa
0000261A  5A                pop dx
0000261B  D555              aad 0x55
0000261D  D556              aad 0x56
0000261F  55                push bp
00002620  55                push bp
00002621  55                push bp
00002622  55                push bp
00002623  95                xchg ax,bp
00002624  55                push bp
00002625  AA                stosb
00002626  55                push bp
00002627  BEA9BF            mov si,0xbfa9
0000262A  AA                stosb
0000262B  7FAA              jg 0x25d7
0000262D  BFAA55            mov di,0x55aa
00002630  55                push bp
00002631  55                push bp
00002632  55                push bp
00002633  55                push bp
00002634  55                push bp
00002635  55                push bp
00002636  55                push bp
00002637  55                push bp
00002638  55                push bp
00002639  95                xchg ax,bp
0000263A  55                push bp
0000263B  AA                stosb
0000263C  55                push bp
0000263D  AA                stosb
0000263E  A9AAAA            test ax,0xaaaa
00002641  AA                stosb
00002642  AA                stosb
00002643  AA                stosb
00002644  AA                stosb
00002645  51                push cx
00002646  55                push bp
00002647  50                push ax
00002648  55                push bp
00002649  54                push sp
0000264A  55                push bp
0000264B  54                push sp
0000264C  55                push bp
0000264D  54                push sp
0000264E  155515            adc ax,0x1555
00002651  55                push bp
00002652  155505            adc ax,0x555
00002655  BF56BF            mov di,0xbf56
00002658  55                push bp
00002659  7F55              jg 0x26b0
0000265B  5F                pop di
0000265C  55                push bp
0000265D  55                push bp
0000265E  55                push bp
0000265F  55                push bp
00002660  5A                pop dx
00002661  95                xchg ax,bp
00002662  AA                stosb
00002663  AA                stosb
00002664  AA                stosb
00002665  AA                stosb
00002666  BE5ABF            mov si,0xbf5a
00002669  55                push bp
0000266A  BF5ABF            mov di,0xbf5a
0000266D  AA                stosb
0000266E  BFAABF            mov di,0xbfaa
00002671  A97F95            test ax,0x957f
00002674  5F                pop di
00002675  A155A0            mov ax,[0xa055]
00002678  A5                movsw
00002679  A2AAA2            mov [0xa2aa],al
0000267C  AA                stosb
0000267D  54                push sp
0000267E  2A552A            sub dl,[di+0x2a]
00002681  55                push bp
00002682  2A550A            sub dl,[di+0xa]
00002685  55                push bp
00002686  45                inc bp
00002687  55                push bp
00002688  45                inc bp
00002689  55                push bp
0000268A  41                inc cx
0000268B  55                push bp
0000268C  51                push cx
0000268D  55                push bp
0000268E  51                push cx
0000268F  A5                movsw
00002690  50                push ax
00002691  AA                stosb
00002692  91                xchg ax,cx
00002693  AA                stosb
00002694  A800              test al,0x0
00002696  0000              add [bx+si],al
00002698  0000              add [bx+si],al
0000269A  00A80002          add [bx+si+0x200],ch
0000269E  A0000A            mov al,[0xa00]
000026A1  0000              add [bx+si],al
000026A3  0000              add [bx+si],al
000026A5  0001              add [bx+di],al
000026A7  0015              add [di],dl
000026A9  015501            add [di+0x1],dx
000026AC  55                push bp
000026AD  055555            add ax,0x5555
000026B0  55                push bp
000026B1  55                push bp
000026B2  55                push bp
000026B3  55                push bp
000026B4  55                push bp
000026B5  0000              add [bx+si],al
000026B7  0000              add [bx+si],al
000026B9  0000              add [bx+si],al
000026BB  0000              add [bx+si],al
000026BD  0000              add [bx+si],al
000026BF  0000              add [bx+si],al
000026C1  005505            add [di+0x5],dl
000026C4  55                push bp
000026C5  055515            add ax,0x1555
000026C8  55                push bp
000026C9  55                push bp
000026CA  55                push bp
000026CB  55                push bp
000026CC  5A                pop dx
000026CD  AA                stosb
000026CE  8AAA8A88          mov ch,[bp+si-0x7776]
000026D2  A22220            mov [0x2022],al
000026D5  55                push bp
000026D6  55                push bp
000026D7  55                push bp
000026D8  54                push sp
000026D9  54                push sp
000026DA  2AAAAAAA          sub ch,[bp+si-0x5556]
000026DE  28888820          sub [bx+si+0x2088],cl
000026E2  0000              add [bx+si],al
000026E4  005555            add [di+0x55],dl
000026E7  0AAAAAAA          or ch,[bp+si-0x5556]
000026EB  A8A8              test al,0xa8
000026ED  A22200            mov [0x22],al
000026F0  0000              add [bx+si],al
000026F2  0000              add [bx+si],al
000026F4  005555            add [di+0x55],dl
000026F7  A855              test al,0x55
000026F9  AA                stosb
000026FA  158A15            adc ax,0x158a
000026FD  225502            and dl,[di+0x2]
00002700  55                push bp
00002701  015505            add [di+0x5],dx
00002704  55                push bp
00002705  055615            add ax,0x1556
00002708  6A16              push byte +0x16
0000270A  AA                stosb
0000270B  2AAA22AA          sub ch,[bp+si-0x55de]
0000270F  088A0222          or [bp+si+0x2202],cl
00002713  0008              add [bx+si],cl
00002715  0001              add [bx+di],al
00002717  0015              add [di],dl
00002719  015515            add [di+0x15],dx
0000271C  55                push bp
0000271D  55                push bp
0000271E  55                push bp
0000271F  1555C0            adc ax,0xc055
00002722  55                push bp
00002723  FF01              inc word [bx+di]
00002725  55                push bp
00002726  50                push ax
00002727  55                push bp
00002728  55                push bp
00002729  55                push bp
0000272A  55                push bp
0000272B  A95502            test ax,0x255
0000272E  A5                movsw
0000272F  000A              add [bp+si],cl
00002731  0000              add [bx+si],al
00002733  0000              add [bx+si],al
00002735  0000              add [bx+si],al
00002737  0000              add [bx+si],al
00002739  0000              add [bx+si],al
0000273B  A800              test al,0x0
0000273D  02A0000A          add ah,[bx+si+0xa00]
00002741  0000              add [bx+si],al
00002743  54                push sp
00002744  005555            add [di+0x55],dl
00002747  55                push bp
00002748  55                push bp
00002749  55                push bp
0000274A  55                push bp
0000274B  015500            add [di+0x0],dx
0000274E  050000            add ax,0x0
00002751  0000              add [bx+si],al
00002753  0000              add [bx+si],al
00002755  0000              add [bx+si],al
00002757  0000              add [bx+si],al
00002759  A800              test al,0x0
0000275B  57                push di
0000275C  A0555F            mov al,[0x5f55]
0000275F  55                push bp
00002760  55                push bp
00002761  55                push bp
00002762  55                push bp
00002763  55                push bp
00002764  55                push bp
00002765  55                push bp
00002766  55                push bp
00002767  55                push bp
00002768  55                push bp
00002769  015554            add [di+0x54],dx
0000276C  055550            add ax,0x5055
0000276F  55                push bp
00002770  55                push bp
00002771  55                push bp
00002772  55                push bp
00002773  55                push bp
00002774  50                push ax
00002775  55                push bp
00002776  55                push bp
00002777  55                push bp
00002778  55                push bp
00002779  015554            add [di+0x54],dx
0000277C  055550            add ax,0x5055
0000277F  55                push bp
00002780  55                push bp
00002781  55                push bp
00002782  55                push bp
00002783  A000AA            mov al,[0xaa00]
00002786  00AAA0AA          add [bp+si-0x5560],ch
0000278A  AA                stosb
0000278B  AA                stosb
0000278C  AA                stosb
0000278D  AA                stosb
0000278E  A0AA00            mov al,[0xaa]
00002791  A000A0            mov al,[0xa000]
00002794  00AA00AA          add [bp+si-0x5600],ch
00002798  A0AAA8            mov al,[0xa8aa]
0000279B  AA                stosb
0000279C  A8AA              test al,0xaa
0000279E  A0AA00            mov al,[0xaa]
000027A1  A000A0            mov al,[0xa000]
000027A4  00AA00AA          add [bp+si-0x5600],ch
000027A8  A0AAA0            mov al,[0xa0aa]
000027AB  AA                stosb
000027AC  A0AAA0            mov al,[0xa0aa]
000027AF  AA                stosb
000027B0  00A000A0          add [bx+si-0x6000],ah
000027B4  00AA00AA          add [bp+si-0x5600],ch
000027B8  80AA80AA80        sub byte [bp+si-0x5580],0x80
000027BD  AA                stosb
000027BE  80AA00A000        sub byte [bp+si-0x6000],0x0
000027C3  A000AA            mov al,[0xaa00]
000027C6  00AA00AA          add [bp+si-0x5600],ch
000027CA  00AA00AA          add [bp+si-0x5600],ch
000027CE  00AA00A0          add [bp+si-0x6000],ch
000027D2  00A000A8          add [bx+si-0x5800],ah
000027D6  00A800A8          add [bx+si-0x5800],ch
000027DA  00A800A8          add [bx+si-0x5800],ch
000027DE  00A800A0          add [bx+si-0x6000],ch
000027E2  00A000A0          add [bx+si-0x6000],ah
000027E6  00A000A0          add [bx+si-0x6000],ah
000027EA  00A000A0          add [bx+si-0x6000],ah
000027EE  00A000A0          add [bx+si-0x6000],ah
000027F2  00800080          add [bx+si-0x8000],al
000027F6  00800080          add [bx+si-0x8000],al
000027FA  00800080          add [bx+si-0x8000],al
000027FE  00800080          add [bx+si-0x8000],al
00002802  0000              add [bx+si],al
00002804  0000              add [bx+si],al
00002806  0000              add [bx+si],al
00002808  0000              add [bx+si],al
0000280A  0000              add [bx+si],al
0000280C  0000              add [bx+si],al
0000280E  0000              add [bx+si],al
00002810  0000              add [bx+si],al
00002812  001B              add [bp+di],bl
00002814  31770C            xor [bx+0xc],si
00002817  DB                db 0xdb
00002818  31770C            xor [bx+0xc],si
0000281B  9B32770C          wait xor dh,[bx+0xc]
0000281F  5B                pop bx
00002820  33770C            xor si,[bx+0xc]
00002823  9B26F00BBB27F0    wait lock or di,[es:bp+di-0xfd9]
0000282A  0BDB              or bx,bx
0000282C  28770C            sub [bx+0xc],dh
0000282F  9B29F0            wait sub ax,si
00002832  0BBB2AF0          or di,[bp+di-0xfd6]
00002836  0BDB              or bx,bx
00002838  2BF0              sub si,ax
0000283A  0BFB              or di,bx
0000283C  2CF0              sub al,0xf0
0000283E  0B1B              or bx,[bp+di]
00002840  2E770C            cs ja 0x284f
00002843  DB2E770C          fld tword [0xc77]
00002847  9B2F              wait das
00002849  770C              ja 0x2857
0000284B  5B                pop bx
0000284C  30770C            xor [bx+0xc],dh
0000284F  1B34              sbb si,[si]
00002851  770C              ja 0x285f
00002853  7B31              jpo 0x2886
00002855  C7                db 0xc7
00002856  0C1B              or al,0x1b
00002858  3477              xor al,0x77
0000285A  0C9B              or al,0x9b
0000285C  36                ss
0000285D  0F                db 0x0f
0000285E  0CDB              or al,0xdb
00002860  36                ss
00002861  0F                db 0x0f
00002862  0C1B              or al,0x1b
00002864  37                aaa
00002865  99                cwd
00002866  0C2B              or al,0x2b
00002868  37                aaa
00002869  99                cwd
0000286A  0C3B              or al,0x3b
0000286C  37                aaa
0000286D  0F                db 0x0f
0000286E  0C1B              or al,0x1b
00002870  3477              xor al,0x77
00002872  0CDB              or al,0xdb
00002874  3477              xor al,0x77
00002876  0C9B              or al,0x9b
00002878  354E0C            xor ax,0xc4e
0000287B  1B364E0C          sbb si,[0xc4e]
0000287F  7B37              jpo 0x28b8
00002881  2B0C              sub cx,[si]
00002883  DB                db 0xdb
00002884  37                aaa
00002885  99                cwd
00002886  0CEB              or al,0xeb
00002888  37                aaa
00002889  4E                dec si
0000288A  0C6B              or al,0x6b
0000288C  384E0C            cmp [bp+0xc],cl
0000288F  EB38              jmp short 0x28c9
00002891  AD                lodsw
00002892  0C0B              or al,0xb
00002894  39AD0C1B          cmp [di+0x1b0c],bp
00002898  394E0C            cmp [bp+0xc],cx
0000289B  0003              add [bp+di],al
0000289D  FF                db 0xff
0000289E  FFF0              push ax
000028A0  0000              add [bx+si],al
000028A2  FF                db 0xff
000028A3  FF                db 0xff
000028A4  FF                db 0xff
000028A5  FFC0              inc ax
000028A7  0FFF              ud0
000028A9  FF                db 0xff
000028AA  FFF7              push di
000028AC  F03F              lock aas
000028AE  FF                db 0xff
000028AF  FF                db 0xff
000028B0  FF                db 0xff
000028B1  FF                db 0xff
000028B2  FC                cld
000028B3  3F                aas
000028B4  FF                db 0xff
000028B5  FF                db 0xff
000028B6  FF5FFC            call word far [bx-0x4]
000028B9  23FF              and di,di
000028BB  FF                db 0xff
000028BC  FF                db 0xff
000028BD  FFC8              dec ax
000028BF  280F              sub [bx],cl
000028C1  FF                db 0xff
000028C2  FFF0              push ax
000028C4  282A              sub [bp+si],ch
000028C6  A00000            mov al,[0x0]
000028C9  0E                push cs
000028CA  A82A              test al,0x2a
000028CC  AE                scasb
000028CD  AB                stosw
000028CE  AB                stosw
000028CF  AE                scasb
000028D0  A82A              test al,0x2a
000028D2  AE                scasb
000028D3  AB                stosw
000028D4  AB                stosw
000028D5  AE                scasb
000028D6  A82A              test al,0x2a
000028D8  AE                scasb
000028D9  AB                stosw
000028DA  AB                stosw
000028DB  AE                scasb
000028DC  A8EA              test al,0xea
000028DE  AE                scasb
000028DF  AB                stosw
000028E0  AB                stosw
000028E1  AE                scasb
000028E2  AB                stosw
000028E3  FFAEABAB          jmp word far [bp-0x5455]
000028E7  AE                scasb
000028E8  BF2FFF            mov di,0xff2f
000028EB  AB                stosw
000028EC  AB                stosw
000028ED  FF                db 0xff
000028EE  F8                clc
000028EF  2AABFFFF          sub ch,[bp+di-0x1]
000028F3  AE                scasb
000028F4  A82A              test al,0x2a
000028F6  AE                scasb
000028F7  AB                stosw
000028F8  AB                stosw
000028F9  AE                scasb
000028FA  A02AAE            mov al,[0xae2a]
000028FD  AB                stosw
000028FE  AB                stosw
000028FF  AE                scasb
00002900  882A              mov [bp+si],ch
00002902  AE                scasb
00002903  AB                stosw
00002904  AB                stosw
00002905  AE                scasb
00002906  A02AAE            mov al,[0xae2a]
00002909  AB                stosw
0000290A  AB                stosw
0000290B  AE                scasb
0000290C  882A              mov [bp+si],ch
0000290E  AE                scasb
0000290F  AB                stosw
00002910  AB                stosw
00002911  AE                scasb
00002912  202A              and [bp+si],ch
00002914  AE                scasb
00002915  AB                stosw
00002916  AB                stosw
00002917  AC                lodsb
00002918  880A              mov [bp+si],cl
0000291A  AE                scasb
0000291B  AB                stosw
0000291C  AB                stosw
0000291D  AE                scasb
0000291E  2000              and [bx+si],al
00002920  AE                scasb
00002921  AB                stosw
00002922  AB                stosw
00002923  8E00              mov es,[bx+si]
00002925  0002              add [bp+si],al
00002927  AB                stosw
00002928  AB                stosw
00002929  8000FF            add byte [bx+si],0xff
0000292C  FC                cld
0000292D  0000              add [bx+si],al
0000292F  0FFF              ud0
00002931  FF00              inc word [bx+si]
00002933  0000              add [bx+si],al
00002935  003F              add [bx],bh
00002937  F00000            lock add [bx+si],al
0000293A  0000              add [bx+si],al
0000293C  0FC000            xadd [bx+si],al
0000293F  0000              add [bx+si],al
00002941  0003              add [bp+di],al
00002943  C00000            rol byte [bx+si],byte 0x0
00002946  0000              add [bx+si],al
00002948  03C0              add ax,ax
0000294A  0000              add [bx+si],al
0000294C  0000              add [bx+si],al
0000294E  03C0              add ax,ax
00002950  0000              add [bx+si],al
00002952  0000              add [bx+si],al
00002954  03C0              add ax,ax
00002956  0000              add [bx+si],al
00002958  0000              add [bx+si],al
0000295A  03C0              add ax,ax
0000295C  0000              add [bx+si],al
0000295E  0000              add [bx+si],al
00002960  03C0              add ax,ax
00002962  0000              add [bx+si],al
00002964  0000              add [bx+si],al
00002966  03C0              add ax,ax
00002968  0000              add [bx+si],al
0000296A  0000              add [bx+si],al
0000296C  0300              add ax,[bx+si]
0000296E  0000              add [bx+si],al
00002970  0000              add [bx+si],al
00002972  0000              add [bx+si],al
00002974  0000              add [bx+si],al
00002976  0000              add [bx+si],al
00002978  00C0              add al,al
0000297A  0000              add [bx+si],al
0000297C  0000              add [bx+si],al
0000297E  03C0              add ax,ax
00002980  0000              add [bx+si],al
00002982  0000              add [bx+si],al
00002984  03C0              add ax,ax
00002986  0000              add [bx+si],al
00002988  0000              add [bx+si],al
0000298A  03C0              add ax,ax
0000298C  0000              add [bx+si],al
0000298E  0000              add [bx+si],al
00002990  03C0              add ax,ax
00002992  0000              add [bx+si],al
00002994  0000              add [bx+si],al
00002996  03C0              add ax,ax
00002998  0000              add [bx+si],al
0000299A  0000              add [bx+si],al
0000299C  03C0              add ax,ax
0000299E  0000              add [bx+si],al
000029A0  0000              add [bx+si],al
000029A2  03C0              add ax,ax
000029A4  0000              add [bx+si],al
000029A6  0000              add [bx+si],al
000029A8  03F0              add si,ax
000029AA  0000              add [bx+si],al
000029AC  0000              add [bx+si],al
000029AE  0FFF              ud0
000029B0  0000              add [bx+si],al
000029B2  0000              add [bx+si],al
000029B4  FF                db 0xff
000029B5  FF                db 0xff
000029B6  FC                cld
000029B7  0000              add [bx+si],al
000029B9  3F                aas
000029BA  FF00              inc word [bx+si]
000029BC  0002              add [bp+si],al
000029BE  C00000            rol byte [bx+si],byte 0x0
000029C1  0000              add [bx+si],al
000029C3  0AB00000          or dh,[bx+si+0x0]
000029C7  0000              add [bx+si],al
000029C9  2AEC              sub ch,ah
000029CB  0000              add [bx+si],al
000029CD  0000              add [bx+si],al
000029CF  2AB80000          sub bh,[bx+si+0x0]
000029D3  0000              add [bx+si],al
000029D5  2AEC              sub ch,ah
000029D7  0000              add [bx+si],al
000029D9  0000              add [bx+si],al
000029DB  2AB80000          sub bh,[bx+si+0x0]
000029DF  0000              add [bx+si],al
000029E1  2AEC              sub ch,ah
000029E3  0000              add [bx+si],al
000029E5  0000              add [bx+si],al
000029E7  2AB80000          sub bh,[bx+si+0x0]
000029EB  0000              add [bx+si],al
000029ED  2A3C              sub bh,[si]
000029EF  0000              add [bx+si],al
000029F1  0000              add [bx+si],al
000029F3  2AB80000          sub bh,[bx+si+0x0]
000029F7  0000              add [bx+si],al
000029F9  2AEC              sub ch,ah
000029FB  0000              add [bx+si],al
000029FD  0000              add [bx+si],al
000029FF  2AB80000          sub bh,[bx+si+0x0]
00002A03  0000              add [bx+si],al
00002A05  2AEC              sub ch,ah
00002A07  0000              add [bx+si],al
00002A09  0000              add [bx+si],al
00002A0B  2AB80000          sub bh,[bx+si+0x0]
00002A0F  0000              add [bx+si],al
00002A11  AB                stosw
00002A12  AE                scasb
00002A13  0000              add [bx+si],al
00002A15  0002              add [bp+si],al
00002A17  AB                stosw
00002A18  BA8000            mov dx,0x80
00002A1B  0002              add [bp+si],al
00002A1D  2BAC8000          sub bp,[si+0x80]
00002A21  0002              add [bp+si],al
00002A23  03808000          add ax,[bx+si+0x80]
00002A27  0000              add [bx+si],al
00002A29  0BE0              or sp,ax
00002A2B  0000              add [bx+si],al
00002A2D  0000              add [bx+si],al
00002A2F  2E3800            cmp [cs:bx+si],al
00002A32  0000              add [bx+si],al
00002A34  00BB8E00          add [bp+di+0x8e],bh
00002A38  0000              add [bx+si],al
00002A3A  002E2800          add [0x28],ch
00002A3E  0000              add [bx+si],al
00002A40  0008              add [bx+si],cl
00002A42  E000              loopne 0x2a44
00002A44  0000              add [bx+si],al
00002A46  0003              add [bp+di],al
00002A48  800000            add byte [bx+si],0x0
00002A4B  FF                db 0xff
00002A4C  FF                db 0xff
00002A4D  FC                cld
00002A4E  3F                aas
00002A4F  FF                db 0xff
00002A50  FF                db 0xff
00002A51  FF                db 0xff
00002A52  FFF0              push ax
00002A54  0FFF              ud0
00002A56  FF                db 0xff
00002A57  FF                db 0xff
00002A58  FFC0              inc ax
00002A5A  03FF              add di,di
00002A5C  FF                db 0xff
00002A5D  FF                db 0xff
00002A5E  FFC0              inc ax
00002A60  03FF              add di,di
00002A62  FF                db 0xff
00002A63  FF                db 0xff
00002A64  FFC0              inc ax
00002A66  03FF              add di,di
00002A68  FF                db 0xff
00002A69  FF                db 0xff
00002A6A  FFC0              inc ax
00002A6C  03FF              add di,di
00002A6E  FF                db 0xff
00002A6F  FF                db 0xff
00002A70  FFC0              inc ax
00002A72  03FF              add di,di
00002A74  FF                db 0xff
00002A75  FF                db 0xff
00002A76  FFC0              inc ax
00002A78  03FF              add di,di
00002A7A  FF                db 0xff
00002A7B  FF                db 0xff
00002A7C  FFC0              inc ax
00002A7E  03FF              add di,di
00002A80  FF                db 0xff
00002A81  FF                db 0xff
00002A82  FFC0              inc ax
00002A84  03FF              add di,di
00002A86  FF                db 0xff
00002A87  FF                db 0xff
00002A88  FFC0              inc ax
00002A8A  03FF              add di,di
00002A8C  FF                db 0xff
00002A8D  FF                db 0xff
00002A8E  FFC0              inc ax
00002A90  03FF              add di,di
00002A92  FF                db 0xff
00002A93  FF                db 0xff
00002A94  FFC0              inc ax
00002A96  03FF              add di,di
00002A98  FF                db 0xff
00002A99  FF                db 0xff
00002A9A  FFC0              inc ax
00002A9C  03FF              add di,di
00002A9E  FF                db 0xff
00002A9F  FF                db 0xff
00002AA0  FF00              inc word [bx+si]
00002AA2  00FF              add bh,bh
00002AA4  FF                db 0xff
00002AA5  FF                db 0xff
00002AA6  FC                cld
00002AA7  0000              add [bx+si],al
00002AA9  3F                aas
00002AAA  FF                db 0xff
00002AAB  FF                db 0xff
00002AAC  FC                cld
00002AAD  C0033F            rol byte [bp+di],byte 0x3f
00002AB0  FF                db 0xff
00002AB1  FF                db 0xff
00002AB2  FC                cld
00002AB3  FC                cld
00002AB4  3F                aas
00002AB5  3F                aas
00002AB6  FF                db 0xff
00002AB7  FF                db 0xff
00002AB8  FF                db 0xff
00002AB9  FF                db 0xff
00002ABA  FF                db 0xff
00002ABB  FF                db 0xff
00002ABC  FF                db 0xff
00002ABD  FF                db 0xff
00002ABE  FF                db 0xff
00002ABF  FF                db 0xff
00002AC0  FF                db 0xff
00002AC1  FF                db 0xff
00002AC2  FF                db 0xff
00002AC3  FF                db 0xff
00002AC4  FF                db 0xff
00002AC5  FF                db 0xff
00002AC6  FF                db 0xff
00002AC7  FF                db 0xff
00002AC8  FF                db 0xff
00002AC9  FF                db 0xff
00002ACA  FF                db 0xff
00002ACB  FF                db 0xff
00002ACC  FF                db 0xff
00002ACD  FF                db 0xff
00002ACE  FF                db 0xff
00002ACF  FF                db 0xff
00002AD0  FF                db 0xff
00002AD1  FF                db 0xff
00002AD2  FF                db 0xff
00002AD3  FF                db 0xff
00002AD4  FF                db 0xff
00002AD5  FF                db 0xff
00002AD6  FF                db 0xff
00002AD7  FF                db 0xff
00002AD8  FF                db 0xff
00002AD9  FF                db 0xff
00002ADA  FF00              inc word [bx+si]
00002ADC  0000              add [bx+si],al
00002ADE  0000              add [bx+si],al
00002AE0  0000              add [bx+si],al
00002AE2  0000              add [bx+si],al
00002AE4  0000              add [bx+si],al
00002AE6  0000              add [bx+si],al
00002AE8  03FF              add di,di
00002AEA  FF00              inc word [bx+si]
00002AEC  0000              add [bx+si],al
00002AEE  0FC003            xadd [bp+di],al
00002AF1  F00000            lock add [bx+si],al
00002AF4  3F                aas
00002AF5  0000              add [bx+si],al
00002AF7  3C00              cmp al,0x0
00002AF9  00FC              add ah,bh
00002AFB  0000              add [bx+si],al
00002AFD  0F0000            sldt [bx+si]
00002B00  FC                cld
00002B01  0000              add [bx+si],al
00002B03  0F0000            sldt [bx+si]
00002B06  FF00              inc word [bx+si]
00002B08  000F              add [bx],cl
00002B0A  0000              add [bx+si],al
00002B0C  FFC0              inc ax
00002B0E  003F              add [bx],bh
00002B10  0000              add [bx+si],al
00002B12  FFF0              push ax
00002B14  00FF              add bh,bh
00002B16  0000              add [bx+si],al
00002B18  3F                aas
00002B19  FF0F              dec word [bx]
00002B1B  FC                cld
00002B1C  0000              add [bx+si],al
00002B1E  0FFF              ud0
00002B20  FFF0              push ax
00002B22  0000              add [bx+si],al
00002B24  00FF              add bh,bh
00002B26  FFC0              inc ax
00002B28  0000              add [bx+si],al
00002B2A  000F              add [bx],cl
00002B2C  FF00              inc word [bx+si]
00002B2E  0000              add [bx+si],al
00002B30  0000              add [bx+si],al
00002B32  0000              add [bx+si],al
00002B34  0000              add [bx+si],al
00002B36  0000              add [bx+si],al
00002B38  0000              add [bx+si],al
00002B3A  00FF              add bh,bh
00002B3C  FF                db 0xff
00002B3D  FF                db 0xff
00002B3E  FF                db 0xff
00002B3F  FF                db 0xff
00002B40  FF                db 0xff
00002B41  FF                db 0xff
00002B42  FF                db 0xff
00002B43  FF                db 0xff
00002B44  FF                db 0xff
00002B45  FF                db 0xff
00002B46  FF                db 0xff
00002B47  FF                db 0xff
00002B48  FC                cld
00002B49  0000              add [bx+si],al
00002B4B  FF                db 0xff
00002B4C  FF                db 0xff
00002B4D  FFF0              push ax
00002B4F  0000              add [bx+si],al
00002B51  0FFF              ud0
00002B53  FFC0              inc ax
00002B55  0000              add [bx+si],al
00002B57  03FF              add di,di
00002B59  FF00              inc word [bx+si]
00002B5B  0000              add [bx+si],al
00002B5D  00FF              add bh,bh
00002B5F  FF00              inc word [bx+si]
00002B61  0000              add [bx+si],al
00002B63  00FF              add bh,bh
00002B65  FF00              inc word [bx+si]
00002B67  0000              add [bx+si],al
00002B69  00FF              add bh,bh
00002B6B  FF00              inc word [bx+si]
00002B6D  0000              add [bx+si],al
00002B6F  00FF              add bh,bh
00002B71  FF00              inc word [bx+si]
00002B73  0000              add [bx+si],al
00002B75  00FF              add bh,bh
00002B77  FF30              push word [bx+si]
00002B79  0000              add [bx+si],al
00002B7B  03FF              add di,di
00002B7D  FFF0              push ax
00002B7F  0000              add [bx+si],al
00002B81  0FFF              ud0
00002B83  FF                db 0xff
00002B84  FF00              inc word [bx+si]
00002B86  003F              add [bx],bh
00002B88  FF                db 0xff
00002B89  FF                db 0xff
00002B8A  FFF0              push ax
00002B8C  00FF              add bh,bh
00002B8E  FF                db 0xff
00002B8F  FF                db 0xff
00002B90  FF                db 0xff
00002B91  FF                db 0xff
00002B92  FF                db 0xff
00002B93  FF                db 0xff
00002B94  FF                db 0xff
00002B95  FF                db 0xff
00002B96  FF                db 0xff
00002B97  FF                db 0xff
00002B98  FF                db 0xff
00002B99  FF                db 0xff
00002B9A  FF00              inc word [bx+si]
00002B9C  0000              add [bx+si],al
00002B9E  2800              sub [bx+si],al
00002BA0  0000              add [bx+si],al
00002BA2  0002              add [bp+si],al
00002BA4  AB                stosw
00002BA5  0000              add [bx+si],al
00002BA7  0000              add [bx+si],al
00002BA9  0AAB0000          or ch,[bp+di+0x0]
00002BAD  0000              add [bx+si],al
00002BAF  2AAB0000          sub ch,[bp+di+0x0]
00002BB3  0000              add [bx+si],al
00002BB5  AA                stosb
00002BB6  AB                stosw
00002BB7  0000              add [bx+si],al
00002BB9  0000              add [bx+si],al
00002BBB  AA                stosb
00002BBC  AF                scasw
00002BBD  0000              add [bx+si],al
00002BBF  004E0A            add [bp+0xa],cl
00002BC2  AC                lodsb
00002BC3  0000              add [bx+si],al
00002BC5  0002              add [bp+si],al
00002BC7  A0AC00            mov al,[0xac]
00002BCA  0000              add [bx+si],al
00002BCC  08AA0C00          or [bp+si+0xc],ch
00002BD0  0000              add [bx+si],al
00002BD2  0A0A              or cl,[bp+si]
00002BD4  BC0000            mov sp,0x0
00002BD7  002A              add [bp+si],ch
00002BD9  A0B000            mov al,[0xb0]
00002BDC  0000              add [bx+si],al
00002BDE  2AAAF800          sub ch,[bp+si+0xf8]
00002BE2  0000              add [bx+si],al
00002BE4  AA                stosb
00002BE5  AB                stosw
00002BE6  EA000000AA        jmp word 0xaa00:0x0
00002BEB  AF                scasw
00002BEC  2A00              sub al,[bx+si]
00002BEE  0000              add [bx+si],al
00002BF0  AA                stosb
00002BF1  BC2200            mov sp,0x22
00002BF4  0000              add [bx+si],al
00002BF6  2BF0              sub si,ax
00002BF8  2200              and al,[bx+si]
00002BFA  0000              add [bx+si],al
00002BFC  0000              add [bx+si],al
00002BFE  2A00              sub al,[bx+si]
00002C00  0000              add [bx+si],al
00002C02  0000              add [bx+si],al
00002C04  B8C000            mov ax,0xc0
00002C07  0000              add [bx+si],al
00002C09  00A3F000          add [bp+di+0xf0],ah
00002C0D  0000              add [bx+si],al
00002C0F  02AFFC00          add ch,[bx+0xfc]
00002C13  0000              add [bx+si],al
00002C15  0AAFFC00          or ch,[bx+0xfc]
00002C19  0000              add [bx+si],al
00002C1B  0AAFF800          or ch,[bx+0xf8]
00002C1F  0000              add [bx+si],al
00002C21  02AFE000          add ch,[bx+0xe0]
00002C25  0000              add [bx+si],al
00002C27  0400              add al,0x0
00002C29  0000              add [bx+si],al
00002C2B  FF                db 0xff
00002C2C  FF                db 0xff
00002C2D  FFC3              inc bx
00002C2F  FF                db 0xff
00002C30  FF                db 0xff
00002C31  FF                db 0xff
00002C32  FF                db 0xff
00002C33  FC                cld
00002C34  00FF              add bh,bh
00002C36  FF                db 0xff
00002C37  FF                db 0xff
00002C38  FFF0              push ax
00002C3A  00FF              add bh,bh
00002C3C  FF                db 0xff
00002C3D  FF                db 0xff
00002C3E  FFC0              inc ax
00002C40  00FF              add bh,bh
00002C42  FF                db 0xff
00002C43  FF                db 0xff
00002C44  FF00              inc word [bx+si]
00002C46  00FF              add bh,bh
00002C48  FF                db 0xff
00002C49  FF00              inc word [bx+si]
00002C4B  0000              add [bx+si],al
00002C4D  FF                db 0xff
00002C4E  FF                db 0xff
00002C4F  FFC0              inc ax
00002C51  0003              add [bp+di],al
00002C53  FF                db 0xff
00002C54  FF                db 0xff
00002C55  FFF0              push ax
00002C57  0003              add [bp+di],al
00002C59  FF                db 0xff
00002C5A  FF                db 0xff
00002C5B  FFF0              push ax
00002C5D  0003              add [bp+di],al
00002C5F  FF                db 0xff
00002C60  FF                db 0xff
00002C61  FFF0              push ax
00002C63  0003              add [bp+di],al
00002C65  FF                db 0xff
00002C66  FF                db 0xff
00002C67  FFC0              inc ax
00002C69  000F              add [bx],cl
00002C6B  FF                db 0xff
00002C6C  FF                db 0xff
00002C6D  FFC0              inc ax
00002C6F  0003              add [bp+di],al
00002C71  FF                db 0xff
00002C72  FF                db 0xff
00002C73  FF00              inc word [bx+si]
00002C75  0000              add [bx+si],al
00002C77  FF                db 0xff
00002C78  FF                db 0xff
00002C79  FF00              inc word [bx+si]
00002C7B  00C0              add al,al
00002C7D  FF                db 0xff
00002C7E  FF                db 0xff
00002C7F  FF00              inc word [bx+si]
00002C81  0CCC              or al,0xcc
00002C83  FF                db 0xff
00002C84  FF                db 0xff
00002C85  FFC0              inc ax
00002C87  0F                db 0x0f
00002C88  CC                int3
00002C89  FF                db 0xff
00002C8A  FF                db 0xff
00002C8B  FF                db 0xff
00002C8C  FF                db 0xff
00002C8D  FFC0              inc ax
00002C8F  FF                db 0xff
00002C90  FF                db 0xff
00002C91  FF                db 0xff
00002C92  FF                db 0xff
00002C93  FF00              inc word [bx+si]
00002C95  3F                aas
00002C96  FF                db 0xff
00002C97  FF                db 0xff
00002C98  FF                db 0xff
00002C99  FF00              inc word [bx+si]
00002C9B  0FFF              ud0
00002C9D  FF                db 0xff
00002C9E  FF                db 0xff
00002C9F  FC                cld
00002CA0  0003              add [bp+di],al
00002CA2  FF                db 0xff
00002CA3  FF                db 0xff
00002CA4  FFF0              push ax
00002CA6  0003              add [bp+di],al
00002CA8  FF                db 0xff
00002CA9  FF                db 0xff
00002CAA  FFF0              push ax
00002CAC  0003              add [bp+di],al
00002CAE  FF                db 0xff
00002CAF  FF                db 0xff
00002CB0  FFF0              push ax
00002CB2  0000              add [bx+si],al
00002CB4  FF                db 0xff
00002CB5  FF                db 0xff
00002CB6  FF                db 0xff
00002CB7  FC                cld
00002CB8  0000              add [bx+si],al
00002CBA  FF00              inc word [bx+si]
00002CBC  0000              add [bx+si],al
00002CBE  0000              add [bx+si],al
00002CC0  0000              add [bx+si],al
00002CC2  0000              add [bx+si],al
00002CC4  0800              or [bx+si],al
00002CC6  0000              add [bx+si],al
00002CC8  0808              or [bx+si],cl
00002CCA  F00000            lock add [bx+si],al
00002CCD  0000              add [bx+si],al
00002CCF  800008            add byte [bx+si],0x8
00002CD2  0000              add [bx+si],al
00002CD4  00B20800          add [bp+si+0x8],dh
00002CD8  0000              add [bx+si],al
00002CDA  8C808000          mov [bx+si+0x80],es
00002CDE  0000              add [bx+si],al
00002CE0  00A0200C          add [bx+si+0xc20],ah
00002CE4  0000              add [bx+si],al
00002CE6  00A8A080          add [bx+si-0x7f60],ch
00002CEA  0000              add [bx+si],al
00002CEC  A8AA              test al,0xaa
00002CEE  800000            add byte [bx+si],0x0
00002CF1  000A              add [bp+si],cl
00002CF3  EE                out dx,al
00002CF4  EA020008C2        jmp word 0xc208:0x2
00002CF9  BEA030            mov si,0x30a0
00002CFC  0000              add [bx+si],al
00002CFE  0AEF              or ch,bh
00002D00  B80000            mov ax,0x0
00002D03  02AAAAA0          add ch,[bp+si-0x5f56]
00002D07  2000              and [bx+si],al
00002D09  0000              add [bx+si],al
00002D0B  A888              test al,0x88
00002D0D  0000              add [bx+si],al
00002D0F  0800              or [bx+si],al
00002D11  28880200          sub [bx+si+0x2],cl
00002D15  0020              add [bx+si],ah
00002D17  2002              and [bp+si],al
00002D19  C00000            rol byte [bx+si],byte 0x0
00002D1C  0000              add [bx+si],al
00002D1E  0000              add [bx+si],al
00002D20  0000              add [bx+si],al
00002D22  C083000000        rol byte [bp+di+0x0],byte 0x0
00002D27  0000              add [bx+si],al
00002D29  0008              add [bx+si],cl
00002D2B  0000              add [bx+si],al
00002D2D  0000              add [bx+si],al
00002D2F  0000              add [bx+si],al
00002D31  0000              add [bx+si],al
00002D33  0000              add [bx+si],al
00002D35  000C              add [si],cl
00002D37  0000              add [bx+si],al
00002D39  0000              add [bx+si],al
00002D3B  00800000          add [bx+si+0x0],al
00002D3F  0000              add [bx+si],al
00002D41  0000              add [bx+si],al
00002D43  0000              add [bx+si],al
00002D45  0000              add [bx+si],al
00002D47  0000              add [bx+si],al
00002D49  0000              add [bx+si],al
00002D4B  FF                db 0xff
00002D4C  FF                db 0xff
00002D4D  FF                db 0xff
00002D4E  FF                db 0xff
00002D4F  FF                db 0xff
00002D50  FF                db 0xff
00002D51  FF                db 0xff
00002D52  FF                db 0xff
00002D53  FFF3              push bx
00002D55  FF                db 0xff
00002D56  FF                db 0xff
00002D57  FFF3              push bx
00002D59  F33F              rep aas
00002D5B  FF                db 0xff
00002D5C  FF                db 0xff
00002D5D  FF                db 0xff
00002D5E  FF                db 0xff
00002D5F  3F                aas
00002D60  FFF3              push bx
00002D62  FF                db 0xff
00002D63  FF                db 0xff
00002D64  FF0C              dec word [si]
00002D66  F3                rep
00002D67  FF                db 0xff
00002D68  FF                db 0xff
00002D69  FF33              push word [bp+di]
00002D6B  3F                aas
00002D6C  CF                iretw
00002D6D  FF                db 0xff
00002D6E  FF                db 0xff
00002D6F  FF                db 0xff
00002D70  FF0F              dec word [bx]
00002D72  CF                iretw
00002D73  F3                rep
00002D74  FF                db 0xff
00002D75  FF                db 0xff
00002D76  FF03              inc word [bp+di]
00002D78  0F                db 0x0f
00002D79  3F                aas
00002D7A  FF                db 0xff
00002D7B  FF03              inc word [bp+di]
00002D7D  003F              add [bx],bh
00002D7F  FF                db 0xff
00002D80  FF                db 0xff
00002D81  FFF0              push ax
00002D83  0000              add [bx+si],al
00002D85  FC                cld
00002D86  FFF3              push bx
00002D88  3C00              cmp al,0x0
00002D8A  0F                db 0x0f
00002D8B  CF                iretw
00002D8C  FF                db 0xff
00002D8D  FFF0              push ax
00002D8F  0003              add [bp+di],al
00002D91  FF                db 0xff
00002D92  FF                db 0xff
00002D93  FC                cld
00002D94  0000              add [bx+si],al
00002D96  0F                db 0x0f
00002D97  CF                iretw
00002D98  FF                db 0xff
00002D99  FF                db 0xff
00002D9A  FF03              inc word [bp+di]
00002D9C  33FF              xor di,di
00002D9E  FFF3              push bx
00002DA0  FFC3              inc bx
00002DA2  33FC              xor di,sp
00002DA4  FF                db 0xff
00002DA5  FFCF              dec di
00002DA7  C3                ret
00002DA8  F33F              rep aas
00002DAA  FF                db 0xff
00002DAB  FF                db 0xff
00002DAC  FF                db 0xff
00002DAD  FF                db 0xff
00002DAE  FF                db 0xff
00002DAF  FF                db 0xff
00002DB0  FF                db 0xff
00002DB1  FF                db 0xff
00002DB2  3F                aas
00002DB3  3CFF              cmp al,0xff
00002DB5  FF                db 0xff
00002DB6  FF                db 0xff
00002DB7  FF                db 0xff
00002DB8  FF                db 0xff
00002DB9  FFF3              push bx
00002DBB  FF                db 0xff
00002DBC  FF                db 0xff
00002DBD  FF                db 0xff
00002DBE  FF                db 0xff
00002DBF  FF                db 0xff
00002DC0  FF                db 0xff
00002DC1  FF                db 0xff
00002DC2  FF                db 0xff
00002DC3  FF                db 0xff
00002DC4  FF                db 0xff
00002DC5  FFF3              push bx
00002DC7  FF                db 0xff
00002DC8  FF                db 0xff
00002DC9  FF                db 0xff
00002DCA  FF                db 0xff
00002DCB  FF                db 0xff
00002DCC  3F                aas
00002DCD  FF                db 0xff
00002DCE  FF                db 0xff
00002DCF  FF                db 0xff
00002DD0  FF                db 0xff
00002DD1  FF                db 0xff
00002DD2  FF                db 0xff
00002DD3  FF                db 0xff
00002DD4  FF                db 0xff
00002DD5  FF                db 0xff
00002DD6  FF                db 0xff
00002DD7  FF                db 0xff
00002DD8  FF                db 0xff
00002DD9  FF                db 0xff
00002DDA  FF20              jmp word [bx+si]
00002DDC  0020              add [bx+si],ah
00002DDE  0008              add [bx+si],cl
00002DE0  0208              add cl,[bx+si]
00002DE2  0208              add cl,[bx+si]
00002DE4  0880000A          or [bx+si+0xa00],al
00002DE8  20880280          and [bx+si-0x7ffe],cl
00002DEC  8082820882        add byte [bp+si+0x882],0x82
00002DF1  800002            add byte [bx+si],0x2
00002DF4  A0280A            mov al,[0xa28]
00002DF7  0820              or [bx+si],ah
00002DF9  08AAAA2A          or [bp+si+0x2aaa],ch
00002DFD  2202              and al,[bp+si]
00002DFF  A02AAA            mov al,[0xaa2a]
00002E02  AA                stosb
00002E03  80A02AABAE        and byte [bx+si-0x54d6],0xae
00002E08  AE                scasb
00002E09  AA                stosb
00002E0A  8002AA            add byte [bp+si],0xaa
00002E0D  BEAEE8            mov si,0xe8ae
00002E10  0008              add [bx+si],cl
00002E12  2AEF              sub ch,bh
00002E14  BEAE08            mov si,0x8ae
00002E17  220A              and cl,[bp+si]
00002E19  BEFAAE            mov si,0xaefa
00002E1C  0008              add [bx+si],cl
00002E1E  8ABFEFA8          mov bh,[bx-0x5711]
00002E22  8002AB            add byte [bp+si],0xab
00002E25  EE                out dx,al
00002E26  FA                cli
00002E27  A808              test al,0x8
00002E29  2AAAABEA          sub ch,[bp+si-0x1555]
00002E2D  EA00002EAA        jmp word 0xaa2e:0x0
00002E32  EE                out dx,al
00002E33  AA                stosb
00002E34  A0028A            mov al,[0x8a02]
00002E37  BAEE80            mov dx,0x80ee
00002E3A  2808              sub [bx+si],cl
00002E3C  2AAAAA28          sub ch,[bp+si+0x28aa]
00002E40  0000              add [bx+si],al
00002E42  A8AA              test al,0xaa
00002E44  AA                stosb
00002E45  2008              and [bx+si],cl
00002E47  88A20A2A          mov [bp+si+0x2a0a],ah
00002E4B  8080028088        add byte [bx+si-0x7ffe],0x88
00002E50  0A800022          or al,[bx+si+0x2200]
00002E54  0008              add [bx+si],cl
00002E56  0288080A          add cl,[bx+si+0xa08]
00002E5A  0808              or [bx+si],cl
00002E5C  82                db 0x82
00002E5D  800028            add byte [bx+si],0x28
00002E60  00880080          add [bx+si-0x8000],cl
00002E64  802000            and byte [bx+si],0x0
00002E67  0008              add [bx+si],cl
00002E69  0000              add [bx+si],al
00002E6B  CF                iretw
00002E6C  FFCF              dec di
00002E6E  FFF3              push bx
00002E70  FC                cld
00002E71  F3CF              rep iretw
00002E73  F3F33F            rep aas
00002E76  FFF0              push ax
00002E78  CF                iretw
00002E79  33FC              xor di,sp
00002E7B  3F                aas
00002E7C  3F                aas
00002E7D  3C3C              cmp al,0x3c
00002E7F  F33C3F            rep cmp al,0x3f
00002E82  FF                db 0xff
00002E83  FC                cld
00002E84  0F                db 0x0f
00002E85  C3                ret
00002E86  F0F3CF            rep lock iretw
00002E89  F30000            rep add [bx+si],al
00002E8C  C0CCFC            ror ah,byte 0xfc
00002E8F  0FC000            xadd [bx+si],al
00002E92  003F              add [bx],bh
00002E94  0FC000            xadd [bx+si],al
00002E97  0000              add [bx+si],al
00002E99  003F              add [bx],bh
00002E9B  FC                cld
00002E9C  0000              add [bx+si],al
00002E9E  0003              add [bp+di],al
00002EA0  FFF3              push bx
00002EA2  C00000            rol byte [bx+si],byte 0x0
00002EA5  00F3              add bl,dh
00002EA7  CC                int3
00002EA8  F00000            lock add [bx+si],al
00002EAB  00FF              add bh,bh
00002EAD  F33000            rep xor [bx+si],al
00002EB0  0003              add [bp+di],al
00002EB2  3F                aas
00002EB3  FC                cld
00002EB4  0000              add [bx+si],al
00002EB6  0003              add [bp+di],al
00002EB8  F3C00000          rep rol byte [bx+si],byte 0x0
00002EBC  0000              add [bx+si],al
00002EBE  FF                db 0xff
00002EBF  FFC0              inc ax
00002EC1  0000              add [bx+si],al
00002EC3  000F              add [bx],cl
00002EC5  FC                cld
00002EC6  3000              xor [bx+si],al
00002EC8  003F              add [bx],bh
00002ECA  C0C3C0            rol bl,byte 0xc0
00002ECD  0000              add [bx+si],al
00002ECF  C3                ret
00002ED0  00FF              add bh,bh
00002ED2  0300              add ax,[bx+si]
00002ED4  00CF              add bh,cl
00002ED6  F3330C            rep xor cx,[si]
00002ED9  F0C03F3F          lock sar byte [bx],byte 0x3f
00002EDD  FC                cld
00002EDE  3F                aas
00002EDF  33F0              xor si,ax
00002EE1  3F                aas
00002EE2  FFCC              dec sp
00002EE4  FFF3              push bx
00002EE6  FC                cld
00002EE7  33F3              xor si,bx
00002EE9  F0F3F33C3F        rep lock cmp al,0x3f
00002EEE  FFC3              inc bx
00002EF0  FF33              push word [bp+di]
00002EF2  FF                db 0xff
00002EF3  3F                aas
00002EF4  3F                aas
00002EF5  CF                iretw
00002EF6  FF                db 0xff
00002EF7  FFF3              push bx
00002EF9  FF                db 0xff
00002EFA  FF00              inc word [bx+si]
00002EFC  000A              add [bp+si],cl
00002EFE  A00000            mov al,[0x0]
00002F01  0000              add [bx+si],al
00002F03  AA                stosb
00002F04  AA                stosb
00002F05  0000              add [bx+si],al
00002F07  0002              add [bp+si],al
00002F09  AB                stosw
00002F0A  EA8000000A        jmp word 0xa00:0x80
00002F0F  AF                scasw
00002F10  FA                cli
00002F11  A00000            mov al,[0x0]
00002F14  06                push es
00002F15  AB                stosw
00002F16  EA90000005        jmp word 0x500:0x90
00002F1B  AA                stosb
00002F1C  AA                stosb
00002F1D  50                push ax
00002F1E  0000              add [bx+si],al
00002F20  07                pop es
00002F21  6AA9              push byte -0x57
00002F23  50                push ax
00002F24  0000              add [bx+si],al
00002F26  07                pop es
00002F27  55                push bp
00002F28  55                push bp
00002F29  D000              rol byte [bx+si],1
00002F2B  0005              add [di],al
00002F2D  6559              gs pop cx
00002F2F  D000              rol byte [bx+si],1
00002F31  0009              add [bx+di],cl
00002F33  6559              gs pop cx
00002F35  60                pushaw
00002F36  0000              add [bx+si],al
00002F38  0A6559            or ah,[di+0x59]
00002F3B  A00000            mov al,[0x0]
00002F3E  06                push es
00002F3F  A5                movsw
00002F40  5A                pop dx
00002F41  90                nop
00002F42  0000              add [bx+si],al
00002F44  05AAAA            add ax,0xaaaa
00002F47  50                push ax
00002F48  0000              add [bx+si],al
00002F4A  07                pop es
00002F4B  6559              gs pop cx
00002F4D  50                push ax
00002F4E  0000              add [bx+si],al
00002F50  07                pop es
00002F51  6759              a32 pop cx
00002F53  50                push ax
00002F54  0000              add [bx+si],al
00002F56  01675A            add [bx+0x5a],sp
00002F59  AA                stosb
00002F5A  A00000            mov al,[0x0]
00002F5D  6560              gs pushaw
00002F5F  0000              add [bx+si],al
00002F61  0000              add [bx+si],al
00002F63  AA                stosb
00002F64  80C000            add al,0x0
00002F67  0000              add [bx+si],al
00002F69  8A0A              mov cl,[bp+si]
00002F6B  0000              add [bx+si],al
00002F6D  0002              add [bp+si],al
00002F6F  82                db 0x82
00002F70  02A00000          add ah,[bx+si+0x0]
00002F74  0202              add al,[bp+si]
00002F76  802800            sub byte [bx+si],0x0
00002F79  000A              add [bp+si],cl
00002F7B  02800000          add al,[bx+si+0x0]
00002F7F  0008              add [bx+si],cl
00002F81  02800000          add al,[bx+si+0x0]
00002F85  0008              add [bx+si],cl
00002F87  02800000          add al,[bx+si+0x0]
00002F8B  FF                db 0xff
00002F8C  FFF0              push ax
00002F8E  0FFF              ud0
00002F90  FF                db 0xff
00002F91  FF                db 0xff
00002F92  FF00              inc word [bx+si]
00002F94  00FF              add bh,bh
00002F96  FF                db 0xff
00002F97  FF                db 0xff
00002F98  FC                cld
00002F99  0000              add [bx+si],al
00002F9B  3F                aas
00002F9C  FF                db 0xff
00002F9D  FFF0              push ax
00002F9F  0000              add [bx+si],al
00002FA1  0FFF              ud0
00002FA3  FFF0              push ax
00002FA5  0000              add [bx+si],al
00002FA7  0FFF              ud0
00002FA9  FFF0              push ax
00002FAB  0000              add [bx+si],al
00002FAD  0FFF              ud0
00002FAF  FFF0              push ax
00002FB1  0000              add [bx+si],al
00002FB3  0FFF              ud0
00002FB5  FFF0              push ax
00002FB7  0000              add [bx+si],al
00002FB9  0FFF              ud0
00002FBB  FFF0              push ax
00002FBD  0000              add [bx+si],al
00002FBF  0FFF              ud0
00002FC1  FFF0              push ax
00002FC3  0000              add [bx+si],al
00002FC5  0FFF              ud0
00002FC7  FFF0              push ax
00002FC9  0000              add [bx+si],al
00002FCB  0FFF              ud0
00002FCD  FFF0              push ax
00002FCF  0000              add [bx+si],al
00002FD1  0FFF              ud0
00002FD3  FFF0              push ax
00002FD5  0000              add [bx+si],al
00002FD7  0FFF              ud0
00002FD9  FFF0              push ax
00002FDB  0000              add [bx+si],al
00002FDD  0FFF              ud0
00002FDF  FFF0              push ax
00002FE1  0000              add [bx+si],al
00002FE3  0FFF              ud0
00002FE5  FF                db 0xff
00002FE6  FC                cld
00002FE7  0000              add [bx+si],al
00002FE9  000F              add [bx],cl
00002FEB  FF                db 0xff
00002FEC  FF00              inc word [bx+si]
00002FEE  00FF              add bh,bh
00002FF0  FF                db 0xff
00002FF1  FF                db 0xff
00002FF2  FF00              inc word [bx+si]
00002FF4  003F              add [bx],bh
00002FF6  FF                db 0xff
00002FF7  FF                db 0xff
00002FF8  FFCF              dec di
00002FFA  00FF              add bh,bh
00002FFC  FF                db 0xff
00002FFD  FF                db 0xff
00002FFE  FC                cld
00002FFF  3C00              cmp al,0x0
00003001  0FFF              ud0
00003003  FF                db 0xff
00003004  FC                cld
00003005  FC                cld
00003006  00C3              add bl,al
00003008  FF                db 0xff
00003009  FFF0              push ax
0000300B  FC                cld
0000300C  3F                aas
0000300D  FF                db 0xff
0000300E  FF                db 0xff
0000300F  FFF3              push bx
00003011  FC                cld
00003012  3F                aas
00003013  FF                db 0xff
00003014  FF                db 0xff
00003015  FFF3              push bx
00003017  FC                cld
00003018  3F                aas
00003019  FF                db 0xff
0000301A  FF00              inc word [bx+si]
0000301C  0000              add [bx+si],al
0000301E  0000              add [bx+si],al
00003020  0000              add [bx+si],al
00003022  0000              add [bx+si],al
00003024  0000              add [bx+si],al
00003026  0000              add [bx+si],al
00003028  0000              add [bx+si],al
0000302A  0000              add [bx+si],al
0000302C  000C              add [si],cl
0000302E  00C0              add al,al
00003030  0000              add [bx+si],al
00003032  003F              add [bx],bh
00003034  FF                db 0xff
00003035  FC                cld
00003036  0000              add [bx+si],al
00003038  00FF              add bh,bh
0000303A  FF                db 0xff
0000303B  FF00              inc word [bx+si]
0000303D  0000              add [bx+si],al
0000303F  03C0              add ax,ax
00003041  FF                db 0xff
00003042  FFC0              inc ax
00003044  000F              add [bx],cl
00003046  FC                cld
00003047  FF                db 0xff
00003048  FFF0              push ax
0000304A  003C              add [si],bh
0000304C  F4                hlt
0000304D  0F03F0            lsl si,ax
00003050  00FF              add bh,bh
00003052  C03FF3            sar byte [bx],byte 0xf3
00003055  FC                cld
00003056  000F              add [bx],cl
00003058  FF                db 0xff
00003059  FFC1              inc cx
0000305B  3F                aas
0000305C  C03C03            sar byte [si],byte 0x3
0000305F  FF00              inc word [bx+si]
00003061  FC                cld
00003062  00FF              add bh,bh
00003064  FF0F              dec word [bx]
00003066  FF                db 0xff
00003067  FFC0              inc ax
00003069  0FFF              ud0
0000306B  FF0F              dec word [bx]
0000306D  F00000            lock add [bx+si],al
00003070  FF                db 0xff
00003071  FF                db 0xff
00003072  FF                db 0xff
00003073  FC                cld
00003074  0000              add [bx+si],al
00003076  0F30              wrmsr
00003078  F03F              lock aas
0000307A  00FF              add bh,bh
0000307C  FF                db 0xff
0000307D  FF                db 0xff
0000307E  FF                db 0xff
0000307F  FF                db 0xff
00003080  FF                db 0xff
00003081  FF                db 0xff
00003082  FF                db 0xff
00003083  FF                db 0xff
00003084  FF                db 0xff
00003085  FF                db 0xff
00003086  FF                db 0xff
00003087  FF                db 0xff
00003088  FF                db 0xff
00003089  FF                db 0xff
0000308A  FF                db 0xff
0000308B  FF                db 0xff
0000308C  FFF3              push bx
0000308E  FF                db 0xff
0000308F  FF                db 0xff
00003090  FF                db 0xff
00003091  FF                db 0xff
00003092  FFC0              inc ax
00003094  000C              add [si],cl
00003096  FF                db 0xff
00003097  FF                db 0xff
00003098  FF00              inc word [bx+si]
0000309A  0000              add [bx+si],al
0000309C  FF                db 0xff
0000309D  FF                db 0xff
0000309E  FF                db 0xff
0000309F  FC                cld
000030A0  0003              add [bp+di],al
000030A2  00CF              add bh,cl
000030A4  FFF0              push ax
000030A6  0000              add [bx+si],al
000030A8  000F              add [bx],cl
000030AA  FF                db 0xff
000030AB  3C0F              cmp al,0xf
000030AD  F0000F            lock add [bx],cl
000030B0  FF00              inc word [bx+si]
000030B2  3F                aas
000030B3  C00003            rol byte [bx+si],byte 0x3
000030B6  FFF0              push ax
000030B8  0000              add [bx+si],al
000030BA  33C0              xor ax,ax
000030BC  3F                aas
000030BD  C3                ret
000030BE  0300              add ax,[bx+si]
000030C0  FF0C              dec word [si]
000030C2  FF00              inc word [bx+si]
000030C4  00F0              add al,dh
000030C6  0000              add [bx+si],al
000030C8  3F                aas
000030C9  F00000            lock add [bx+si],al
000030CC  F00FFF            lock ud0
000030CF  FF00              inc word [bx+si]
000030D1  0000              add [bx+si],al
000030D3  03FF              add di,di
000030D5  FFF0              push ax
000030D7  CF                iretw
000030D8  0FC0FF            xadd bh,bh
000030DB  0000              add [bx+si],al
000030DD  0000              add [bx+si],al
000030DF  0000              add [bx+si],al
000030E1  0000              add [bx+si],al
000030E3  0002              add [bp+si],al
000030E5  A00000            mov al,[0x0]
000030E8  0000              add [bx+si],al
000030EA  0AB80000          or bh,[bx+si+0x0]
000030EE  0000              add [bx+si],al
000030F0  2AAEC000          sub ch,[bp+0xc0]
000030F4  0000              add [bx+si],al
000030F6  FA                cli
000030F7  AB                stosw
000030F8  F00000            lock add [bx+si],al
000030FB  0AFF              or bh,bh
000030FD  FF                db 0xff
000030FE  F8                clc
000030FF  0000              add [bx+si],al
00003101  2BBFFFA8          sub di,[bx-0x5701]
00003105  0000              add [bx+si],al
00003107  3F                aas
00003108  E2A8              loop 0x30b2
0000310A  AA                stosb
0000310B  0003              add [bp+di],al
0000310D  FE                db 0xfe
0000310E  A2A8AA            mov [0xaaa8],al
00003111  003F              add [bx],bh
00003113  CA8AAA            retf 0xaa8a
00003116  2803              sub [bp+di],al
00003118  FC                cld
00003119  008AAA20          add [bp+si+0x20aa],cl
0000311D  3F                aas
0000311E  C0000A            rol byte [bx+si],byte 0xa
00003121  AA                stosb
00003122  00FC              add ah,bh
00003124  0000              add [bx+si],al
00003126  0000              add [bx+si],al
00003128  00C0              add al,al
0000312A  0000              add [bx+si],al
0000312C  0000              add [bx+si],al
0000312E  0000              add [bx+si],al
00003130  0000              add [bx+si],al
00003132  0000              add [bx+si],al
00003134  0000              add [bx+si],al
00003136  0000              add [bx+si],al
00003138  0000              add [bx+si],al
0000313A  00FF              add bh,bh
0000313C  FF                db 0xff
0000313D  FF                db 0xff
0000313E  FF                db 0xff
0000313F  FF                db 0xff
00003140  FF                db 0xff
00003141  FF                db 0xff
00003142  FF                db 0xff
00003143  FF                db 0xff
00003144  FC                cld
00003145  0FFF              ud0
00003147  FF                db 0xff
00003148  FF                db 0xff
00003149  FFF0              push ax
0000314B  03FF              add di,di
0000314D  FF                db 0xff
0000314E  FF                db 0xff
0000314F  FFC0              inc ax
00003151  003F              add [bx],bh
00003153  FF                db 0xff
00003154  FF                db 0xff
00003155  FF00              inc word [bx+si]
00003157  000F              add [bx],cl
00003159  FF                db 0xff
0000315A  FFF0              push ax
0000315C  0000              add [bx+si],al
0000315E  03FF              add di,di
00003160  FFC0              inc ax
00003162  0000              add [bx+si],al
00003164  03FF              add di,di
00003166  FFC0              inc ax
00003168  0000              add [bx+si],al
0000316A  00FF              add bh,bh
0000316C  FC                cld
0000316D  0000              add [bx+si],al
0000316F  0000              add [bx+si],al
00003171  FFC0              inc ax
00003173  3000              xor [bx+si],al
00003175  0003              add [bp+di],al
00003177  FC                cld
00003178  03F0              add si,ax
0000317A  0000              add [bx+si],al
0000317C  03C0              add ax,ax
0000317E  3F                aas
0000317F  0000              add [bx+si],al
00003181  000F              add [bx],cl
00003183  03F0              add si,ax
00003185  3C00              cmp al,0x0
00003187  003C              add [si],bh
00003189  3F                aas
0000318A  03FF              add di,di
0000318C  FF                db 0xff
0000318D  FF                db 0xff
0000318E  FFF0              push ax
00003190  3F                aas
00003191  FF                db 0xff
00003192  FF                db 0xff
00003193  FF                db 0xff
00003194  FF03              inc word [bp+di]
00003196  FF                db 0xff
00003197  FF                db 0xff
00003198  FF                db 0xff
00003199  FF                db 0xff
0000319A  FFF0              push ax
0000319C  0000              add [bx+si],al
0000319E  0000              add [bx+si],al
000031A0  00FF              add bh,bh
000031A2  0000              add [bx+si],al
000031A4  0000              add [bx+si],al
000031A6  000F              add [bx],cl
000031A8  F00002            lock add [bp+si],al
000031AB  A00000            mov al,[0x0]
000031AE  FF00              inc word [bx+si]
000031B0  0AB80000          or bh,[bx+si+0x0]
000031B4  0F                db 0x0f
000031B5  F02AAEC000        lock sub ch,[bp+0xc0]
000031BA  00FE              add dh,bh
000031BC  FA                cli
000031BD  AB                stosw
000031BE  F00000            lock add [bx+si],al
000031C1  3AFF              cmp bh,bh
000031C3  FF                db 0xff
000031C4  F8                clc
000031C5  0000              add [bx+si],al
000031C7  2ABFFFA2          sub bh,[bx-0x5d01]
000031CB  0000              add [bx+si],al
000031CD  2AA2A8AA          sub ah,[bp+si-0x5558]
000031D1  0000              add [bx+si],al
000031D3  2AA2A8AA          sub ah,[bp+si-0x5558]
000031D7  0000              add [bx+si],al
000031D9  0A8AAA28          or cl,[bp+si+0x28aa]
000031DD  0000              add [bx+si],al
000031DF  008AAA20          add [bp+si+0x20aa],cl
000031E3  0000              add [bx+si],al
000031E5  000A              add [bp+si],cl
000031E7  AA                stosb
000031E8  0000              add [bx+si],al
000031EA  0000              add [bx+si],al
000031EC  0000              add [bx+si],al
000031EE  0000              add [bx+si],al
000031F0  0000              add [bx+si],al
000031F2  0000              add [bx+si],al
000031F4  0000              add [bx+si],al
000031F6  0000              add [bx+si],al
000031F8  0000              add [bx+si],al
000031FA  000F              add [bx],cl
000031FC  FF                db 0xff
000031FD  FF                db 0xff
000031FE  FF                db 0xff
000031FF  FF                db 0xff
00003200  FF00              inc word [bx+si]
00003202  FF                db 0xff
00003203  FF                db 0xff
00003204  FF                db 0xff
00003205  FF                db 0xff
00003206  FFF0              push ax
00003208  0FFF              ud0
0000320A  FC                cld
0000320B  0FFF              ud0
0000320D  FF00              inc word [bx+si]
0000320F  FFF0              push ax
00003211  03FF              add di,di
00003213  FFF0              push ax
00003215  0FC000            xadd [bx+si],al
00003218  3F                aas
00003219  03FF              add di,di
0000321B  0000              add [bx+si],al
0000321D  000F              add [bx],cl
0000321F  C03FC0            sar byte [bx],byte 0xc0
00003222  0000              add [bx+si],al
00003224  03FC              add di,sp
00003226  03C0              add ax,ax
00003228  0000              add [bx+si],al
0000322A  03FF              add di,di
0000322C  C00000            rol byte [bx+si],byte 0x0
0000322F  0000              add [bx+si],al
00003231  FF                db 0xff
00003232  FC                cld
00003233  0000              add [bx+si],al
00003235  0000              add [bx+si],al
00003237  FF                db 0xff
00003238  FFC0              inc ax
0000323A  0000              add [bx+si],al
0000323C  03FF              add di,di
0000323E  FFF0              push ax
00003240  0000              add [bx+si],al
00003242  03FF              add di,di
00003244  FF                db 0xff
00003245  FF00              inc word [bx+si]
00003247  000F              add [bx],cl
00003249  FF                db 0xff
0000324A  FF                db 0xff
0000324B  FFC0              inc ax
0000324D  003F              add [bx],bh
0000324F  FF                db 0xff
00003250  FF                db 0xff
00003251  FF                db 0xff
00003252  FF                db 0xff
00003253  FF                db 0xff
00003254  FF                db 0xff
00003255  FF                db 0xff
00003256  FF                db 0xff
00003257  FF                db 0xff
00003258  FF                db 0xff
00003259  FF                db 0xff
0000325A  FF00              inc word [bx+si]
0000325C  0000              add [bx+si],al
0000325E  0000              add [bx+si],al
00003260  0000              add [bx+si],al
00003262  0000              add [bx+si],al
00003264  0800              or [bx+si],al
00003266  0000              add [bx+si],al
00003268  0000              add [bx+si],al
0000326A  AC                lodsb
0000326B  A800              test al,0x0
0000326D  0000              add [bx+si],al
0000326F  02BAAA00          add bh,[bp+si+0xaa]
00003273  0000              add [bx+si],al
00003275  0BAAAA00          or bp,[bp+si+0xaa]
00003279  0000              add [bx+si],al
0000327B  0FEAAA0000        pminsw mm5,[bp+si+0x0]
00003280  00ABFAAA          add [bp+di-0x5506],ch
00003284  0000              add [bx+si],al
00003286  0AAAFEAB          or ch,[bp+si-0x5402]
0000328A  0000              add [bx+si],al
0000328C  FA                cli
0000328D  AA                stosb
0000328E  BEACA0            mov si,0xa0ac
00003291  02FE              add bh,dh
00003293  AA                stosb
00003294  BEFA80            mov si,0x80fa
00003297  0ABFAABA          or bh,[bx-0x4556]
0000329B  AA                stosb
0000329C  002A              add [bp+si],ch
0000329E  AF                scasw
0000329F  AA                stosb
000032A0  02A800AA          add ch,[bx+si-0x5600]
000032A4  AF                scasw
000032A5  A00000            mov al,[0x0]
000032A8  00BAAF00          add [bp+si+0xaf],bh
000032AC  0000              add [bx+si],al
000032AE  00AA8000          add [bp+si+0x80],ch
000032B2  0000              add [bx+si],al
000032B4  0000              add [bx+si],al
000032B6  0000              add [bx+si],al
000032B8  0000              add [bx+si],al
000032BA  00FF              add bh,bh
000032BC  FF                db 0xff
000032BD  FF                db 0xff
000032BE  FF                db 0xff
000032BF  FF                db 0xff
000032C0  FF                db 0xff
000032C1  FF                db 0xff
000032C2  FF                db 0xff
000032C3  FFF3              push bx
000032C5  FF                db 0xff
000032C6  FF                db 0xff
000032C7  FF                db 0xff
000032C8  FF                db 0xff
000032C9  FF00              inc word [bx+si]
000032CB  3F                aas
000032CC  FF                db 0xff
000032CD  FF                db 0xff
000032CE  FF                db 0xff
000032CF  FC                cld
000032D0  0000              add [bx+si],al
000032D2  FF                db 0xff
000032D3  FF                db 0xff
000032D4  FFF0              push ax
000032D6  0000              add [bx+si],al
000032D8  FF                db 0xff
000032D9  FF                db 0xff
000032DA  FFF0              push ax
000032DC  0000              add [bx+si],al
000032DE  FF                db 0xff
000032DF  FF                db 0xff
000032E0  FF00              inc word [bx+si]
000032E2  0000              add [bx+si],al
000032E4  FF                db 0xff
000032E5  FFF0              push ax
000032E7  0000              add [bx+si],al
000032E9  00FF              add bh,bh
000032EB  FF00              inc word [bx+si]
000032ED  0000              add [bx+si],al
000032EF  000F              add [bx],cl
000032F1  FC                cld
000032F2  0000              add [bx+si],al
000032F4  0000              add [bx+si],al
000032F6  3F                aas
000032F7  F00000            lock add [bx+si],al
000032FA  0000              add [bx+si],al
000032FC  FFC0              inc ax
000032FE  0000              add [bx+si],al
00003300  FC                cld
00003301  03FF              add di,di
00003303  0000              add [bx+si],al
00003305  0FFF              ud0
00003307  FF                db 0xff
00003308  FF00              inc word [bx+si]
0000330A  00FF              add bh,bh
0000330C  FF                db 0xff
0000330D  FF                db 0xff
0000330E  FF00              inc word [bx+si]
00003310  3F                aas
00003311  FF                db 0xff
00003312  FF                db 0xff
00003313  FF                db 0xff
00003314  FF                db 0xff
00003315  FF                db 0xff
00003316  FF                db 0xff
00003317  FF                db 0xff
00003318  FF                db 0xff
00003319  FF                db 0xff
0000331A  FF00              inc word [bx+si]
0000331C  0000              add [bx+si],al
0000331E  0000              add [bx+si],al
00003320  0A00              or al,[bx+si]
00003322  0000              add [bx+si],al
00003324  0002              add [bp+si],al
00003326  EB00              jmp short 0x3328
00003328  000C              add [si],cl
0000332A  00EE              add dh,ch
0000332C  AC                lodsb
0000332D  0000              add [bx+si],al
0000332F  3C0E              cmp al,0xe
00003331  AA                stosb
00003332  C0000A            rol byte [bx+si],byte 0xa
00003335  FF                db 0xff
00003336  EAAC00AAAA        jmp word 0xaaaa:0xac
0000333B  FF                db 0xff
0000333C  FA                cli
0000333D  A0002A            mov al,[0x2a00]
00003340  A9FFEA            test ax,0xeaff
00003343  D000              rol byte [bx+si],1
00003345  2A7FFF            sub bh,[bx-0x1]
00003348  AD                lodsw
00003349  0A00              or al,[bx+si]
0000334B  001A              add [bp+si],bl
0000334D  EADAA80000        jmp word 0x0:0xa8da
00003352  099DAAA8          or [di-0x5756],bx
00003356  0000              add [bx+si],al
00003358  003A              add [bp+si],bh
0000335A  AA                stosb
0000335B  A800              test al,0x0
0000335D  0000              add [bx+si],al
0000335F  02AAA800          add ch,[bp+si+0xa8]
00003363  0000              add [bx+si],al
00003365  002A              add [bp+si],ch
00003367  AA                stosb
00003368  0000              add [bx+si],al
0000336A  0000              add [bx+si],al
0000336C  02AA0000          add ch,[bp+si+0x0]
00003370  0000              add [bx+si],al
00003372  002A              add [bp+si],ch
00003374  0000              add [bx+si],al
00003376  0000              add [bx+si],al
00003378  0002              add [bp+si],al
0000337A  80FFFF            cmp bh,0xff
0000337D  FF                db 0xff
0000337E  FF                db 0xff
0000337F  FFF0              push ax
00003381  FF                db 0xff
00003382  FF                db 0xff
00003383  FF                db 0xff
00003384  FF                db 0xff
00003385  FC                cld
00003386  00FF              add bh,bh
00003388  FFF3              push bx
0000338A  FF00              inc word [bx+si]
0000338C  03FF              add di,di
0000338E  FFC3              inc bx
00003390  F0003F            lock add [bx],bh
00003393  FFF0              push ax
00003395  0000              add [bx+si],al
00003397  03FF              add di,di
00003399  0000              add [bx+si],al
0000339B  0000              add [bx+si],al
0000339D  0FFF              ud0
0000339F  C00000            rol byte [bx+si],byte 0x0
000033A2  000F              add [bx],cl
000033A4  FF                db 0xff
000033A5  FC                cld
000033A6  0000              add [bx+si],al
000033A8  000F              add [bx],cl
000033AA  FF                db 0xff
000033AB  FFC0              inc ax
000033AD  0000              add [bx+si],al
000033AF  03FF              add di,di
000033B1  FFF0              push ax
000033B3  0000              add [bx+si],al
000033B5  03FF              add di,di
000033B7  FF                db 0xff
000033B8  FFC0              inc ax
000033BA  0003              add [bp+di],al
000033BC  FF                db 0xff
000033BD  FF                db 0xff
000033BE  FF                db 0xff
000033BF  FC                cld
000033C0  0003              add [bp+di],al
000033C2  FF                db 0xff
000033C3  FF                db 0xff
000033C4  FF                db 0xff
000033C5  FFC0              inc ax
000033C7  00FF              add bh,bh
000033C9  FF                db 0xff
000033CA  FF                db 0xff
000033CB  FF                db 0xff
000033CC  FC                cld
000033CD  00FF              add bh,bh
000033CF  FF                db 0xff
000033D0  FF                db 0xff
000033D1  FF                db 0xff
000033D2  FFC0              inc ax
000033D4  FF                db 0xff
000033D5  FF                db 0xff
000033D6  FF                db 0xff
000033D7  FF                db 0xff
000033D8  FF                db 0xff
000033D9  FC                cld
000033DA  3F                aas
000033DB  0000              add [bx+si],al
000033DD  0000              add [bx+si],al
000033DF  0000              add [bx+si],al
000033E1  0000              add [bx+si],al
000033E3  0000              add [bx+si],al
000033E5  00B00000          add [bx+si+0x0],dh
000033E9  03800EA0          add ax,[bx+si-0x5ff2]
000033ED  0000              add [bx+si],al
000033EF  0FC0EA            xadd dl,ch
000033F2  B000              mov al,0x0
000033F4  000F              add [bx],cl
000033F6  FFA90000          jmp word far [bx+di+0x0]
000033FA  0A9FFEA0          or bl,[bx-0x5f02]
000033FE  000A              add [bp+si],cl
00003400  AA                stosb
00003401  BFFA90            mov di,0x90fa
00003404  0000              add [bx+si],al
00003406  AA                stosb
00003407  9E                sahf
00003408  AB                stosw
00003409  60                pushaw
0000340A  0000              add [bx+si],al
0000340C  0A9AB6A0          or bl,[bp+si-0x5f4a]
00003410  0000              add [bx+si],al
00003412  006B6A            add [bp+di+0x6a],ch
00003415  A00000            mov al,[0x0]
00003418  0006AAA0          add [0xa0aa],al
0000341C  0000              add [bx+si],al
0000341E  0000              add [bx+si],al
00003420  AA                stosb
00003421  A800              test al,0x0
00003423  0000              add [bx+si],al
00003425  000A              add [bp+si],cl
00003427  A800              test al,0x0
00003429  0000              add [bx+si],al
0000342B  0000              add [bx+si],al
0000342D  A800              test al,0x0
0000342F  0000              add [bx+si],al
00003431  0000              add [bx+si],al
00003433  0800              or [bx+si],al
00003435  0000              add [bx+si],al
00003437  0000              add [bx+si],al
00003439  0000              add [bx+si],al
0000343B  FF                db 0xff
0000343C  FF                db 0xff
0000343D  FF                db 0xff
0000343E  FF                db 0xff
0000343F  FF                db 0xff
00003440  FF                db 0xff
00003441  FF                db 0xff
00003442  FF                db 0xff
00003443  FF                db 0xff
00003444  FF                db 0xff
00003445  FF0F              dec word [bx]
00003447  FF                db 0xff
00003448  FF                db 0xff
00003449  FC                cld
0000344A  3F                aas
0000344B  F00FFF            lock ud0
0000344E  FFF0              push ax
00003450  3F                aas
00003451  000F              add [bx],cl
00003453  FF                db 0xff
00003454  FFF0              push ax
00003456  0000              add [bx+si],al
00003458  FF                db 0xff
00003459  FFF0              push ax
0000345B  0000              add [bx+si],al
0000345D  0FFF              ud0
0000345F  F00000            lock add [bx+si],al
00003462  000F              add [bx],cl
00003464  FF                db 0xff
00003465  FF00              inc word [bx+si]
00003467  0000              add [bx+si],al
00003469  0FFF              ud0
0000346B  FFF0              push ax
0000346D  0000              add [bx+si],al
0000346F  0FFF              ud0
00003471  FF                db 0xff
00003472  FF00              inc word [bx+si]
00003474  000F              add [bx],cl
00003476  FF                db 0xff
00003477  FF                db 0xff
00003478  FFF0              push ax
0000347A  000F              add [bx],cl
0000347C  FF                db 0xff
0000347D  FF                db 0xff
0000347E  FF                db 0xff
0000347F  FF00              inc word [bx+si]
00003481  03FF              add di,di
00003483  FF                db 0xff
00003484  FF                db 0xff
00003485  FFF0              push ax
00003487  03FF              add di,di
00003489  FF                db 0xff
0000348A  FF                db 0xff
0000348B  FF                db 0xff
0000348C  FF03              inc word [bp+di]
0000348E  FF                db 0xff
0000348F  FF                db 0xff
00003490  FF                db 0xff
00003491  FF                db 0xff
00003492  FFF3              push bx
00003494  FF                db 0xff
00003495  FF                db 0xff
00003496  FF                db 0xff
00003497  FF                db 0xff
00003498  FF                db 0xff
00003499  FF                db 0xff
0000349A  FF00              inc word [bx+si]
0000349C  0000              add [bx+si],al
0000349E  0000              add [bx+si],al
000034A0  0000              add [bx+si],al
000034A2  0000              add [bx+si],al
000034A4  0000              add [bx+si],al
000034A6  0000              add [bx+si],al
000034A8  0008              add [bx+si],cl
000034AA  0022              add [bp+si],ah
000034AC  0000              add [bx+si],al
000034AE  002B              add [bp+di],ch
000034B0  03AA0000          add bp,[bp+si+0x0]
000034B4  002A              add [bp+si],ch
000034B6  DEA00000          fisub word [bx+si+0x0]
000034BA  AA                stosb
000034BB  2AA6C000          sub ah,[bp+0xc0]
000034BF  002A              add [bp+si],ch
000034C1  AA                stosb
000034C2  5F                pop di
000034C3  800000            add byte [bx+si],0x0
000034C6  02BDFA80          add bh,[di-0x7f06]
000034CA  0000              add [bx+si],al
000034CC  002A              add [bp+si],ch
000034CE  AA                stosb
000034CF  800000            add byte [bx+si],0x0
000034D2  0002              add [bp+si],al
000034D4  AA                stosb
000034D5  A00000            mov al,[0x0]
000034D8  0000              add [bx+si],al
000034DA  2AA00000          sub ah,[bx+si+0x0]
000034DE  0000              add [bx+si],al
000034E0  02A00000          add ah,[bx+si+0x0]
000034E4  0000              add [bx+si],al
000034E6  0020              add [bx+si],ah
000034E8  0000              add [bx+si],al
000034EA  0000              add [bx+si],al
000034EC  0000              add [bx+si],al
000034EE  0000              add [bx+si],al
000034F0  0000              add [bx+si],al
000034F2  0000              add [bx+si],al
000034F4  0000              add [bx+si],al
000034F6  0000              add [bx+si],al
000034F8  0000              add [bx+si],al
000034FA  00FF              add bh,bh
000034FC  FF                db 0xff
000034FD  FF                db 0xff
000034FE  FF                db 0xff
000034FF  FF                db 0xff
00003500  FF                db 0xff
00003501  FF                db 0xff
00003502  FF                db 0xff
00003503  FF                db 0xff
00003504  FF                db 0xff
00003505  FF                db 0xff
00003506  FF                db 0xff
00003507  FF                db 0xff
00003508  FFF3              push bx
0000350A  FF30              push word [bx+si]
0000350C  FF                db 0xff
0000350D  FF                db 0xff
0000350E  FFC0              inc ax
00003510  FC                cld
00003511  00FF              add bh,bh
00003513  FF                db 0xff
00003514  FFC0              inc ax
00003516  000F              add [bx],cl
00003518  FF                db 0xff
00003519  FF00              inc word [bx+si]
0000351B  C0003F            rol byte [bx+si],byte 0x3f
0000351E  FF                db 0xff
0000351F  FFC0              inc ax
00003521  0000              add [bx+si],al
00003523  0FFF              ud0
00003525  FF                db 0xff
00003526  FC                cld
00003527  0000              add [bx+si],al
00003529  3F                aas
0000352A  FF                db 0xff
0000352B  FF                db 0xff
0000352C  FFC0              inc ax
0000352E  003F              add [bx],bh
00003530  FF                db 0xff
00003531  FF                db 0xff
00003532  FF                db 0xff
00003533  FC                cld
00003534  000F              add [bx],cl
00003536  FF                db 0xff
00003537  FF                db 0xff
00003538  FF                db 0xff
00003539  FFC0              inc ax
0000353B  0FFF              ud0
0000353D  FF                db 0xff
0000353E  FF                db 0xff
0000353F  FF                db 0xff
00003540  FC                cld
00003541  0FFF              ud0
00003543  FF                db 0xff
00003544  FF                db 0xff
00003545  FF                db 0xff
00003546  FFCF              dec di
00003548  FF                db 0xff
00003549  FF                db 0xff
0000354A  FF                db 0xff
0000354B  FF                db 0xff
0000354C  FF                db 0xff
0000354D  FF                db 0xff
0000354E  FF                db 0xff
0000354F  FF                db 0xff
00003550  FF                db 0xff
00003551  FF                db 0xff
00003552  FF                db 0xff
00003553  FF                db 0xff
00003554  FF                db 0xff
00003555  FF                db 0xff
00003556  FF                db 0xff
00003557  FF                db 0xff
00003558  FF                db 0xff
00003559  FF                db 0xff
0000355A  FF00              inc word [bx+si]
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
00003570  02800000          add al,[bx+si+0x0]
00003574  000C              add [si],cl
00003576  0A00              or al,[bx+si]
00003578  0000              add [bx+si],al
0000357A  003C              add [si],bh
0000357C  2800              sub [bx+si],al
0000357E  0000              add [bx+si],al
00003580  0ABFB800          or bh,[bx+0xb8]
00003584  0000              add [bx+si],al
00003586  02AFA800          add ch,[bx+0xa8]
0000358A  0000              add [bx+si],al
0000358C  0029              add [bx+di],ch
0000358E  A800              test al,0x0
00003590  0000              add [bx+si],al
00003592  0002              add [bp+si],al
00003594  AA                stosb
00003595  0000              add [bx+si],al
00003597  0000              add [bx+si],al
00003599  002A              add [bp+si],ch
0000359B  0000              add [bx+si],al
0000359D  0000              add [bx+si],al
0000359F  0002              add [bp+si],al
000035A1  0000              add [bx+si],al
000035A3  0000              add [bx+si],al
000035A5  0000              add [bx+si],al
000035A7  0000              add [bx+si],al
000035A9  0000              add [bx+si],al
000035AB  0000              add [bx+si],al
000035AD  0000              add [bx+si],al
000035AF  0000              add [bx+si],al
000035B1  0000              add [bx+si],al
000035B3  0000              add [bx+si],al
000035B5  0000              add [bx+si],al
000035B7  0000              add [bx+si],al
000035B9  0000              add [bx+si],al
000035BB  FF                db 0xff
000035BC  FF                db 0xff
000035BD  FF                db 0xff
000035BE  FF                db 0xff
000035BF  FF                db 0xff
000035C0  FF                db 0xff
000035C1  FF                db 0xff
000035C2  FF                db 0xff
000035C3  FF                db 0xff
000035C4  FF                db 0xff
000035C5  FF                db 0xff
000035C6  FF                db 0xff
000035C7  FF                db 0xff
000035C8  FF                db 0xff
000035C9  FF                db 0xff
000035CA  FF                db 0xff
000035CB  FF                db 0xff
000035CC  FF                db 0xff
000035CD  FF                db 0xff
000035CE  FF                db 0xff
000035CF  FF                db 0xff
000035D0  FC                cld
000035D1  3F                aas
000035D2  FF                db 0xff
000035D3  FF                db 0xff
000035D4  FFF3              push bx
000035D6  F0                lock
000035D7  FF                db 0xff
000035D8  FF                db 0xff
000035D9  FF                db 0xff
000035DA  FFC3              inc bx
000035DC  C3                ret
000035DD  FF                db 0xff
000035DE  FF                db 0xff
000035DF  FFF0              push ax
000035E1  0003              add [bp+di],al
000035E3  FF                db 0xff
000035E4  FF                db 0xff
000035E5  FF                db 0xff
000035E6  FC                cld
000035E7  0003              add [bp+di],al
000035E9  FF                db 0xff
000035EA  FF                db 0xff
000035EB  FF                db 0xff
000035EC  FFC0              inc ax
000035EE  03FF              add di,di
000035F0  FF                db 0xff
000035F1  FF                db 0xff
000035F2  FF                db 0xff
000035F3  FC                cld
000035F4  00FF              add bh,bh
000035F6  FF                db 0xff
000035F7  FF                db 0xff
000035F8  FF                db 0xff
000035F9  FFC0              inc ax
000035FB  FF                db 0xff
000035FC  FF                db 0xff
000035FD  FF                db 0xff
000035FE  FF                db 0xff
000035FF  FF                db 0xff
00003600  FC                cld
00003601  FF                db 0xff
00003602  FF                db 0xff
00003603  FF                db 0xff
00003604  FF                db 0xff
00003605  FF                db 0xff
00003606  FF                db 0xff
00003607  FF                db 0xff
00003608  FF                db 0xff
00003609  FF                db 0xff
0000360A  FF                db 0xff
0000360B  FF                db 0xff
0000360C  FF                db 0xff
0000360D  FF                db 0xff
0000360E  FF                db 0xff
0000360F  FF                db 0xff
00003610  FF                db 0xff
00003611  FF                db 0xff
00003612  FF                db 0xff
00003613  FF                db 0xff
00003614  FF                db 0xff
00003615  FF                db 0xff
00003616  FF                db 0xff
00003617  FF                db 0xff
00003618  FF                db 0xff
00003619  FF                db 0xff
0000361A  FF00              inc word [bx+si]
0000361C  0000              add [bx+si],al
0000361E  00C0              add al,al
00003620  0000              add [bx+si],al
00003622  0000              add [bx+si],al
00003624  03C0              add ax,ax
00003626  0000              add [bx+si],al
00003628  00800FC0          add [bx+si-0x3ff1],al
0000362C  0000              add [bx+si],al
0000362E  00A03FC0          add [bx+si-0x3fc1],ah
00003632  0000              add [bx+si],al
00003634  00AA3FC0          add [bp+si-0x3fc1],ch
00003638  0000              add [bx+si],al
0000363A  02AAFF00          add ch,[bp+si+0xff]
0000363E  0000              add [bx+si],al
00003640  02ABFA00          add ch,[bp+di+0xfa]
00003644  0000              add [bx+si],al
00003646  0AEF              or ch,bh
00003648  AB                stosw
00003649  A00000            mov al,[0x0]
0000364C  0E                push cs
0000364D  AE                scasb
0000364E  AE                scasb
0000364F  AA                stosb
00003650  0000              add [bx+si],al
00003652  2AAAEAAA          sub ch,[bp+si-0x5516]
00003656  A000EA            mov al,[0xea00]
00003659  AE                scasb
0000365A  AA                stosb
0000365B  AA                stosb
0000365C  AA                stosb
0000365D  0FEAEA            pminsw mm5,mm2
00003660  AA                stosb
00003661  AA                stosb
00003662  002A              add [bp+si],ch
00003664  AF                scasw
00003665  0000              add [bx+si],al
00003667  0000              add [bx+si],al
00003669  EAF0000000        jmp word 0x0:0xf0
0000366E  00E8              add al,ch
00003670  0000              add [bx+si],al
00003672  0000              add [bx+si],al
00003674  0000              add [bx+si],al
00003676  0000              add [bx+si],al
00003678  0000              add [bx+si],al
0000367A  00FF              add bh,bh
0000367C  FF                db 0xff
0000367D  FF                db 0xff
0000367E  FF                db 0xff
0000367F  3F                aas
00003680  FF                db 0xff
00003681  FF                db 0xff
00003682  FF                db 0xff
00003683  FF                db 0xff
00003684  FC                cld
00003685  3F                aas
00003686  FF                db 0xff
00003687  FF                db 0xff
00003688  FF                db 0xff
00003689  3F                aas
0000368A  F03F              lock aas
0000368C  FF                db 0xff
0000368D  FF                db 0xff
0000368E  FF0F              dec word [bx]
00003690  C03FFF            sar byte [bx],byte 0xff
00003693  FF                db 0xff
00003694  FF00              inc word [bx+si]
00003696  C03FFF            sar byte [bx],byte 0xff
00003699  FF                db 0xff
0000369A  FC                cld
0000369B  0000              add [bx+si],al
0000369D  FF                db 0xff
0000369E  FF                db 0xff
0000369F  FF                db 0xff
000036A0  FC                cld
000036A1  0000              add [bx+si],al
000036A3  FF                db 0xff
000036A4  FF                db 0xff
000036A5  FFF0              push ax
000036A7  0000              add [bx+si],al
000036A9  0FFF              ud0
000036AB  FFF0              push ax
000036AD  0000              add [bx+si],al
000036AF  00FF              add bh,bh
000036B1  FFC0              inc ax
000036B3  0000              add [bx+si],al
000036B5  000F              add [bx],cl
000036B7  FF00              inc word [bx+si]
000036B9  0000              add [bx+si],al
000036BB  0000              add [bx+si],al
000036BD  F00000            lock add [bx+si],al
000036C0  0000              add [bx+si],al
000036C2  FFF0              push ax
000036C4  0000              add [bx+si],al
000036C6  0000              add [bx+si],al
000036C8  00C0              add al,al
000036CA  0000              add [bx+si],al
000036CC  0000              add [bx+si],al
000036CE  3F                aas
000036CF  0000              add [bx+si],al
000036D1  3F                aas
000036D2  FF                db 0xff
000036D3  FF                db 0xff
000036D4  FFC0              inc ax
000036D6  03FF              add di,di
000036D8  FF                db 0xff
000036D9  FF                db 0xff
000036DA  FF00              inc word [bx+si]
000036DC  0000              add [bx+si],al
000036DE  0000              add [bx+si],al
000036E0  0000              add [bx+si],al
000036E2  0000              add [bx+si],al
000036E4  00C0              add al,al
000036E6  0000              add [bx+si],al
000036E8  0000              add [bx+si],al
000036EA  03C0              add ax,ax
000036EC  0000              add [bx+si],al
000036EE  0000              add [bx+si],al
000036F0  03C0              add ax,ax
000036F2  0000              add [bx+si],al
000036F4  00800FC0          add [bx+si-0x3ff1],al
000036F8  0000              add [bx+si],al
000036FA  00A83FC0          add [bx+si-0x3fc1],ch
000036FE  0000              add [bx+si],al
00003700  02AAFF00          add ch,[bp+si+0xff]
00003704  0000              add [bx+si],al
00003706  02ABFA00          add ch,[bp+di+0xfa]
0000370A  0000              add [bx+si],al
0000370C  0AEF              or ch,bh
0000370E  AB                stosw
0000370F  A00000            mov al,[0x0]
00003712  0E                push cs
00003713  AE                scasb
00003714  AE                scasb
00003715  AA                stosb
00003716  0000              add [bx+si],al
00003718  2AAAEAAA          sub ch,[bp+si-0x5516]
0000371C  8000EA            add byte [bx+si],0xea
0000371F  AE                scasb
00003720  AA                stosb
00003721  AA                stosb
00003722  A003EA            mov al,[0xea03]
00003725  EAAAA8000A        jmp word 0xa00:0xa8aa
0000372A  AF                scasw
0000372B  0000              add [bx+si],al
0000372D  0000              add [bx+si],al
0000372F  0AF0              or dh,al
00003731  0000              add [bx+si],al
00003733  0000              add [bx+si],al
00003735  0000              add [bx+si],al
00003737  0000              add [bx+si],al
00003739  0000              add [bx+si],al
0000373B  FF                db 0xff
0000373C  FF                db 0xff
0000373D  FF                db 0xff
0000373E  FF                db 0xff
0000373F  FF                db 0xff
00003740  FF                db 0xff
00003741  FF                db 0xff
00003742  FF                db 0xff
00003743  FF                db 0xff
00003744  FF                db 0xff
00003745  3F                aas
00003746  FF                db 0xff
00003747  FF                db 0xff
00003748  FF                db 0xff
00003749  FF                db 0xff
0000374A  FC                cld
0000374B  3F                aas
0000374C  FF                db 0xff
0000374D  FF                db 0xff
0000374E  FF                db 0xff
0000374F  FF                db 0xff
00003750  FC                cld
00003751  3F                aas
00003752  FF                db 0xff
00003753  FF                db 0xff
00003754  FF                db 0xff
00003755  3F                aas
00003756  F03F              lock aas
00003758  FF                db 0xff
00003759  FF                db 0xff
0000375A  FF                db 0xff
0000375B  FC                cld
0000375C  3F                aas
0000375D  3F                aas
0000375E  FF                db 0xff
0000375F  FF                db 0xff
00003760  FC                cld
00003761  0000              add [bx+si],al
00003763  FF                db 0xff
00003764  FF                db 0xff
00003765  FF                db 0xff
00003766  FC                cld
00003767  0000              add [bx+si],al
00003769  FF                db 0xff
0000376A  FF                db 0xff
0000376B  FFF0              push ax
0000376D  0000              add [bx+si],al
0000376F  0FFF              ud0
00003771  FFF0              push ax
00003773  0000              add [bx+si],al
00003775  00FF              add bh,bh
00003777  FFC0              inc ax
00003779  0000              add [bx+si],al
0000377B  003F              add [bx],bh
0000377D  FF00              inc word [bx+si]
0000377F  0000              add [bx+si],al
00003781  000F              add [bx],cl
00003783  FC                cld
00003784  0000              add [bx+si],al
00003786  0003              add [bp+di],al
00003788  FFF0              push ax
0000378A  00FF              add bh,bh
0000378C  FF                db 0xff
0000378D  FF                db 0xff
0000378E  FFF0              push ax
00003790  0FFF              ud0
00003792  FF                db 0xff
00003793  FF                db 0xff
00003794  FF                db 0xff
00003795  FF                db 0xff
00003796  FF                db 0xff
00003797  FF                db 0xff
00003798  FF                db 0xff
00003799  FF                db 0xff
0000379A  FF00              inc word [bx+si]
0000379C  0000              add [bx+si],al
0000379E  0000              add [bx+si],al
000037A0  0000              add [bx+si],al
000037A2  0000              add [bx+si],al
000037A4  0003              add [bp+di],al
000037A6  0000              add [bx+si],al
000037A8  000F              add [bx],cl
000037AA  0000              add [bx+si],al
000037AC  200F              and [bx],cl
000037AE  0000              add [bx+si],al
000037B0  283F              sub [bx],bh
000037B2  0000              add [bx+si],al
000037B4  2AFC              sub bh,ah
000037B6  0000              add [bx+si],al
000037B8  AA                stosb
000037B9  AA                stosb
000037BA  0000              add [bx+si],al
000037BC  BAAEA0            mov dx,0xa0ae
000037BF  03AAEAAA          add bp,[bp+si-0x5516]
000037C3  3AAEAA80          cmp ch,[bp-0x7f56]
000037C7  AA                stosb
000037C8  C00000            rol byte [bx+si],byte 0x0
000037CB  BA0000            mov dx,0x0
000037CE  0000              add [bx+si],al
000037D0  0000              add [bx+si],al
000037D2  0000              add [bx+si],al
000037D4  0000              add [bx+si],al
000037D6  0000              add [bx+si],al
000037D8  0000              add [bx+si],al
000037DA  00FF              add bh,bh
000037DC  FF                db 0xff
000037DD  FF                db 0xff
000037DE  FF                db 0xff
000037DF  FF                db 0xff
000037E0  FF                db 0xff
000037E1  FF                db 0xff
000037E2  FF                db 0xff
000037E3  FF                db 0xff
000037E4  FF                db 0xff
000037E5  FC                cld
000037E6  FF                db 0xff
000037E7  FF                db 0xff
000037E8  FFF0              push ax
000037EA  FF                db 0xff
000037EB  FF                db 0xff
000037EC  3F                aas
000037ED  F0                lock
000037EE  FF                db 0xff
000037EF  FF                db 0xff
000037F0  3CC0              cmp al,0xc0
000037F2  FF                db 0xff
000037F3  FFC0              inc ax
000037F5  03FF              add di,di
000037F7  FF00              inc word [bx+si]
000037F9  00FF              add bh,bh
000037FB  FF00              inc word [bx+si]
000037FD  000F              add [bx],cl
000037FF  FC                cld
00003800  0000              add [bx+si],al
00003802  00C0              add al,al
00003804  0000              add [bx+si],al
00003806  3F                aas
00003807  003F              add [bx],bh
00003809  FF                db 0xff
0000380A  FF03              inc word [bp+di]
0000380C  FF                db 0xff
0000380D  FF                db 0xff
0000380E  FF                db 0xff
0000380F  FF                db 0xff
00003810  FF                db 0xff
00003811  FF                db 0xff
00003812  FF                db 0xff
00003813  FF                db 0xff
00003814  FF                db 0xff
00003815  FF                db 0xff
00003816  FF                db 0xff
00003817  FF                db 0xff
00003818  FF                db 0xff
00003819  FF                db 0xff
0000381A  FF00              inc word [bx+si]
0000381C  0000              add [bx+si],al
0000381E  0000              add [bx+si],al
00003820  0000              add [bx+si],al
00003822  0000              add [bx+si],al
00003824  0000              add [bx+si],al
00003826  0000              add [bx+si],al
00003828  0000              add [bx+si],al
0000382A  0000              add [bx+si],al
0000382C  0003              add [bp+di],al
0000382E  0000              add [bx+si],al
00003830  080F              or [bx],cl
00003832  0000              add [bx+si],al
00003834  0A0F              or cl,[bx]
00003836  0000              add [bx+si],al
00003838  0ABC0000          or bh,[si+0x0]
0000383C  0AF8              or bh,al
0000383E  0000              add [bx+si],al
00003840  2AAA0000          sub ch,[bp+si+0x0]
00003844  AA                stosb
00003845  0000              add [bx+si],al
00003847  00A00000          add [bx+si+0x0],ah
0000384B  0000              add [bx+si],al
0000384D  0000              add [bx+si],al
0000384F  0000              add [bx+si],al
00003851  0000              add [bx+si],al
00003853  0000              add [bx+si],al
00003855  0000              add [bx+si],al
00003857  0000              add [bx+si],al
00003859  0000              add [bx+si],al
0000385B  FF                db 0xff
0000385C  FF                db 0xff
0000385D  FF                db 0xff
0000385E  FF                db 0xff
0000385F  FF                db 0xff
00003860  FF                db 0xff
00003861  FF                db 0xff
00003862  FF                db 0xff
00003863  FF                db 0xff
00003864  FF                db 0xff
00003865  FF                db 0xff
00003866  FF                db 0xff
00003867  FF                db 0xff
00003868  FF                db 0xff
00003869  FF                db 0xff
0000386A  FF                db 0xff
0000386B  FF                db 0xff
0000386C  FF                db 0xff
0000386D  FC                cld
0000386E  FF                db 0xff
0000386F  FFF3              push bx
00003871  F0                lock
00003872  FF                db 0xff
00003873  FFF0              push ax
00003875  F0                lock
00003876  FF                db 0xff
00003877  FFF0              push ax
00003879  03FF              add di,di
0000387B  FFF0              push ax
0000387D  03FF              add di,di
0000387F  FFC0              inc ax
00003881  00FF              add bh,bh
00003883  FF00              inc word [bx+si]
00003885  FF                db 0xff
00003886  FF                db 0xff
00003887  FF0F              dec word [bx]
00003889  FF                db 0xff
0000388A  FF                db 0xff
0000388B  FF                db 0xff
0000388C  FF                db 0xff
0000388D  FF                db 0xff
0000388E  FF                db 0xff
0000388F  FF                db 0xff
00003890  FF                db 0xff
00003891  FF                db 0xff
00003892  FF                db 0xff
00003893  FF                db 0xff
00003894  FF                db 0xff
00003895  FF                db 0xff
00003896  FF                db 0xff
00003897  FF                db 0xff
00003898  FF                db 0xff
00003899  FF                db 0xff
0000389A  FF00              inc word [bx+si]
0000389C  0000              add [bx+si],al
0000389E  0000              add [bx+si],al
000038A0  0000              add [bx+si],al
000038A2  0000              add [bx+si],al
000038A4  0000              add [bx+si],al
000038A6  0F0000            sldt [bx+si]
000038A9  00FF              add bh,bh
000038AB  0000              add [bx+si],al
000038AD  0F                db 0x0f
000038AE  F00000            lock add [bx+si],al
000038B1  FF00              inc word [bx+si]
000038B3  000F              add [bx],cl
000038B5  F00000            lock add [bx+si],al
000038B8  FF00              inc word [bx+si]
000038BA  000F              add [bx],cl
000038BC  F00000            lock add [bx+si],al
000038BF  FF00              inc word [bx+si]
000038C1  0000              add [bx+si],al
000038C3  F00000            lock add [bx+si],al
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
000038F2  F00000            lock add [bx+si],al
000038F5  0F                db 0x0f
000038F6  F00000            lock add [bx+si],al
000038F9  FF00              inc word [bx+si]
000038FB  00F0              add al,dh
000038FD  F00000            lock add [bx+si],al
00003900  FF00              inc word [bx+si]
00003902  000F              add [bx],cl
00003904  F00000            lock add [bx+si],al
00003907  0000              add [bx+si],al
00003909  0000              add [bx+si],al
0000390B  0000              add [bx+si],al
0000390D  0000              add [bx+si],al
0000390F  0000              add [bx+si],al
00003911  0000              add [bx+si],al
00003913  0000              add [bx+si],al
00003915  0000              add [bx+si],al
00003917  0000              add [bx+si],al
00003919  0000              add [bx+si],al
0000391B  0000              add [bx+si],al
0000391D  0003              add [bp+di],al
0000391F  003F              add [bx],bh
00003921  03F0              add si,ax
00003923  3F                aas
00003924  00F0              add al,dh
00003926  0000              add [bx+si],al
00003928  0000              add [bx+si],al
0000392A  0000              add [bx+si],al
0000392C  0000              add [bx+si],al
0000392E  0000              add [bx+si],al
00003930  0000              add [bx+si],al
00003932  F00F0000          lock sldt [bx+si]
00003936  0000              add [bx+si],al
00003938  0000              add [bx+si],al
0000393A  0000              add [bx+si],al
0000393C  0000              add [bx+si],al
0000393E  0000              add [bx+si],al
00003940  0000              add [bx+si],al
00003942  0000              add [bx+si],al
00003944  0000              add [bx+si],al
00003946  000F              add [bx],cl
00003948  0000              add [bx+si],al
0000394A  000F              add [bx],cl
0000394C  F00000            lock add [bx+si],al
0000394F  00FF              add bh,bh
00003951  0000              add [bx+si],al
00003953  000F              add [bx],cl
00003955  F00000            lock add [bx+si],al
00003958  00FF              add bh,bh
0000395A  0000              add [bx+si],al
0000395C  000F              add [bx],cl
0000395E  F00000            lock add [bx+si],al
00003961  00F0              add al,dh
00003963  0000              add [bx+si],al
00003965  0000              add [bx+si],al
00003967  0000              add [bx+si],al
00003969  0000              add [bx+si],al
0000396B  0000              add [bx+si],al
0000396D  0000              add [bx+si],al
0000396F  0000              add [bx+si],al
00003971  0000              add [bx+si],al
00003973  0000              add [bx+si],al
00003975  0000              add [bx+si],al
00003977  0000              add [bx+si],al
00003979  0000              add [bx+si],al
0000397B  0300              add ax,[bx+si]
0000397D  0000              add [bx+si],al
0000397F  0000              add [bx+si],al
00003981  0FC000            xadd [bx+si],al
00003984  0000              add [bx+si],al
00003986  003C              add [si],bh
00003988  C00000            rol byte [bx+si],byte 0x0
0000398B  0000              add [bx+si],al
0000398D  F0F00000          lock add [bx+si],al
00003991  0000              add [bx+si],al
00003993  0030              add [bx+si],dh
00003995  0300              add ax,[bx+si]
00003997  0000              add [bx+si],al
00003999  003C              add [si],bh
0000399B  0FC000            xadd [bx+si],al
0000399E  0000              add [bx+si],al
000039A0  0F3C              cpu_write
000039A2  C00000            rol byte [bx+si],byte 0x0
000039A5  0000              add [bx+si],al
000039A7  F0F00000          lock add [bx+si],al
000039AB  0000              add [bx+si],al
000039AD  0030              add [bx+si],dh
000039AF  0300              add ax,[bx+si]
000039B1  0000              add [bx+si],al
000039B3  003C              add [si],bh
000039B5  0FC000            xadd [bx+si],al
000039B8  0000              add [bx+si],al
000039BA  0F3C              cpu_write
000039BC  C00000            rol byte [bx+si],byte 0x0
000039BF  0003              add [bp+di],al
000039C1  F0F00000          lock add [bx+si],al
000039C5  0000              add [bx+si],al
000039C7  0030              add [bx+si],dh
000039C9  0000              add [bx+si],al
000039CB  0000              add [bx+si],al
000039CD  003C              add [si],bh
000039CF  0000              add [bx+si],al
000039D1  0000              add [bx+si],al
000039D3  000F              add [bx],cl
000039D5  0000              add [bx+si],al
000039D7  0000              add [bx+si],al
000039D9  0000              add [bx+si],al
000039DB  0000              add [bx+si],al
000039DD  0300              add ax,[bx+si]
000039DF  3300              xor ax,[bx+si]
000039E1  0F0003            sldt [bp+di]
000039E4  C00330            rol byte [bp+di],byte 0x30
000039E7  0300              add ax,[bx+si]
000039E9  0000              add [bx+si],al
000039EB  0000              add [bx+si],al
000039ED  0000              add [bx+si],al
000039EF  0000              add [bx+si],al
000039F1  0000              add [bx+si],al
000039F3  0000              add [bx+si],al
000039F5  000A              add [bp+si],cl
000039F7  0000              add [bx+si],al
000039F9  00AA0000          add [bp+si+0x0],ch
000039FD  0AA00000          or ah,[bx+si+0x0]
00003A01  AA                stosb
00003A02  0000              add [bx+si],al
00003A04  0AA00000          or ah,[bx+si+0x0]
00003A08  AA                stosb
00003A09  0000              add [bx+si],al
00003A0B  0AA00000          or ah,[bx+si+0x0]
00003A0F  AA                stosb
00003A10  0000              add [bx+si],al
00003A12  00A00000          add [bx+si+0x0],ah
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
00003A2A  00FF              add bh,bh
00003A2C  FF                db 0xff
00003A2D  FF                db 0xff
00003A2E  FF                db 0xff
00003A2F  FF                db 0xff
00003A30  FF                db 0xff
00003A31  FF                db 0xff
00003A32  FF                db 0xff
00003A33  FF                db 0xff
00003A34  FF                db 0xff
00003A35  FFF0              push ax
00003A37  FF                db 0xff
00003A38  FF                db 0xff
00003A39  FF00              inc word [bx+si]
00003A3B  FF                db 0xff
00003A3C  FFF0              push ax
00003A3E  0FFF              ud0
00003A40  FF00              inc word [bx+si]
00003A42  FF                db 0xff
00003A43  FFF0              push ax
00003A45  0FFF              ud0
00003A47  FF00              inc word [bx+si]
00003A49  FF                db 0xff
00003A4A  FFF0              push ax
00003A4C  0FFF              ud0
00003A4E  FF00              inc word [bx+si]
00003A50  FF                db 0xff
00003A51  FF                db 0xff
00003A52  FF0F              dec word [bx]
00003A54  FF                db 0xff
00003A55  FF                db 0xff
00003A56  FF                db 0xff
00003A57  FF                db 0xff
00003A58  FF                db 0xff
00003A59  FF                db 0xff
00003A5A  FF                db 0xff
00003A5B  FF                db 0xff
00003A5C  FF                db 0xff
00003A5D  FF                db 0xff
00003A5E  FF                db 0xff
00003A5F  FF                db 0xff
00003A60  FF                db 0xff
00003A61  FF                db 0xff
00003A62  FF                db 0xff
00003A63  FF                db 0xff
00003A64  FF                db 0xff
00003A65  FF                db 0xff
00003A66  FF                db 0xff
00003A67  FF                db 0xff
00003A68  FF                db 0xff
00003A69  FF                db 0xff
00003A6A  FF00              inc word [bx+si]
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
00003A82  A00000            mov al,[0x0]
00003A85  0AA00000          or ah,[bx+si+0x0]
00003A89  AA                stosb
00003A8A  0000              add [bx+si],al
00003A8C  A0A000            mov al,[0xa0]
00003A8F  00AA0000          add [bp+si+0x0],ch
00003A93  0AA00000          or ah,[bx+si+0x0]
00003A97  0000              add [bx+si],al
00003A99  0000              add [bx+si],al
00003A9B  0000              add [bx+si],al
00003A9D  0000              add [bx+si],al
00003A9F  0000              add [bx+si],al
00003AA1  0000              add [bx+si],al
00003AA3  0000              add [bx+si],al
00003AA5  0000              add [bx+si],al
00003AA7  0000              add [bx+si],al
00003AA9  0000              add [bx+si],al
00003AAB  FF                db 0xff
00003AAC  FF                db 0xff
00003AAD  FF                db 0xff
00003AAE  FF                db 0xff
00003AAF  FF                db 0xff
00003AB0  FF                db 0xff
00003AB1  FF                db 0xff
00003AB2  FF                db 0xff
00003AB3  FF                db 0xff
00003AB4  FF                db 0xff
00003AB5  FF                db 0xff
00003AB6  FF                db 0xff
00003AB7  FF                db 0xff
00003AB8  FF                db 0xff
00003AB9  FF                db 0xff
00003ABA  FF                db 0xff
00003ABB  FF                db 0xff
00003ABC  FF                db 0xff
00003ABD  FF                db 0xff
00003ABE  FF                db 0xff
00003ABF  FF                db 0xff
00003AC0  FF                db 0xff
00003AC1  FF0F              dec word [bx]
00003AC3  FF                db 0xff
00003AC4  FFF0              push ax
00003AC6  0FFF              ud0
00003AC8  FF00              inc word [bx+si]
00003ACA  FF                db 0xff
00003ACB  FF0F              dec word [bx]
00003ACD  0FFF              ud0
00003ACF  FF00              inc word [bx+si]
00003AD1  FF                db 0xff
00003AD2  FFF0              push ax
00003AD4  0FFF              ud0
00003AD6  FF                db 0xff
00003AD7  FF                db 0xff
00003AD8  FF                db 0xff
00003AD9  FF                db 0xff
00003ADA  FF                db 0xff
00003ADB  FF                db 0xff
00003ADC  FF                db 0xff
00003ADD  FF                db 0xff
00003ADE  FF                db 0xff
00003ADF  FF                db 0xff
00003AE0  FF                db 0xff
00003AE1  FF                db 0xff
00003AE2  FF                db 0xff
00003AE3  FF                db 0xff
00003AE4  FF                db 0xff
00003AE5  FF                db 0xff
00003AE6  FF                db 0xff
00003AE7  FF                db 0xff
00003AE8  FF                db 0xff
00003AE9  FF                db 0xff
00003AEA  FF00              inc word [bx+si]
00003AEC  0000              add [bx+si],al
00003AEE  0200              add al,[bx+si]
00003AF0  2A02              sub al,[bp+si]
00003AF2  A02A00            mov al,[0x2a]
00003AF5  A00000            mov al,[0x0]
00003AF8  0000              add [bx+si],al
00003AFA  00FF              add bh,bh
00003AFC  FF                db 0xff
00003AFD  FF                db 0xff
00003AFE  FC                cld
00003AFF  FFC0              inc ax
00003B01  FC                cld
00003B02  0FC0FF            xadd bh,bh
00003B05  0FFF              ud0
00003B07  FF                db 0xff
00003B08  FF                db 0xff
00003B09  FF                db 0xff
00003B0A  FF00              inc word [bx+si]
00003B0C  0000              add [bx+si],al
00003B0E  0000              add [bx+si],al
00003B10  0000              add [bx+si],al
00003B12  F00F0000          lock sldt [bx+si]
00003B16  0000              add [bx+si],al
00003B18  0000              add [bx+si],al
00003B1A  0000              add [bx+si],al
00003B1C  0000              add [bx+si],al
00003B1E  0000              add [bx+si],al
00003B20  0000              add [bx+si],al
00003B22  0000              add [bx+si],al
00003B24  0000              add [bx+si],al
00003B26  000A              add [bp+si],cl
00003B28  0000              add [bx+si],al
00003B2A  000A              add [bp+si],cl
00003B2C  A00000            mov al,[0x0]
00003B2F  00AA0000          add [bp+si+0x0],ch
00003B33  000A              add [bp+si],cl
00003B35  A00000            mov al,[0x0]
00003B38  00AA0000          add [bp+si+0x0],ch
00003B3C  000A              add [bp+si],cl
00003B3E  A00000            mov al,[0x0]
00003B41  00A00000          add [bx+si+0x0],ah
00003B45  0000              add [bx+si],al
00003B47  0000              add [bx+si],al
00003B49  0000              add [bx+si],al
00003B4B  0000              add [bx+si],al
00003B4D  0000              add [bx+si],al
00003B4F  0000              add [bx+si],al
00003B51  0000              add [bx+si],al
00003B53  0000              add [bx+si],al
00003B55  0000              add [bx+si],al
00003B57  0000              add [bx+si],al
00003B59  0000              add [bx+si],al
00003B5B  FF                db 0xff
00003B5C  FF                db 0xff
00003B5D  FF                db 0xff
00003B5E  FF                db 0xff
00003B5F  FF                db 0xff
00003B60  FF                db 0xff
00003B61  FF                db 0xff
00003B62  FF                db 0xff
00003B63  FF                db 0xff
00003B64  FF                db 0xff
00003B65  FF                db 0xff
00003B66  FFF0              push ax
00003B68  FF                db 0xff
00003B69  FF                db 0xff
00003B6A  FFF0              push ax
00003B6C  0FFF              ud0
00003B6E  FF                db 0xff
00003B6F  FF00              inc word [bx+si]
00003B71  FF                db 0xff
00003B72  FF                db 0xff
00003B73  FFF0              push ax
00003B75  0FFF              ud0
00003B77  FF                db 0xff
00003B78  FF00              inc word [bx+si]
00003B7A  FF                db 0xff
00003B7B  FF                db 0xff
00003B7C  FFF0              push ax
00003B7E  0FFF              ud0
00003B80  FF                db 0xff
00003B81  FF0F              dec word [bx]
00003B83  FF                db 0xff
00003B84  FF                db 0xff
00003B85  FF                db 0xff
00003B86  FF                db 0xff
00003B87  FF                db 0xff
00003B88  FF                db 0xff
00003B89  FF                db 0xff
00003B8A  FF                db 0xff
00003B8B  FF                db 0xff
00003B8C  FF                db 0xff
00003B8D  FF                db 0xff
00003B8E  FF                db 0xff
00003B8F  FF                db 0xff
00003B90  FF                db 0xff
00003B91  FF                db 0xff
00003B92  FF                db 0xff
00003B93  FF                db 0xff
00003B94  FF                db 0xff
00003B95  FF                db 0xff
00003B96  FF                db 0xff
00003B97  FF                db 0xff
00003B98  FF                db 0xff
00003B99  FF                db 0xff
00003B9A  FF                db 0xff
00003B9B  FD                std
00003B9C  1000              adc [bx+si],al
00003B9E  0203              add al,[bp+di]
00003BA0  FD                std
00003BA1  06                push es
00003BA2  01FD              add bp,di
00003BA4  0E                push cs
00003BA5  0002              add [bp+si],al
00003BA7  03FD              add di,bp
00003BA9  0801              or [bx+di],al
00003BAB  FD                std
00003BAC  0C00              or al,0x0
00003BAE  0203              add al,[bp+di]
00003BB0  FD                std
00003BB1  0A01              or al,[bx+di]
00003BB3  FD                std
00003BB4  0A00              or al,[bx+si]
00003BB6  0203              add al,[bp+di]
00003BB8  FD                std
00003BB9  0C01              or al,0x1
00003BBB  FD                std
00003BBC  0800              or [bx+si],al
00003BBE  0203              add al,[bp+di]
00003BC0  FD                std
00003BC1  0E                push cs
00003BC2  01FD              add bp,di
00003BC4  06                push es
00003BC5  0002              add [bp+si],al
00003BC7  03FD              add di,bp
00003BC9  1001              adc [bx+di],al
00003BCB  FD                std
00003BCC  0400              add al,0x0
00003BCE  0203              add al,[bp+di]
00003BD0  FD                std
00003BD1  1201              adc al,[bx+di]
00003BD3  0000              add [bx+si],al
00003BD5  0203              add al,[bp+di]
00003BD7  FD                std
00003BD8  1401              adc al,0x1
00003BDA  0203              add al,[bp+di]
00003BDC  FD                std
00003BDD  16                push ss
00003BDE  01FD              add bp,di
00003BE0  1801              sbb [bx+di],al
00003BE2  FD                std
00003BE3  1801              sbb [bx+di],al
00003BE5  FD                std
00003BE6  1801              sbb [bx+di],al
00003BE8  FD                std
00003BE9  1801              sbb [bx+di],al
00003BEB  FD                std
00003BEC  1801              sbb [bx+di],al
00003BEE  FD                std
00003BEF  1801              sbb [bx+di],al
00003BF1  FD                std
00003BF2  16                push ss
00003BF3  0104              add [si],ax
00003BF5  05FD14            add ax,0x14fd
00003BF8  0104              add [si],ax
00003BFA  050607            add ax,0x706
00003BFD  FD                std
00003BFE  1201              adc al,[bx+di]
00003C00  0405              add al,0x5
00003C02  06                push es
00003C03  07                pop es
00003C04  0000              add [bx+si],al
00003C06  00FF              add bh,bh
00003C08  FF                db 0xff
00003C09  FF                db 0xff
00003C0A  FF                db 0xff
00003C0B  FF                db 0xff
00003C0C  FF                db 0xff
00003C0D  FF                db 0xff
00003C0E  FF4847            dec word [bx+si+0x47]
00003C11  FD                std
00003C12  16                push ss
00003C13  01494A            add [bx+di+0x4a],cx
00003C16  4C                dec sp
00003C17  FD                std
00003C18  150100            adc ax,0x1
00003C1B  00494A            add [bx+di+0x4a],cl
00003C1E  4B                dec bx
00003C1F  4C                dec sp
00003C20  FD                std
00003C21  1201              adc al,[bx+di]
00003C23  FD                std
00003C24  050049            add ax,0x4900
00003C27  4A                dec dx
00003C28  4B                dec bx
00003C29  4C                dec sp
00003C2A  FD                std
00003C2B  0F                db 0x0f
00003C2C  01FD              add bp,di
00003C2E  0800              or [bx+si],al
00003C30  49                dec cx
00003C31  4A                dec dx
00003C32  4B                dec bx
00003C33  4C                dec sp
00003C34  FD                std
00003C35  0C01              or al,0x1
00003C37  FD                std
00003C38  0B00              or ax,[bx+si]
00003C3A  49                dec cx
00003C3B  4A                dec dx
00003C3C  4B                dec bx
00003C3D  4C                dec sp
00003C3E  FD                std
00003C3F  0901              or [bx+di],ax
00003C41  FD                std
00003C42  0E                push cs
00003C43  00494A            add [bx+di+0x4a],cl
00003C46  4B                dec bx
00003C47  4C                dec sp
00003C48  FD                std
00003C49  06                push es
00003C4A  01FD              add bp,di
00003C4C  1100              adc [bx+si],ax
00003C4E  49                dec cx
00003C4F  4A                dec dx
00003C50  4B                dec bx
00003C51  4B                dec bx
00003C52  4C                dec sp
00003C53  0405              add al,0x5
00003C55  FD                std
00003C56  15004D            adc ax,0x4d00
00003C59  06                push es
00003C5A  07                pop es
00003C5B  FD                std
00003C5C  1800              sbb [bx+si],al
00003C5E  00FF              add bh,bh
00003C60  FF                db 0xff
00003C61  FF                db 0xff
00003C62  FE0B              dec byte [bp+di]
00003C64  11FF              adc di,di
00003C66  FF                db 0xff
00003C67  FE0C              dec byte [si]
00003C69  090A              or [bp+si],cx
00003C6B  FE03              inc byte [bp+di]
00003C6D  0809              or [bx+di],cl
00003C6F  0AFF              or bh,bh
00003C71  FE0E1109          dec byte [0x911]
00003C75  0AFE              or bh,dh
00003C77  0311              add dx,[bx+di]
00003C79  090A              or [bp+si],cx
00003C7B  FF                db 0xff
00003C7C  FE                db 0xfe
00003C7D  17                pop ss
00003C7E  1102              adc [bp+si],ax
00003C80  03FF              add di,di
00003C82  FD                std
00003C83  0501FF            add ax,0xff01
00003C86  FD                std
00003C87  0801              or [bx+di],al
00003C89  FF                db 0xff
00003C8A  FD                std
00003C8B  0B01              or ax,[bx+di]
00003C8D  FF                db 0xff
00003C8E  FD                std
00003C8F  0E                push cs
00003C90  01FF              add di,di
00003C92  FD                std
00003C93  1101              adc [bx+di],ax
00003C95  FF                db 0xff
00003C96  FD                std
00003C97  1401              adc al,0x1
00003C99  FF                db 0xff
00003C9A  FD                std
00003C9B  16                push ss
00003C9C  0104              add [si],ax
00003C9E  05FD14            add ax,0x14fd
00003CA1  0104              add [si],ax
00003CA3  050607            add ax,0x706
00003CA6  FD                std
00003CA7  1201              adc al,[bx+di]
00003CA9  0405              add al,0x5
00003CAB  06                push es
00003CAC  07                pop es
00003CAD  FF24              jmp word [si]
00003CAF  B73A              mov bh,0x3a
00003CB1  A33B50            mov [0x503b],ax
00003CB4  3C22              cmp al,0x22
00003CB6  3DFE02            cmp ax,0x2fe
00003CB9  0809              or [bx+di],cl
00003CBB  0AFF              or bh,bh
00003CBD  FE02              inc byte [bp+si]
00003CBF  0E                push cs
00003CC0  0F1011            movups xmm2,oword [bx+di]
00003CC3  090A              or [bp+si],cx
00003CC5  FF                db 0xff
00003CC6  FE02              inc byte [bp+si]
00003CC8  0E                push cs
00003CC9  1410              adc al,0x10
00003CCB  0E                push cs
00003CCC  0F1011            movups xmm2,oword [bx+di]
00003CCF  090A              or [bp+si],cx
00003CD1  FF                db 0xff
00003CD2  FE02              inc byte [bp+si]
00003CD4  0E                push cs
00003CD5  16                push ss
00003CD6  1013              adc [bp+di],dl
00003CD8  1410              adc al,0x10
00003CDA  0E                push cs
00003CDB  0F1012            movups xmm2,oword [bp+si]
00003CDE  FF                db 0xff
00003CDF  FE02              inc byte [bp+si]
00003CE1  0E                push cs
00003CE2  1410              adc al,0x10
00003CE4  0E                push cs
00003CE5  16                push ss
00003CE6  1013              adc [bp+di],dl
00003CE8  1410              adc al,0x10
00003CEA  15FFFE            adc ax,0xfeff
00003CED  020E1610          add cl,[0x1016]
00003CF1  1314              adc dx,[si]
00003CF3  100E1610          adc [0x1016],cl
00003CF7  150C0D            adc ax,0xd0c
00003CFA  FE03              inc byte [bp+di]
00003CFC  0B0C              or cx,[si]
00003CFE  0DFFFE            or ax,0xfeff
00003D01  020E1410          add cl,[0x1014]
00003D05  0E                push cs
00003D06  16                push ss
00003D07  1013              adc [bp+di],dl
00003D09  1410              adc al,0x10
00003D0B  0E                push cs
00003D0C  0F1012            movups xmm2,oword [bp+si]
00003D0F  0C0D              or al,0xd
00003D11  0E                push cs
00003D12  0F1012            movups xmm2,oword [bp+si]
00003D15  0C0D              or al,0xd
00003D17  FF                db 0xff
00003D18  FE02              inc byte [bp+si]
00003D1A  0E                push cs
00003D1B  16                push ss
00003D1C  1013              adc [bp+di],dl
00003D1E  1410              adc al,0x10
00003D20  0E                push cs
00003D21  16                push ss
00003D22  1013              adc [bp+di],dl
00003D24  1410              adc al,0x10
00003D26  0E                push cs
00003D27  0F100E1410        movups xmm1,oword [0x1014]
00003D2C  0E                push cs
00003D2D  0F1012            movups xmm2,oword [bp+si]
00003D30  FE02              inc byte [bp+si]
00003D32  17                pop ss
00003D33  1819              sbb [bx+di],bl
00003D35  0E                push cs
00003D36  16                push ss
00003D37  1013              adc [bp+di],dl
00003D39  1410              adc al,0x10
00003D3B  0E                push cs
00003D3C  16                push ss
00003D3D  1013              adc [bp+di],dl
00003D3F  1410              adc al,0x10
00003D41  0E                push cs
00003D42  16                push ss
00003D43  1013              adc [bp+di],dl
00003D45  1410              adc al,0x10
00003D47  15FE05            adc ax,0x5fe
00003D4A  17                pop ss
00003D4B  1819              sbb [bx+di],bl
00003D4D  0E                push cs
00003D4E  16                push ss
00003D4F  1013              adc [bp+di],dl
00003D51  1410              adc al,0x10
00003D53  0E                push cs
00003D54  16                push ss
00003D55  1013              adc [bp+di],dl
00003D57  1410              adc al,0x10
00003D59  0E                push cs
00003D5A  16                push ss
00003D5B  1015              adc [di],dl
00003D5D  FE08              dec byte [bx+si]
00003D5F  17                pop ss
00003D60  1819              sbb [bx+di],bl
00003D62  0E                push cs
00003D63  16                push ss
00003D64  1013              adc [bp+di],dl
00003D66  1410              adc al,0x10
00003D68  0E                push cs
00003D69  16                push ss
00003D6A  1013              adc [bp+di],dl
00003D6C  1410              adc al,0x10
00003D6E  15FE0B            adc ax,0xbfe
00003D71  17                pop ss
00003D72  1819              sbb [bx+di],bl
00003D74  0E                push cs
00003D75  16                push ss
00003D76  1013              adc [bp+di],dl
00003D78  1410              adc al,0x10
00003D7A  0E                push cs
00003D7B  16                push ss
00003D7C  1015              adc [di],dl
00003D7E  FE0E1718          dec byte [0x1817]
00003D82  190E1610          sbb [0x1016],cx
00003D86  1314              adc dx,[si]
00003D88  1015              adc [di],dl
00003D8A  FE                db 0xfe
00003D8B  1117              adc [bx],dx
00003D8D  1819              sbb [bx+di],bl
00003D8F  0E                push cs
00003D90  16                push ss
00003D91  1015              adc [di],dl
00003D93  FE                db 0xfe
00003D94  1417              adc al,0x17
00003D96  1819              sbb [bx+di],bl
00003D98  1AFE              sbb bh,dh
00003D9A  16                push ss
00003D9B  0405              add al,0x5
00003D9D  FE                db 0xfe
00003D9E  16                push ss
00003D9F  06                push es
00003DA0  07                pop es
00003DA1  FC                cld
00003DA2  24FE              and al,0xfe
00003DA4  0208              add cl,[bx+si]
00003DA6  090A              or [bp+si],cx
00003DA8  FF                db 0xff
00003DA9  FE02              inc byte [bp+si]
00003DAB  0E                push cs
00003DAC  0F1011            movups xmm2,oword [bx+di]
00003DAF  090A              or [bp+si],cx
00003DB1  FF                db 0xff
00003DB2  FE02              inc byte [bp+si]
00003DB4  0E                push cs
00003DB5  1410              adc al,0x10
00003DB7  0E                push cs
00003DB8  0F1011            movups xmm2,oword [bx+di]
00003DBB  FF                db 0xff
00003DBC  FE02              inc byte [bp+si]
00003DBE  0E                push cs
00003DBF  16                push ss
00003DC0  1013              adc [bp+di],dl
00003DC2  1410              adc al,0x10
00003DC4  15FFFE            adc ax,0xfeff
00003DC7  020E1410          add cl,[0x1014]
00003DCB  0E                push cs
00003DCC  16                push ss
00003DCD  1015              adc [di],dl
00003DCF  FF                db 0xff
00003DD0  FE02              inc byte [bp+si]
00003DD2  0E                push cs
00003DD3  16                push ss
00003DD4  1013              adc [bp+di],dl
00003DD6  1410              adc al,0x10
00003DD8  15FE08            adc ax,0x8fe
00003DDB  0B0C              or cx,[si]
00003DDD  0DFFFE            or ax,0xfeff
00003DE0  020E1410          add cl,[0x1014]
00003DE4  0E                push cs
00003DE5  16                push ss
00003DE6  1015              adc [di],dl
00003DE8  FE08              dec byte [bx+si]
00003DEA  0E                push cs
00003DEB  0F1012            movups xmm2,oword [bp+si]
00003DEE  0C0D              or al,0xd
00003DF0  FF                db 0xff
00003DF1  FE02              inc byte [bp+si]
00003DF3  0E                push cs
00003DF4  16                push ss
00003DF5  1013              adc [bp+di],dl
00003DF7  1410              adc al,0x10
00003DF9  15FE08            adc ax,0x8fe
00003DFC  0E                push cs
00003DFD  1410              adc al,0x10
00003DFF  0E                push cs
00003E00  0F1012            movups xmm2,oword [bp+si]
00003E03  FE02              inc byte [bp+si]
00003E05  17                pop ss
00003E06  1819              sbb [bx+di],bl
00003E08  0E                push cs
00003E09  16                push ss
00003E0A  1015              adc [di],dl
00003E0C  FE08              dec byte [bx+si]
00003E0E  0E                push cs
00003E0F  16                push ss
00003E10  1013              adc [bp+di],dl
00003E12  1410              adc al,0x10
00003E14  15FE05            adc ax,0x5fe
00003E17  17                pop ss
00003E18  1819              sbb [bx+di],bl
00003E1A  1AFE              sbb bh,dh
00003E1C  080E1410          or [0x1014],cl
00003E20  0E                push cs
00003E21  16                push ss
00003E22  1015              adc [di],dl
00003E24  FE                db 0xfe
00003E25  110E1610          adc [0x1016],cx
00003E29  1314              adc dx,[si]
00003E2B  1015              adc [di],dl
00003E2D  FE                db 0xfe
00003E2E  110E1410          adc [0x1014],cx
00003E32  0E                push cs
00003E33  16                push ss
00003E34  1015              adc [di],dl
00003E36  FE                db 0xfe
00003E37  110E1610          adc [0x1016],cx
00003E3B  1314              adc dx,[si]
00003E3D  1015              adc [di],dl
00003E3F  FE                db 0xfe
00003E40  1117              adc [bx],dx
00003E42  1819              sbb [bx+di],bl
00003E44  0E                push cs
00003E45  16                push ss
00003E46  1015              adc [di],dl
00003E48  FE                db 0xfe
00003E49  1417              adc al,0x17
00003E4B  1819              sbb [bx+di],bl
00003E4D  1AFC              sbb bh,ah
00003E4F  24FE              and al,0xfe
00003E51  0208              add cl,[bx+si]
00003E53  090A              or [bp+si],cx
00003E55  FF                db 0xff
00003E56  FE02              inc byte [bp+si]
00003E58  0E                push cs
00003E59  0F1011            movups xmm2,oword [bx+di]
00003E5C  090A              or [bp+si],cx
00003E5E  FF                db 0xff
00003E5F  FE02              inc byte [bp+si]
00003E61  0E                push cs
00003E62  1410              adc al,0x10
00003E64  0E                push cs
00003E65  0F1011            movups xmm2,oword [bx+di]
00003E68  FF                db 0xff
00003E69  FE02              inc byte [bp+si]
00003E6B  0E                push cs
00003E6C  16                push ss
00003E6D  1013              adc [bp+di],dl
00003E6F  1410              adc al,0x10
00003E71  15FFFE            adc ax,0xfeff
00003E74  020E1410          add cl,[0x1014]
00003E78  0E                push cs
00003E79  16                push ss
00003E7A  1015              adc [di],dl
00003E7C  FF                db 0xff
00003E7D  FE02              inc byte [bp+si]
00003E7F  0E                push cs
00003E80  16                push ss
00003E81  1013              adc [bp+di],dl
00003E83  1410              adc al,0x10
00003E85  15FE08            adc ax,0x8fe
00003E88  0B0C              or cx,[si]
00003E8A  0DFFFE            or ax,0xfeff
00003E8D  020E1410          add cl,[0x1014]
00003E91  0E                push cs
00003E92  16                push ss
00003E93  1015              adc [di],dl
00003E95  0C0D              or al,0xd
00003E97  FE060E0F          inc byte [0xf0e]
00003E9B  1012              adc [bp+si],dl
00003E9D  0C0D              or al,0xd
00003E9F  FF                db 0xff
00003EA0  FE02              inc byte [bp+si]
00003EA2  0E                push cs
00003EA3  16                push ss
00003EA4  1013              adc [bp+di],dl
00003EA6  1410              adc al,0x10
00003EA8  0E                push cs
00003EA9  0F1012            movups xmm2,oword [bp+si]
00003EAC  0C0D              or al,0xd
00003EAE  FE03              inc byte [bp+di]
00003EB0  0E                push cs
00003EB1  1410              adc al,0x10
00003EB3  0E                push cs
00003EB4  0F1012            movups xmm2,oword [bp+si]
00003EB7  FE02              inc byte [bp+si]
00003EB9  17                pop ss
00003EBA  1819              sbb [bx+di],bl
00003EBC  0E                push cs
00003EBD  16                push ss
00003EBE  1013              adc [bp+di],dl
00003EC0  1410              adc al,0x10
00003EC2  0E                push cs
00003EC3  0F1012            movups xmm2,oword [bp+si]
00003EC6  0C0D              or al,0xd
00003EC8  0E                push cs
00003EC9  16                push ss
00003ECA  1013              adc [bp+di],dl
00003ECC  1410              adc al,0x10
00003ECE  15FE05            adc ax,0x5fe
00003ED1  17                pop ss
00003ED2  1819              sbb [bx+di],bl
00003ED4  0E                push cs
00003ED5  16                push ss
00003ED6  1013              adc [bp+di],dl
00003ED8  1410              adc al,0x10
00003EDA  0E                push cs
00003EDB  0F100E1410        movups xmm1,oword [0x1014]
00003EE0  0E                push cs
00003EE1  16                push ss
00003EE2  1015              adc [di],dl
00003EE4  FE08              dec byte [bx+si]
00003EE6  17                pop ss
00003EE7  1819              sbb [bx+di],bl
00003EE9  0E                push cs
00003EEA  16                push ss
00003EEB  1013              adc [bp+di],dl
00003EED  1410              adc al,0x10
00003EEF  0E                push cs
00003EF0  16                push ss
00003EF1  1013              adc [bp+di],dl
00003EF3  1410              adc al,0x10
00003EF5  15FE0B            adc ax,0xbfe
00003EF8  17                pop ss
00003EF9  1819              sbb [bx+di],bl
00003EFB  0E                push cs
00003EFC  16                push ss
00003EFD  1013              adc [bp+di],dl
00003EFF  1410              adc al,0x10
00003F01  0E                push cs
00003F02  16                push ss
00003F03  1015              adc [di],dl
00003F05  FE0E1718          dec byte [0x1817]
00003F09  190E1610          sbb [0x1016],cx
00003F0D  1314              adc dx,[si]
00003F0F  1015              adc [di],dl
00003F11  FE                db 0xfe
00003F12  1117              adc [bx],dx
00003F14  1819              sbb [bx+di],bl
00003F16  0E                push cs
00003F17  16                push ss
00003F18  1015              adc [di],dl
00003F1A  FE                db 0xfe
00003F1B  1417              adc al,0x17
00003F1D  1819              sbb [bx+di],bl
00003F1F  1AFC              sbb bh,ah
00003F21  24FF              and al,0xff
00003F23  FF                db 0xff
00003F24  FF                db 0xff
00003F25  FF                db 0xff
00003F26  FE02              inc byte [bp+si]
00003F28  0809              or [bx+di],cl
00003F2A  0AFF              or bh,bh
00003F2C  FE02              inc byte [bp+si]
00003F2E  0E                push cs
00003F2F  0F1011            movups xmm2,oword [bx+di]
00003F32  094EFF            or [bp-0x1],cx
00003F35  FE02              inc byte [bp+si]
00003F37  0E                push cs
00003F38  1410              adc al,0x10
00003F3A  0E                push cs
00003F3B  0F1012            movups xmm2,oword [bp+si]
00003F3E  0C0D              or al,0xd
00003F40  FF                db 0xff
00003F41  FE02              inc byte [bp+si]
00003F43  0E                push cs
00003F44  16                push ss
00003F45  1013              adc [bp+di],dl
00003F47  1410              adc al,0x10
00003F49  0E                push cs
00003F4A  0F1012            movups xmm2,oword [bp+si]
00003F4D  0C0D              or al,0xd
00003F4F  FF                db 0xff
00003F50  FE02              inc byte [bp+si]
00003F52  17                pop ss
00003F53  1819              sbb [bx+di],bl
00003F55  0E                push cs
00003F56  16                push ss
00003F57  1013              adc [bp+di],dl
00003F59  1410              adc al,0x10
00003F5B  0E                push cs
00003F5C  0F1012            movups xmm2,oword [bp+si]
00003F5F  FF                db 0xff
00003F60  FE05              inc byte [di]
00003F62  17                pop ss
00003F63  1819              sbb [bx+di],bl
00003F65  0E                push cs
00003F66  16                push ss
00003F67  1013              adc [bp+di],dl
00003F69  1410              adc al,0x10
00003F6B  15FFFE            adc ax,0xfeff
00003F6E  0817              or [bx],dl
00003F70  1819              sbb [bx+di],bl
00003F72  0E                push cs
00003F73  16                push ss
00003F74  1015              adc [di],dl
00003F76  FF                db 0xff
00003F77  FE0B              dec byte [bp+di]
00003F79  17                pop ss
00003F7A  1819              sbb [bx+di],bl
00003F7C  1AFF              sbb bh,bh
00003F7E  FC                cld
00003F7F  0001              add [bx+di],al
00003F81  0101              add [bx+di],ax
00003F83  2C2D              sub al,0x2d
00003F85  0101              add [bx+di],ax
00003F87  0101              add [bx+di],ax
00003F89  01FF              add di,di
00003F8B  012E2F30          add [0x302f],bp
00003F8F  0131              add [bx+di],si
00003F91  3233              xor dh,[bp+di]
00003F93  0101              add [bx+di],ax
00003F95  FF01              inc word [bx+di]
00003F97  350136            xor ax,0x3601
00003F9A  37                aaa
00003F9B  3438              xor al,0x38
00003F9D  393A              cmp [bp+si],di
00003F9F  01FF              add di,di
00003FA1  013B              add [bp+di],di
00003FA3  3C3D              cmp al,0x3d
00003FA5  3E3F              ds aas
00003FA7  3A01              cmp al,[bx+di]
00003FA9  41                inc cx
00003FAA  01FF              add di,di
00003FAC  01262728          add [0x2827],sp
00003FB0  42                inc dx
00003FB1  43                inc bx
00003FB2  44                inc sp
00003FB3  40                inc ax
00003FB4  45                inc bp
00003FB5  01FF              add di,di
00003FB7  011B              add [bp+di],bx
00003FB9  1C1B              sbb al,0x1b
00003FBB  2627              es daa
00003FBD  292A              sub [bp+si],bp
00003FBF  2B01              sub ax,[bx+di]
00003FC1  FF01              inc word [bx+di]
00003FC3  1D1E1F            sbb ax,0x1f1e
00003FC6  1B1C              sbb bx,[si]
00003FC8  1B23              sbb sp,[bp+di]
00003FCA  1B01              sbb ax,[bx+di]
00003FCC  FF01              inc word [bx+di]
00003FCE  1B1C              sbb bx,[si]
00003FD0  1B1D              sbb bx,[di]
00003FD2  1E                push ds
00003FD3  1F                pop ds
00003FD4  231B              and bx,[bp+di]
00003FD6  01FF              add di,di
00003FD8  011B              add [bp+di],bx
00003FDA  1B1B              sbb bx,[bp+di]
00003FDC  1B1C              sbb bx,[si]
00003FDE  1B23              sbb sp,[bp+di]
00003FE0  1B01              sbb ax,[bx+di]
00003FE2  FF01              inc word [bx+di]
00003FE4  2021              and [bx+di],ah
00003FE6  221B              and bl,[bp+di]
00003FE8  1B1B              sbb bx,[bp+di]
00003FEA  231B              and bx,[bp+di]
00003FEC  01FF              add di,di
00003FEE  0101              add [bx+di],ax
00003FF0  0101              add [bx+di],ax
00003FF2  2021              and [bx+di],ah
00003FF4  2224              and ah,[si]
00003FF6  2501FF            and ax,0xff01
00003FF9  0101              add [bx+di],ax
00003FFB  0101              add [bx+di],ax
00003FFD  0101              add [bx+di],ax
00003FFF  0101              add [bx+di],ax
00004001  0101              add [bx+di],ax
00004003  FC                cld
00004004  0000              add [bx+si],al
00004006  0000              add [bx+si],al
00004008  0000              add [bx+si],al
0000400A  0000              add [bx+si],al
0000400C  0000              add [bx+si],al
0000400E  0000              add [bx+si],al
00004010  0000              add [bx+si],al
00004012  0000              add [bx+si],al
00004014  0000              add [bx+si],al
00004016  0000              add [bx+si],al
00004018  0000              add [bx+si],al
0000401A  0000              add [bx+si],al
0000401C  0000              add [bx+si],al
0000401E  0000              add [bx+si],al
00004020  0000              add [bx+si],al
00004022  0000              add [bx+si],al
00004024  0000              add [bx+si],al
00004026  0000              add [bx+si],al
00004028  0000              add [bx+si],al
0000402A  0000              add [bx+si],al
0000402C  0000              add [bx+si],al
0000402E  0000              add [bx+si],al
00004030  0000              add [bx+si],al
00004032  0000              add [bx+si],al
00004034  0000              add [bx+si],al
00004036  0000              add [bx+si],al
00004038  0000              add [bx+si],al
0000403A  0000              add [bx+si],al
0000403C  0000              add [bx+si],al
0000403E  0000              add [bx+si],al
00004040  0000              add [bx+si],al
00004042  0000              add [bx+si],al
00004044  0000              add [bx+si],al
00004046  0000              add [bx+si],al
00004048  0000              add [bx+si],al
0000404A  0000              add [bx+si],al
0000404C  0000              add [bx+si],al
0000404E  0000              add [bx+si],al
00004050  0000              add [bx+si],al
00004052  0000              add [bx+si],al
00004054  0000              add [bx+si],al
00004056  0000              add [bx+si],al
00004058  0000              add [bx+si],al
0000405A  0000              add [bx+si],al
0000405C  0000              add [bx+si],al
0000405E  0000              add [bx+si],al
00004060  0000              add [bx+si],al
00004062  0000              add [bx+si],al
00004064  0000              add [bx+si],al
00004066  0000              add [bx+si],al
00004068  0000              add [bx+si],al
0000406A  0000              add [bx+si],al
0000406C  0000              add [bx+si],al
0000406E  0000              add [bx+si],al
00004070  0000              add [bx+si],al
00004072  0000              add [bx+si],al
00004074  0000              add [bx+si],al
00004076  0000              add [bx+si],al
00004078  0000              add [bx+si],al
0000407A  0000              add [bx+si],al
0000407C  0000              add [bx+si],al
0000407E  0000              add [bx+si],al
00004080  0000              add [bx+si],al
00004082  0000              add [bx+si],al
00004084  0000              add [bx+si],al
00004086  0000              add [bx+si],al
00004088  0000              add [bx+si],al
0000408A  0000              add [bx+si],al
0000408C  0000              add [bx+si],al
0000408E  0000              add [bx+si],al
00004090  0000              add [bx+si],al
00004092  0000              add [bx+si],al
00004094  0000              add [bx+si],al
00004096  0000              add [bx+si],al
00004098  0000              add [bx+si],al
0000409A  0000              add [bx+si],al
0000409C  0000              add [bx+si],al
0000409E  0000              add [bx+si],al
000040A0  0000              add [bx+si],al
000040A2  0000              add [bx+si],al
000040A4  0000              add [bx+si],al
000040A6  0000              add [bx+si],al
000040A8  0000              add [bx+si],al
000040AA  0000              add [bx+si],al
000040AC  0000              add [bx+si],al
000040AE  0000              add [bx+si],al
000040B0  0000              add [bx+si],al
000040B2  0000              add [bx+si],al
000040B4  0000              add [bx+si],al
000040B6  0000              add [bx+si],al
000040B8  0000              add [bx+si],al
000040BA  0000              add [bx+si],al
000040BC  0000              add [bx+si],al
000040BE  0000              add [bx+si],al
000040C0  0000              add [bx+si],al
000040C2  0000              add [bx+si],al
000040C4  0000              add [bx+si],al
000040C6  0000              add [bx+si],al
000040C8  0000              add [bx+si],al
000040CA  0000              add [bx+si],al
000040CC  0000              add [bx+si],al
000040CE  0000              add [bx+si],al
000040D0  0000              add [bx+si],al
000040D2  0000              add [bx+si],al
000040D4  0000              add [bx+si],al
000040D6  0000              add [bx+si],al
000040D8  0000              add [bx+si],al
000040DA  0000              add [bx+si],al
000040DC  0000              add [bx+si],al
000040DE  0000              add [bx+si],al
000040E0  0000              add [bx+si],al
000040E2  0000              add [bx+si],al
000040E4  0000              add [bx+si],al
000040E6  0000              add [bx+si],al
000040E8  0000              add [bx+si],al
000040EA  0000              add [bx+si],al
000040EC  0000              add [bx+si],al
000040EE  0000              add [bx+si],al
000040F0  0000              add [bx+si],al
000040F2  0000              add [bx+si],al
000040F4  0000              add [bx+si],al
000040F6  0000              add [bx+si],al
000040F8  0000              add [bx+si],al
000040FA  0000              add [bx+si],al
000040FC  0000              add [bx+si],al
000040FE  0000              add [bx+si],al
00004100  0000              add [bx+si],al
00004102  0000              add [bx+si],al
00004104  0000              add [bx+si],al
00004106  0000              add [bx+si],al
00004108  0000              add [bx+si],al
0000410A  0000              add [bx+si],al
0000410C  0000              add [bx+si],al
0000410E  0000              add [bx+si],al
00004110  0000              add [bx+si],al
00004112  0000              add [bx+si],al
00004114  0000              add [bx+si],al
00004116  0000              add [bx+si],al
00004118  0000              add [bx+si],al
0000411A  0000              add [bx+si],al
0000411C  0000              add [bx+si],al
0000411E  0000              add [bx+si],al
00004120  0000              add [bx+si],al
00004122  0000              add [bx+si],al
00004124  0000              add [bx+si],al
00004126  0000              add [bx+si],al
00004128  0000              add [bx+si],al
0000412A  0000              add [bx+si],al
0000412C  0000              add [bx+si],al
0000412E  0000              add [bx+si],al
00004130  0000              add [bx+si],al
00004132  0000              add [bx+si],al
00004134  0000              add [bx+si],al
00004136  0000              add [bx+si],al
00004138  0000              add [bx+si],al
0000413A  0000              add [bx+si],al
0000413C  0000              add [bx+si],al
0000413E  0000              add [bx+si],al
00004140  0000              add [bx+si],al
00004142  0000              add [bx+si],al
00004144  0000              add [bx+si],al
00004146  0000              add [bx+si],al
00004148  0000              add [bx+si],al
0000414A  0000              add [bx+si],al
0000414C  0000              add [bx+si],al
0000414E  0000              add [bx+si],al
00004150  0000              add [bx+si],al
00004152  0000              add [bx+si],al
00004154  0000              add [bx+si],al
00004156  0000              add [bx+si],al
00004158  0000              add [bx+si],al
0000415A  0000              add [bx+si],al
0000415C  0000              add [bx+si],al
0000415E  0000              add [bx+si],al
00004160  0000              add [bx+si],al
00004162  0000              add [bx+si],al
00004164  0000              add [bx+si],al
00004166  0000              add [bx+si],al
00004168  0000              add [bx+si],al
0000416A  0000              add [bx+si],al
0000416C  0000              add [bx+si],al
0000416E  0000              add [bx+si],al
00004170  0000              add [bx+si],al
00004172  0000              add [bx+si],al
00004174  0000              add [bx+si],al
00004176  0000              add [bx+si],al
00004178  0000              add [bx+si],al
0000417A  0000              add [bx+si],al
0000417C  0000              add [bx+si],al
0000417E  0000              add [bx+si],al
00004180  0000              add [bx+si],al
00004182  0000              add [bx+si],al
00004184  0000              add [bx+si],al
00004186  0000              add [bx+si],al
00004188  0000              add [bx+si],al
0000418A  0000              add [bx+si],al
0000418C  0000              add [bx+si],al
0000418E  0000              add [bx+si],al
00004190  0000              add [bx+si],al
00004192  0000              add [bx+si],al
00004194  0000              add [bx+si],al
00004196  0000              add [bx+si],al
00004198  0000              add [bx+si],al
0000419A  0000              add [bx+si],al
0000419C  0000              add [bx+si],al
0000419E  0000              add [bx+si],al
000041A0  0000              add [bx+si],al
000041A2  0000              add [bx+si],al
000041A4  0000              add [bx+si],al
000041A6  0000              add [bx+si],al
000041A8  0000              add [bx+si],al
000041AA  0000              add [bx+si],al
000041AC  0000              add [bx+si],al
000041AE  0000              add [bx+si],al
000041B0  0000              add [bx+si],al
000041B2  0000              add [bx+si],al
000041B4  0000              add [bx+si],al
000041B6  0000              add [bx+si],al
000041B8  0000              add [bx+si],al
000041BA  0000              add [bx+si],al
000041BC  0000              add [bx+si],al
000041BE  0000              add [bx+si],al
000041C0  0000              add [bx+si],al
000041C2  0000              add [bx+si],al
000041C4  0000              add [bx+si],al
000041C6  0000              add [bx+si],al
000041C8  0000              add [bx+si],al
000041CA  0000              add [bx+si],al
000041CC  0000              add [bx+si],al
000041CE  0000              add [bx+si],al
000041D0  0000              add [bx+si],al
000041D2  0000              add [bx+si],al
000041D4  0000              add [bx+si],al
000041D6  0000              add [bx+si],al
000041D8  0000              add [bx+si],al
000041DA  0000              add [bx+si],al
000041DC  0000              add [bx+si],al
000041DE  0000              add [bx+si],al
000041E0  0000              add [bx+si],al
000041E2  0000              add [bx+si],al
000041E4  0000              add [bx+si],al
000041E6  0000              add [bx+si],al
000041E8  0000              add [bx+si],al
000041EA  0000              add [bx+si],al
000041EC  0000              add [bx+si],al
000041EE  0000              add [bx+si],al
000041F0  0000              add [bx+si],al
000041F2  0000              add [bx+si],al
000041F4  0000              add [bx+si],al
000041F6  0000              add [bx+si],al
000041F8  0000              add [bx+si],al
000041FA  0000              add [bx+si],al
000041FC  0000              add [bx+si],al
000041FE  0000              add [bx+si],al
00004200  0000              add [bx+si],al
00004202  0000              add [bx+si],al
00004204  0000              add [bx+si],al
00004206  0000              add [bx+si],al
00004208  0000              add [bx+si],al
0000420A  0000              add [bx+si],al
0000420C  0000              add [bx+si],al
0000420E  0000              add [bx+si],al
00004210  0000              add [bx+si],al
00004212  0000              add [bx+si],al
00004214  0000              add [bx+si],al
00004216  0000              add [bx+si],al
00004218  0000              add [bx+si],al
0000421A  0000              add [bx+si],al
0000421C  0000              add [bx+si],al
0000421E  0000              add [bx+si],al
00004220  0000              add [bx+si],al
00004222  0000              add [bx+si],al
00004224  0000              add [bx+si],al
00004226  0000              add [bx+si],al
00004228  0000              add [bx+si],al
0000422A  0000              add [bx+si],al
0000422C  0000              add [bx+si],al
0000422E  0000              add [bx+si],al
00004230  0000              add [bx+si],al
00004232  0000              add [bx+si],al
00004234  0000              add [bx+si],al
00004236  0000              add [bx+si],al
00004238  0000              add [bx+si],al
0000423A  0000              add [bx+si],al
0000423C  0000              add [bx+si],al
0000423E  0000              add [bx+si],al
00004240  0000              add [bx+si],al
00004242  0000              add [bx+si],al
00004244  0000              add [bx+si],al
00004246  0000              add [bx+si],al
00004248  0000              add [bx+si],al
0000424A  0000              add [bx+si],al
0000424C  0000              add [bx+si],al
0000424E  0000              add [bx+si],al
00004250  0000              add [bx+si],al
00004252  0000              add [bx+si],al
00004254  0000              add [bx+si],al
00004256  0000              add [bx+si],al
00004258  0000              add [bx+si],al
0000425A  0000              add [bx+si],al
0000425C  0000              add [bx+si],al
0000425E  0000              add [bx+si],al
00004260  0000              add [bx+si],al
00004262  0000              add [bx+si],al
00004264  0000              add [bx+si],al
00004266  0000              add [bx+si],al
00004268  0000              add [bx+si],al
0000426A  0000              add [bx+si],al
0000426C  0000              add [bx+si],al
0000426E  0000              add [bx+si],al
00004270  0000              add [bx+si],al
00004272  0000              add [bx+si],al
00004274  0000              add [bx+si],al
00004276  0000              add [bx+si],al
00004278  0000              add [bx+si],al
0000427A  0000              add [bx+si],al
0000427C  0000              add [bx+si],al
0000427E  0000              add [bx+si],al
00004280  0000              add [bx+si],al
00004282  0000              add [bx+si],al
00004284  0000              add [bx+si],al
00004286  0000              add [bx+si],al
00004288  0000              add [bx+si],al
0000428A  0000              add [bx+si],al
0000428C  0000              add [bx+si],al
0000428E  0000              add [bx+si],al
00004290  0000              add [bx+si],al
00004292  0000              add [bx+si],al
00004294  0000              add [bx+si],al
00004296  0000              add [bx+si],al
00004298  0000              add [bx+si],al
0000429A  0000              add [bx+si],al
0000429C  0000              add [bx+si],al
0000429E  0000              add [bx+si],al
000042A0  0000              add [bx+si],al
000042A2  0000              add [bx+si],al
000042A4  0000              add [bx+si],al
000042A6  0000              add [bx+si],al
000042A8  0000              add [bx+si],al
000042AA  0000              add [bx+si],al
000042AC  0000              add [bx+si],al
000042AE  0000              add [bx+si],al
000042B0  0000              add [bx+si],al
000042B2  0000              add [bx+si],al
000042B4  0000              add [bx+si],al
000042B6  0000              add [bx+si],al
000042B8  0000              add [bx+si],al
000042BA  0000              add [bx+si],al
000042BC  0000              add [bx+si],al
000042BE  0000              add [bx+si],al
000042C0  0000              add [bx+si],al
000042C2  0000              add [bx+si],al
000042C4  0000              add [bx+si],al
000042C6  0000              add [bx+si],al
000042C8  0000              add [bx+si],al
000042CA  0000              add [bx+si],al
000042CC  0000              add [bx+si],al
000042CE  0000              add [bx+si],al
000042D0  0000              add [bx+si],al
000042D2  0000              add [bx+si],al
000042D4  0000              add [bx+si],al
000042D6  0000              add [bx+si],al
000042D8  0000              add [bx+si],al
000042DA  0000              add [bx+si],al
000042DC  0000              add [bx+si],al
000042DE  0000              add [bx+si],al
000042E0  0000              add [bx+si],al
000042E2  0000              add [bx+si],al
000042E4  0000              add [bx+si],al
000042E6  0000              add [bx+si],al
000042E8  0000              add [bx+si],al
000042EA  0000              add [bx+si],al
000042EC  0000              add [bx+si],al
000042EE  0000              add [bx+si],al
000042F0  0000              add [bx+si],al
000042F2  0000              add [bx+si],al
000042F4  0000              add [bx+si],al
000042F6  0000              add [bx+si],al
000042F8  0000              add [bx+si],al
000042FA  0000              add [bx+si],al
000042FC  0000              add [bx+si],al
000042FE  0000              add [bx+si],al
00004300  0000              add [bx+si],al
00004302  0000              add [bx+si],al
00004304  0000              add [bx+si],al
00004306  0000              add [bx+si],al
00004308  0000              add [bx+si],al
0000430A  0000              add [bx+si],al
0000430C  0000              add [bx+si],al
0000430E  0000              add [bx+si],al
00004310  0000              add [bx+si],al
00004312  0000              add [bx+si],al
00004314  0000              add [bx+si],al
00004316  0000              add [bx+si],al
00004318  0000              add [bx+si],al
0000431A  0000              add [bx+si],al
0000431C  0000              add [bx+si],al
0000431E  0000              add [bx+si],al
00004320  0000              add [bx+si],al
00004322  0000              add [bx+si],al
00004324  0000              add [bx+si],al
00004326  0000              add [bx+si],al
00004328  0000              add [bx+si],al
0000432A  0000              add [bx+si],al
0000432C  0000              add [bx+si],al
0000432E  0000              add [bx+si],al
00004330  0000              add [bx+si],al
00004332  0000              add [bx+si],al
00004334  0000              add [bx+si],al
00004336  0000              add [bx+si],al
00004338  0000              add [bx+si],al
0000433A  0000              add [bx+si],al
0000433C  0000              add [bx+si],al
0000433E  0000              add [bx+si],al
00004340  0000              add [bx+si],al
00004342  0000              add [bx+si],al
00004344  0000              add [bx+si],al
00004346  0000              add [bx+si],al
00004348  0000              add [bx+si],al
0000434A  0000              add [bx+si],al
0000434C  0000              add [bx+si],al
0000434E  0000              add [bx+si],al
00004350  0000              add [bx+si],al
00004352  0000              add [bx+si],al
00004354  0000              add [bx+si],al
00004356  0000              add [bx+si],al
00004358  0000              add [bx+si],al
0000435A  0000              add [bx+si],al
0000435C  0000              add [bx+si],al
0000435E  0000              add [bx+si],al
00004360  0000              add [bx+si],al
00004362  0000              add [bx+si],al
00004364  0000              add [bx+si],al
00004366  0000              add [bx+si],al
00004368  0000              add [bx+si],al
0000436A  0000              add [bx+si],al
0000436C  0000              add [bx+si],al
0000436E  0000              add [bx+si],al
00004370  0000              add [bx+si],al
00004372  0000              add [bx+si],al
00004374  0000              add [bx+si],al
00004376  0000              add [bx+si],al
00004378  0000              add [bx+si],al
0000437A  0000              add [bx+si],al
0000437C  0000              add [bx+si],al
0000437E  0000              add [bx+si],al
00004380  0000              add [bx+si],al
00004382  0000              add [bx+si],al
00004384  0000              add [bx+si],al
00004386  0000              add [bx+si],al
00004388  0000              add [bx+si],al
0000438A  0000              add [bx+si],al
0000438C  0000              add [bx+si],al
0000438E  0000              add [bx+si],al
00004390  0000              add [bx+si],al
00004392  0000              add [bx+si],al
00004394  0000              add [bx+si],al
00004396  0000              add [bx+si],al
00004398  0000              add [bx+si],al
0000439A  0000              add [bx+si],al
0000439C  0000              add [bx+si],al
0000439E  0000              add [bx+si],al
000043A0  0000              add [bx+si],al
000043A2  0000              add [bx+si],al
000043A4  0000              add [bx+si],al
000043A6  0000              add [bx+si],al
000043A8  0000              add [bx+si],al
000043AA  0000              add [bx+si],al
000043AC  0000              add [bx+si],al
000043AE  0000              add [bx+si],al
000043B0  0000              add [bx+si],al
000043B2  0000              add [bx+si],al
000043B4  0000              add [bx+si],al
000043B6  0000              add [bx+si],al
000043B8  0000              add [bx+si],al
000043BA  0000              add [bx+si],al
000043BC  0000              add [bx+si],al
000043BE  0000              add [bx+si],al
000043C0  0000              add [bx+si],al
000043C2  0000              add [bx+si],al
000043C4  0000              add [bx+si],al
000043C6  0000              add [bx+si],al
000043C8  0000              add [bx+si],al
000043CA  0000              add [bx+si],al
000043CC  0000              add [bx+si],al
000043CE  0000              add [bx+si],al
000043D0  0000              add [bx+si],al
000043D2  0000              add [bx+si],al
000043D4  0000              add [bx+si],al
000043D6  0000              add [bx+si],al
000043D8  0000              add [bx+si],al
000043DA  0000              add [bx+si],al
000043DC  0000              add [bx+si],al
000043DE  0000              add [bx+si],al
000043E0  0000              add [bx+si],al
000043E2  0000              add [bx+si],al
000043E4  0000              add [bx+si],al
000043E6  0000              add [bx+si],al
000043E8  0000              add [bx+si],al
000043EA  0000              add [bx+si],al
000043EC  0000              add [bx+si],al
000043EE  0000              add [bx+si],al
000043F0  0000              add [bx+si],al
000043F2  0000              add [bx+si],al
000043F4  0000              add [bx+si],al
000043F6  0000              add [bx+si],al
000043F8  0000              add [bx+si],al
000043FA  0000              add [bx+si],al
000043FC  0000              add [bx+si],al
000043FE  0000              add [bx+si],al
00004400  0000              add [bx+si],al
00004402  0000              add [bx+si],al
00004404  0000              add [bx+si],al
00004406  0000              add [bx+si],al
00004408  0000              add [bx+si],al
0000440A  0000              add [bx+si],al
0000440C  0000              add [bx+si],al
0000440E  0000              add [bx+si],al
00004410  0000              add [bx+si],al
00004412  0000              add [bx+si],al
00004414  0000              add [bx+si],al
00004416  0000              add [bx+si],al
00004418  0000              add [bx+si],al
0000441A  0000              add [bx+si],al
0000441C  0000              add [bx+si],al
0000441E  0000              add [bx+si],al
00004420  0000              add [bx+si],al
00004422  0000              add [bx+si],al
00004424  0000              add [bx+si],al
00004426  0000              add [bx+si],al
00004428  0000              add [bx+si],al
0000442A  0000              add [bx+si],al
0000442C  0000              add [bx+si],al
0000442E  0000              add [bx+si],al
00004430  0000              add [bx+si],al
00004432  0000              add [bx+si],al
00004434  0000              add [bx+si],al
00004436  0000              add [bx+si],al
00004438  0000              add [bx+si],al
0000443A  0000              add [bx+si],al
0000443C  0000              add [bx+si],al
0000443E  0000              add [bx+si],al
00004440  0000              add [bx+si],al
00004442  0000              add [bx+si],al
00004444  0000              add [bx+si],al
00004446  0000              add [bx+si],al
00004448  0000              add [bx+si],al
0000444A  0000              add [bx+si],al
0000444C  0000              add [bx+si],al
0000444E  0000              add [bx+si],al
00004450  0000              add [bx+si],al
00004452  0000              add [bx+si],al
00004454  0000              add [bx+si],al
00004456  0000              add [bx+si],al
00004458  0000              add [bx+si],al
0000445A  0000              add [bx+si],al
0000445C  0000              add [bx+si],al
0000445E  0000              add [bx+si],al
00004460  0000              add [bx+si],al
00004462  0000              add [bx+si],al
00004464  0000              add [bx+si],al
00004466  0000              add [bx+si],al
00004468  0000              add [bx+si],al
0000446A  0000              add [bx+si],al
0000446C  0000              add [bx+si],al
0000446E  0000              add [bx+si],al
00004470  0000              add [bx+si],al
00004472  0000              add [bx+si],al
00004474  0000              add [bx+si],al
00004476  0000              add [bx+si],al
00004478  0000              add [bx+si],al
0000447A  0000              add [bx+si],al
0000447C  0000              add [bx+si],al
0000447E  0000              add [bx+si],al
00004480  0000              add [bx+si],al
00004482  0000              add [bx+si],al
00004484  0000              add [bx+si],al
00004486  0000              add [bx+si],al
00004488  0000              add [bx+si],al
0000448A  0000              add [bx+si],al
0000448C  0000              add [bx+si],al
0000448E  0000              add [bx+si],al
00004490  0000              add [bx+si],al
00004492  0000              add [bx+si],al
00004494  0000              add [bx+si],al
00004496  0000              add [bx+si],al
00004498  0000              add [bx+si],al
0000449A  0000              add [bx+si],al
0000449C  0000              add [bx+si],al
0000449E  0000              add [bx+si],al
000044A0  0000              add [bx+si],al
000044A2  0000              add [bx+si],al
000044A4  0000              add [bx+si],al
000044A6  0000              add [bx+si],al
000044A8  0000              add [bx+si],al
000044AA  0000              add [bx+si],al
000044AC  0000              add [bx+si],al
000044AE  0000              add [bx+si],al
000044B0  0000              add [bx+si],al
000044B2  0000              add [bx+si],al
000044B4  0000              add [bx+si],al
000044B6  0000              add [bx+si],al
000044B8  0000              add [bx+si],al
000044BA  0000              add [bx+si],al
000044BC  0000              add [bx+si],al
000044BE  0000              add [bx+si],al
000044C0  0000              add [bx+si],al
000044C2  0000              add [bx+si],al
000044C4  0000              add [bx+si],al
000044C6  0000              add [bx+si],al
000044C8  0000              add [bx+si],al
000044CA  0000              add [bx+si],al
000044CC  0000              add [bx+si],al
000044CE  0000              add [bx+si],al
000044D0  0000              add [bx+si],al
000044D2  0000              add [bx+si],al
000044D4  0000              add [bx+si],al
000044D6  0000              add [bx+si],al
000044D8  0000              add [bx+si],al
000044DA  0000              add [bx+si],al
000044DC  0000              add [bx+si],al
000044DE  0000              add [bx+si],al
000044E0  0000              add [bx+si],al
000044E2  0000              add [bx+si],al
000044E4  0000              add [bx+si],al
000044E6  0000              add [bx+si],al
000044E8  0000              add [bx+si],al
000044EA  0000              add [bx+si],al
000044EC  0000              add [bx+si],al
000044EE  0000              add [bx+si],al
000044F0  0000              add [bx+si],al
000044F2  0000              add [bx+si],al
000044F4  0000              add [bx+si],al
000044F6  0000              add [bx+si],al
000044F8  0000              add [bx+si],al
000044FA  0000              add [bx+si],al
000044FC  0000              add [bx+si],al
000044FE  0000              add [bx+si],al
00004500  0000              add [bx+si],al
00004502  0000              add [bx+si],al
00004504  0000              add [bx+si],al
00004506  0000              add [bx+si],al
00004508  0000              add [bx+si],al
0000450A  0000              add [bx+si],al
0000450C  0000              add [bx+si],al
0000450E  0000              add [bx+si],al
00004510  0000              add [bx+si],al
00004512  0000              add [bx+si],al
00004514  0000              add [bx+si],al
00004516  0000              add [bx+si],al
00004518  0000              add [bx+si],al
0000451A  0000              add [bx+si],al
0000451C  0000              add [bx+si],al
0000451E  0000              add [bx+si],al
00004520  0000              add [bx+si],al
00004522  0000              add [bx+si],al
00004524  0000              add [bx+si],al
00004526  0000              add [bx+si],al
00004528  0000              add [bx+si],al
0000452A  0000              add [bx+si],al
0000452C  0000              add [bx+si],al
0000452E  0000              add [bx+si],al
00004530  0000              add [bx+si],al
00004532  0000              add [bx+si],al
00004534  0000              add [bx+si],al
00004536  0000              add [bx+si],al
00004538  0000              add [bx+si],al
0000453A  0000              add [bx+si],al
0000453C  0000              add [bx+si],al
0000453E  0000              add [bx+si],al
00004540  0000              add [bx+si],al
00004542  0000              add [bx+si],al
00004544  0000              add [bx+si],al
00004546  0000              add [bx+si],al
00004548  0000              add [bx+si],al
0000454A  0000              add [bx+si],al
0000454C  0000              add [bx+si],al
0000454E  0000              add [bx+si],al
00004550  0000              add [bx+si],al
00004552  0000              add [bx+si],al
00004554  0000              add [bx+si],al
00004556  0000              add [bx+si],al
00004558  0000              add [bx+si],al
0000455A  0000              add [bx+si],al
0000455C  0000              add [bx+si],al
0000455E  0000              add [bx+si],al
00004560  0000              add [bx+si],al
00004562  0000              add [bx+si],al
00004564  0000              add [bx+si],al
00004566  0000              add [bx+si],al
00004568  0000              add [bx+si],al
0000456A  0000              add [bx+si],al
0000456C  0000              add [bx+si],al
0000456E  0000              add [bx+si],al
00004570  0000              add [bx+si],al
00004572  0000              add [bx+si],al
00004574  0000              add [bx+si],al
00004576  0000              add [bx+si],al
00004578  0000              add [bx+si],al
0000457A  0000              add [bx+si],al
0000457C  0000              add [bx+si],al
0000457E  0000              add [bx+si],al
00004580  0000              add [bx+si],al
00004582  0000              add [bx+si],al
00004584  0000              add [bx+si],al
00004586  0000              add [bx+si],al
00004588  0000              add [bx+si],al
0000458A  0000              add [bx+si],al
0000458C  0000              add [bx+si],al
0000458E  0000              add [bx+si],al
00004590  0000              add [bx+si],al
00004592  0000              add [bx+si],al
00004594  0000              add [bx+si],al
00004596  0000              add [bx+si],al
00004598  0000              add [bx+si],al
0000459A  0000              add [bx+si],al
0000459C  0000              add [bx+si],al
0000459E  0000              add [bx+si],al
000045A0  0000              add [bx+si],al
000045A2  0000              add [bx+si],al
000045A4  0000              add [bx+si],al
000045A6  0000              add [bx+si],al
000045A8  0000              add [bx+si],al
000045AA  0000              add [bx+si],al
000045AC  0000              add [bx+si],al
000045AE  0000              add [bx+si],al
000045B0  0000              add [bx+si],al
000045B2  0000              add [bx+si],al
000045B4  0000              add [bx+si],al
000045B6  0000              add [bx+si],al
000045B8  0000              add [bx+si],al
000045BA  0000              add [bx+si],al
000045BC  0000              add [bx+si],al
000045BE  0000              add [bx+si],al
000045C0  0000              add [bx+si],al
000045C2  0000              add [bx+si],al
000045C4  0000              add [bx+si],al
000045C6  0000              add [bx+si],al
000045C8  0000              add [bx+si],al
000045CA  0000              add [bx+si],al
000045CC  0000              add [bx+si],al
000045CE  0000              add [bx+si],al
000045D0  0000              add [bx+si],al
000045D2  0000              add [bx+si],al
000045D4  0000              add [bx+si],al
000045D6  0000              add [bx+si],al
000045D8  0000              add [bx+si],al
000045DA  0000              add [bx+si],al
000045DC  0000              add [bx+si],al
000045DE  0000              add [bx+si],al
000045E0  0000              add [bx+si],al
000045E2  0000              add [bx+si],al
000045E4  0000              add [bx+si],al
000045E6  0000              add [bx+si],al
000045E8  0000              add [bx+si],al
000045EA  0000              add [bx+si],al
000045EC  0000              add [bx+si],al
000045EE  0000              add [bx+si],al
000045F0  0000              add [bx+si],al
000045F2  0000              add [bx+si],al
000045F4  0000              add [bx+si],al
000045F6  0000              add [bx+si],al
000045F8  0000              add [bx+si],al
000045FA  0000              add [bx+si],al
000045FC  0000              add [bx+si],al
000045FE  0000              add [bx+si],al
00004600  0000              add [bx+si],al
00004602  0000              add [bx+si],al
00004604  0000              add [bx+si],al
00004606  0000              add [bx+si],al
00004608  0000              add [bx+si],al
0000460A  0000              add [bx+si],al
0000460C  0000              add [bx+si],al
0000460E  0000              add [bx+si],al
00004610  0000              add [bx+si],al
00004612  0000              add [bx+si],al
00004614  0000              add [bx+si],al
00004616  0000              add [bx+si],al
00004618  0000              add [bx+si],al
0000461A  0000              add [bx+si],al
0000461C  0000              add [bx+si],al
0000461E  0000              add [bx+si],al
00004620  0000              add [bx+si],al
00004622  0000              add [bx+si],al
00004624  0000              add [bx+si],al
00004626  0000              add [bx+si],al
00004628  0000              add [bx+si],al
0000462A  0000              add [bx+si],al
0000462C  0000              add [bx+si],al
0000462E  0000              add [bx+si],al
00004630  0000              add [bx+si],al
00004632  0000              add [bx+si],al
00004634  0000              add [bx+si],al
00004636  0000              add [bx+si],al
00004638  0000              add [bx+si],al
0000463A  0000              add [bx+si],al
0000463C  0000              add [bx+si],al
0000463E  0000              add [bx+si],al
00004640  0000              add [bx+si],al
00004642  0000              add [bx+si],al
00004644  0000              add [bx+si],al
00004646  0000              add [bx+si],al
00004648  0000              add [bx+si],al
0000464A  0000              add [bx+si],al
0000464C  0000              add [bx+si],al
0000464E  0000              add [bx+si],al
00004650  0000              add [bx+si],al
00004652  0000              add [bx+si],al
00004654  0000              add [bx+si],al
00004656  0000              add [bx+si],al
00004658  0000              add [bx+si],al
0000465A  0000              add [bx+si],al
0000465C  0000              add [bx+si],al
0000465E  0000              add [bx+si],al
00004660  0000              add [bx+si],al
00004662  0000              add [bx+si],al
00004664  0000              add [bx+si],al
00004666  0000              add [bx+si],al
00004668  0000              add [bx+si],al
0000466A  0000              add [bx+si],al
0000466C  0000              add [bx+si],al
0000466E  0000              add [bx+si],al
00004670  0000              add [bx+si],al
00004672  0000              add [bx+si],al
00004674  0000              add [bx+si],al
00004676  0000              add [bx+si],al
00004678  0000              add [bx+si],al
0000467A  0000              add [bx+si],al
0000467C  0000              add [bx+si],al
0000467E  0000              add [bx+si],al
00004680  0000              add [bx+si],al
00004682  0000              add [bx+si],al
00004684  0000              add [bx+si],al
00004686  0000              add [bx+si],al
00004688  0000              add [bx+si],al
0000468A  0000              add [bx+si],al
0000468C  0000              add [bx+si],al
0000468E  0000              add [bx+si],al
00004690  0000              add [bx+si],al
00004692  0000              add [bx+si],al
00004694  0000              add [bx+si],al
00004696  0000              add [bx+si],al
00004698  0000              add [bx+si],al
0000469A  0000              add [bx+si],al
0000469C  0000              add [bx+si],al
0000469E  0000              add [bx+si],al
000046A0  0000              add [bx+si],al
000046A2  0000              add [bx+si],al
000046A4  0000              add [bx+si],al
000046A6  0000              add [bx+si],al
000046A8  0000              add [bx+si],al
000046AA  0000              add [bx+si],al
000046AC  0000              add [bx+si],al
000046AE  0000              add [bx+si],al
000046B0  0000              add [bx+si],al
000046B2  0000              add [bx+si],al
000046B4  0000              add [bx+si],al
000046B6  0000              add [bx+si],al
000046B8  0000              add [bx+si],al
000046BA  0000              add [bx+si],al
000046BC  0000              add [bx+si],al
000046BE  0000              add [bx+si],al
000046C0  0000              add [bx+si],al
000046C2  0000              add [bx+si],al
000046C4  0000              add [bx+si],al
000046C6  0000              add [bx+si],al
000046C8  0000              add [bx+si],al
000046CA  0000              add [bx+si],al
000046CC  0000              add [bx+si],al
000046CE  0000              add [bx+si],al
000046D0  0000              add [bx+si],al
000046D2  0000              add [bx+si],al
000046D4  0000              add [bx+si],al
000046D6  0000              add [bx+si],al
000046D8  0000              add [bx+si],al
000046DA  0000              add [bx+si],al
000046DC  0000              add [bx+si],al
000046DE  0000              add [bx+si],al
000046E0  0000              add [bx+si],al
000046E2  0000              add [bx+si],al
000046E4  0000              add [bx+si],al
000046E6  0000              add [bx+si],al
000046E8  0000              add [bx+si],al
000046EA  0000              add [bx+si],al
000046EC  0000              add [bx+si],al
000046EE  0000              add [bx+si],al
000046F0  0000              add [bx+si],al
000046F2  0000              add [bx+si],al
000046F4  0000              add [bx+si],al
000046F6  0000              add [bx+si],al
000046F8  0000              add [bx+si],al
000046FA  0000              add [bx+si],al
000046FC  0000              add [bx+si],al
000046FE  0000              add [bx+si],al
00004700  0000              add [bx+si],al
00004702  0000              add [bx+si],al
00004704  0000              add [bx+si],al
00004706  0000              add [bx+si],al
00004708  0000              add [bx+si],al
0000470A  0000              add [bx+si],al
0000470C  0000              add [bx+si],al
0000470E  0000              add [bx+si],al
00004710  0000              add [bx+si],al
00004712  0000              add [bx+si],al
00004714  0000              add [bx+si],al
00004716  0000              add [bx+si],al
00004718  0000              add [bx+si],al
0000471A  0000              add [bx+si],al
0000471C  0000              add [bx+si],al
0000471E  0000              add [bx+si],al
00004720  0000              add [bx+si],al
00004722  0000              add [bx+si],al
00004724  0000              add [bx+si],al
00004726  0000              add [bx+si],al
00004728  0000              add [bx+si],al
0000472A  0000              add [bx+si],al
0000472C  0000              add [bx+si],al
0000472E  0000              add [bx+si],al
00004730  0000              add [bx+si],al
00004732  0000              add [bx+si],al
00004734  0000              add [bx+si],al
00004736  0000              add [bx+si],al
00004738  0000              add [bx+si],al
0000473A  0000              add [bx+si],al
0000473C  0000              add [bx+si],al
0000473E  0000              add [bx+si],al
00004740  0000              add [bx+si],al
00004742  0000              add [bx+si],al
00004744  0000              add [bx+si],al
00004746  0000              add [bx+si],al
00004748  0000              add [bx+si],al
0000474A  0000              add [bx+si],al
0000474C  0000              add [bx+si],al
0000474E  0000              add [bx+si],al
00004750  0000              add [bx+si],al
00004752  0000              add [bx+si],al
00004754  0000              add [bx+si],al
00004756  0000              add [bx+si],al
00004758  0000              add [bx+si],al
0000475A  0000              add [bx+si],al
0000475C  0000              add [bx+si],al
0000475E  0000              add [bx+si],al
00004760  0000              add [bx+si],al
00004762  0000              add [bx+si],al
00004764  0000              add [bx+si],al
00004766  0000              add [bx+si],al
00004768  0000              add [bx+si],al
0000476A  0000              add [bx+si],al
0000476C  0000              add [bx+si],al
0000476E  0000              add [bx+si],al
00004770  0000              add [bx+si],al
00004772  0000              add [bx+si],al
00004774  0000              add [bx+si],al
00004776  0000              add [bx+si],al
00004778  0000              add [bx+si],al
0000477A  0000              add [bx+si],al
0000477C  0000              add [bx+si],al
0000477E  0000              add [bx+si],al
00004780  0000              add [bx+si],al
00004782  0000              add [bx+si],al
00004784  0000              add [bx+si],al
00004786  0000              add [bx+si],al
00004788  0000              add [bx+si],al
0000478A  0000              add [bx+si],al
0000478C  0000              add [bx+si],al
0000478E  0000              add [bx+si],al
00004790  0000              add [bx+si],al
00004792  0000              add [bx+si],al
00004794  0000              add [bx+si],al
00004796  0000              add [bx+si],al
00004798  0000              add [bx+si],al
0000479A  0000              add [bx+si],al
0000479C  0000              add [bx+si],al
0000479E  0000              add [bx+si],al
000047A0  0000              add [bx+si],al
000047A2  0000              add [bx+si],al
000047A4  0000              add [bx+si],al
000047A6  0000              add [bx+si],al
000047A8  0000              add [bx+si],al
000047AA  0000              add [bx+si],al
000047AC  0000              add [bx+si],al
000047AE  0000              add [bx+si],al
000047B0  0000              add [bx+si],al
000047B2  0000              add [bx+si],al
000047B4  0000              add [bx+si],al
000047B6  0000              add [bx+si],al
000047B8  0000              add [bx+si],al
000047BA  0000              add [bx+si],al
000047BC  0000              add [bx+si],al
000047BE  0000              add [bx+si],al
000047C0  0000              add [bx+si],al
000047C2  0000              add [bx+si],al
000047C4  0000              add [bx+si],al
000047C6  0000              add [bx+si],al
000047C8  0000              add [bx+si],al
000047CA  0000              add [bx+si],al
000047CC  0000              add [bx+si],al
000047CE  0000              add [bx+si],al
000047D0  0000              add [bx+si],al
000047D2  0000              add [bx+si],al
000047D4  0000              add [bx+si],al
000047D6  0000              add [bx+si],al
000047D8  0000              add [bx+si],al
000047DA  0000              add [bx+si],al
000047DC  0000              add [bx+si],al
000047DE  0000              add [bx+si],al
000047E0  0000              add [bx+si],al
000047E2  0000              add [bx+si],al
000047E4  0000              add [bx+si],al
000047E6  0000              add [bx+si],al
000047E8  0000              add [bx+si],al
000047EA  0000              add [bx+si],al
000047EC  0000              add [bx+si],al
000047EE  0000              add [bx+si],al
000047F0  0000              add [bx+si],al
000047F2  0000              add [bx+si],al
000047F4  0000              add [bx+si],al
000047F6  0000              add [bx+si],al
000047F8  0000              add [bx+si],al
000047FA  0000              add [bx+si],al
000047FC  0000              add [bx+si],al
000047FE  0000              add [bx+si],al
00004800  0000              add [bx+si],al
00004802  0000              add [bx+si],al
00004804  0000              add [bx+si],al
00004806  0000              add [bx+si],al
00004808  0000              add [bx+si],al
0000480A  0000              add [bx+si],al
0000480C  0000              add [bx+si],al
0000480E  0000              add [bx+si],al
00004810  0000              add [bx+si],al
00004812  0000              add [bx+si],al
00004814  0000              add [bx+si],al
00004816  0000              add [bx+si],al
00004818  0000              add [bx+si],al
0000481A  0000              add [bx+si],al
0000481C  0000              add [bx+si],al
0000481E  0000              add [bx+si],al
00004820  0000              add [bx+si],al
00004822  0000              add [bx+si],al
00004824  0000              add [bx+si],al
00004826  0000              add [bx+si],al
00004828  0000              add [bx+si],al
0000482A  0000              add [bx+si],al
0000482C  0000              add [bx+si],al
0000482E  0000              add [bx+si],al
00004830  0000              add [bx+si],al
00004832  0000              add [bx+si],al
00004834  0000              add [bx+si],al
00004836  0000              add [bx+si],al
00004838  0000              add [bx+si],al
0000483A  0000              add [bx+si],al
0000483C  0000              add [bx+si],al
0000483E  0000              add [bx+si],al
00004840  0000              add [bx+si],al
00004842  0000              add [bx+si],al
00004844  0000              add [bx+si],al
00004846  0000              add [bx+si],al
00004848  0000              add [bx+si],al
0000484A  0000              add [bx+si],al
0000484C  0000              add [bx+si],al
0000484E  0000              add [bx+si],al
00004850  0000              add [bx+si],al
00004852  0000              add [bx+si],al
00004854  0000              add [bx+si],al
00004856  0000              add [bx+si],al
00004858  0000              add [bx+si],al
0000485A  0000              add [bx+si],al
0000485C  0000              add [bx+si],al
0000485E  0000              add [bx+si],al
00004860  0000              add [bx+si],al
00004862  0000              add [bx+si],al
00004864  0000              add [bx+si],al
00004866  0000              add [bx+si],al
00004868  0000              add [bx+si],al
0000486A  0000              add [bx+si],al
0000486C  0000              add [bx+si],al
0000486E  0000              add [bx+si],al
00004870  0000              add [bx+si],al
00004872  0000              add [bx+si],al
00004874  0000              add [bx+si],al
00004876  0000              add [bx+si],al
00004878  0000              add [bx+si],al
0000487A  0000              add [bx+si],al
0000487C  0000              add [bx+si],al
0000487E  0000              add [bx+si],al
00004880  0000              add [bx+si],al
00004882  0000              add [bx+si],al
00004884  0000              add [bx+si],al
00004886  0000              add [bx+si],al
00004888  0000              add [bx+si],al
0000488A  0000              add [bx+si],al
0000488C  0000              add [bx+si],al
0000488E  0000              add [bx+si],al
00004890  0000              add [bx+si],al
00004892  0000              add [bx+si],al
00004894  0000              add [bx+si],al
00004896  0000              add [bx+si],al
00004898  0000              add [bx+si],al
0000489A  0000              add [bx+si],al
0000489C  0000              add [bx+si],al
0000489E  0000              add [bx+si],al
000048A0  0000              add [bx+si],al
000048A2  0000              add [bx+si],al
000048A4  0000              add [bx+si],al
000048A6  0000              add [bx+si],al
000048A8  0000              add [bx+si],al
000048AA  0000              add [bx+si],al
000048AC  0000              add [bx+si],al
000048AE  0000              add [bx+si],al
000048B0  0000              add [bx+si],al
000048B2  0000              add [bx+si],al
000048B4  0000              add [bx+si],al
000048B6  0000              add [bx+si],al
000048B8  0000              add [bx+si],al
000048BA  0000              add [bx+si],al
000048BC  0000              add [bx+si],al
000048BE  0000              add [bx+si],al
000048C0  0000              add [bx+si],al
000048C2  0000              add [bx+si],al
000048C4  0000              add [bx+si],al
000048C6  0000              add [bx+si],al
000048C8  0000              add [bx+si],al
000048CA  0000              add [bx+si],al
000048CC  0000              add [bx+si],al
000048CE  0000              add [bx+si],al
000048D0  0000              add [bx+si],al
000048D2  0000              add [bx+si],al
000048D4  0000              add [bx+si],al
000048D6  0000              add [bx+si],al
000048D8  0000              add [bx+si],al
000048DA  0000              add [bx+si],al
000048DC  0000              add [bx+si],al
000048DE  0000              add [bx+si],al
000048E0  0000              add [bx+si],al
000048E2  0000              add [bx+si],al
000048E4  0000              add [bx+si],al
000048E6  0000              add [bx+si],al
000048E8  0000              add [bx+si],al
000048EA  0000              add [bx+si],al
000048EC  0000              add [bx+si],al
000048EE  0000              add [bx+si],al
000048F0  0000              add [bx+si],al
000048F2  0000              add [bx+si],al
000048F4  0000              add [bx+si],al
000048F6  0000              add [bx+si],al
000048F8  0000              add [bx+si],al
000048FA  0000              add [bx+si],al
000048FC  0000              add [bx+si],al
000048FE  0000              add [bx+si],al
00004900  0000              add [bx+si],al
00004902  0000              add [bx+si],al
00004904  0000              add [bx+si],al
00004906  0000              add [bx+si],al
00004908  0000              add [bx+si],al
0000490A  0000              add [bx+si],al
0000490C  0000              add [bx+si],al
0000490E  0000              add [bx+si],al
00004910  0000              add [bx+si],al
00004912  0000              add [bx+si],al
00004914  0000              add [bx+si],al
00004916  0000              add [bx+si],al
00004918  0000              add [bx+si],al
0000491A  0000              add [bx+si],al
0000491C  0000              add [bx+si],al
0000491E  0000              add [bx+si],al
00004920  0000              add [bx+si],al
00004922  0000              add [bx+si],al
00004924  0000              add [bx+si],al
00004926  0000              add [bx+si],al
00004928  0000              add [bx+si],al
0000492A  0000              add [bx+si],al
0000492C  0000              add [bx+si],al
0000492E  0000              add [bx+si],al
00004930  0000              add [bx+si],al
00004932  0000              add [bx+si],al
00004934  0000              add [bx+si],al
00004936  0000              add [bx+si],al
00004938  0000              add [bx+si],al
0000493A  0000              add [bx+si],al
0000493C  0000              add [bx+si],al
0000493E  0000              add [bx+si],al
00004940  0000              add [bx+si],al
00004942  0000              add [bx+si],al
00004944  0000              add [bx+si],al
00004946  0000              add [bx+si],al
00004948  0000              add [bx+si],al
0000494A  0000              add [bx+si],al
0000494C  0000              add [bx+si],al
0000494E  0000              add [bx+si],al
00004950  0000              add [bx+si],al
00004952  0000              add [bx+si],al
00004954  0000              add [bx+si],al
00004956  0000              add [bx+si],al
00004958  0000              add [bx+si],al
0000495A  0000              add [bx+si],al
0000495C  0000              add [bx+si],al
0000495E  0000              add [bx+si],al
00004960  0000              add [bx+si],al
00004962  0000              add [bx+si],al
00004964  0000              add [bx+si],al
00004966  0000              add [bx+si],al
00004968  0000              add [bx+si],al
0000496A  0000              add [bx+si],al
0000496C  0000              add [bx+si],al
0000496E  0000              add [bx+si],al
00004970  0000              add [bx+si],al
00004972  0000              add [bx+si],al
00004974  0000              add [bx+si],al
00004976  0000              add [bx+si],al
00004978  0000              add [bx+si],al
0000497A  0000              add [bx+si],al
0000497C  0000              add [bx+si],al
0000497E  0000              add [bx+si],al
00004980  0000              add [bx+si],al
00004982  0000              add [bx+si],al
00004984  0000              add [bx+si],al
00004986  0000              add [bx+si],al
00004988  0000              add [bx+si],al
0000498A  0000              add [bx+si],al
0000498C  0000              add [bx+si],al
0000498E  0000              add [bx+si],al
00004990  0000              add [bx+si],al
00004992  0000              add [bx+si],al
00004994  0000              add [bx+si],al
00004996  0000              add [bx+si],al
00004998  0000              add [bx+si],al
0000499A  0000              add [bx+si],al
0000499C  0000              add [bx+si],al
0000499E  0000              add [bx+si],al
000049A0  0000              add [bx+si],al
000049A2  0000              add [bx+si],al
000049A4  0000              add [bx+si],al
000049A6  0000              add [bx+si],al
000049A8  0000              add [bx+si],al
000049AA  0000              add [bx+si],al
000049AC  0000              add [bx+si],al
000049AE  0000              add [bx+si],al
000049B0  0000              add [bx+si],al
000049B2  0000              add [bx+si],al
000049B4  0000              add [bx+si],al
000049B6  0000              add [bx+si],al
000049B8  0000              add [bx+si],al
000049BA  0000              add [bx+si],al
000049BC  0000              add [bx+si],al
000049BE  0000              add [bx+si],al
000049C0  0000              add [bx+si],al
000049C2  0000              add [bx+si],al
000049C4  0000              add [bx+si],al
000049C6  0000              add [bx+si],al
000049C8  0000              add [bx+si],al
000049CA  0000              add [bx+si],al
000049CC  0000              add [bx+si],al
000049CE  0000              add [bx+si],al
000049D0  0000              add [bx+si],al
000049D2  0000              add [bx+si],al
000049D4  0000              add [bx+si],al
000049D6  0000              add [bx+si],al
000049D8  0000              add [bx+si],al
000049DA  0000              add [bx+si],al
000049DC  0000              add [bx+si],al
000049DE  0000              add [bx+si],al
000049E0  0000              add [bx+si],al
000049E2  0000              add [bx+si],al
000049E4  0000              add [bx+si],al
000049E6  0000              add [bx+si],al
000049E8  0000              add [bx+si],al
000049EA  0000              add [bx+si],al
000049EC  0000              add [bx+si],al
000049EE  0000              add [bx+si],al
000049F0  0000              add [bx+si],al
000049F2  0000              add [bx+si],al
000049F4  0000              add [bx+si],al
000049F6  0000              add [bx+si],al
000049F8  0000              add [bx+si],al
000049FA  0000              add [bx+si],al
000049FC  0000              add [bx+si],al
000049FE  0000              add [bx+si],al
00004A00  0000              add [bx+si],al
00004A02  0000              add [bx+si],al
00004A04  0000              add [bx+si],al
00004A06  0000              add [bx+si],al
00004A08  0000              add [bx+si],al
00004A0A  0000              add [bx+si],al
00004A0C  0000              add [bx+si],al
00004A0E  0000              add [bx+si],al
00004A10  0000              add [bx+si],al
00004A12  0000              add [bx+si],al
00004A14  0000              add [bx+si],al
00004A16  0000              add [bx+si],al
00004A18  0000              add [bx+si],al
00004A1A  0000              add [bx+si],al
00004A1C  0000              add [bx+si],al
00004A1E  0000              add [bx+si],al
00004A20  0000              add [bx+si],al
00004A22  0000              add [bx+si],al
00004A24  0000              add [bx+si],al
00004A26  0000              add [bx+si],al
00004A28  0000              add [bx+si],al
00004A2A  0000              add [bx+si],al
00004A2C  0000              add [bx+si],al
00004A2E  0000              add [bx+si],al
00004A30  0000              add [bx+si],al
00004A32  0000              add [bx+si],al
00004A34  0000              add [bx+si],al
00004A36  0000              add [bx+si],al
00004A38  0000              add [bx+si],al
00004A3A  0000              add [bx+si],al
00004A3C  0000              add [bx+si],al
00004A3E  0000              add [bx+si],al
00004A40  0000              add [bx+si],al
00004A42  0000              add [bx+si],al
00004A44  0000              add [bx+si],al
00004A46  0000              add [bx+si],al
00004A48  0000              add [bx+si],al
00004A4A  0000              add [bx+si],al
00004A4C  0000              add [bx+si],al
00004A4E  0000              add [bx+si],al
00004A50  0000              add [bx+si],al
00004A52  0000              add [bx+si],al
00004A54  0000              add [bx+si],al
00004A56  0000              add [bx+si],al
00004A58  0000              add [bx+si],al
00004A5A  0000              add [bx+si],al
00004A5C  0000              add [bx+si],al
00004A5E  0000              add [bx+si],al
00004A60  0000              add [bx+si],al
00004A62  0000              add [bx+si],al
00004A64  0000              add [bx+si],al
00004A66  0000              add [bx+si],al
00004A68  0000              add [bx+si],al
00004A6A  0000              add [bx+si],al
00004A6C  0000              add [bx+si],al
00004A6E  0000              add [bx+si],al
00004A70  0000              add [bx+si],al
00004A72  0000              add [bx+si],al
00004A74  0000              add [bx+si],al
00004A76  0000              add [bx+si],al
00004A78  0000              add [bx+si],al
00004A7A  0000              add [bx+si],al
00004A7C  0000              add [bx+si],al
00004A7E  0000              add [bx+si],al
00004A80  0000              add [bx+si],al
00004A82  0000              add [bx+si],al
00004A84  0000              add [bx+si],al
00004A86  0000              add [bx+si],al
00004A88  0000              add [bx+si],al
00004A8A  0000              add [bx+si],al
00004A8C  0000              add [bx+si],al
00004A8E  0000              add [bx+si],al
00004A90  0000              add [bx+si],al
00004A92  0000              add [bx+si],al
00004A94  0000              add [bx+si],al
00004A96  0000              add [bx+si],al
00004A98  0000              add [bx+si],al
00004A9A  0000              add [bx+si],al
00004A9C  0000              add [bx+si],al
00004A9E  0000              add [bx+si],al
00004AA0  0000              add [bx+si],al
00004AA2  0000              add [bx+si],al
00004AA4  0000              add [bx+si],al
00004AA6  0000              add [bx+si],al
00004AA8  0000              add [bx+si],al
00004AAA  0000              add [bx+si],al
00004AAC  0000              add [bx+si],al
00004AAE  0000              add [bx+si],al
00004AB0  0000              add [bx+si],al
00004AB2  0000              add [bx+si],al
00004AB4  0000              add [bx+si],al
00004AB6  0000              add [bx+si],al
00004AB8  0000              add [bx+si],al
00004ABA  0000              add [bx+si],al
00004ABC  0000              add [bx+si],al
00004ABE  0000              add [bx+si],al
00004AC0  0000              add [bx+si],al
00004AC2  0000              add [bx+si],al
00004AC4  0000              add [bx+si],al
00004AC6  0000              add [bx+si],al
00004AC8  0000              add [bx+si],al
00004ACA  0000              add [bx+si],al
00004ACC  0000              add [bx+si],al
00004ACE  0000              add [bx+si],al
00004AD0  0000              add [bx+si],al
00004AD2  0000              add [bx+si],al
00004AD4  0000              add [bx+si],al
00004AD6  0000              add [bx+si],al
00004AD8  0000              add [bx+si],al
00004ADA  0000              add [bx+si],al
00004ADC  0000              add [bx+si],al
00004ADE  0000              add [bx+si],al
00004AE0  0000              add [bx+si],al
00004AE2  0000              add [bx+si],al
00004AE4  0000              add [bx+si],al
00004AE6  0000              add [bx+si],al
00004AE8  0000              add [bx+si],al
00004AEA  0000              add [bx+si],al
00004AEC  0000              add [bx+si],al
00004AEE  0000              add [bx+si],al
00004AF0  0000              add [bx+si],al
00004AF2  0000              add [bx+si],al
00004AF4  0000              add [bx+si],al
00004AF6  0000              add [bx+si],al
00004AF8  0000              add [bx+si],al
00004AFA  0000              add [bx+si],al
00004AFC  0000              add [bx+si],al
00004AFE  0000              add [bx+si],al
00004B00  0000              add [bx+si],al
00004B02  0000              add [bx+si],al
00004B04  0000              add [bx+si],al
00004B06  0000              add [bx+si],al
00004B08  0000              add [bx+si],al
00004B0A  0000              add [bx+si],al
00004B0C  0000              add [bx+si],al
00004B0E  0000              add [bx+si],al
00004B10  0000              add [bx+si],al
00004B12  0000              add [bx+si],al
00004B14  0000              add [bx+si],al
00004B16  0000              add [bx+si],al
00004B18  0000              add [bx+si],al
00004B1A  0000              add [bx+si],al
00004B1C  0000              add [bx+si],al
00004B1E  0000              add [bx+si],al
00004B20  0000              add [bx+si],al
00004B22  0000              add [bx+si],al
00004B24  0000              add [bx+si],al
00004B26  0000              add [bx+si],al
00004B28  0000              add [bx+si],al
00004B2A  0000              add [bx+si],al
00004B2C  0000              add [bx+si],al
00004B2E  0000              add [bx+si],al
00004B30  0000              add [bx+si],al
00004B32  0000              add [bx+si],al
00004B34  0000              add [bx+si],al
00004B36  0000              add [bx+si],al
00004B38  0000              add [bx+si],al
00004B3A  0000              add [bx+si],al
00004B3C  0000              add [bx+si],al
00004B3E  0000              add [bx+si],al
00004B40  0000              add [bx+si],al
00004B42  0000              add [bx+si],al
00004B44  0000              add [bx+si],al
00004B46  0000              add [bx+si],al
00004B48  0000              add [bx+si],al
00004B4A  0000              add [bx+si],al
00004B4C  0000              add [bx+si],al
00004B4E  0000              add [bx+si],al
00004B50  0000              add [bx+si],al
00004B52  0000              add [bx+si],al
00004B54  0000              add [bx+si],al
00004B56  0000              add [bx+si],al
00004B58  0000              add [bx+si],al
00004B5A  0000              add [bx+si],al
00004B5C  0000              add [bx+si],al
00004B5E  0000              add [bx+si],al
00004B60  0000              add [bx+si],al
00004B62  0000              add [bx+si],al
00004B64  0000              add [bx+si],al
00004B66  0000              add [bx+si],al
00004B68  0000              add [bx+si],al
00004B6A  0000              add [bx+si],al
00004B6C  0000              add [bx+si],al
00004B6E  0000              add [bx+si],al
00004B70  0000              add [bx+si],al
00004B72  0000              add [bx+si],al
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
00004C00  0000              add [bx+si],al
00004C02  0000              add [bx+si],al
00004C04  0000              add [bx+si],al
00004C06  0000              add [bx+si],al
00004C08  0000              add [bx+si],al
00004C0A  0000              add [bx+si],al
00004C0C  0000              add [bx+si],al
00004C0E  0000              add [bx+si],al
00004C10  0000              add [bx+si],al
00004C12  0000              add [bx+si],al
00004C14  0000              add [bx+si],al
00004C16  0000              add [bx+si],al
00004C18  0000              add [bx+si],al
00004C1A  0000              add [bx+si],al
00004C1C  0000              add [bx+si],al
00004C1E  0000              add [bx+si],al
00004C20  0000              add [bx+si],al
00004C22  0000              add [bx+si],al
00004C24  0000              add [bx+si],al
00004C26  0000              add [bx+si],al
00004C28  0000              add [bx+si],al
00004C2A  0000              add [bx+si],al
00004C2C  0000              add [bx+si],al
00004C2E  0000              add [bx+si],al
00004C30  0000              add [bx+si],al
00004C32  0000              add [bx+si],al
00004C34  0000              add [bx+si],al
00004C36  0000              add [bx+si],al
00004C38  0000              add [bx+si],al
00004C3A  0000              add [bx+si],al
00004C3C  0000              add [bx+si],al
00004C3E  0000              add [bx+si],al
00004C40  0000              add [bx+si],al
00004C42  0000              add [bx+si],al
00004C44  0000              add [bx+si],al
00004C46  0000              add [bx+si],al
00004C48  0000              add [bx+si],al
00004C4A  0000              add [bx+si],al
00004C4C  0000              add [bx+si],al
00004C4E  0000              add [bx+si],al
00004C50  0000              add [bx+si],al
00004C52  0000              add [bx+si],al
00004C54  0000              add [bx+si],al
00004C56  0000              add [bx+si],al
00004C58  0000              add [bx+si],al
00004C5A  0000              add [bx+si],al
00004C5C  0000              add [bx+si],al
00004C5E  0000              add [bx+si],al
00004C60  0000              add [bx+si],al
00004C62  0000              add [bx+si],al
00004C64  0000              add [bx+si],al
00004C66  0000              add [bx+si],al
00004C68  0000              add [bx+si],al
00004C6A  0000              add [bx+si],al
00004C6C  0000              add [bx+si],al
00004C6E  0000              add [bx+si],al
00004C70  0000              add [bx+si],al
00004C72  0000              add [bx+si],al
00004C74  0000              add [bx+si],al
00004C76  0000              add [bx+si],al
00004C78  0000              add [bx+si],al
00004C7A  0000              add [bx+si],al
00004C7C  0000              add [bx+si],al
00004C7E  0000              add [bx+si],al
00004C80  0000              add [bx+si],al
00004C82  0000              add [bx+si],al
00004C84  0000              add [bx+si],al
00004C86  0000              add [bx+si],al
00004C88  0000              add [bx+si],al
00004C8A  0000              add [bx+si],al
00004C8C  0000              add [bx+si],al
00004C8E  0000              add [bx+si],al
00004C90  0000              add [bx+si],al
00004C92  0000              add [bx+si],al
00004C94  0000              add [bx+si],al
00004C96  0000              add [bx+si],al
00004C98  0000              add [bx+si],al
00004C9A  0000              add [bx+si],al
00004C9C  0000              add [bx+si],al
00004C9E  0000              add [bx+si],al
00004CA0  0000              add [bx+si],al
00004CA2  0000              add [bx+si],al
00004CA4  0000              add [bx+si],al
00004CA6  0000              add [bx+si],al
00004CA8  0000              add [bx+si],al
00004CAA  0000              add [bx+si],al
00004CAC  0000              add [bx+si],al
00004CAE  0000              add [bx+si],al
00004CB0  0000              add [bx+si],al
00004CB2  0000              add [bx+si],al
00004CB4  0000              add [bx+si],al
00004CB6  0000              add [bx+si],al
00004CB8  0000              add [bx+si],al
00004CBA  0000              add [bx+si],al
00004CBC  0000              add [bx+si],al
00004CBE  0000              add [bx+si],al
00004CC0  0000              add [bx+si],al
00004CC2  0000              add [bx+si],al
00004CC4  0000              add [bx+si],al
00004CC6  0000              add [bx+si],al
00004CC8  0000              add [bx+si],al
00004CCA  0000              add [bx+si],al
00004CCC  0000              add [bx+si],al
00004CCE  0000              add [bx+si],al
00004CD0  0000              add [bx+si],al
00004CD2  0000              add [bx+si],al
00004CD4  0000              add [bx+si],al
00004CD6  0000              add [bx+si],al
00004CD8  0000              add [bx+si],al
00004CDA  0000              add [bx+si],al
00004CDC  0000              add [bx+si],al
00004CDE  0000              add [bx+si],al
00004CE0  0000              add [bx+si],al
00004CE2  0000              add [bx+si],al
00004CE4  0000              add [bx+si],al
00004CE6  0000              add [bx+si],al
00004CE8  0000              add [bx+si],al
00004CEA  0000              add [bx+si],al
00004CEC  0000              add [bx+si],al
00004CEE  0000              add [bx+si],al
00004CF0  0000              add [bx+si],al
00004CF2  0000              add [bx+si],al
00004CF4  0000              add [bx+si],al
00004CF6  0000              add [bx+si],al
00004CF8  0000              add [bx+si],al
00004CFA  0000              add [bx+si],al
00004CFC  0000              add [bx+si],al
00004CFE  0000              add [bx+si],al
00004D00  0000              add [bx+si],al
00004D02  0000              add [bx+si],al
00004D04  0000              add [bx+si],al
00004D06  0000              add [bx+si],al
00004D08  0000              add [bx+si],al
00004D0A  0000              add [bx+si],al
00004D0C  0000              add [bx+si],al
00004D0E  0000              add [bx+si],al
00004D10  0000              add [bx+si],al
00004D12  0000              add [bx+si],al
00004D14  0000              add [bx+si],al
00004D16  0000              add [bx+si],al
00004D18  0000              add [bx+si],al
00004D1A  0000              add [bx+si],al
00004D1C  0000              add [bx+si],al
00004D1E  0000              add [bx+si],al
00004D20  0000              add [bx+si],al
00004D22  0000              add [bx+si],al
00004D24  0000              add [bx+si],al
00004D26  0000              add [bx+si],al
00004D28  0000              add [bx+si],al
00004D2A  0000              add [bx+si],al
00004D2C  0000              add [bx+si],al
00004D2E  0000              add [bx+si],al
00004D30  0000              add [bx+si],al
00004D32  0000              add [bx+si],al
00004D34  0000              add [bx+si],al
00004D36  0000              add [bx+si],al
00004D38  0000              add [bx+si],al
00004D3A  0000              add [bx+si],al
00004D3C  0000              add [bx+si],al
00004D3E  0000              add [bx+si],al
00004D40  0000              add [bx+si],al
00004D42  0000              add [bx+si],al
00004D44  0000              add [bx+si],al
00004D46  0000              add [bx+si],al
00004D48  0000              add [bx+si],al
00004D4A  0000              add [bx+si],al
00004D4C  0000              add [bx+si],al
00004D4E  0000              add [bx+si],al
00004D50  0000              add [bx+si],al
00004D52  0000              add [bx+si],al
00004D54  0000              add [bx+si],al
00004D56  0000              add [bx+si],al
00004D58  0000              add [bx+si],al
00004D5A  0000              add [bx+si],al
00004D5C  0000              add [bx+si],al
00004D5E  0000              add [bx+si],al
00004D60  0000              add [bx+si],al
00004D62  0000              add [bx+si],al
00004D64  0000              add [bx+si],al
00004D66  0000              add [bx+si],al
00004D68  0000              add [bx+si],al
00004D6A  0000              add [bx+si],al
00004D6C  0000              add [bx+si],al
00004D6E  0000              add [bx+si],al
00004D70  0000              add [bx+si],al
00004D72  0000              add [bx+si],al
00004D74  0000              add [bx+si],al
00004D76  0000              add [bx+si],al
00004D78  0000              add [bx+si],al
00004D7A  0000              add [bx+si],al
00004D7C  0000              add [bx+si],al
00004D7E  0000              add [bx+si],al
00004D80  0000              add [bx+si],al
00004D82  0000              add [bx+si],al
00004D84  0000              add [bx+si],al
00004D86  0000              add [bx+si],al
00004D88  0000              add [bx+si],al
00004D8A  0000              add [bx+si],al
00004D8C  0000              add [bx+si],al
00004D8E  0000              add [bx+si],al
00004D90  0000              add [bx+si],al
00004D92  0000              add [bx+si],al
00004D94  0000              add [bx+si],al
00004D96  0000              add [bx+si],al
00004D98  0000              add [bx+si],al
00004D9A  0000              add [bx+si],al
00004D9C  0000              add [bx+si],al
00004D9E  0000              add [bx+si],al
00004DA0  0000              add [bx+si],al
00004DA2  0000              add [bx+si],al
00004DA4  0000              add [bx+si],al
00004DA6  0000              add [bx+si],al
00004DA8  0000              add [bx+si],al
00004DAA  0000              add [bx+si],al
00004DAC  0000              add [bx+si],al
00004DAE  0000              add [bx+si],al
00004DB0  0000              add [bx+si],al
00004DB2  0000              add [bx+si],al
00004DB4  0000              add [bx+si],al
00004DB6  0000              add [bx+si],al
00004DB8  0000              add [bx+si],al
00004DBA  0000              add [bx+si],al
00004DBC  0000              add [bx+si],al
00004DBE  0000              add [bx+si],al
00004DC0  0000              add [bx+si],al
00004DC2  0000              add [bx+si],al
00004DC4  0000              add [bx+si],al
00004DC6  0000              add [bx+si],al
00004DC8  0000              add [bx+si],al
00004DCA  0000              add [bx+si],al
00004DCC  0000              add [bx+si],al
00004DCE  0000              add [bx+si],al
00004DD0  0000              add [bx+si],al
00004DD2  0000              add [bx+si],al
00004DD4  0000              add [bx+si],al
00004DD6  0000              add [bx+si],al
00004DD8  0000              add [bx+si],al
00004DDA  0000              add [bx+si],al
00004DDC  0000              add [bx+si],al
00004DDE  0000              add [bx+si],al
00004DE0  0000              add [bx+si],al
00004DE2  0000              add [bx+si],al
00004DE4  0000              add [bx+si],al
00004DE6  0000              add [bx+si],al
00004DE8  0000              add [bx+si],al
00004DEA  0000              add [bx+si],al
00004DEC  0000              add [bx+si],al
00004DEE  0000              add [bx+si],al
00004DF0  0000              add [bx+si],al
00004DF2  0000              add [bx+si],al
00004DF4  0000              add [bx+si],al
00004DF6  0000              add [bx+si],al
00004DF8  0000              add [bx+si],al
00004DFA  0000              add [bx+si],al
00004DFC  0000              add [bx+si],al
00004DFE  0000              add [bx+si],al
00004E00  0000              add [bx+si],al
00004E02  0000              add [bx+si],al
00004E04  0000              add [bx+si],al
00004E06  0000              add [bx+si],al
00004E08  0000              add [bx+si],al
00004E0A  0000              add [bx+si],al
00004E0C  0000              add [bx+si],al
00004E0E  0000              add [bx+si],al
00004E10  0000              add [bx+si],al
00004E12  0000              add [bx+si],al
00004E14  0000              add [bx+si],al
00004E16  0000              add [bx+si],al
00004E18  0000              add [bx+si],al
00004E1A  0000              add [bx+si],al
00004E1C  0000              add [bx+si],al
00004E1E  0000              add [bx+si],al
00004E20  0000              add [bx+si],al
00004E22  0000              add [bx+si],al
00004E24  0000              add [bx+si],al
00004E26  0000              add [bx+si],al
00004E28  0000              add [bx+si],al
00004E2A  0000              add [bx+si],al
00004E2C  0000              add [bx+si],al
00004E2E  0000              add [bx+si],al
00004E30  0000              add [bx+si],al
00004E32  0000              add [bx+si],al
00004E34  0000              add [bx+si],al
00004E36  0000              add [bx+si],al
00004E38  0000              add [bx+si],al
00004E3A  0000              add [bx+si],al
00004E3C  0000              add [bx+si],al
00004E3E  0000              add [bx+si],al
00004E40  0000              add [bx+si],al
00004E42  0000              add [bx+si],al
00004E44  0000              add [bx+si],al
00004E46  0000              add [bx+si],al
00004E48  0000              add [bx+si],al
00004E4A  0000              add [bx+si],al
00004E4C  0000              add [bx+si],al
00004E4E  0000              add [bx+si],al
00004E50  0000              add [bx+si],al
00004E52  0000              add [bx+si],al
00004E54  0000              add [bx+si],al
00004E56  0000              add [bx+si],al
00004E58  0000              add [bx+si],al
00004E5A  0000              add [bx+si],al
00004E5C  0000              add [bx+si],al
00004E5E  0000              add [bx+si],al
00004E60  0000              add [bx+si],al
00004E62  0000              add [bx+si],al
00004E64  0000              add [bx+si],al
00004E66  0000              add [bx+si],al
00004E68  0000              add [bx+si],al
00004E6A  0000              add [bx+si],al
00004E6C  0000              add [bx+si],al
00004E6E  0000              add [bx+si],al
00004E70  0000              add [bx+si],al
00004E72  0000              add [bx+si],al
00004E74  0000              add [bx+si],al
00004E76  0000              add [bx+si],al
00004E78  0000              add [bx+si],al
00004E7A  0000              add [bx+si],al
00004E7C  0000              add [bx+si],al
00004E7E  0000              add [bx+si],al
00004E80  0000              add [bx+si],al
00004E82  0000              add [bx+si],al
00004E84  0000              add [bx+si],al
00004E86  0000              add [bx+si],al
00004E88  0000              add [bx+si],al
00004E8A  0000              add [bx+si],al
00004E8C  0000              add [bx+si],al
00004E8E  0000              add [bx+si],al
00004E90  0000              add [bx+si],al
00004E92  0000              add [bx+si],al
00004E94  0000              add [bx+si],al
00004E96  0000              add [bx+si],al
00004E98  0000              add [bx+si],al
00004E9A  0000              add [bx+si],al
00004E9C  0000              add [bx+si],al
00004E9E  0000              add [bx+si],al
00004EA0  0000              add [bx+si],al
00004EA2  0000              add [bx+si],al
00004EA4  0000              add [bx+si],al
00004EA6  0000              add [bx+si],al
00004EA8  0000              add [bx+si],al
00004EAA  0000              add [bx+si],al
00004EAC  0000              add [bx+si],al
00004EAE  0000              add [bx+si],al
00004EB0  0000              add [bx+si],al
00004EB2  0000              add [bx+si],al
00004EB4  0000              add [bx+si],al
00004EB6  0000              add [bx+si],al
00004EB8  0000              add [bx+si],al
00004EBA  0000              add [bx+si],al
00004EBC  0000              add [bx+si],al
00004EBE  0000              add [bx+si],al
00004EC0  0000              add [bx+si],al
00004EC2  0000              add [bx+si],al
00004EC4  0000              add [bx+si],al
00004EC6  0000              add [bx+si],al
00004EC8  0000              add [bx+si],al
00004ECA  0000              add [bx+si],al
00004ECC  0000              add [bx+si],al
00004ECE  0000              add [bx+si],al
00004ED0  0000              add [bx+si],al
00004ED2  0000              add [bx+si],al
00004ED4  0000              add [bx+si],al
00004ED6  0000              add [bx+si],al
00004ED8  0000              add [bx+si],al
00004EDA  0000              add [bx+si],al
00004EDC  0000              add [bx+si],al
00004EDE  0000              add [bx+si],al
00004EE0  0000              add [bx+si],al
00004EE2  0000              add [bx+si],al
00004EE4  0000              add [bx+si],al
00004EE6  0000              add [bx+si],al
00004EE8  0000              add [bx+si],al
00004EEA  0000              add [bx+si],al
00004EEC  0000              add [bx+si],al
00004EEE  0000              add [bx+si],al
00004EF0  0000              add [bx+si],al
00004EF2  0000              add [bx+si],al
00004EF4  0000              add [bx+si],al
00004EF6  0000              add [bx+si],al
00004EF8  0000              add [bx+si],al
00004EFA  0000              add [bx+si],al
00004EFC  0000              add [bx+si],al
00004EFE  0000              add [bx+si],al
00004F00  0000              add [bx+si],al
00004F02  0000              add [bx+si],al
00004F04  0000              add [bx+si],al
00004F06  0000              add [bx+si],al
00004F08  0000              add [bx+si],al
00004F0A  0000              add [bx+si],al
00004F0C  0000              add [bx+si],al
00004F0E  0000              add [bx+si],al
00004F10  0000              add [bx+si],al
00004F12  0000              add [bx+si],al
00004F14  0000              add [bx+si],al
00004F16  0000              add [bx+si],al
00004F18  0000              add [bx+si],al
00004F1A  0000              add [bx+si],al
00004F1C  0000              add [bx+si],al
00004F1E  0000              add [bx+si],al
00004F20  0000              add [bx+si],al
00004F22  0000              add [bx+si],al
00004F24  0000              add [bx+si],al
00004F26  0000              add [bx+si],al
00004F28  0000              add [bx+si],al
00004F2A  0000              add [bx+si],al
00004F2C  0000              add [bx+si],al
00004F2E  0000              add [bx+si],al
00004F30  0000              add [bx+si],al
00004F32  0000              add [bx+si],al
00004F34  0000              add [bx+si],al
00004F36  0000              add [bx+si],al
00004F38  0000              add [bx+si],al
00004F3A  0000              add [bx+si],al
00004F3C  0000              add [bx+si],al
00004F3E  0000              add [bx+si],al
00004F40  0000              add [bx+si],al
00004F42  0000              add [bx+si],al
00004F44  0000              add [bx+si],al
00004F46  0000              add [bx+si],al
00004F48  0000              add [bx+si],al
00004F4A  0000              add [bx+si],al
00004F4C  0000              add [bx+si],al
00004F4E  0000              add [bx+si],al
00004F50  0000              add [bx+si],al
00004F52  0000              add [bx+si],al
00004F54  0000              add [bx+si],al
00004F56  0000              add [bx+si],al
00004F58  0000              add [bx+si],al
00004F5A  0000              add [bx+si],al
00004F5C  0000              add [bx+si],al
00004F5E  0000              add [bx+si],al
00004F60  0000              add [bx+si],al
00004F62  0000              add [bx+si],al
00004F64  0000              add [bx+si],al
00004F66  0000              add [bx+si],al
00004F68  0000              add [bx+si],al
00004F6A  0000              add [bx+si],al
00004F6C  0000              add [bx+si],al
00004F6E  0000              add [bx+si],al
00004F70  0000              add [bx+si],al
00004F72  0000              add [bx+si],al
00004F74  0000              add [bx+si],al
00004F76  0000              add [bx+si],al
00004F78  0000              add [bx+si],al
00004F7A  0000              add [bx+si],al
00004F7C  0000              add [bx+si],al
00004F7E  0000              add [bx+si],al
00004F80  0000              add [bx+si],al
00004F82  0000              add [bx+si],al
00004F84  0000              add [bx+si],al
00004F86  0000              add [bx+si],al
00004F88  0000              add [bx+si],al
00004F8A  0000              add [bx+si],al
00004F8C  0000              add [bx+si],al
00004F8E  0000              add [bx+si],al
00004F90  0000              add [bx+si],al
00004F92  0000              add [bx+si],al
00004F94  0000              add [bx+si],al
00004F96  0000              add [bx+si],al
00004F98  0000              add [bx+si],al
00004F9A  0000              add [bx+si],al
00004F9C  0000              add [bx+si],al
00004F9E  0000              add [bx+si],al
00004FA0  0000              add [bx+si],al
00004FA2  0000              add [bx+si],al
00004FA4  0000              add [bx+si],al
00004FA6  0000              add [bx+si],al
00004FA8  0000              add [bx+si],al
00004FAA  0000              add [bx+si],al
00004FAC  0000              add [bx+si],al
00004FAE  0000              add [bx+si],al
00004FB0  0000              add [bx+si],al
00004FB2  0000              add [bx+si],al
00004FB4  0000              add [bx+si],al
00004FB6  0000              add [bx+si],al
00004FB8  0000              add [bx+si],al
00004FBA  0000              add [bx+si],al
00004FBC  0000              add [bx+si],al
00004FBE  0000              add [bx+si],al
00004FC0  0000              add [bx+si],al
00004FC2  0000              add [bx+si],al
00004FC4  0000              add [bx+si],al
00004FC6  0000              add [bx+si],al
00004FC8  0000              add [bx+si],al
00004FCA  0000              add [bx+si],al
00004FCC  0000              add [bx+si],al
00004FCE  0000              add [bx+si],al
00004FD0  0000              add [bx+si],al
00004FD2  0000              add [bx+si],al
00004FD4  0000              add [bx+si],al
00004FD6  0000              add [bx+si],al
00004FD8  0000              add [bx+si],al
00004FDA  0000              add [bx+si],al
00004FDC  0000              add [bx+si],al
00004FDE  0000              add [bx+si],al
00004FE0  0000              add [bx+si],al
00004FE2  0000              add [bx+si],al
00004FE4  0000              add [bx+si],al
00004FE6  0000              add [bx+si],al
00004FE8  0000              add [bx+si],al
00004FEA  0000              add [bx+si],al
00004FEC  0000              add [bx+si],al
00004FEE  0000              add [bx+si],al
00004FF0  0000              add [bx+si],al
00004FF2  0000              add [bx+si],al
00004FF4  0000              add [bx+si],al
00004FF6  0000              add [bx+si],al
00004FF8  0000              add [bx+si],al
00004FFA  0000              add [bx+si],al
00004FFC  0000              add [bx+si],al
00004FFE  0000              add [bx+si],al
00005000  0000              add [bx+si],al
00005002  0000              add [bx+si],al
00005004  0000              add [bx+si],al
00005006  0000              add [bx+si],al
00005008  0000              add [bx+si],al
0000500A  0000              add [bx+si],al
0000500C  0000              add [bx+si],al
0000500E  0000              add [bx+si],al
00005010  0000              add [bx+si],al
00005012  0000              add [bx+si],al
00005014  0000              add [bx+si],al
00005016  0000              add [bx+si],al
00005018  0000              add [bx+si],al
0000501A  0000              add [bx+si],al
0000501C  0000              add [bx+si],al
0000501E  0000              add [bx+si],al
00005020  0000              add [bx+si],al
00005022  0000              add [bx+si],al
00005024  0000              add [bx+si],al
00005026  0000              add [bx+si],al
00005028  0000              add [bx+si],al
0000502A  0000              add [bx+si],al
0000502C  0000              add [bx+si],al
0000502E  0000              add [bx+si],al
00005030  0000              add [bx+si],al
00005032  0000              add [bx+si],al
00005034  0000              add [bx+si],al
00005036  0000              add [bx+si],al
00005038  0000              add [bx+si],al
0000503A  0000              add [bx+si],al
0000503C  0000              add [bx+si],al
0000503E  0000              add [bx+si],al
00005040  0000              add [bx+si],al
00005042  0000              add [bx+si],al
00005044  0000              add [bx+si],al
00005046  0000              add [bx+si],al
00005048  0000              add [bx+si],al
0000504A  0000              add [bx+si],al
0000504C  0000              add [bx+si],al
0000504E  0000              add [bx+si],al
00005050  0000              add [bx+si],al
00005052  0000              add [bx+si],al
00005054  0000              add [bx+si],al
00005056  0000              add [bx+si],al
00005058  0000              add [bx+si],al
0000505A  0000              add [bx+si],al
0000505C  0000              add [bx+si],al
0000505E  0000              add [bx+si],al
00005060  0000              add [bx+si],al
00005062  0000              add [bx+si],al
00005064  0000              add [bx+si],al
00005066  0000              add [bx+si],al
00005068  0000              add [bx+si],al
0000506A  0000              add [bx+si],al
0000506C  0000              add [bx+si],al
0000506E  0000              add [bx+si],al
00005070  0000              add [bx+si],al
00005072  0000              add [bx+si],al
00005074  0000              add [bx+si],al
00005076  0000              add [bx+si],al
00005078  0000              add [bx+si],al
0000507A  0000              add [bx+si],al
0000507C  0000              add [bx+si],al
0000507E  0000              add [bx+si],al
00005080  0000              add [bx+si],al
00005082  0000              add [bx+si],al
00005084  0000              add [bx+si],al
00005086  0000              add [bx+si],al
00005088  0000              add [bx+si],al
0000508A  0000              add [bx+si],al
0000508C  0000              add [bx+si],al
0000508E  0000              add [bx+si],al
00005090  0000              add [bx+si],al
00005092  0000              add [bx+si],al
00005094  0000              add [bx+si],al
00005096  0000              add [bx+si],al
00005098  0000              add [bx+si],al
0000509A  0000              add [bx+si],al
0000509C  0000              add [bx+si],al
0000509E  0000              add [bx+si],al
000050A0  0000              add [bx+si],al
000050A2  0000              add [bx+si],al
000050A4  0000              add [bx+si],al
000050A6  0000              add [bx+si],al
000050A8  0000              add [bx+si],al
000050AA  0000              add [bx+si],al
000050AC  0000              add [bx+si],al
000050AE  0000              add [bx+si],al
000050B0  0000              add [bx+si],al
000050B2  0000              add [bx+si],al
000050B4  0000              add [bx+si],al
000050B6  0000              add [bx+si],al
000050B8  0000              add [bx+si],al
000050BA  0000              add [bx+si],al
000050BC  0000              add [bx+si],al
000050BE  0000              add [bx+si],al
000050C0  0000              add [bx+si],al
000050C2  0000              add [bx+si],al
000050C4  0000              add [bx+si],al
000050C6  0000              add [bx+si],al
000050C8  0000              add [bx+si],al
000050CA  0000              add [bx+si],al
000050CC  0000              add [bx+si],al
000050CE  0000              add [bx+si],al
000050D0  0000              add [bx+si],al
000050D2  0000              add [bx+si],al
000050D4  0000              add [bx+si],al
000050D6  0000              add [bx+si],al
000050D8  0000              add [bx+si],al
000050DA  0000              add [bx+si],al
000050DC  0000              add [bx+si],al
000050DE  0000              add [bx+si],al
000050E0  0000              add [bx+si],al
000050E2  0000              add [bx+si],al
000050E4  0000              add [bx+si],al
000050E6  0000              add [bx+si],al
000050E8  0000              add [bx+si],al
000050EA  0000              add [bx+si],al
000050EC  0000              add [bx+si],al
000050EE  0000              add [bx+si],al
000050F0  0000              add [bx+si],al
000050F2  0000              add [bx+si],al
000050F4  0000              add [bx+si],al
000050F6  0000              add [bx+si],al
000050F8  0000              add [bx+si],al
000050FA  0000              add [bx+si],al
000050FC  0000              add [bx+si],al
000050FE  0000              add [bx+si],al
00005100  0000              add [bx+si],al
00005102  0000              add [bx+si],al
00005104  0000              add [bx+si],al
00005106  0000              add [bx+si],al
00005108  0000              add [bx+si],al
0000510A  0000              add [bx+si],al
0000510C  0000              add [bx+si],al
0000510E  0000              add [bx+si],al
00005110  0000              add [bx+si],al
00005112  0000              add [bx+si],al
00005114  0000              add [bx+si],al
00005116  0000              add [bx+si],al
00005118  0000              add [bx+si],al
0000511A  0000              add [bx+si],al
0000511C  0000              add [bx+si],al
0000511E  0000              add [bx+si],al
00005120  0000              add [bx+si],al
00005122  0000              add [bx+si],al
00005124  0000              add [bx+si],al
00005126  0000              add [bx+si],al
00005128  0000              add [bx+si],al
0000512A  0000              add [bx+si],al
0000512C  0000              add [bx+si],al
0000512E  0000              add [bx+si],al
00005130  0000              add [bx+si],al
00005132  0000              add [bx+si],al
00005134  0000              add [bx+si],al
00005136  0000              add [bx+si],al
00005138  0000              add [bx+si],al
0000513A  0000              add [bx+si],al
0000513C  0000              add [bx+si],al
0000513E  0000              add [bx+si],al
00005140  0000              add [bx+si],al
00005142  0000              add [bx+si],al
00005144  0000              add [bx+si],al
00005146  0000              add [bx+si],al
00005148  0000              add [bx+si],al
0000514A  0000              add [bx+si],al
0000514C  0000              add [bx+si],al
0000514E  0000              add [bx+si],al
00005150  0000              add [bx+si],al
00005152  0000              add [bx+si],al
00005154  0000              add [bx+si],al
00005156  0000              add [bx+si],al
00005158  0000              add [bx+si],al
0000515A  0000              add [bx+si],al
0000515C  0000              add [bx+si],al
0000515E  0000              add [bx+si],al
00005160  0000              add [bx+si],al
00005162  0000              add [bx+si],al
00005164  0000              add [bx+si],al
00005166  0000              add [bx+si],al
00005168  0000              add [bx+si],al
0000516A  0000              add [bx+si],al
0000516C  0000              add [bx+si],al
0000516E  0000              add [bx+si],al
00005170  0000              add [bx+si],al
00005172  0000              add [bx+si],al
00005174  0000              add [bx+si],al
00005176  0000              add [bx+si],al
00005178  0000              add [bx+si],al
0000517A  0000              add [bx+si],al
0000517C  0000              add [bx+si],al
0000517E  0000              add [bx+si],al
00005180  0000              add [bx+si],al
00005182  0000              add [bx+si],al
00005184  0000              add [bx+si],al
00005186  0000              add [bx+si],al
00005188  0000              add [bx+si],al
0000518A  0000              add [bx+si],al
0000518C  0000              add [bx+si],al
0000518E  0000              add [bx+si],al
00005190  0000              add [bx+si],al
00005192  0000              add [bx+si],al
00005194  0000              add [bx+si],al
00005196  0000              add [bx+si],al
00005198  0000              add [bx+si],al
0000519A  0000              add [bx+si],al
0000519C  0000              add [bx+si],al
0000519E  0000              add [bx+si],al
000051A0  0000              add [bx+si],al
000051A2  0000              add [bx+si],al
000051A4  0000              add [bx+si],al
000051A6  0000              add [bx+si],al
000051A8  0000              add [bx+si],al
000051AA  0000              add [bx+si],al
000051AC  0000              add [bx+si],al
000051AE  0000              add [bx+si],al
000051B0  0000              add [bx+si],al
000051B2  0000              add [bx+si],al
000051B4  0000              add [bx+si],al
000051B6  0000              add [bx+si],al
000051B8  0000              add [bx+si],al
000051BA  0000              add [bx+si],al
000051BC  0000              add [bx+si],al
000051BE  0000              add [bx+si],al
000051C0  0000              add [bx+si],al
000051C2  0000              add [bx+si],al
000051C4  0000              add [bx+si],al
000051C6  0000              add [bx+si],al
000051C8  0000              add [bx+si],al
000051CA  0000              add [bx+si],al
000051CC  0000              add [bx+si],al
000051CE  0000              add [bx+si],al
000051D0  0000              add [bx+si],al
000051D2  0000              add [bx+si],al
000051D4  0000              add [bx+si],al
000051D6  0000              add [bx+si],al
000051D8  0000              add [bx+si],al
000051DA  0000              add [bx+si],al
000051DC  0000              add [bx+si],al
000051DE  0000              add [bx+si],al
000051E0  0000              add [bx+si],al
000051E2  0000              add [bx+si],al
000051E4  0000              add [bx+si],al
000051E6  0000              add [bx+si],al
000051E8  0000              add [bx+si],al
000051EA  0000              add [bx+si],al
000051EC  0000              add [bx+si],al
000051EE  0000              add [bx+si],al
000051F0  0000              add [bx+si],al
000051F2  0000              add [bx+si],al
000051F4  0000              add [bx+si],al
000051F6  0000              add [bx+si],al
000051F8  0000              add [bx+si],al
000051FA  0000              add [bx+si],al
000051FC  0000              add [bx+si],al
000051FE  0000              add [bx+si],al
