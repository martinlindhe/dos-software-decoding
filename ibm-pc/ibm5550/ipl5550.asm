000F0000  BB3412            mov bx,0x1234
000F0003  EB03              jmp short 0x8
000F0005  BB58A4            mov bx,0xa458
000F0008  FA                cli
000F0009  FC                cld
000F000A  32C0              xor al,al
000F000C  E6A0              out 0xa0,al
000F000E  E6A2              out 0xa2,al
000F0010  E60D              out 0xd,al
000F0012  BA7A03            mov dx,0x37a
000F0015  EE                out dx,al
000F0016  B202              mov dl,0x2
000F0018  EE                out dx,al
000F0019  B214              mov dl,0x14
000F001B  EE                out dx,al
000F001C  42                inc dx
000F001D  EE                out dx,al
000F001E  42                inc dx
000F001F  EE                out dx,al
000F0020  B2D3              mov dl,0xd3
000F0022  EE                out dx,al
000F0023  B2F3              mov dl,0xf3
000F0025  EE                out dx,al
000F0026  B22A              mov dl,0x2a
000F0028  EE                out dx,al
000F0029  B263              mov dl,0x63
000F002B  EE                out dx,al
000F002C  B29C              mov dl,0x9c
000F002E  EE                out dx,al
000F002F  B24E              mov dl,0x4e
000F0031  EE                out dx,al
000F0032  B2FF              mov dl,0xff
000F0034  EE                out dx,al
000F0035  B602              mov dh,0x2
000F0037  EE                out dx,al
000F0038  BA1001            mov dx,0x110
000F003B  EE                out dx,al
000F003C  83C210            add dx,byte +0x10
000F003F  81FAE001          cmp dx,0x1e0
000F0043  74F7              jz 0x3c
000F0045  80FE03            cmp dh,0x3
000F0048  74F2              jz 0x3c
000F004A  80FE08            cmp dh,0x8
000F004D  72EC              jc 0x3b
000F004F  EB04              jmp short 0x55
000F0051  F4                hlt
000F0052  BB0101            mov bx,0x101
000F0055  B80010            mov ax,0x1000
000F0058  8EC0              mov es,ax
000F005A  33FF              xor di,di
000F005C  26891D            mov [es:di],bx
000F005F  B4D5              mov ah,0xd5
000F0061  9E                sahf
000F0062  73ED              jnc 0x51
000F0064  75EB              jnz 0x51
000F0066  7BE9              jpo 0x51
000F0068  79E7              jns 0x51
000F006A  9F                lahf
000F006B  B105              mov cl,0x5
000F006D  D2EC              shr ah,cl
000F006F  73E0              jnc 0x51
000F0071  B040              mov al,0x40
000F0073  D0E0              shl al,1
000F0075  71DA              jno 0x51
000F0077  32E4              xor ah,ah
000F0079  9E                sahf
000F007A  72D5              jc 0x51
000F007C  74D3              jz 0x51
000F007E  78D1              js 0x51
000F0080  7ACF              jpe 0x51
000F0082  9F                lahf
000F0083  B105              mov cl,0x5
000F0085  D2EC              shr ah,cl
000F0087  72C8              jc 0x51
000F0089  D0E4              shl ah,1
000F008B  70C4              jo 0x51
000F008D  B8FFFF            mov ax,0xffff
000F0090  F9                stc
000F0091  8ED8              mov ds,ax
000F0093  8CDB              mov bx,ds
000F0095  8EC3              mov es,bx
000F0097  8CC1              mov cx,es
000F0099  8ED1              mov ss,cx
000F009B  8CD2              mov dx,ss
000F009D  8BE2              mov sp,dx
000F009F  8BEC              mov bp,sp
000F00A1  8BF5              mov si,bp
000F00A3  8BFE              mov di,si
000F00A5  7307              jnc 0xae
000F00A7  33C7              xor ax,di
000F00A9  75A6              jnz 0x51
000F00AB  F8                clc
000F00AC  73E3              jnc 0x91
000F00AE  0BC7              or ax,di
000F00B0  759F              jnz 0x51
000F00B2  B0E2              mov al,0xe2
000F00B4  E6A1              out 0xa1,al
000F00B6  B202              mov dl,0x2
000F00B8  B800FC            mov ax,0xfc00
000F00BB  8ED8              mov ds,ax
000F00BD  B510              mov ch,0x10
000F00BF  33DB              xor bx,bx
000F00C1  AD                lodsw
000F00C2  8AE0              mov ah,al
000F00C4  AC                lodsb
000F00C5  46                inc si
000F00C6  03D8              add bx,ax
000F00C8  E2F7              loop 0xc1
000F00CA  0BDB              or bx,bx
000F00CC  7512              jnz 0xe0
000F00CE  4A                dec dx
000F00CF  7405              jz 0xd6
000F00D1  BE0100            mov si,0x1
000F00D4  EBE7              jmp short 0xbd
000F00D6  E4A0              in al,0xa0
000F00D8  A801              test al,0x1
000F00DA  7405              jz 0xe1
000F00DC  B0FC              mov al,0xfc
000F00DE  E6A1              out 0xa1,al
000F00E0  F4                hlt
000F00E1  B0FA              mov al,0xfa
000F00E3  E6A1              out 0xa1,al
000F00E5  B01B              mov al,0x1b
000F00E7  E620              out 0x20,al
000F00E9  B020              mov al,0x20
000F00EB  E621              out 0x21,al
000F00ED  B001              mov al,0x1
000F00EF  E621              out 0x21,al
000F00F1  B00A              mov al,0xa
000F00F3  E620              out 0x20,al
000F00F5  E420              in al,0x20
000F00F7  A897              test al,0x97
000F00F9  7574              jnz 0x16f
000F00FB  B0F6              mov al,0xf6
000F00FD  E6A1              out 0xa1,al
000F00FF  B040              mov al,0x40
000F0101  E6A0              out 0xa0,al
000F0103  B3FF              mov bl,0xff
000F0105  B8004C            mov ax,0x4c00
000F0108  8EC0              mov es,ax
000F010A  33FF              xor di,di
000F010C  AA                stosb
000F010D  26221D            and bl,[es:di]
000F0110  80C410            add ah,0x10
000F0113  80FCFC            cmp ah,0xfc
000F0116  75F0              jnz 0x108
000F0118  80F3FF            xor bl,0xff
000F011B  7552              jnz 0x16f
000F011D  E4A0              in al,0xa0
000F011F  A801              test al,0x1
000F0121  74B9              jz 0xdc
000F0123  E6A2              out 0xa2,al
000F0125  E4A0              in al,0xa0
000F0127  A801              test al,0x1
000F0129  75B1              jnz 0xdc
000F012B  B0E4              mov al,0xe4
000F012D  E6A1              out 0xa1,al
000F012F  B800FC            mov ax,0xfc00
000F0132  8ED0              mov ss,ax
000F0134  B80010            mov ax,0x1000
000F0137  8EC0              mov es,ax
000F0139  33FF              xor di,di
000F013B  26813D3412        cmp word [es:di],0x1234
000F0140  E6A2              out 0xa2,al
000F0142  751B              jnz 0x15f
000F0144  33C0              xor ax,ax
000F0146  8EC0              mov es,ax
000F0148  B8CCCC            mov ax,0xcccc
000F014B  33FF              xor di,di
000F014D  B90080            mov cx,0x8000
000F0150  F3AB              rep stosw
000F0152  B80001            mov ax,0x100
000F0155  8EC0              mov es,ax
000F0157  26C7053412        mov word [es:di],0x1234
000F015C  E9A200            jmp 0x201
000F015F  B80010            mov ax,0x1000
000F0162  8ED8              mov ds,ax
000F0164  33C0              xor ax,ax
000F0166  BC7001            mov sp,0x170
000F0169  90                nop
000F016A  EA830500FC        jmp 0xfc00:0x583
000F016F  F4                hlt
000F0170  7401              jz 0x173
000F0172  00FC              add ah,bh
000F0174  75F9              jnz 0x16f
000F0176  80F3FF            xor bl,0xff
000F0179  75E9              jnz 0x164
000F017B  81F2FFFF          xor dx,0xffff
000F017F  75E3              jnz 0x164
000F0181  8EC7              mov es,di
000F0183  BBFF00            mov bx,0xff
000F0186  8AC3              mov al,bl
000F0188  B455              mov ah,0x55
000F018A  268915            mov [es:di],dx
000F018D  268805            mov [es:di],al
000F0190  263B1D            cmp bx,[es:di]
000F0193  75DA              jnz 0x16f
000F0195  F7D3              not bx
000F0197  81F2FFFF          xor dx,0xffff
000F019B  75E9              jnz 0x186
000F019D  B80101            mov ax,0x101
000F01A0  B90080            mov cx,0x8000
000F01A3  F3AB              rep stosw
000F01A5  B580              mov ch,0x80
000F01A7  F3AF              repe scasw
000F01A9  75C4              jnz 0x16f
000F01AB  B8CCCC            mov ax,0xcccc
000F01AE  B580              mov ch,0x80
000F01B0  F3AB              rep stosw
000F01B2  B580              mov ch,0x80
000F01B4  F3AF              repe scasw
000F01B6  75B7              jnz 0x16f
000F01B8  B80010            mov ax,0x1000
000F01BB  8EC0              mov es,ax
000F01BD  33FF              xor di,di
000F01BF  268B15            mov dx,[es:di]
000F01C2  B401              mov ah,0x1
000F01C4  8EC0              mov es,ax
000F01C6  268915            mov [es:di],dx
000F01C9  E4A0              in al,0xa0
000F01CB  A801              test al,0x1
000F01CD  75A0              jnz 0x16f
000F01CF  33E4              xor sp,sp
000F01D1  8ED4              mov ss,sp
000F01D3  E4A0              in al,0xa0
000F01D5  A802              test al,0x2
000F01D7  7528              jnz 0x201
000F01D9  8EC1              mov es,cx
000F01DB  BF0800            mov di,0x8
000F01DE  B8E405            mov ax,0x5e4
000F01E1  AB                stosw
000F01E2  B800FC            mov ax,0xfc00
000F01E5  AB                stosw
000F01E6  B101              mov cl,0x1
000F01E8  B080              mov al,0x80
000F01EA  E6A0              out 0xa0,al
000F01EC  26890D            mov [es:di],cx
000F01EF  B0C0              mov al,0xc0
000F01F1  E6A0              out 0xa0,al
000F01F3  268B05            mov ax,[es:di]
000F01F6  90                nop
000F01F7  80F901            cmp cl,0x1
000F01FA  7501              jnz 0x1fd
000F01FC  F4                hlt
000F01FD  0BC9              or cx,cx
000F01FF  75E7              jnz 0x1e8
000F0201  BA0203            mov dx,0x302
000F0204  EE                out dx,al
000F0205  B0E8              mov al,0xe8
000F0207  E6A1              out 0xa1,al
000F0209  8EC1              mov es,cx
000F020B  BF8000            mov di,0x80
000F020E  B108              mov cl,0x8
000F0210  B80006            mov ax,0x600
000F0213  AB                stosw
000F0214  B800FC            mov ax,0xfc00
000F0217  AB                stosw
000F0218  E2F6              loop 0x210
000F021A  33C0              xor ax,ax
000F021C  E621              out 0x21,al
000F021E  E421              in al,0x21
000F0220  3AE0              cmp ah,al
000F0222  7564              jnz 0x288
000F0224  35FFFF            xor ax,0xffff
000F0227  75F3              jnz 0x21c
000F0229  32FF              xor bh,bh
000F022B  FB                sti
000F022C  E2FE              loop 0x22c
000F022E  E2FE              loop 0x22e
000F0230  0AE4              or ah,ah
000F0232  7554              jnz 0x288
000F0234  E5A6              in ax,0xa6
000F0236  A90100            test ax,0x1
000F0239  7519              jnz 0x254
000F023B  B80100            mov ax,0x1
000F023E  E7A6              out 0xa6,ax
000F0240  B400              mov ah,0x0
000F0242  B77F              mov bh,0x7f
000F0244  B368              mov bl,0x68
000F0246  8AC7              mov al,bh
000F0248  E621              out 0x21,al
000F024A  B110              mov cl,0x10
000F024C  E2FE              loop 0x24c
000F024E  FA                cli
000F024F  80FC05            cmp ah,0x5
000F0252  7534              jnz 0x288
000F0254  B0F0              mov al,0xf0
000F0256  E6A1              out 0xa1,al
000F0258  8AC7              mov al,bh
000F025A  E644              out 0x44,al
000F025C  B034              mov al,0x34
000F025E  E643              out 0x43,al
000F0260  B0D0              mov al,0xd0
000F0262  E640              out 0x40,al
000F0264  B007              mov al,0x7
000F0266  E640              out 0x40,al
000F0268  B070              mov al,0x70
000F026A  E643              out 0x43,al
000F026C  B031              mov al,0x31
000F026E  E641              out 0x41,al
000F0270  B000              mov al,0x0
000F0272  E641              out 0x41,al
000F0274  B9701C            mov cx,0x1c70
000F0277  B00A              mov al,0xa
000F0279  E620              out 0x20,al
000F027B  E420              in al,0x20
000F027D  A840              test al,0x40
000F027F  7508              jnz 0x289
000F0281  E2F4              loop 0x277
000F0283  80F7FF            xor bh,0xff
000F0286  75D0              jnz 0x258
000F0288  F4                hlt
000F0289  0AFF              or bh,bh
000F028B  74FB              jz 0x288
000F028D  81E92C05          sub cx,0x52c
000F0291  7FF5              jg 0x288
000F0293  B0F8              mov al,0xf8
000F0295  E6A1              out 0xa1,al
000F0297  32C9              xor cl,cl
000F0299  32DB              xor bl,bl
000F029B  B70C              mov bh,0xc
000F029D  BAD003            mov dx,0x3d0
000F02A0  8AC7              mov al,bh
000F02A2  EE                out dx,al
000F02A3  B2D1              mov dl,0xd1
000F02A5  8AC3              mov al,bl
000F02A7  EE                out dx,al
000F02A8  EC                in al,dx
000F02A9  8AE3              mov ah,bl
000F02AB  F6C701            test bh,0x1
000F02AE  7503              jnz 0x2b3
000F02B0  80E43F            and ah,0x3f
000F02B3  3AE0              cmp ah,al
000F02B5  7406              jz 0x2bd
000F02B7  0AC9              or cl,cl
000F02B9  75CD              jnz 0x288
000F02BB  EB08              jmp short 0x2c5
000F02BD  0AC9              or cl,cl
000F02BF  7504              jnz 0x2c5
000F02C1  0ADB              or bl,bl
000F02C3  74C3              jz 0x288
000F02C5  FEC7              inc bh
000F02C7  80FF10            cmp bh,0x10
000F02CA  75D1              jnz 0x29d
000F02CC  80F3FF            xor bl,0xff
000F02CF  75CA              jnz 0x29b
000F02D1  80F1FF            xor cl,0xff
000F02D4  7406              jz 0x2dc
000F02D6  BAD203            mov dx,0x3d2
000F02D9  EE                out dx,al
000F02DA  EBBD              jmp short 0x299
000F02DC  B0F2              mov al,0xf2
000F02DE  E6A1              out 0xa1,al
000F02E0  33D2              xor dx,dx
000F02E2  B800E1            mov ax,0xe100
000F02E5  8ED8              mov ds,ax
000F02E7  B4E0              mov ah,0xe0
000F02E9  9A830500FC        call 0xfc00:0x583
000F02EE  755B              jnz 0x34b
000F02F0  80F3FF            xor bl,0xff
000F02F3  75ED              jnz 0x2e2
000F02F5  81F2FFFF          xor dx,0xffff
000F02F9  75E7              jnz 0x2e2
000F02FB  B800E0            mov ax,0xe000
000F02FE  8EC0              mov es,ax
000F0300  B81300            mov ax,0x13
000F0303  B90008            mov cx,0x800
000F0306  F3AB              rep stosw
000F0308  B800A0            mov ax,0xa000
000F030B  8EC0              mov es,ax
000F030D  33C0              xor ax,ax
000F030F  B90002            mov cx,0x200
000F0312  50                push ax
000F0313  268B15            mov dx,[es:di]
000F0316  58                pop ax
000F0317  E2F9              loop 0x312
000F0319  0BC0              or ax,ax
000F031B  752E              jnz 0x34b
000F031D  E4A0              in al,0xa0
000F031F  A801              test al,0x1
000F0321  7528              jnz 0x34b
000F0323  9A910070FC        call 0xfc70:0x91
000F0328  B0E6              mov al,0xe6
000F032A  E6A1              out 0xa1,al
000F032C  B90008            mov cx,0x800
000F032F  E8EE02            call 0x620
000F0332  51                push cx
000F0333  32E4              xor ah,ah
000F0335  33C9              xor cx,cx
000F0337  BADA03            mov dx,0x3da
000F033A  EC                in al,dx
000F033B  A880              test al,0x80
000F033D  7411              jz 0x350
000F033F  E2F6              loop 0x337
000F0341  B2D8              mov dl,0xd8
000F0343  32C0              xor al,al
000F0345  EE                out dx,al
000F0346  80F4FF            xor ah,0xff
000F0349  75EA              jnz 0x335
000F034B  BAD303            mov dx,0x3d3
000F034E  EE                out dx,al
000F034F  F4                hlt
000F0350  0AE4              or ah,ah
000F0352  74F7              jz 0x34b
000F0354  B0FE              mov al,0xfe
000F0356  E6A1              out 0xa1,al
000F0358  59                pop cx
000F0359  E8C402            call 0x620
000F035C  51                push cx
000F035D  BA1003            mov dx,0x310
000F0360  EE                out dx,al
000F0361  42                inc dx
000F0362  EE                out dx,al
000F0363  42                inc dx
000F0364  EE                out dx,al
000F0365  E5A2              in ax,0xa2
000F0367  BB0040            mov bx,0x4000
000F036A  F6C401            test ah,0x1
000F036D  7510              jnz 0x37f
000F036F  B760              mov bh,0x60
000F0371  F6C402            test ah,0x2
000F0374  7509              jnz 0x37f
000F0376  B780              mov bh,0x80
000F0378  F6C404            test ah,0x4
000F037B  7502              jnz 0x37f
000F037D  B7A0              mov bh,0xa0
000F037F  8EDB              mov ds,bx
000F0381  33D2              xor dx,dx
000F0383  B80001            mov ax,0x100
000F0386  8EC0              mov es,ax
000F0388  33FF              xor di,di
000F038A  26813D3412        cmp word [es:di],0x1234
000F038F  B410              mov ah,0x10
000F0391  750A              jnz 0x39d
000F0393  8CD8              mov ax,ds
000F0395  3D0040            cmp ax,0x4000
000F0398  7424              jz 0x3be
000F039A  B80040            mov ax,0x4000
000F039D  E82C02            call 0x5cc
000F03A0  740C              jz 0x3ae
000F03A2  8CC0              mov ax,es
000F03A4  80FC40            cmp ah,0x40
000F03A7  7303              jnc 0x3ac
000F03A9  E99200            jmp 0x43e
000F03AC  8ED8              mov ds,ax
000F03AE  59                pop cx
000F03AF  E86E02            call 0x620
000F03B2  51                push cx
000F03B3  80F3FF            xor bl,0xff
000F03B6  75CB              jnz 0x383
000F03B8  81F2FFFF          xor dx,0xffff
000F03BC  75C5              jnz 0x383
000F03BE  BB0010            mov bx,0x1000
000F03C1  8EC3              mov es,bx
000F03C3  33FF              xor di,di
000F03C5  8BF7              mov si,di
000F03C7  B80101            mov ax,0x101
000F03CA  B90001            mov cx,0x100
000F03CD  F3AB              rep stosw
000F03CF  8BFE              mov di,si
000F03D1  B501              mov ch,0x1
000F03D3  F3AF              repe scasw
000F03D5  7567              jnz 0x43e
000F03D7  06                push es
000F03D8  B80001            mov ax,0x100
000F03DB  8EC0              mov es,ax
000F03DD  33FF              xor di,di
000F03DF  26813D3412        cmp word [es:di],0x1234
000F03E4  07                pop es
000F03E5  7511              jnz 0x3f8
000F03E7  8BFE              mov di,si
000F03E9  B83333            mov ax,0x3333
000F03EC  B501              mov ch,0x1
000F03EE  F3AB              rep stosw
000F03F0  8BFE              mov di,si
000F03F2  B501              mov ch,0x1
000F03F4  F3AF              repe scasw
000F03F6  7546              jnz 0x43e
000F03F8  8BFE              mov di,si
000F03FA  B8CCCC            mov ax,0xcccc
000F03FD  B501              mov ch,0x1
000F03FF  F3AB              rep stosw
000F0401  8BFE              mov di,si
000F0403  B501              mov ch,0x1
000F0405  F3AF              repe scasw
000F0407  7535              jnz 0x43e
000F0409  E4A0              in al,0xa0
000F040B  A801              test al,0x1
000F040D  752F              jnz 0x43e
000F040F  83C320            add bx,byte +0x20
000F0412  8CD8              mov ax,ds
000F0414  3BC3              cmp ax,bx
000F0416  77A9              ja 0x3c1
000F0418  33FF              xor di,di
000F041A  8EC7              mov es,di
000F041C  BF3101            mov di,0x131
000F041F  268825            mov [es:di],ah
000F0422  80EC10            sub ah,0x10
000F0425  8ED0              mov ss,ax
000F0427  33E4              xor sp,sp
000F0429  80FC30            cmp ah,0x30
000F042C  7318              jnc 0x446
000F042E  BA1111            mov dx,0x1111
000F0431  9C                pushf
000F0432  0E                push cs
000F0433  E80000            call 0x436
000F0436  50                push ax
000F0437  8BC2              mov ax,dx
000F0439  EA080096FC        jmp 0xfc96:0x8
000F043E  E6A2              out 0xa2,al
000F0440  8CC0              mov ax,es
000F0442  8ED8              mov ds,ax
000F0444  EBD2              jmp short 0x418
000F0446  BA1211            mov dx,0x1112
000F0449  BB0010            mov bx,0x1000
000F044C  B000              mov al,0x0
000F044E  E6A0              out 0xa0,al
000F0450  B1CC              mov cl,0xcc
000F0452  8EC3              mov es,bx
000F0454  33FF              xor di,di
000F0456  26880D            mov [es:di],cl
000F0459  B040              mov al,0x40
000F045B  E6A0              out 0xa0,al
000F045D  268A05            mov al,[es:di]
000F0460  26880D            mov [es:di],cl
000F0463  E4A0              in al,0xa0
000F0465  A801              test al,0x1
000F0467  74C8              jz 0x431
000F0469  E4A1              in al,0xa1
000F046B  B104              mov cl,0x4
000F046D  D2E0              shl al,cl
000F046F  84C7              test bh,al
000F0471  74BE              jz 0x431
000F0473  E6A2              out 0xa2,al
000F0475  D1E3              shl bx,1
000F0477  7406              jz 0x47f
000F0479  8CD8              mov ax,ds
000F047B  2AE7              sub ah,bh
000F047D  77CD              ja 0x44c
000F047F  B040              mov al,0x40
000F0481  E6A0              out 0xa0,al
000F0483  B90608            mov cx,0x806
000F0486  E89701            call 0x620
000F0489  51                push cx
000F048A  BAD1A1            mov dx,0xa1d1
000F048D  E461              in al,0x61
000F048F  A802              test al,0x2
000F0491  749E              jz 0x431
000F0493  BA131A            mov dx,0x1a13
000F0496  32FF              xor bh,bh
000F0498  B002              mov al,0x2
000F049A  E661              out 0x61,al
000F049C  B0B6              mov al,0xb6
000F049E  E643              out 0x43,al
000F04A0  B0D0              mov al,0xd0
000F04A2  E642              out 0x42,al
000F04A4  B007              mov al,0x7
000F04A6  E642              out 0x42,al
000F04A8  E461              in al,0x61
000F04AA  F6D0              not al
000F04AC  2402              and al,0x2
000F04AE  8AE0              mov ah,al
000F04B0  B9AD00            mov cx,0xad
000F04B3  E461              in al,0x61
000F04B5  2402              and al,0x2
000F04B7  3AE0              cmp ah,al
000F04B9  7409              jz 0x4c4
000F04BB  E2F6              loop 0x4b3
000F04BD  32C0              xor al,al
000F04BF  E661              out 0x61,al
000F04C1  E96DFF            jmp 0x431
000F04C4  80F402            xor ah,0x2
000F04C7  80F7FF            xor bh,0xff
000F04CA  75E7              jnz 0x4b3
000F04CC  32C0              xor al,al
000F04CE  E661              out 0x61,al
000F04D0  80E920            sub cl,0x20
000F04D3  7FEC              jg 0x4c1
000F04D5  9A2D0600FC        call 0xfc00:0x62d
000F04DA  8BD0              mov dx,ax
000F04DC  74E3              jz 0x4c1
000F04DE  59                pop cx
000F04DF  E83E01            call 0x620
000F04E2  51                push cx
000F04E3  9A0000AAFE        call 0xfeaa:0x0
000F04E8  75D7              jnz 0x4c1
000F04EA  59                pop cx
000F04EB  E83201            call 0x620
000F04EE  51                push cx
000F04EF  BAF203            mov dx,0x3f2
000F04F2  EE                out dx,al
000F04F3  B262              mov dl,0x62
000F04F5  EE                out dx,al
000F04F6  E5A2              in ax,0xa2
000F04F8  F7D0              not ax
000F04FA  BA1131            mov dx,0x3111
000F04FD  A8C0              test al,0xc0
000F04FF  743D              jz 0x53e
000F0501  A880              test al,0x80
000F0503  743C              jz 0x541
000F0505  BA2803            mov dx,0x328
000F0508  EE                out dx,al
000F0509  E2FE              loop 0x509
000F050B  B224              mov dl,0x24
000F050D  EC                in al,dx
000F050E  A801              test al,0x1
000F0510  7529              jnz 0x53b
000F0512  B222              mov dl,0x22
000F0514  EC                in al,dx
000F0515  A880              test al,0x80
000F0517  7522              jnz 0x53b
000F0519  32DB              xor bl,bl
000F051B  33D2              xor dx,dx
000F051D  33ED              xor bp,bp
000F051F  B820E8            mov ax,0xe820
000F0522  8ED8              mov ds,ax
000F0524  B800E8            mov ax,0xe800
000F0527  9A830500FC        call 0xfc00:0x583
000F052C  750D              jnz 0x53b
000F052E  80F3FF            xor bl,0xff
000F0531  75EC              jnz 0x51f
000F0533  81F2FFFF          xor dx,0xffff
000F0537  75E6              jnz 0x51f
000F0539  EB06              jmp short 0x541
000F053B  BA1231            mov dx,0x3112
000F053E  E9F0FE            jmp 0x431
000F0541  59                pop cx
000F0542  E8DB00            call 0x620
000F0545  BA7A03            mov dx,0x37a
000F0548  B0C0              mov al,0xc0
000F054A  EE                out dx,al
000F054B  B0FF              mov al,0xff
000F054D  E621              out 0x21,al
000F054F  9A61008EFC        call 0xfc8e:0x61
000F0554  E4A0              in al,0xa0
000F0556  A802              test al,0x2
000F0558  741C              jz 0x576
000F055A  B80001            mov ax,0x100
000F055D  8EC0              mov es,ax
000F055F  33FF              xor di,di
000F0561  26813D58A4        cmp word [es:di],0xa458
000F0566  7505              jnz 0x56d
000F0568  EA050000FC        jmp 0xfc00:0x5
000F056D  33C0              xor ax,ax
000F056F  33D2              xor dx,dx
000F0571  EA0200E5FC        jmp 0xfce5:0x2
000F0576  B0FF              mov al,0xff
000F0578  E6A1              out 0xa1,al
000F057A  B0F0              mov al,0xf0
000F057C  E6A0              out 0xa0,al
000F057E  EA0D00BFFC        jmp 0xfcbf:0xd
000F0583  8BF0              mov si,ax
000F0585  8EC0              mov es,ax
000F0587  33FF              xor di,di
000F0589  B90001            mov cx,0x100
000F058C  83C603            add si,byte +0x3
000F058F  8BC6              mov ax,si
000F0591  33C2              xor ax,dx
000F0593  0BC5              or ax,bp
000F0595  0ADB              or bl,bl
000F0597  7405              jz 0x59e
000F0599  262B05            sub ax,[es:di]
000F059C  752B              jnz 0x5c9
000F059E  AB                stosw
000F059F  E2EB              loop 0x58c
000F05A1  E4A0              in al,0xa0
000F05A3  A801              test al,0x1
000F05A5  7522              jnz 0x5c9
000F05A7  8CC0              mov ax,es
000F05A9  052000            add ax,0x20
000F05AC  8CD9              mov cx,ds
000F05AE  3D0040            cmp ax,0x4000
000F05B1  750E              jnz 0x5c1
000F05B3  52                push dx
000F05B4  BA0203            mov dx,0x302
000F05B7  EE                out dx,al
000F05B8  BA1003            mov dx,0x310
000F05BB  EE                out dx,al
000F05BC  42                inc dx
000F05BD  EE                out dx,al
000F05BE  42                inc dx
000F05BF  EE                out dx,al
000F05C0  5A                pop dx
000F05C1  3BC1              cmp ax,cx
000F05C3  75C0              jnz 0x585
000F05C5  0ADB              or bl,bl
000F05C7  33FF              xor di,di
000F05C9  E6A2              out 0xa2,al
000F05CB  CB                retf
000F05CC  BE8305            mov si,0x583
000F05CF  BF0002            mov di,0x200
000F05D2  8EC7              mov es,di
000F05D4  33FF              xor di,di
000F05D6  51                push cx
000F05D7  B94900            mov cx,0x49
000F05DA  F32EA4            cs rep movsb
000F05DD  59                pop cx
000F05DE  9A00000002        call 0x200:0x0
000F05E3  C3                ret
000F05E4  B040              mov al,0x40
000F05E6  E6A0              out 0xa0,al
000F05E8  E4A0              in al,0xa0
000F05EA  A801              test al,0x1
000F05EC  7411              jz 0x5ff
000F05EE  E4A1              in al,0xa1
000F05F0  A80F              test al,0xf
000F05F2  750B              jnz 0x5ff
000F05F4  B8CCCC            mov ax,0xcccc
000F05F7  268905            mov [es:di],ax
000F05FA  E6A2              out 0xa2,al
000F05FC  D1E1              shl cx,1
000F05FE  CF                iret
000F05FF  F4                hlt
000F0600  0AFF              or bh,bh
000F0602  7410              jz 0x614
000F0604  FB                sti
000F0605  D0EF              shr bh,1
000F0607  8AC7              mov al,bh
000F0609  0AC3              or al,bl
000F060B  E621              out 0x21,al
000F060D  B91000            mov cx,0x10
000F0610  E2FE              loop 0x610
000F0612  EBEC              jmp short 0x600
000F0614  80C401            add ah,0x1
000F0617  B000              mov al,0x0
000F0619  E6A6              out 0xa6,al
000F061B  B020              mov al,0x20
000F061D  E620              out 0x20,al
000F061F  CF                iret
000F0620  BF00E0            mov di,0xe000
000F0623  8EC7              mov es,di
000F0625  BFCC0E            mov di,0xecc
000F0628  26890D            mov [es:di],cx
000F062B  41                inc cx
000F062C  C3                ret
000F062D  83EC10            sub sp,byte +0x10
000F0630  9A00006CFD        call 0xfd6c:0x0
000F0635  33C0              xor ax,ax
000F0637  8EC0              mov es,ax
000F0639  BF4C01            mov di,0x14c
000F063C  AB                stosw
000F063D  AA                stosb
000F063E  E5A4              in ax,0xa4
000F0640  F6C408            test ah,0x8
000F0643  745A              jz 0x69f
000F0645  BE2000            mov si,0x20
000F0648  BAD1A1            mov dx,0xa1d1
000F064B  B088              mov al,0x88
000F064D  E661              out 0x61,al
000F064F  BBA000            mov bx,0xa0
000F0652  E461              in al,0x61
000F0654  A804              test al,0x4
000F0656  7513              jnz 0x66b
000F0658  B95A07            mov cx,0x75a
000F065B  E2FE              loop 0x65b
000F065D  33C0              xor ax,ax
000F065F  8EC0              mov es,ax
000F0661  BF4C01            mov di,0x14c
000F0664  AB                stosw
000F0665  AA                stosb
000F0666  4E                dec si
000F0667  75E2              jnz 0x64b
000F0669  EB3A              jmp short 0x6a5
000F066B  4B                dec bx
000F066C  75E4              jnz 0x652
000F066E  B00C              mov al,0xc
000F0670  E661              out 0x61,al
000F0672  B9F360            mov cx,0x60f3
000F0675  D2E4              shl ah,cl
000F0677  FECD              dec ch
000F0679  75FA              jnz 0x675
000F067B  E82F00            call 0x6ad
000F067E  74DD              jz 0x65d
000F0680  BA12A1            mov dx,0xa112
000F0683  80E7E0            and bh,0xe0
000F0686  80FFA0            cmp bh,0xa0
000F0689  75D2              jnz 0x65d
000F068B  BF4C01            mov di,0x14c
000F068E  AA                stosb
000F068F  3CAA              cmp al,0xaa
000F0691  740C              jz 0x69f
000F0693  E81700            call 0x6ad
000F0696  74C5              jz 0x65d
000F0698  AA                stosb
000F0699  E81100            call 0x6ad
000F069C  74BF              jz 0x65d
000F069E  AA                stosb
000F069F  B088              mov al,0x88
000F06A1  E661              out 0x61,al
000F06A3  0AC0              or al,al
000F06A5  8BC2              mov ax,dx
000F06A7  9A00006AFD        call 0xfd6a:0x0
000F06AC  CB                retf
000F06AD  33C9              xor cx,cx
000F06AF  33DB              xor bx,bx
000F06B1  B088              mov al,0x88
000F06B3  E661              out 0x61,al
000F06B5  BA11A1            mov dx,0xa111
000F06B8  49                dec cx
000F06B9  7440              jz 0x6fb
000F06BB  E461              in al,0x61
000F06BD  A804              test al,0x4
000F06BF  75F7              jnz 0x6b8
000F06C1  49                dec cx
000F06C2  7437              jz 0x6fb
000F06C4  E461              in al,0x61
000F06C6  A804              test al,0x4
000F06C8  74F7              jz 0x6c1
000F06CA  2408              and al,0x8
000F06CC  0AD8              or bl,al
000F06CE  D1CB              ror bx,1
000F06D0  F6C704            test bh,0x4
000F06D3  74E3              jz 0x6b8
000F06D5  B103              mov cl,0x3
000F06D7  D3CB              ror bx,cl
000F06D9  BA111A            mov dx,0x1a11
000F06DC  49                dec cx
000F06DD  741C              jz 0x6fb
000F06DF  B00A              mov al,0xa
000F06E1  E620              out 0x20,al
000F06E3  E420              in al,0x20
000F06E5  A808              test al,0x8
000F06E7  74F3              jz 0x6dc
000F06E9  E460              in al,0x60
000F06EB  B440              mov ah,0x40
000F06ED  3CFF              cmp al,0xff
000F06EF  7404              jz 0x6f5
000F06F1  3AF8              cmp bh,al
000F06F3  7502              jnz 0x6f7
000F06F5  B400              mov ah,0x0
000F06F7  9E                sahf
000F06F8  BA121A            mov dx,0x1a12
000F06FB  C3                ret
000F06FC  CC                int3
000F06FD  CC                int3
000F06FE  CC                int3
000F06FF  CC                int3
000F0700  6752              a32 push dx
000F0702  5A                pop dx
000F0703  FA                cli
000F0704  1A00              sbb al,[bx+si]
000F0706  1919              sbb [bx+di],bx
000F0708  53                push bx
000F0709  1B1B              sbb bx,[bp+di]
000F070B  1C00              sbb al,0x0
000F070D  0008              add [bx+si],cl
000F070F  005340            add [bp+di+0x40],dl
000F0712  47                inc di
000F0713  F9                stc
000F0714  66006060          o32 add [bx+si+0x60],ah
000F0718  03062000          add ax,[0x20]
000F071C  0000              add [bx+si],al
000F071E  0000              add [bx+si],al
000F0720  6752              a32 push dx
000F0722  57                push di
000F0723  AC                lodsb
000F0724  1A00              sbb al,[bx+si]
000F0726  1919              sbb [bx+di],bx
000F0728  53                push bx
000F0729  1313              adc dx,[bp+di]
000F072B  1400              adc al,0x0
000F072D  0008              add [bx+si],cl
000F072F  004340            add [bp+di+0x40],al
000F0732  31BF4500          xor [bx+0x45],di
000F0736  40                inc ax
000F0737  40                inc ax
000F0738  03062000          add ax,[0x20]
000F073C  0000              add [bx+si],al
000F073E  0000              add [bx+si],al
000F0740  83EC10            sub sp,byte +0x10
000F0743  9A00006CFD        call 0xfd6c:0x0
000F0748  BAD803            mov dx,0x3d8
000F074B  B008              mov al,0x8
000F074D  33C9              xor cx,cx
000F074F  0BF6              or si,si
000F0751  7405              jz 0x758
000F0753  0C02              or al,0x2
000F0755  80C920            or cl,0x20
000F0758  EE                out dx,al
000F0759  E5A2              in ax,0xa2
000F075B  80C981            or cl,0x81
000F075E  A802              test al,0x2
000F0760  7409              jz 0x76b
000F0762  80E17F            and cl,0x7f
000F0765  80C940            or cl,0x40
000F0768  83C620            add si,byte +0x20
000F076B  33C0              xor ax,ax
000F076D  8EC0              mov es,ax
000F076F  BF2F01            mov di,0x12f
000F0772  26880D            mov [es:di],cl
000F0775  B2DB              mov dl,0xdb
000F0777  EE                out dx,al
000F0778  B110              mov cl,0x10
000F077A  B2D0              mov dl,0xd0
000F077C  8AC4              mov al,ah
000F077E  EE                out dx,al
000F077F  42                inc dx
000F0780  2EAC              cs lodsb
000F0782  EE                out dx,al
000F0783  FEC4              inc ah
000F0785  E2F3              loop 0x77a
000F0787  E2FE              loop 0x787
000F0789  E2FE              loop 0x789
000F078B  9A00006AFD        call 0xfd6a:0x0
000F0790  CB                retf
000F0791  83EC10            sub sp,byte +0x10
000F0794  9A00006CFD        call 0xfd6c:0x0
000F0799  BAD803            mov dx,0x3d8
000F079C  B008              mov al,0x8
000F079E  EE                out dx,al
000F079F  B2D3              mov dl,0xd3
000F07A1  EE                out dx,al
000F07A2  90                nop
000F07A3  4A                dec dx
000F07A4  EE                out dx,al
000F07A5  33F6              xor si,si
000F07A7  9A400070FC        call 0xfc70:0x40
000F07AC  BF00D8            mov di,0xd800
000F07AF  8EC7              mov es,di
000F07B1  33FF              xor di,di
000F07B3  33C0              xor ax,ax
000F07B5  B90005            mov cx,0x500
000F07B8  F3AB              rep stosw
000F07BA  BE2301            mov si,0x123
000F07BD  90                nop
000F07BE  B713              mov bh,0x13
000F07C0  9ACB0070FC        call 0xfc70:0xcb
000F07C5  9A00006AFD        call 0xfd6a:0x0
000F07CA  CB                retf
000F07CB  BF1400            mov di,0x14
000F07CE  32DB              xor bl,bl
000F07D0  E5A2              in ax,0xa2
000F07D2  A802              test al,0x2
000F07D4  7402              jz 0x7d8
000F07D6  F6D3              not bl
000F07D8  B90900            mov cx,0x9
000F07DB  33C0              xor ax,ax
000F07DD  2EAC              cs lodsb
000F07DF  0ADB              or bl,bl
000F07E1  7516              jnz 0x7f9
000F07E3  51                push cx
000F07E4  B107              mov cl,0x7
000F07E6  8AD0              mov dl,al
000F07E8  33C0              xor ax,ax
000F07EA  D0EA              shr dl,1
000F07EC  9C                pushf
000F07ED  D1D8              rcr ax,1
000F07EF  9D                popf
000F07F0  D1D8              rcr ax,1
000F07F2  E2F6              loop 0x7ea
000F07F4  59                pop cx
000F07F5  86E0              xchg ah,al
000F07F7  AB                stosw
000F07F8  AB                stosw
000F07F9  AB                stosw
000F07FA  AB                stosw
000F07FB  E2DE              loop 0x7db
000F07FD  83C738            add di,byte +0x38
000F0800  0ADB              or bl,bl
000F0802  7403              jz 0x807
000F0804  83C724            add di,byte +0x24
000F0807  FECF              dec bh
000F0809  7417              jz 0x822
000F080B  80FF03            cmp bh,0x3
000F080E  7504              jnz 0x814
000F0810  0ADB              or bl,bl
000F0812  7509              jnz 0x81d
000F0814  80FF01            cmp bh,0x1
000F0817  7507              jnz 0x820
000F0819  0ADB              or bl,bl
000F081B  7503              jnz 0x820
000F081D  83C612            add si,byte +0x12
000F0820  EBB6              jmp short 0x7d8
000F0822  CB                retf
000F0823  1C22              sbb al,0x22
000F0825  2222              and ah,[bp+si]
000F0827  2A22              sub ah,[bp+si]
000F0829  2222              and ah,[bp+si]
000F082B  1C08              sbb al,0x8
000F082D  1808              sbb [bx+si],cl
000F082F  0808              or [bx+si],cl
000F0831  0808              or [bx+si],cl
000F0833  081C              or [si],bl
000F0835  1C22              sbb al,0x22
000F0837  2202              and al,[bp+si]
000F0839  0408              add al,0x8
000F083B  1020              adc [bx+si],ah
000F083D  3E3E0408          ds add al,0x8
000F0841  1C02              sbb al,0x2
000F0843  0202              add al,[bp+si]
000F0845  221C              and bl,[si]
000F0847  0C0C              or al,0xc
000F0849  1414              adc al,0x14
000F084B  2424              and al,0x24
000F084D  3E0404            ds add al,0x4
000F0850  3E2020            and [ds:bx+si],ah
000F0853  3C02              cmp al,0x2
000F0855  0202              add al,[bp+si]
000F0857  221C              and bl,[si]
000F0859  1C20              sbb al,0x20
000F085B  203C              and [si],bh
000F085D  2222              and ah,[bp+si]
000F085F  2222              and ah,[bp+si]
000F0861  1C3E              sbb al,0x3e
000F0863  0204              add al,[si]
000F0865  0808              or [bx+si],cl
000F0867  0808              or [bx+si],cl
000F0869  0808              or [bx+si],cl
000F086B  1C22              sbb al,0x22
000F086D  2222              and ah,[bp+si]
000F086F  1C22              sbb al,0x22
000F0871  2222              and ah,[bp+si]
000F0873  1C1C              sbb al,0x1c
000F0875  2222              and ah,[bp+si]
000F0877  221E0202          and bl,[0x202]
000F087B  021C              add bl,[si]
000F087D  0814              or [si],dl
000F087F  2222              and ah,[bp+si]
000F0881  223E2222          and bh,[0x2222]
000F0885  223C              and bh,[si]
000F0887  2222              and ah,[bp+si]
000F0889  2438              and al,0x38
000F088B  2422              and al,0x22
000F088D  223C              and bh,[si]
000F088F  1C22              sbb al,0x22
000F0891  2020              and [bx+si],ah
000F0893  2020              and [bx+si],ah
000F0895  2022              and [bp+si],ah
000F0897  1C38              sbb al,0x38
000F0899  2422              and al,0x22
000F089B  2222              and ah,[bp+si]
000F089D  2222              and ah,[bp+si]
000F089F  2438              and al,0x38
000F08A1  3E2020            and [ds:bx+si],ah
000F08A4  203C              and [si],bh
000F08A6  2020              and [bx+si],ah
000F08A8  203E3E20          and [0x203e],bh
000F08AC  2020              and [bx+si],ah
000F08AE  3C20              cmp al,0x20
000F08B0  2020              and [bx+si],ah
000F08B2  2000              and [bx+si],al
000F08B4  003E2222          add [0x2222],bh
000F08B8  223E0000          and bh,[0x0]
000F08BC  0000              add [bx+si],al
000F08BE  3E3E3E3E3E0000    add [ds:bx+si],al
000F08C5  007F41            add [bx+0x41],bh
000F08C8  41                inc cx
000F08C9  41                inc cx
000F08CA  41                inc cx
000F08CB  41                inc cx
000F08CC  7F00              jg 0x8ce
000F08CE  007F7F            add [bx+0x7f],bh
000F08D1  7F7F              jg 0x952
000F08D3  7F7F              jg 0x954
000F08D5  7F00              jg 0x8d7
000F08D7  0008              add [bx+si],cl
000F08D9  2A1C              sub bl,[si]
000F08DB  1C2A              sbb al,0x2a
000F08DD  0800              or [bx+si],al
000F08DF  0050B0            add [bx+si-0x50],dl
000F08E2  F0EB3A            lock jmp short 0x91f
000F08E5  50                push ax
000F08E6  B0F1              mov al,0xf1
000F08E8  EB35              jmp short 0x91f
000F08EA  50                push ax
000F08EB  E4A0              in al,0xa0
000F08ED  EB3C              jmp short 0x92b
000F08EF  50                push ax
000F08F0  B0F3              mov al,0xf3
000F08F2  EB2B              jmp short 0x91f
000F08F4  50                push ax
000F08F5  B0F4              mov al,0xf4
000F08F7  EB26              jmp short 0x91f
000F08F9  50                push ax
000F08FA  B0E0              mov al,0xe0
000F08FC  EB21              jmp short 0x91f
000F08FE  50                push ax
000F08FF  B0E1              mov al,0xe1
000F0901  EB1C              jmp short 0x91f
000F0903  50                push ax
000F0904  B0E2              mov al,0xe2
000F0906  EB17              jmp short 0x91f
000F0908  50                push ax
000F0909  B0E3              mov al,0xe3
000F090B  EB12              jmp short 0x91f
000F090D  50                push ax
000F090E  B0E4              mov al,0xe4
000F0910  EB0D              jmp short 0x91f
000F0912  50                push ax
000F0913  B0E5              mov al,0xe5
000F0915  EB08              jmp short 0x91f
000F0917  50                push ax
000F0918  B0E6              mov al,0xe6
000F091A  EB03              jmp short 0x91f
000F091C  50                push ax
000F091D  B0E7              mov al,0xe7
000F091F  B4FF              mov ah,0xff
000F0921  EA080096FC        jmp 0xfc96:0x8
000F0926  50                push ax
000F0927  B0FF              mov al,0xff
000F0929  EBF4              jmp short 0x91f
000F092B  A801              test al,0x1
000F092D  750A              jnz 0x939
000F092F  A802              test al,0x2
000F0931  750A              jnz 0x93d
000F0933  A804              test al,0x4
000F0935  7506              jnz 0x93d
000F0937  58                pop ax
000F0938  CF                iret
000F0939  B0FA              mov al,0xfa
000F093B  EBE2              jmp short 0x91f
000F093D  B0F2              mov al,0xf2
000F093F  EBDE              jmp short 0x91f
000F0941  51                push cx
000F0942  06                push es
000F0943  57                push di
000F0944  33C9              xor cx,cx
000F0946  8EC1              mov es,cx
000F0948  8BF9              mov di,cx
000F094A  B80000            mov ax,0x0
000F094D  B10D              mov cl,0xd
000F094F  50                push ax
000F0950  AB                stosw
000F0951  8CC8              mov ax,cs
000F0953  AB                stosw
000F0954  58                pop ax
000F0955  050500            add ax,0x5
000F0958  83FF14            cmp di,byte +0x14
000F095B  7503              jnz 0x960
000F095D  BF8000            mov di,0x80
000F0960  E2ED              loop 0x94f
000F0962  5F                pop di
000F0963  07                pop es
000F0964  59                pop cx
000F0965  CB                retf
000F0966  0000              add [bx+si],al
000F0968  FA                cli
000F0969  06                push es
000F096A  2E8E060600        mov es,[cs:0x6]
000F096F  26FF365401        push word [es:0x154]
000F0974  26FF365201        push word [es:0x152]
000F0979  26FF365001        push word [es:0x150]
000F097E  26FF364E01        push word [es:0x14e]
000F0983  26FF364C01        push word [es:0x14c]
000F0988  26FF364A01        push word [es:0x14a]
000F098D  26A34A01          mov [es:0x14a],ax
000F0991  2689365001        mov [es:0x150],si
000F0996  26893E5201        mov [es:0x152],di
000F099B  268C1E4C01        mov [es:0x14c],ds
000F09A0  26890E4E01        mov [es:0x14e],cx
000F09A5  2689165401        mov [es:0x154],dx
000F09AA  B070              mov al,0x70
000F09AC  E6A0              out 0xa0,al
000F09AE  BA0203            mov dx,0x302
000F09B1  EE                out dx,al
000F09B2  B2D8              mov dl,0xd8
000F09B4  B008              mov al,0x8
000F09B6  EE                out dx,al
000F09B7  FC                cld
000F09B8  B000              mov al,0x0
000F09BA  B210              mov dl,0x10
000F09BC  EE                out dx,al
000F09BD  42                inc dx
000F09BE  EE                out dx,al
000F09BF  42                inc dx
000F09C0  EE                out dx,al
000F09C1  B262              mov dl,0x62
000F09C3  EE                out dx,al
000F09C4  B24E              mov dl,0x4e
000F09C6  EE                out dx,al
000F09C7  B2FF              mov dl,0xff
000F09C9  EE                out dx,al
000F09CA  B602              mov dh,0x2
000F09CC  EE                out dx,al
000F09CD  B2D0              mov dl,0xd0
000F09CF  EE                out dx,al
000F09D0  BAB001            mov dx,0x1b0
000F09D3  EE                out dx,al
000F09D4  BA4004            mov dx,0x440
000F09D7  EE                out dx,al
000F09D8  B200              mov dl,0x0
000F09DA  EE                out dx,al
000F09DB  B605              mov dh,0x5
000F09DD  EE                out dx,al
000F09DE  B606              mov dh,0x6
000F09E0  EE                out dx,al
000F09E1  B607              mov dh,0x7
000F09E3  EE                out dx,al
000F09E4  BF5500            mov di,0x55
000F09E7  33F6              xor si,si
000F09E9  33C9              xor cx,cx
000F09EB  80FCFF            cmp ah,0xff
000F09EE  BA800F            mov dx,0xf80
000F09F1  756D              jnz 0xa60
000F09F3  26A14201          mov ax,[es:0x142]
000F09F7  268B164401        mov dx,[es:0x144]
000F09FC  8EC0              mov es,ax
000F09FE  33D0              xor dx,ax
000F0A00  81FA5555          cmp dx,0x5555
000F0A04  7406              jz 0xa0c
000F0A06  81FAAAAA          cmp dx,0xaaaa
000F0A0A  7514              jnz 0xa20
000F0A0C  B800D8            mov ax,0xd800
000F0A0F  8ED8              mov ds,ax
000F0A11  B505              mov ch,0x5
000F0A13  F3A5              rep movsw
000F0A15  80FAAA            cmp dl,0xaa
000F0A18  754B              jnz 0xa65
000F0A1A  33F6              xor si,si
000F0A1C  B508              mov ch,0x8
000F0A1E  EB0B              jmp short 0xa2b
000F0A20  81FA55AA          cmp dx,0xaa55
000F0A24  750E              jnz 0xa34
000F0A26  BE180E            mov si,0xe18
000F0A29  B1F4              mov cl,0xf4
000F0A2B  B800E0            mov ax,0xe000
000F0A2E  8ED8              mov ds,ax
000F0A30  F3A5              rep movsw
000F0A32  EB31              jmp short 0xa65
000F0A34  8CD2              mov dx,ss
000F0A36  80C620            add dh,0x20
000F0A39  81E20030          and dx,0x3000
000F0A3D  81C2800F          add dx,0xf80
000F0A41  8EDA              mov ds,dx
000F0A43  B8A0D8            mov ax,0xd8a0
000F0A46  8EC0              mov es,ax
000F0A48  33FF              xor di,di
000F0A4A  B508              mov ch,0x8
000F0A4C  AC                lodsb
000F0A4D  AB                stosw
000F0A4E  E2FC              loop 0xa4c
000F0A50  B800E0            mov ax,0xe000
000F0A53  8ED8              mov ds,ax
000F0A55  33F6              xor si,si
000F0A57  B508              mov ch,0x8
000F0A59  AD                lodsw
000F0A5A  AB                stosw
000F0A5B  86C4              xchg al,ah
000F0A5D  AB                stosw
000F0A5E  E2F9              loop 0xa59
000F0A60  BF5500            mov di,0x55
000F0A63  8EC2              mov es,dx
000F0A65  8BD7              mov dx,di
000F0A67  BF3700            mov di,0x37
000F0A6A  B106              mov cl,0x6
000F0A6C  58                pop ax
000F0A6D  AB                stosw
000F0A6E  E2FC              loop 0xa6c
000F0A70  BF0200            mov di,0x2
000F0A73  8ED9              mov ds,cx
000F0A75  BE4C01            mov si,0x14c
000F0A78  8CD0              mov ax,ss
000F0A7A  AB                stosw
000F0A7B  A5                movsw
000F0A7C  58                pop ax
000F0A7D  AB                stosw
000F0A7E  58                pop ax
000F0A7F  AB                stosw
000F0A80  A5                movsw
000F0A81  8BC5              mov ax,bp
000F0A83  AB                stosw
000F0A84  58                pop ax
000F0A85  8BE8              mov bp,ax
000F0A87  AB                stosw
000F0A88  8BC4              mov ax,sp
000F0A8A  050400            add ax,0x4
000F0A8D  AB                stosw
000F0A8E  A5                movsw
000F0A8F  A5                movsw
000F0A90  8BC3              mov ax,bx
000F0A92  AB                stosw
000F0A93  A5                movsw
000F0A94  1F                pop ds
000F0A95  33FF              xor di,di
000F0A97  268C1D            mov [es:di],ds
000F0A9A  58                pop ax
000F0A9B  BF1A00            mov di,0x1a
000F0A9E  AB                stosw
000F0A9F  8BF5              mov si,bp
000F0AA1  A5                movsw
000F0AA2  33F6              xor si,si
000F0AA4  368B4404          mov ax,[ss:si+0x4]
000F0AA8  AB                stosw
000F0AA9  8B4404            mov ax,[si+0x4]
000F0AAC  AB                stosw
000F0AAD  8A4402            mov al,[si+0x2]
000F0AB0  AA                stosb
000F0AB1  8ED9              mov ds,cx
000F0AB3  BE5001            mov si,0x150
000F0AB6  890C              mov [si],cx
000F0AB8  8CC0              mov ax,es
000F0ABA  8ED0              mov ss,ax
000F0ABC  894402            mov [si+0x2],ax
000F0ABF  8BEA              mov bp,dx
000F0AC1  81C2AB07          add dx,0x7ab
000F0AC5  8BE2              mov sp,dx
000F0AC7  895404            mov [si+0x4],dx
000F0ACA  BE3101            mov si,0x131
000F0ACD  A4                movsb
000F0ACE  E4A0              in al,0xa0
000F0AD0  AA                stosb
000F0AD1  E4A1              in al,0xa1
000F0AD3  240F              and al,0xf
000F0AD5  AA                stosb
000F0AD6  B40C              mov ah,0xc
000F0AD8  BAD003            mov dx,0x3d0
000F0ADB  8AC4              mov al,ah
000F0ADD  EE                out dx,al
000F0ADE  B2D1              mov dl,0xd1
000F0AE0  EC                in al,dx
000F0AE1  AA                stosb
000F0AE2  FEC4              inc ah
000F0AE4  80FC10            cmp ah,0x10
000F0AE7  75EF              jnz 0xad8
000F0AE9  B260              mov dl,0x60
000F0AEB  B040              mov al,0x40
000F0AED  EE                out dx,al
000F0AEE  E8D700            call 0xbc8
000F0AF1  B45C              mov ah,0x5c
000F0AF3  8AC4              mov al,ah
000F0AF5  B260              mov dl,0x60
000F0AF7  EE                out dx,al
000F0AF8  E8CD00            call 0xbc8
000F0AFB  B261              mov dl,0x61
000F0AFD  EC                in al,dx
000F0AFE  AA                stosb
000F0AFF  FECC              dec ah
000F0B01  80FC4F            cmp ah,0x4f
000F0B04  75ED              jnz 0xaf3
000F0B06  B260              mov dl,0x60
000F0B08  B000              mov al,0x0
000F0B0A  EE                out dx,al
000F0B0B  9A910070FC        call 0xfc70:0x91
000F0B10  8BFD              mov di,bp
000F0B12  B81311            mov ax,0x1113
000F0B15  AB                stosw
000F0B16  A14A01            mov ax,[0x14a]
000F0B19  E8B400            call 0xbd0
000F0B1C  B81113            mov ax,0x1311
000F0B1F  AB                stosw
000F0B20  33D2              xor dx,dx
000F0B22  06                push es
000F0B23  1F                pop ds
000F0B24  33F6              xor si,si
000F0B26  42                inc dx
000F0B27  80FA16            cmp dl,0x16
000F0B2A  742A              jz 0xb56
000F0B2C  80FA08            cmp dl,0x8
000F0B2F  7405              jz 0xb36
000F0B31  80FA0F            cmp dl,0xf
000F0B34  7507              jnz 0xb3d
000F0B36  B92800            mov cx,0x28
000F0B39  B013              mov al,0x13
000F0B3B  F3AA              rep stosb
000F0B3D  80FA12            cmp dl,0x12
000F0B40  720A              jc 0xb4c
000F0B42  B81313            mov ax,0x1313
000F0B45  AB                stosw
000F0B46  AC                lodsb
000F0B47  E89400            call 0xbde
000F0B4A  EB04              jmp short 0xb50
000F0B4C  AD                lodsw
000F0B4D  E88000            call 0xbd0
000F0B50  B81313            mov ax,0x1313
000F0B53  AB                stosw
000F0B54  EBD0              jmp short 0xb26
000F0B56  2BFD              sub di,bp
000F0B58  57                push di
000F0B59  BF4900            mov di,0x49
000F0B5C  8BC5              mov ax,bp
000F0B5E  AB                stosw
000F0B5F  8CC0              mov ax,es
000F0B61  AB                stosw
000F0B62  33C0              xor ax,ax
000F0B64  AB                stosw
000F0B65  B80417            mov ax,0x1704
000F0B68  AB                stosw
000F0B69  58                pop ax
000F0B6A  83C702            add di,byte +0x2
000F0B6D  AB                stosw
000F0B6E  06                push es
000F0B6F  B84500            mov ax,0x45
000F0B72  50                push ax
000F0B73  9A00004CFD        call 0xfd4c:0x0
000F0B78  BAD803            mov dx,0x3d8
000F0B7B  B000              mov al,0x0
000F0B7D  EE                out dx,al
000F0B7E  9A740167FE        call 0xfe67:0x174
000F0B83  9A4B0296FC        call 0xfc96:0x24b
000F0B88  9A5B0296FC        call 0xfc96:0x25b
000F0B8D  33D2              xor dx,dx
000F0B8F  8EDA              mov ds,dx
000F0B91  A14A01            mov ax,[0x14a]
000F0B94  80FCFF            cmp ah,0xff
000F0B97  7406              jz 0xb9f
000F0B99  33E4              xor sp,sp
000F0B9B  8ED2              mov ss,dx
000F0B9D  EB07              jmp short 0xba6
000F0B9F  50                push ax
000F0BA0  9A000038FF        call 0xff38:0x0
000F0BA5  58                pop ax
000F0BA6  EA0200E5FC        jmp 0xfce5:0x2
000F0BAB  B002              mov al,0x2
000F0BAD  E661              out 0x61,al
000F0BAF  B0C8              mov al,0xc8
000F0BB1  9A9E036EFD        call 0xfd6e:0x39e
000F0BB6  B088              mov al,0x88
000F0BB8  E661              out 0x61,al
000F0BBA  CB                retf
000F0BBB  E4A0              in al,0xa0
000F0BBD  A802              test al,0x2
000F0BBF  75FA              jnz 0xbbb
000F0BC1  E4A0              in al,0xa0
000F0BC3  A802              test al,0x2
000F0BC5  74FA              jz 0xbc1
000F0BC7  CB                retf
000F0BC8  B001              mov al,0x1
000F0BCA  9A9E036EFD        call 0xfd6e:0x39e
000F0BCF  C3                ret
000F0BD0  B104              mov cl,0x4
000F0BD2  50                push ax
000F0BD3  D3E8              shr ax,cl
000F0BD5  D2E8              shr al,cl
000F0BD7  250F0F            and ax,0xf0f
000F0BDA  86C4              xchg al,ah
000F0BDC  AB                stosw
000F0BDD  58                pop ax
000F0BDE  B104              mov cl,0x4
000F0BE0  D3E0              shl ax,cl
000F0BE2  D2E8              shr al,cl
000F0BE4  250F0F            and ax,0xf0f
000F0BE7  86C4              xchg al,ah
000F0BE9  AB                stosw
000F0BEA  C3                ret
000F0BEB  CC                int3
000F0BEC  CC                int3
000F0BED  CC                int3
000F0BEE  CC                int3
000F0BEF  CC                int3
000F0BF0  C9                leave
000F0BF1  C2D4F5            ret 0xf5d4
000F0BF4  F5                cmc
000F0BF5  F5                cmc
000F0BF6  F040              lock inc ax
000F0BF8  40                inc ax
000F0BF9  40                inc ax
000F0BFA  40                inc ax
000F0BFB  40                inc ax
000F0BFC  40                inc ax
000F0BFD  33D2              xor dx,dx
000F0BFF  52                push dx
000F0C00  32C0              xor al,al
000F0C02  BA2C03            mov dx,0x32c
000F0C05  EE                out dx,al
000F0C06  5A                pop dx
000F0C07  33C0              xor ax,ax
000F0C09  33DB              xor bx,bx
000F0C0B  8EDB              mov ds,bx
000F0C0D  8AA73101          mov ah,[bx+0x131]
000F0C11  80EC10            sub ah,0x10
000F0C14  8ED0              mov ss,ax
000F0C16  33E4              xor sp,sp
000F0C18  81EC4603          sub sp,0x346
000F0C1C  8BEC              mov bp,sp
000F0C1E  895600            mov [bp+0x0],dx
000F0C21  8D4612            lea ax,[bp+0x12]
000F0C24  89874601          mov [bx+0x146],ax
000F0C28  8C974801          mov [bx+0x148],ss
000F0C2C  885E33            mov [bp+0x33],bl
000F0C2F  E8DF01            call 0xe11
000F0C32  33F6              xor si,si
000F0C34  BA0100            mov dx,0x1
000F0C37  88761C            mov [bp+0x1c],dh
000F0C3A  C74612D9E2        mov word [bp+0x12],0xe2d9
000F0C3F  C6461D08          mov byte [bp+0x1d],0x8
000F0C43  16                push ss
000F0C44  8D4612            lea ax,[bp+0x12]
000F0C47  50                push ax
000F0C48  9A00006EFD        call 0xfd6e:0x0
000F0C4D  884238            mov [bp+si+0x38],al
000F0C50  3C00              cmp al,0x0
000F0C52  7403              jz 0xc57
000F0C54  E94D01            jmp 0xda4
000F0C57  C746140000        mov word [bp+0x14],0x0
000F0C5C  C7461240D9        mov word [bp+0x12],0xd940
000F0C61  8D4646            lea ax,[bp+0x46]
000F0C64  894618            mov [bp+0x18],ax
000F0C67  8C561A            mov [bp+0x1a],ss
000F0C6A  895616            mov [bp+0x16],dx
000F0C6D  16                push ss
000F0C6E  8D4612            lea ax,[bp+0x12]
000F0C71  50                push ax
000F0C72  9A00006EFD        call 0xfd6e:0x0
000F0C77  3C00              cmp al,0x0
000F0C79  7438              jz 0xcb3
000F0C7B  807E1C03          cmp byte [bp+0x1c],0x3
000F0C7F  752B              jnz 0xcac
000F0C81  3C04              cmp al,0x4
000F0C83  7527              jnz 0xcac
000F0C85  837E1400          cmp word [bp+0x14],byte +0x0
000F0C89  7521              jnz 0xcac
000F0C8B  C74612C3D9        mov word [bp+0x12],0xd9c3
000F0C90  33C0              xor ax,ax
000F0C92  89462E            mov [bp+0x2e],ax
000F0C95  B80100            mov ax,0x1
000F0C98  894630            mov [bp+0x30],ax
000F0C9B  894614            mov [bp+0x14],ax
000F0C9E  B8C9FD            mov ax,0xfdc9
000F0CA1  89462C            mov [bp+0x2c],ax
000F0CA4  B8E104            mov ax,0x4e1
000F0CA7  89462A            mov [bp+0x2a],ax
000F0CAA  EBB5              jmp short 0xc61
000F0CAC  C6463300          mov byte [bp+0x33],0x0
000F0CB0  E9E600            jmp 0xd99
000F0CB3  807E50D7          cmp byte [bp+0x50],0xd7
000F0CB7  7513              jnz 0xccc
000F0CB9  56                push si
000F0CBA  FC                cld
000F0CBB  0E                push cs
000F0CBC  1F                pop ds
000F0CBD  8D360000          lea si,[0x0]
000F0CC1  16                push ss
000F0CC2  07                pop es
000F0CC3  8D7E5E            lea di,[bp+0x5e]
000F0CC6  B90D00            mov cx,0xd
000F0CC9  F3A6              repe cmpsb
000F0CCB  5E                pop si
000F0CCC  B012              mov al,0x12
000F0CCE  7526              jnz 0xcf6
000F0CD0  8B464A            mov ax,[bp+0x4a]
000F0CD3  894624            mov [bp+0x24],ax
000F0CD6  8B464C            mov ax,[bp+0x4c]
000F0CD9  894626            mov [bp+0x26],ax
000F0CDC  8B464E            mov ax,[bp+0x4e]
000F0CDF  894628            mov [bp+0x28],ax
000F0CE2  80BE8F0048        cmp byte [bp+0x8f],0x48
000F0CE7  7504              jnz 0xced
000F0CE9  C6461D09          mov byte [bp+0x1d],0x9
000F0CED  83BE500100        cmp word [bp+0x150],byte +0x0
000F0CF2  7505              jnz 0xcf9
000F0CF4  B010              mov al,0x10
000F0CF6  E9A600            jmp 0xd9f
000F0CF9  387633            cmp [bp+0x33],dh
000F0CFC  7409              jz 0xd07
000F0CFE  9A910070FC        call 0xfc70:0x91
000F0D03  C6463300          mov byte [bp+0x33],0x0
000F0D07  2BA65001          sub sp,[bp+0x150]
000F0D0B  81E4F0FF          and sp,0xfff0
000F0D0F  C7461240D9        mov word [bp+0x12],0xd940
000F0D14  8B864E01          mov ax,[bp+0x14e]
000F0D18  894614            mov [bp+0x14],ax
000F0D1B  896618            mov [bp+0x18],sp
000F0D1E  8C561A            mov [bp+0x1a],ss
000F0D21  FFB65001          push word [bp+0x150]
000F0D25  16                push ss
000F0D26  8D4612            lea ax,[bp+0x12]
000F0D29  50                push ax
000F0D2A  16                push ss
000F0D2B  8D4646            lea ax,[bp+0x46]
000F0D2E  50                push ax
000F0D2F  9A000046FE        call 0xfe46:0x0
000F0D34  8A461F            mov al,[bp+0x1f]
000F0D37  3C00              cmp al,0x0
000F0D39  755E              jnz 0xd99
000F0D3B  807E1C03          cmp byte [bp+0x1c],0x3
000F0D3F  7C11              jl 0xd52
000F0D41  E8D800            call 0xe1c
000F0D44  3C00              cmp al,0x0
000F0D46  7551              jnz 0xd99
000F0D48  C74612D7D9        mov word [bp+0x12],0xd9d7
000F0D4D  80FC00            cmp ah,0x0
000F0D50  7505              jnz 0xd57
000F0D52  C7461240D9        mov word [bp+0x12],0xd940
000F0D57  8BC4              mov ax,sp
000F0D59  B104              mov cl,0x4
000F0D5B  D3E8              shr ax,cl
000F0D5D  8CD1              mov cx,ss
000F0D5F  03C1              add ax,cx
000F0D61  16                push ss
000F0D62  8D7E34            lea di,[bp+0x34]
000F0D65  57                push di
000F0D66  50                push ax
000F0D67  16                push ss
000F0D68  8D4612            lea ax,[bp+0x12]
000F0D6B  50                push ax
000F0D6C  16                push ss
000F0D6D  8D4646            lea ax,[bp+0x46]
000F0D70  50                push ax
000F0D71  9A000054FE        call 0xfe54:0x0
000F0D76  8A461F            mov al,[bp+0x1f]
000F0D79  3C00              cmp al,0x0
000F0D7B  751C              jnz 0xd99
000F0D7D  8A5E1C            mov bl,[bp+0x1c]
000F0D80  C47E34            les di,[bp+0x34]
000F0D83  56                push si
000F0D84  BEDEFD            mov si,0xfdde
000F0D87  36FF34            push word [ss:si]
000F0D8A  36881C            mov [ss:si],bl
000F0D8D  FF7600            push word [bp+0x0]
000F0D90  9D                popf
000F0D91  90                nop
000F0D92  FF6E34            jmp far [bp+0x34]
000F0D95  368F04            pop word [ss:si]
000F0D98  5E                pop si
000F0D99  FA                cli
000F0D9A  E87400            call 0xe11
000F0D9D  33D2              xor dx,dx
000F0D9F  884238            mov [bp+si+0x38],al
000F0DA2  8BE5              mov sp,bp
000F0DA4  03F2              add si,dx
000F0DA6  8BC6              mov ax,si
000F0DA8  88461C            mov [bp+0x1c],al
000F0DAB  83FA00            cmp dx,byte +0x0
000F0DAE  7407              jz 0xdb7
000F0DB0  3C04              cmp al,0x4
000F0DB2  7303              jnc 0xdb7
000F0DB4  E983FE            jmp 0xc3a
000F0DB7  807E3301          cmp byte [bp+0x33],0x1
000F0DBB  7407              jz 0xdc4
000F0DBD  C6463301          mov byte [bp+0x33],0x1
000F0DC1  E81100            call 0xdd5
000F0DC4  E82000            call 0xde7
000F0DC7  B00A              mov al,0xa
000F0DC9  E620              out 0x20,al
000F0DCB  90                nop
000F0DCC  E420              in al,0x20
000F0DCE  A814              test al,0x14
000F0DD0  74F5              jz 0xdc7
000F0DD2  E95AFE            jmp 0xc2f
000F0DD5  9A61008EFC        call 0xfc8e:0x61
000F0DDA  B0F0              mov al,0xf0
000F0DDC  E6A0              out 0xa0,al
000F0DDE  9A5A0182FE        call 0xfe82:0x15a
000F0DE3  33C9              xor cx,cx
000F0DE5  EB24              jmp short 0xe0b
000F0DE7  C6463C12          mov byte [bp+0x3c],0x12
000F0DEB  8B4638            mov ax,[bp+0x38]
000F0DEE  80E4FE            and ah,0xfe
000F0DF1  D1E8              shr ax,1
000F0DF3  89463D            mov [bp+0x3d],ax
000F0DF6  8B463A            mov ax,[bp+0x3a]
000F0DF9  80E4FE            and ah,0xfe
000F0DFC  D1E8              shr ax,1
000F0DFE  89463F            mov [bp+0x3f],ax
000F0E01  C6464112          mov byte [bp+0x41],0x12
000F0E05  8D463C            lea ax,[bp+0x3c]
000F0E08  B90600            mov cx,0x6
000F0E0B  9A000082FE        call 0xfe82:0x0
000F0E10  C3                ret
000F0E11  C746380101        mov word [bp+0x38],0x101
000F0E16  C7463A0101        mov word [bp+0x3a],0x101
000F0E1B  C3                ret
000F0E1C  C74612C8E2        mov word [bp+0x12],0xe2c8
000F0E21  8D4646            lea ax,[bp+0x46]
000F0E24  894618            mov [bp+0x18],ax
000F0E27  8C561A            mov [bp+0x1a],ss
000F0E2A  16                push ss
000F0E2B  8D4612            lea ax,[bp+0x12]
000F0E2E  50                push ax
000F0E2F  9A00006EFD        call 0xfd6e:0x0
000F0E34  3C00              cmp al,0x0
000F0E36  7519              jnz 0xe51
000F0E38  C74612C8D9        mov word [bp+0x12],0xd9c8
000F0E3D  8D864602          lea ax,[bp+0x246]
000F0E41  89462A            mov [bp+0x2a],ax
000F0E44  8C562C            mov [bp+0x2c],ss
000F0E47  16                push ss
000F0E48  8D4612            lea ax,[bp+0x12]
000F0E4B  50                push ax
000F0E4C  9A00006EFD        call 0xfd6e:0x0
000F0E51  C3                ret
000F0E52  33C9              xor cx,cx
000F0E54  33DB              xor bx,bx
000F0E56  81EC0002          sub sp,0x200
000F0E5A  8BEC              mov bp,sp
000F0E5C  FC                cld
000F0E5D  894E06            mov [bp+0x6],cx
000F0E60  895E04            mov [bp+0x4],bx
000F0E63  894602            mov [bp+0x2],ax
000F0E66  52                push dx
000F0E67  33DB              xor bx,bx
000F0E69  E5A4              in ax,0xa4
000F0E6B  F6C408            test ah,0x8
000F0E6E  7509              jnz 0xe79
000F0E70  B380              mov bl,0x80
000F0E72  83F900            cmp cx,byte +0x0
000F0E75  7402              jz 0xe79
000F0E77  B340              mov bl,0x40
000F0E79  9A2D0600FC        call 0xfc00:0x62d
000F0E7E  885E00            mov [bp+0x0],bl
000F0E81  B0FE              mov al,0xfe
000F0E83  E6A1              out 0xa1,al
000F0E85  9A4B0296FC        call 0xfc96:0x24b
000F0E8A  B070              mov al,0x70
000F0E8C  E6A0              out 0xa0,al
000F0E8E  BA6203            mov dx,0x362
000F0E91  EE                out dx,al
000F0E92  E87102            call 0x1106
000F0E95  58                pop ax
000F0E96  8AD4              mov dl,ah
000F0E98  80E2F0            and dl,0xf0
000F0E9B  80FAE0            cmp dl,0xe0
000F0E9E  7406              jz 0xea6
000F0EA0  807E03FF          cmp byte [bp+0x3],0xff
000F0EA4  7507              jnz 0xead
000F0EA6  C6460100          mov byte [bp+0x1],0x0
000F0EAA  E9B601            jmp 0x1063
000F0EAD  C6460101          mov byte [bp+0x1],0x1
000F0EB1  F6460080          test byte [bp+0x0],0x80
000F0EB5  7407              jz 0xebe
000F0EB7  C6460104          mov byte [bp+0x1],0x4
000F0EBB  E9D601            jmp 0x1094
000F0EBE  E81103            call 0x11d2
000F0EC1  C6460E01          mov byte [bp+0xe],0x1
000F0EC5  16                push ss
000F0EC6  8D460E            lea ax,[bp+0xe]
000F0EC9  50                push ax
000F0ECA  F6460040          test byte [bp+0x0],0x40
000F0ECE  7405              jz 0xed5
000F0ED0  FF5E04            call far [bp+0x4]
000F0ED3  EB05              jmp short 0xeda
000F0ED5  9A08003DFD        call 0xfd3d:0x8
000F0EDA  F6C404            test ah,0x4
000F0EDD  7403              jz 0xee2
000F0EDF  FF460C            inc word [bp+0xc]
000F0EE2  F6C408            test ah,0x8
000F0EE5  7503              jnz 0xeea
000F0EE7  E9AA01            jmp 0x1094
000F0EEA  3C15              cmp al,0x15
000F0EEC  7509              jnz 0xef7
000F0EEE  804E0001          or byte [bp+0x0],0x1
000F0EF2  C686BC0108        mov byte [bp+0x1bc],0x8
000F0EF7  3C16              cmp al,0x16
000F0EF9  7509              jnz 0xf04
000F0EFB  806600FE          and byte [bp+0x0],0xfe
000F0EFF  C686BC0100        mov byte [bp+0x1bc],0x0
000F0F04  8A4611            mov al,[bp+0x11]
000F0F07  50                push ax
000F0F08  B107              mov cl,0x7
000F0F0A  50                push ax
000F0F0B  D2E8              shr al,cl
000F0F0D  88868101          mov [bp+0x181],al
000F0F11  58                pop ax
000F0F12  247F              and al,0x7f
000F0F14  B104              mov cl,0x4
000F0F16  D3E0              shl ax,cl
000F0F18  D2E8              shr al,cl
000F0F1A  250F0F            and ax,0xf0f
000F0F1D  86C4              xchg al,ah
000F0F1F  89868301          mov [bp+0x183],ax
000F0F23  58                pop ax
000F0F24  BE8904            mov si,0x489
000F0F27  90                nop
000F0F28  F6460040          test byte [bp+0x0],0x40
000F0F2C  740C              jz 0xf3a
000F0F2E  F6C480            test ah,0x80
000F0F31  751F              jnz 0xf52
000F0F33  F6C440            test ah,0x40
000F0F36  752D              jnz 0xf65
000F0F38  EB11              jmp short 0xf4b
000F0F3A  F6C401            test ah,0x1
000F0F3D  740F              jz 0xf4e
000F0F3F  3CFF              cmp al,0xff
000F0F41  740F              jz 0xf52
000F0F43  247F              and al,0x7f
000F0F45  741E              jz 0xf65
000F0F47  3C54              cmp al,0x54
000F0F49  731A              jnc 0xf65
000F0F4B  EB41              jmp short 0xf8e
000F0F4D  90                nop
000F0F4E  3C00              cmp al,0x0
000F0F50  7506              jnz 0xf58
000F0F52  FF4608            inc word [bp+0x8]
000F0F55  E93C01            jmp 0x1094
000F0F58  247F              and al,0x7f
000F0F5A  98                cbw
000F0F5B  03F0              add si,ax
000F0F5D  0E                push cs
000F0F5E  1F                pop ds
000F0F5F  8A04              mov al,[si]
000F0F61  3C00              cmp al,0x0
000F0F63  7506              jnz 0xf6b
000F0F65  FF460A            inc word [bp+0xa]
000F0F68  E92901            jmp 0x1094
000F0F6B  8AE0              mov ah,al
000F0F6D  8DBE9000          lea di,[bp+0x90]
000F0F71  B105              mov cl,0x5
000F0F73  D2E8              shr al,cl
000F0F75  3C00              cmp al,0x0
000F0F77  7407              jz 0xf80
000F0F79  83C720            add di,byte +0x20
000F0F7C  FEC8              dec al
000F0F7E  75F5              jnz 0xf75
000F0F80  80E41F            and ah,0x1f
000F0F83  8AC4              mov al,ah
000F0F85  98                cbw
000F0F86  03F8              add di,ax
000F0F88  16                push ss
000F0F89  07                pop es
000F0F8A  26803501          xor byte [es:di],0x1
000F0F8E  8A460F            mov al,[bp+0xf]
000F0F91  3C08              cmp al,0x8
000F0F93  7436              jz 0xfcb
000F0F95  3C07              cmp al,0x7
000F0F97  7432              jz 0xfcb
000F0F99  3C0A              cmp al,0xa
000F0F9B  732E              jnc 0xfcb
000F0F9D  F6460004          test byte [bp+0x0],0x4
000F0FA1  7414              jz 0xfb7
000F0FA3  8B96BE01          mov dx,[bp+0x1be]
000F0FA7  80FA01            cmp dl,0x1
000F0FAA  740B              jz 0xfb7
000F0FAC  80FE01            cmp dh,0x1
000F0FAF  7506              jnz 0xfb7
000F0FB1  3C03              cmp al,0x3
000F0FB3  7302              jnc 0xfb7
000F0FB5  040A              add al,0xa
000F0FB7  804E0004          or byte [bp+0x0],0x4
000F0FBB  884601            mov [bp+0x1],al
000F0FBE  C686C2010D        mov byte [bp+0x1c2],0xd
000F0FC3  C686C50109        mov byte [bp+0x1c5],0x9
000F0FC8  E9C900            jmp 0x1094
000F0FCB  807E0F14          cmp byte [bp+0xf],0x14
000F0FCF  75F7              jnz 0xfc8
000F0FD1  806600FB          and byte [bp+0x0],0xfb
000F0FD5  8A5601            mov dl,[bp+0x1]
000F0FD8  80FA00            cmp dl,0x0
000F0FDB  7436              jz 0x1013
000F0FDD  8BC4              mov ax,sp
000F0FDF  80E4C0            and ah,0xc0
000F0FE2  7407              jz 0xfeb
000F0FE4  8CD0              mov ax,ss
000F0FE6  80FC10            cmp ah,0x10
000F0FE9  7528              jnz 0x1013
000F0FEB  16                push ss
000F0FEC  1F                pop ds
000F0FED  8BF5              mov si,bp
000F0FEF  8CD0              mov ax,ss
000F0FF1  80C420            add ah,0x20
000F0FF4  250030            and ax,0x3000
000F0FF7  80FC10            cmp ah,0x10
000F0FFA  7502              jnz 0xffe
000F0FFC  B420              mov ah,0x20
000F0FFE  8EC0              mov es,ax
000F1000  B90002            mov cx,0x200
000F1003  33FF              xor di,di
000F1005  2BF9              sub di,cx
000F1007  8BEF              mov bp,di
000F1009  F3A4              rep movsb
000F100B  8BE5              mov sp,bp
000F100D  8CC0              mov ax,es
000F100F  8ED0              mov ss,ax
000F1011  0E                push cs
000F1012  1F                pop ds
000F1013  F6460001          test byte [bp+0x0],0x1
000F1017  7415              jz 0x102e
000F1019  804E0002          or byte [bp+0x0],0x2
000F101D  80FA0C            cmp dl,0xc
000F1020  750C              jnz 0x102e
000F1022  EA050000FC        jmp 0xfc00:0x5
000F1027  B0C8              mov al,0xc8
000F1029  9A9E036EFD        call 0xfd6e:0x39e
000F102E  C686C2010D        mov byte [bp+0x1c2],0xd
000F1033  C686C50109        mov byte [bp+0x1c5],0x9
000F1038  808EBC0104        or byte [bp+0x1bc],0x4
000F103D  E89201            call 0x11d2
000F1040  83EC10            sub sp,byte +0x10
000F1043  9A00006CFD        call 0xfd6c:0x0
000F1048  9A740167FE        call 0xfe67:0x174
000F104D  8A4601            mov al,[bp+0x1]
000F1050  98                cbw
000F1051  8BF0              mov si,ax
000F1053  D1E6              shl si,1
000F1055  D1E6              shl si,1
000F1057  2403              and al,0x3
000F1059  2EFF9C7802        call far [cs:si+0x278]
000F105E  9A00006AFD        call 0xfd6a:0x0
000F1063  C686C2010C        mov byte [bp+0x1c2],0xc
000F1068  C686C50100        mov byte [bp+0x1c5],0x0
000F106D  80A6BC0108        and byte [bp+0x1bc],0x8
000F1072  86C4              xchg al,ah
000F1074  8986CC01          mov [bp+0x1cc],ax
000F1078  807E0103          cmp byte [bp+0x1],0x3
000F107C  720A              jc 0x1088
000F107E  3D0000            cmp ax,0x0
000F1081  740E              jz 0x1091
000F1083  3D000A            cmp ax,0xa00
000F1086  7409              jz 0x1091
000F1088  806600FC          and byte [bp+0x0],0xfc
000F108C  C686BC0100        mov byte [bp+0x1bc],0x0
000F1091  E83E01            call 0x11d2
000F1094  F6460080          test byte [bp+0x0],0x80
000F1098  741C              jz 0x10b6
000F109A  B9E803            mov cx,0x3e8
000F109D  E85C00            call 0x10fc
000F10A0  E4A0              in al,0xa0
000F10A2  A802              test al,0x2
000F10A4  7507              jnz 0x10ad
000F10A6  E2F5              loop 0x109d
000F10A8  EA000000FC        jmp 0xfc00:0x0
000F10AD  81F9E803          cmp cx,0x3e8
000F10B1  74DE              jz 0x1091
000F10B3  E978FF            jmp 0x102e
000F10B6  E4A0              in al,0xa0
000F10B8  A802              test al,0x2
000F10BA  74EC              jz 0x10a8
000F10BC  F6460002          test byte [bp+0x0],0x2
000F10C0  7503              jnz 0x10c5
000F10C2  E9F9FD            jmp 0xebe
000F10C5  E95FFF            jmp 0x1027
000F10C8  3004              xor [si],al
000F10CA  E5FC              in ax,0xfc
000F10CC  0E                push cs
000F10CD  0080FFC8          add [bx+si+0xc8ff],al
000F10D1  0180FFC3          add [bx+si+0xc3ff],ax
000F10D5  0280FF00          add al,[bx+si+0xff]
000F10D9  00B9FE00          add [bx+di+0xfe],bh
000F10DD  00B9FE00          add [bx+di+0xfe],bh
000F10E1  00B9FE89          add [bx+di+0x89fe],bh
000F10E5  04E5              add al,0xe5
000F10E7  FC                cld
000F10E8  8904              mov [si],ax
000F10EA  E5FC              in ax,0xfc
000F10EC  0800              or [bx+si],al
000F10EE  B3FF              mov bl,0xff
000F10F0  4B                dec bx
000F10F1  04E5              add al,0xe5
000F10F3  FC                cld
000F10F4  5D                pop bp
000F10F5  00B3FF00          add [bp+di+0xff],dh
000F10F9  0000              add [bx+si],al
000F10FB  FC                cld
000F10FC  50                push ax
000F10FD  B001              mov al,0x1
000F10FF  9A9E036EFD        call 0xfd6e:0x39e
000F1104  58                pop ax
000F1105  C3                ret
000F1106  9A910070FC        call 0xfc70:0x91
000F110B  B088              mov al,0x88
000F110D  E661              out 0x61,al
000F110F  16                push ss
000F1110  07                pop es
000F1111  8D7E3E            lea di,[bp+0x3e]
000F1114  B013              mov al,0x13
000F1116  B94F00            mov cx,0x4f
000F1119  F3AA              rep stosb
000F111B  B8FF0D            mov ax,0xdff
000F111E  AB                stosw
000F111F  B003              mov al,0x3
000F1121  AA                stosb
000F1122  0E                push cs
000F1123  1F                pop ds
000F1124  BE0905            mov si,0x509
000F1127  90                nop
000F1128  B107              mov cl,0x7
000F112A  51                push cx
000F112B  B104              mov cl,0x4
000F112D  51                push cx
000F112E  B108              mov cl,0x8
000F1130  8A14              mov dl,[si]
000F1132  46                inc si
000F1133  B013              mov al,0x13
000F1135  D0E2              shl dl,1
000F1137  7302              jnc 0x113b
000F1139  B011              mov al,0x11
000F113B  AA                stosb
000F113C  E2F5              loop 0x1133
000F113E  59                pop cx
000F113F  E2EC              loop 0x112d
000F1141  83EF03            sub di,byte +0x3
000F1144  B8FF0D            mov ax,0xdff
000F1147  AB                stosw
000F1148  4E                dec si
000F1149  AC                lodsb
000F114A  2407              and al,0x7
000F114C  AA                stosb
000F114D  59                pop cx
000F114E  E2DA              loop 0x112a
000F1150  BE2505            mov si,0x525
000F1153  90                nop
000F1154  B162              mov cl,0x62
000F1156  90                nop
000F1157  90                nop
000F1158  F3A4              rep movsb
000F115A  8D7E08            lea di,[bp+0x8]
000F115D  B000              mov al,0x0
000F115F  B106              mov cl,0x6
000F1161  F3AA              rep stosb
000F1163  8B4602            mov ax,[bp+0x2]
000F1166  86E0              xchg ah,al
000F1168  8986B601          mov [bp+0x1b6],ax
000F116C  8ED9              mov ds,cx
000F116E  F64600C0          test byte [bp+0x0],0xc0
000F1172  7507              jnz 0x117b
000F1174  803E4C01AA        cmp byte [0x14c],0xaa
000F1179  7513              jnz 0x118e
000F117B  B013              mov al,0x13
000F117D  8DBE9000          lea di,[bp+0x90]
000F1181  B107              mov cl,0x7
000F1183  51                push cx
000F1184  B11D              mov cl,0x1d
000F1186  F3AA              rep stosb
000F1188  59                pop cx
000F1189  83C703            add di,byte +0x3
000F118C  E2F5              loop 0x1183
000F118E  A14C01            mov ax,[0x14c]
000F1191  88867401          mov [bp+0x174],al
000F1195  88A67901          mov [bp+0x179],ah
000F1199  A04E01            mov al,[0x14e]
000F119C  88867E01          mov [bp+0x17e],al
000F11A0  A03101            mov al,[0x131]
000F11A3  88869D01          mov [bp+0x19d],al
000F11A7  0E                push cs
000F11A8  1F                pop ds
000F11A9  E5A2              in ax,0xa2
000F11AB  35FFFF            xor ax,0xffff
000F11AE  88A6A101          mov [bp+0x1a1],ah
000F11B2  8886A501          mov [bp+0x1a5],al
000F11B6  E5A4              in ax,0xa4
000F11B8  35FFFF            xor ax,0xffff
000F11BB  88A6A901          mov [bp+0x1a9],ah
000F11BF  8886AD01          mov [bp+0x1ad],al
000F11C3  C6463605          mov byte [bp+0x36],0x5
000F11C7  16                push ss
000F11C8  8D462C            lea ax,[bp+0x2c]
000F11CB  50                push ax
000F11CC  9A00004CFD        call 0xfd4c:0x0
000F11D1  C3                ret
000F11D2  BA6003            mov dx,0x360
000F11D5  B040              mov al,0x40
000F11D7  EE                out dx,al
000F11D8  E821FF            call 0x10fc
000F11DB  B104              mov cl,0x4
000F11DD  8D7E78            lea di,[bp+0x78]
000F11E0  90                nop
000F11E1  BE2304            mov si,0x423
000F11E4  90                nop
000F11E5  33DB              xor bx,bx
000F11E7  B45C              mov ah,0x5c
000F11E9  8AC4              mov al,ah
000F11EB  B260              mov dl,0x60
000F11ED  EE                out dx,al
000F11EE  E80BFF            call 0x10fc
000F11F1  B261              mov dl,0x61
000F11F3  EC                in al,dx
000F11F4  8A1C              mov bl,[si]
000F11F6  53                push bx
000F11F7  80E30F            and bl,0xf
000F11FA  22C3              and al,bl
000F11FC  AA                stosb
000F11FD  5B                pop bx
000F11FE  D3EB              shr bx,cl
000F1200  03FB              add di,bx
000F1202  46                inc si
000F1203  FECC              dec ah
000F1205  80FC4F            cmp ah,0x4f
000F1208  75DF              jnz 0x11e9
000F120A  B260              mov dl,0x60
000F120C  B000              mov al,0x0
000F120E  EE                out dx,al
000F120F  E8EAFE            call 0x10fc
000F1212  8DBE8801          lea di,[bp+0x188]
000F1216  8B4608            mov ax,[bp+0x8]
000F1219  9A6407B9FE        call 0xfeb9:0x764
000F121E  8DBE8D01          lea di,[bp+0x18d]
000F1222  8B460A            mov ax,[bp+0xa]
000F1225  9A6407B9FE        call 0xfeb9:0x764
000F122A  8DBE9201          lea di,[bp+0x192]
000F122E  8B460C            mov ax,[bp+0xc]
000F1231  9A6407B9FE        call 0xfeb9:0x764
000F1236  8A6601            mov ah,[bp+0x1]
000F1239  80FC0A            cmp ah,0xa
000F123C  7207              jc 0x1245
000F123E  80EC0A            sub ah,0xa
000F1241  B001              mov al,0x1
000F1243  EB02              jmp short 0x1247
000F1245  B013              mov al,0x13
000F1247  8986BE01          mov [bp+0x1be],ax
000F124B  8D463E            lea ax,[bp+0x3e]
000F124E  894630            mov [bp+0x30],ax
000F1251  8C5632            mov [bp+0x32],ss
000F1254  058101            add ax,0x181
000F1257  90                nop
000F1258  894634            mov [bp+0x34],ax
000F125B  C6463604          mov byte [bp+0x36],0x4
000F125F  C6463701          mov byte [bp+0x37],0x1
000F1263  C7463A9401        mov word [bp+0x3a],0x194
000F1268  16                push ss
000F1269  8D462C            lea ax,[bp+0x2c]
000F126C  50                push ax
000F126D  9A00004CFD        call 0xfd4c:0x0
000F1272  C3                ret
000F1273  0F                db 0x0F
000F1274  1F                pop ds
000F1275  011F              add [bx],bx
000F1277  031F              add bx,[bx]
000F1279  27                daa
000F127A  031F              add bx,[bx]
000F127C  07                pop es
000F127D  1F                pop ds
000F127E  07                pop es
000F127F  1F                pop ds
000F1280  8BE5              mov sp,bp
000F1282  81C40002          add sp,0x200
000F1286  8B4602            mov ax,[bp+0x2]
000F1289  FF7606            push word [bp+0x6]
000F128C  FF7604            push word [bp+0x4]
000F128F  50                push ax
000F1290  9A000038FF        call 0xff38:0x0
000F1295  58                pop ax
000F1296  59                pop cx
000F1297  5B                pop bx
000F1298  E9BBFB            jmp 0xe56
000F129B  B80010            mov ax,0x1000
000F129E  8ED8              mov ds,ax
000F12A0  33C0              xor ax,ax
000F12A2  8BF0              mov si,ax
000F12A4  8BD8              mov bx,ax
000F12A6  9A0E0067FE        call 0xfe67:0xe
000F12AB  3D0000            cmp ax,0x0
000F12AE  7528              jnz 0x12d8
000F12B0  8ED8              mov ds,ax
000F12B2  BE0009            mov si,0x900
000F12B5  BB010D            mov bx,0xd01
000F12B8  9A0E0067FE        call 0xfe67:0xe
000F12BD  3D0000            cmp ax,0x0
000F12C0  7516              jnz 0x12d8
000F12C2  8EC0              mov es,ax
000F12C4  BF3101            mov di,0x131
000F12C7  268A15            mov dl,[es:di]
000F12CA  80E2F0            and dl,0xf0
000F12CD  8CD8              mov ax,ds
000F12CF  80C410            add ah,0x10
000F12D2  3AE2              cmp ah,dl
000F12D4  75DA              jnz 0x12b0
000F12D6  33C0              xor ax,ax
000F12D8  CB                retf
000F12D9  00A6A7A8          add [bp+0xa8a7],ah
000F12DD  A9AAAB            test ax,0xabaa
000F12E0  AC                lodsb
000F12E1  AD                lodsw
000F12E2  AE                scasb
000F12E3  AF                scasw
000F12E4  B086              mov al,0x86
000F12E6  8788898A          xchg cx,[bx+si+0x8a89]
000F12EA  8B8C8D8E          mov cx,[si+0x8e8d]
000F12EE  8F                db 0x8F
000F12EF  90                nop
000F12F0  91                xchg ax,cx
000F12F1  65666768696A6B6C  gs a32 push dword 0x6c6b6a69
000F12F9  6D                insw
000F12FA  6E                outsb
000F12FB  6F                outsw
000F12FC  7045              jo 0x1343
000F12FE  46                inc si
000F12FF  47                inc di
000F1300  48                dec ax
000F1301  49                dec cx
000F1302  4A                dec dx
000F1303  4B                dec bx
000F1304  4C                dec sp
000F1305  4D                dec bp
000F1306  4E                dec si
000F1307  4F                dec di
000F1308  50                push ax
000F1309  51                push cx
000F130A  C4                db 0xC4
000F130B  C6                db 0xC6
000F130C  C8CACCCE          enter 0xccca,0xce
000F1310  D2A4B284          shl byte [si+0x84b2],cl
000F1314  7264              jc 0x137a
000F1316  44                inc sp
000F1317  52                push dx
000F1318  00C1              add cl,al
000F131A  C2A1A2            ret 0xa2a1
000F131D  818261624142      add word [bp+si+0x6261],0x4241
000F1323  D5B4              aad 0xb4
000F1325  B5B6              mov ch,0xb6
000F1327  95                xchg ax,bp
000F1328  7475              jz 0x139f
000F132A  7654              jna 0x1380
000F132C  55                push bp
000F132D  56                push si
000F132E  D8DA              fcomp st2
000F1330  B8B9BA            mov ax,0xbab9
000F1333  98                cbw
000F1334  99                cwd
000F1335  9A78797ADB        call 0xdb7a:0x7978
000F133A  0000              add [bx+si],al
000F133C  7B58              jpo 0x1396
000F133E  59                pop cx
000F133F  5A                pop dx
000F1340  5B                pop bx
000F1341  2425              and al,0x25
000F1343  2627              es daa
000F1345  292A              sub [bp+si],bp
000F1347  2B2C              sub bp,[si]
000F1349  2E2F              cs das
000F134B  3031              xor [bx+di],dh
000F134D  0405              add al,0x5
000F134F  06                push es
000F1350  07                pop es
000F1351  090A              or [bp+si],cx
000F1353  0B0C              or cx,[si]
000F1355  0E                push cs
000F1356  0F1011            umov [bx+di],dl
000F1359  0F                db 0x0F
000F135A  7BC0              jpo 0x131c
000F135C  000F              add [bx],cl
000F135E  7BC0              jpo 0x1320
000F1360  006FFF            add [bx-0x1],ch
000F1363  EE                out dx,al
000F1364  F06F              lock outsw
000F1366  FFAEF06B          jmp far [bp+0x6bf0]
000F136A  FFC4              inc sp
000F136C  E06B              loopne 0x13d9
000F136E  FFAEE06A          jmp far [bp+0x6ae0]
000F1372  AA                stosb
000F1373  24B2              and al,0xb2
000F1375  13FF              adc di,di
000F1377  0B01              or ax,[bx+di]
000F1379  1313              adc dx,[bp+di]
000F137B  FF0B              dec word [bp+di]
000F137D  0113              add [bp+di],dx
000F137F  13FF              adc di,di
000F1381  0B01              or ax,[bx+di]
000F1383  1313              adc dx,[bp+di]
000F1385  1313              adc dx,[bp+di]
000F1387  1313              adc dx,[bp+di]
000F1389  1313              adc dx,[bp+di]
000F138B  1313              adc dx,[bp+di]
000F138D  1313              adc dx,[bp+di]
000F138F  1313              adc dx,[bp+di]
000F1391  1313              adc dx,[bp+di]
000F1393  1313              adc dx,[bp+di]
000F1395  1313              adc dx,[bp+di]
000F1397  1313              adc dx,[bp+di]
000F1399  1313              adc dx,[bp+di]
000F139B  FF0D              dec word [di]
000F139D  0313              add dx,[bp+di]
000F139F  FF0B              dec word [bp+di]
000F13A1  0113              add [bp+di],dx
000F13A3  13FF              adc di,di
000F13A5  0E                push cs
000F13A6  1313              adc dx,[bp+di]
000F13A8  FF0E1313          dec word [0x1313]
000F13AC  FF0E1313          dec word [0x1313]
000F13B0  FF0E0F13          dec word [0x130f]
000F13B4  FF0D              dec word [di]
000F13B6  0510FF            add ax,0xff10
000F13B9  0B02              or ax,[bp+si]
000F13BB  1313              adc dx,[bp+di]
000F13BD  1013              adc [bp+di],dl
000F13BF  FF0C              dec word [si]
000F13C1  0013              add [bp+di],dl
000F13C3  1301              adc ax,[bx+di]
000F13C5  13FF              adc di,di
000F13C7  0C00              or al,0x0
000F13C9  FF09              dec word [bx+di]
000F13CB  0013              add [bp+di],dl
000F13CD  11FF              adc di,di
000F13CF  0B02              or ax,[bp+si]
000F13D1  1313              adc dx,[bp+di]
000F13D3  11FF              adc di,di
000F13D5  0900              or [bx+si],ax
000F13D7  CC                int3
000F13D8  83EC10            sub sp,byte +0x10
000F13DB  9A00006CFD        call 0xfd6c:0x0
000F13E0  8BEC              mov bp,sp
000F13E2  8B5E14            mov bx,[bp+0x14]
000F13E5  8E5E16            mov ds,[bp+0x16]
000F13E8  E4A0              in al,0xa0
000F13EA  2402              and al,0x2
000F13EC  8AE0              mov ah,al
000F13EE  BEBE00            mov si,0xbe
000F13F1  90                nop
000F13F2  33D2              xor dx,dx
000F13F4  8EC2              mov es,dx
000F13F6  26803E4C01AA      cmp byte [es:0x14c],0xaa
000F13FC  7507              jnz 0x1405
000F13FE  80CC01            or ah,0x1
000F1401  BED200            mov si,0xd2
000F1404  90                nop
000F1405  B00A              mov al,0xa
000F1407  E620              out 0x20,al
000F1409  E420              in al,0x20
000F140B  A808              test al,0x8
000F140D  7465              jz 0x1474
000F140F  F6C401            test ah,0x1
000F1412  750A              jnz 0x141e
000F1414  B1C8              mov cl,0xc8
000F1416  D2E0              shl al,cl
000F1418  E461              in al,0x61
000F141A  A804              test al,0x4
000F141C  7437              jz 0x1455
000F141E  80CC08            or ah,0x8
000F1421  E460              in al,0x60
000F1423  50                push ax
000F1424  E5A4              in ax,0xa4
000F1426  F6C408            test ah,0x8
000F1429  7510              jnz 0x143b
000F142B  BA7601            mov dx,0x176
000F142E  ED                in ax,dx
000F142F  3C01              cmp al,0x1
000F1431  7404              jz 0x1437
000F1433  3C97              cmp al,0x97
000F1435  7504              jnz 0x143b
000F1437  58                pop ax
000F1438  B037              mov al,0x37
000F143A  50                push ax
000F143B  58                pop ax
000F143C  884703            mov [bx+0x3],al
000F143F  B91500            mov cx,0x15
000F1442  46                inc si
000F1443  2E3A04            cmp al,[cs:si]
000F1446  E0FA              loopne 0x1442
000F1448  80F911            cmp cl,0x11
000F144B  7203              jc 0x1450
000F144D  80C104            add cl,0x4
000F1450  FEC9              dec cl
000F1452  884F01            mov [bx+0x1],cl
000F1455  B089              mov al,0x89
000F1457  E661              out 0x61,al
000F1459  50                push ax
000F145A  BA7601            mov dx,0x176
000F145D  ED                in ax,dx
000F145E  58                pop ax
000F145F  F6C408            test ah,0x8
000F1462  7505              jnz 0x1469
000F1464  80CC04            or ah,0x4
000F1467  EB0B              jmp short 0x1474
000F1469  80F917            cmp cl,0x17
000F146C  7513              jnz 0x1481
000F146E  80E4F7            and ah,0xf7
000F1471  80CC10            or ah,0x10
000F1474  F6C402            test ah,0x2
000F1477  7408              jz 0x1481
000F1479  803F01            cmp byte [bx],0x1
000F147C  7403              jz 0x1481
000F147E  E967FF            jmp 0x13e8
000F1481  886702            mov [bx+0x2],ah
000F1484  8A4701            mov al,[bx+0x1]
000F1487  9A00006AFD        call 0xfd6a:0x0
000F148C  CA0400            retf 0x4
000F148F  B7C1              mov bh,0xc1
000F1491  41                inc cx
000F1492  37                aaa
000F1493  0F                db 0x0F
000F1494  1A0E0305          sbb cl,[0x503]
000F1498  0C5F              or al,0x5f
000F149A  5E                pop si
000F149B  5D                pop bp
000F149C  5C                pop sp
000F149D  5B                pop bx
000F149E  5A                pop dx
000F149F  59                pop cx
000F14A0  58                pop ax
000F14A1  57                push di
000F14A2  55                push bp
000F14A3  9C                pushf
000F14A4  9D                popf
000F14A5  1D1C21            sbb ax,0x211c
000F14A8  1220              adc ah,[bx+si]
000F14AA  2E301E4948        xor [cs:0x4849],bl
000F14AF  47                inc di
000F14B0  4D                dec bp
000F14B1  4C                dec sp
000F14B2  4B                dec bx
000F14B3  51                push cx
000F14B4  50                push ax
000F14B5  4F                dec di
000F14B6  52                push dx
000F14B7  CC                int3
000F14B8  CC                int3
000F14B9  CC                int3
000F14BA  CC                int3
000F14BB  CC                int3
000F14BC  CC                int3
000F14BD  CC                int3
000F14BE  CC                int3
000F14BF  CC                int3
000F14C0  83EC10            sub sp,byte +0x10
000F14C3  9A00006CFD        call 0xfd6c:0x0
000F14C8  83EC04            sub sp,byte +0x4
000F14CB  8BEC              mov bp,sp
000F14CD  C55E18            lds bx,[bp+0x18]
000F14D0  B800E0            mov ax,0xe000
000F14D3  8EC0              mov es,ax
000F14D5  33FF              xor di,di
000F14D7  FC                cld
000F14D8  C6460200          mov byte [bp+0x2],0x0
000F14DC  8A470A            mov al,[bx+0xa]
000F14DF  3C01              cmp al,0x1
000F14E1  7409              jz 0x14ec
000F14E3  3C05              cmp al,0x5
000F14E5  7526              jnz 0x150d
000F14E7  B81300            mov ax,0x13
000F14EA  EB03              jmp short 0x14ef
000F14EC  B84000            mov ax,0x40
000F14EF  BF0000            mov di,0x0
000F14F2  268905            mov [es:di],ax
000F14F5  83C702            add di,byte +0x2
000F14F8  81FF0010          cmp di,0x1000
000F14FC  75F4              jnz 0x14f2
000F14FE  BFFFFF            mov di,0xffff
000F1501  E87601            call 0x167a
000F1504  BAD803            mov dx,0x3d8
000F1507  B000              mov al,0x0
000F1509  EE                out dx,al
000F150A  E94F01            jmp 0x165c
000F150D  3C02              cmp al,0x2
000F150F  7511              jnz 0x1522
000F1511  E85301            call 0x1667
000F1514  8BF7              mov si,di
000F1516  06                push es
000F1517  1F                pop ds
000F1518  C43F              les di,[bx]
000F151A  B95200            mov cx,0x52
000F151D  F3A5              rep movsw
000F151F  E93A01            jmp 0x165c
000F1522  3C03              cmp al,0x3
000F1524  750D              jnz 0x1533
000F1526  E83E01            call 0x1667
000F1529  C537              lds si,[bx]
000F152B  B95200            mov cx,0x52
000F152E  F3A5              rep movsw
000F1530  E92901            jmp 0x165c
000F1533  3C04              cmp al,0x4
000F1535  7403              jz 0x153a
000F1537  E92201            jmp 0x165c
000F153A  E82A01            call 0x1667
000F153D  B400              mov ah,0x0
000F153F  8B4F0E            mov cx,[bx+0xe]
000F1542  894E00            mov [bp+0x0],cx
000F1545  8B7704            mov si,[bx+0x4]
000F1548  8B5706            mov dx,[bx+0x6]
000F154B  837E0000          cmp word [bp+0x0],byte +0x0
000F154F  7503              jnz 0x1554
000F1551  E90801            jmp 0x165c
000F1554  1E                push ds
000F1555  8EDA              mov ds,dx
000F1557  AC                lodsb
000F1558  1F                pop ds
000F1559  3CFF              cmp al,0xff
000F155B  7506              jnz 0x1563
000F155D  807E0200          cmp byte [bp+0x2],0x0
000F1561  7412              jz 0x1575
000F1563  FF4E00            dec word [bp+0x0]
000F1566  8B4F08            mov cx,[bx+0x8]
000F1569  41                inc cx
000F156A  3BCE              cmp cx,si
000F156C  7503              jnz 0x1571
000F156E  E80901            call 0x167a
000F1571  AB                stosw
000F1572  E9E400            jmp 0x1659
000F1575  1E                push ds
000F1576  8EDA              mov ds,dx
000F1578  33C9              xor cx,cx
000F157A  AC                lodsb
000F157B  8AC8              mov cl,al
000F157D  AC                lodsb
000F157E  1F                pop ds
000F157F  836E0003          sub word [bp+0x0],byte +0x3
000F1583  89770C            mov [bx+0xc],si
000F1586  8BF1              mov si,cx
000F1588  8AC8              mov cl,al
000F158A  83FE0F            cmp si,byte +0xf
000F158D  7203              jc 0x1592
000F158F  BE0000            mov si,0x0
000F1592  D1E6              shl si,1
000F1594  2EFF94DC00        call near [cs:si+0xdc]
000F1599  E9BA00            jmp 0x1656
000F159C  FA                cli
000F159D  00FB              add bl,bh
000F159F  0000              add [bx+si],al
000F15A1  0108              add [bx+si],cx
000F15A3  012B              add [bp+di],bp
000F15A5  012E0146          add [0x4601],bp
000F15A9  014E01            add [bp+0x1],cx
000F15AC  55                push bp
000F15AD  016201            add [bp+si+0x1],sp
000F15B0  680171            push word 0x7101
000F15B3  0133              add [bp+di],si
000F15B5  0104              add [si],ax
000F15B7  013601C3          add [0xc301],si
000F15BB  C6460201          mov byte [bp+0x2],0x1
000F15BF  C3                ret
000F15C0  B0FF              mov al,0xff
000F15C2  AB                stosw
000F15C3  C3                ret
000F15C4  B013              mov al,0x13
000F15C6  EB02              jmp short 0x15ca
000F15C8  B040              mov al,0x40
000F15CA  51                push cx
000F15CB  50                push ax
000F15CC  57                push di
000F15CD  FE470B            inc byte [bx+0xb]
000F15D0  E89400            call 0x1667
000F15D3  8BCF              mov cx,di
000F15D5  5F                pop di
000F15D6  2BCF              sub cx,di
000F15D8  D1E9              shr cx,1
000F15DA  807E0B1A          cmp byte [bp+0xb],0x1a
000F15DE  7503              jnz 0x15e3
000F15E0  83E902            sub cx,byte +0x2
000F15E3  B400              mov ah,0x0
000F15E5  F3AB              rep stosw
000F15E7  58                pop ax
000F15E8  59                pop cx
000F15E9  EB3D              jmp short 0x1628
000F15EB  0AE1              or ah,cl
000F15ED  C3                ret
000F15EE  F6D1              not cl
000F15F0  22E1              and ah,cl
000F15F2  C3                ret
000F15F3  8AE1              mov ah,cl
000F15F5  C3                ret
000F15F6  B508              mov ch,0x8
000F15F8  B000              mov al,0x0
000F15FA  D0E1              shl cl,1
000F15FC  7302              jnc 0x1600
000F15FE  FEC0              inc al
000F1600  AB                stosw
000F1601  FECD              dec ch
000F1603  75F3              jnz 0x15f8
000F1605  C3                ret
000F1606  D1E1              shl cx,1
000F1608  03F9              add di,cx
000F160A  268B05            mov ax,[es:di]
000F160D  C3                ret
000F160E  268B45FE          mov ax,[es:di-0x2]
000F1612  F3AB              rep stosw
000F1614  C3                ret
000F1615  8AC4              mov al,ah
000F1617  80F900            cmp cl,0x0
000F161A  7405              jz 0x1621
000F161C  47                inc di
000F161D  AA                stosb
000F161E  49                dec cx
000F161F  EBF6              jmp short 0x1617
000F1621  C3                ret
000F1622  C746000000        mov word [bp+0x0],0x0
000F1627  C3                ret
000F1628  004F0B            add [bx+0xb],cl
000F162B  E83900            call 0x1667
000F162E  B400              mov ah,0x0
000F1630  C3                ret
000F1631  8B770C            mov si,[bx+0xc]
000F1634  1E                push ds
000F1635  8EDA              mov ds,dx
000F1637  AC                lodsb
000F1638  1F                pop ds
000F1639  50                push ax
000F163A  D0E8              shr al,1
000F163C  D0E8              shr al,1
000F163E  D0E8              shr al,1
000F1640  D0E8              shr al,1
000F1642  AB                stosw
000F1643  58                pop ax
000F1644  240F              and al,0xf
000F1646  AB                stosw
000F1647  FF4E00            dec word [bp+0x0]
000F164A  7406              jz 0x1652
000F164C  FEC9              dec cl
000F164E  7402              jz 0x1652
000F1650  EBE2              jmp short 0x1634
000F1652  89770C            mov [bx+0xc],si
000F1655  C3                ret
000F1656  8B770C            mov si,[bx+0xc]
000F1659  E9EFFE            jmp 0x154b
000F165C  83C404            add sp,byte +0x4
000F165F  9A00006AFD        call 0xfd6a:0x0
000F1664  CA0400            retf 0x4
000F1667  8B7F0B            mov di,[bx+0xb]
000F166A  81E71F00          and di,0x1f
000F166E  4F                dec di
000F166F  52                push dx
000F1670  50                push ax
000F1671  B8A400            mov ax,0xa4
000F1674  F7E7              mul di
000F1676  97                xchg ax,di
000F1677  58                pop ax
000F1678  5A                pop dx
000F1679  C3                ret
000F167A  52                push dx
000F167B  50                push ax
000F167C  BAD003            mov dx,0x3d0
000F167F  B00F              mov al,0xf
000F1681  EE                out dx,al
000F1682  B2D1              mov dl,0xd1
000F1684  8BC7              mov ax,di
000F1686  D1E8              shr ax,1
000F1688  EE                out dx,al
000F1689  50                push ax
000F168A  B2D0              mov dl,0xd0
000F168C  B00E              mov al,0xe
000F168E  EE                out dx,al
000F168F  B2D1              mov dl,0xd1
000F1691  58                pop ax
000F1692  86C4              xchg al,ah
000F1694  EE                out dx,al
000F1695  58                pop ax
000F1696  5A                pop dx
000F1697  C3                ret
000F1698  CC                int3
000F1699  CC                int3
000F169A  CC                int3
000F169B  CC                int3
000F169C  CC                int3
000F169D  CC                int3
000F169E  CC                int3
000F169F  CC                int3
000F16A0  8BEC              mov bp,sp
000F16A2  8B5E12            mov bx,[bp+0x12]
000F16A5  8B4E10            mov cx,[bp+0x10]
000F16A8  8B560E            mov dx,[bp+0xe]
000F16AB  8B760C            mov si,[bp+0xc]
000F16AE  8B7E0A            mov di,[bp+0xa]
000F16B1  8E5E08            mov ds,[bp+0x8]
000F16B4  8E4606            mov es,[bp+0x6]
000F16B7  8B6E04            mov bp,[bp+0x4]
000F16BA  CA1000            retf 0x10
000F16BD  CC                int3
000F16BE  CC                int3
000F16BF  CC                int3
000F16C0  55                push bp
000F16C1  8BEC              mov bp,sp
000F16C3  895E14            mov [bp+0x14],bx
000F16C6  894E12            mov [bp+0x12],cx
000F16C9  895610            mov [bp+0x10],dx
000F16CC  89760E            mov [bp+0xe],si
000F16CF  897E0C            mov [bp+0xc],di
000F16D2  8C5E0A            mov [bp+0xa],ds
000F16D5  8C4608            mov [bp+0x8],es
000F16D8  8F4606            pop word [bp+0x6]
000F16DB  8B6E06            mov bp,[bp+0x6]
000F16DE  CB                retf
000F16DF  CC                int3
000F16E0  83EC10            sub sp,byte +0x10
000F16E3  9A00006CFD        call 0xfd6c:0x0
000F16E8  83EC4A            sub sp,byte +0x4a
000F16EB  8BEC              mov bp,sp
000F16ED  8B5E5E            mov bx,[bp+0x5e]
000F16F0  8E5E60            mov ds,[bp+0x60]
000F16F3  33C0              xor ax,ax
000F16F5  8EC0              mov es,ax
000F16F7  88470C            mov [bx+0xc],al
000F16FA  894616            mov [bp+0x16],ax
000F16FD  807F0A03          cmp byte [bx+0xa],0x3
000F1701  7205              jc 0x1708
000F1703  EA0000C9FD        jmp 0xfdc9:0x0
000F1708  C7462CF003        mov word [bp+0x2c],0x3f0
000F170D  807F01E2          cmp byte [bx+0x1],0xe2
000F1711  7533              jnz 0x1746
000F1713  BAF203            mov dx,0x3f2
000F1716  EE                out dx,al
000F1717  B8C001            mov ax,0x1c0
000F171A  B2F0              mov dl,0xf0
000F171C  EF                out dx,ax
000F171D  BE0A00            mov si,0xa
000F1720  BAF403            mov dx,0x3f4
000F1723  EC                in al,dx
000F1724  A81F              test al,0x1f
000F1726  740F              jz 0x1737
000F1728  B8C001            mov ax,0x1c0
000F172B  9AF605B9FE        call 0xfeb9:0x5f6
000F1730  4E                dec si
000F1731  75ED              jnz 0x1720
000F1733  B006              mov al,0x6
000F1735  EB0C              jmp short 0x1743
000F1737  9A2801ABFD        call 0xfdab:0x128
000F173C  7505              jnz 0x1743
000F173E  E8BD01            call 0x18fe
000F1741  B000              mov al,0x0
000F1743  E95E01            jmp 0x18a4
000F1746  B008              mov al,0x8
000F1748  807F0B09          cmp byte [bx+0xb],0x9
000F174C  7502              jnz 0x1750
000F174E  B009              mov al,0x9
000F1750  884606            mov [bp+0x6],al
000F1753  88461E            mov [bp+0x1e],al
000F1756  8B4702            mov ax,[bx+0x2]
000F1759  F67606            div byte [bp+0x6]
000F175C  884603            mov [bp+0x3],al
000F175F  80660301          and byte [bp+0x3],0x1
000F1763  D0E8              shr al,1
000F1765  884602            mov [bp+0x2],al
000F1768  FEC4              inc ah
000F176A  886604            mov [bp+0x4],ah
000F176D  C6460502          mov byte [bp+0x5],0x2
000F1771  C646072A          mov byte [bp+0x7],0x2a
000F1775  C64608FF          mov byte [bp+0x8],0xff
000F1779  C6461F40          mov byte [bp+0x1f],0x40
000F177D  8B4708            mov ax,[bx+0x8]
000F1780  8BD0              mov dx,ax
000F1782  B104              mov cl,0x4
000F1784  D3E0              shl ax,cl
000F1786  B10C              mov cl,0xc
000F1788  D3EA              shr dx,cl
000F178A  034706            add ax,[bx+0x6]
000F178D  83D200            adc dx,byte +0x0
000F1790  88561A            mov [bp+0x1a],dl
000F1793  894618            mov [bp+0x18],ax
000F1796  8AC2              mov al,dl
000F1798  88460B            mov [bp+0xb],al
000F179B  E682              out 0x82,al
000F179D  8B4704            mov ax,[bx+0x4]
000F17A0  89461C            mov [bp+0x1c],ax
000F17A3  BE0500            mov si,0x5
000F17A6  803FE3            cmp byte [bx],0xe3
000F17A9  742F              jz 0x17da
000F17AB  E87601            call 0x1924
000F17AE  813FE2D9          cmp word [bx],0xd9e2
000F17B2  748D              jz 0x1741
000F17B4  8B07              mov ax,[bx]
000F17B6  80FCE6            cmp ah,0xe6
000F17B9  751C              jnz 0x17d7
000F17BB  3CE6              cmp al,0xe6
000F17BD  7418              jz 0x17d7
000F17BF  807E0401          cmp byte [bp+0x4],0x1
000F17C3  7512              jnz 0x17d7
000F17C5  E4A0              in al,0xa0
000F17C7  A802              test al,0x2
000F17C9  740C              jz 0x17d7
000F17CB  9A80026EFD        call 0xfd6e:0x280
000F17D0  754B              jnz 0x181d
000F17D2  803FC6            cmp byte [bx],0xc6
000F17D5  747F              jz 0x1856
000F17D7  BE0A00            mov si,0xa
000F17DA  C6462200          mov byte [bp+0x22],0x0
000F17DE  8A4606            mov al,[bp+0x6]
000F17E1  2A4604            sub al,[bp+0x4]
000F17E4  FEC0              inc al
000F17E6  98                cbw
000F17E7  3B461C            cmp ax,[bp+0x1c]
000F17EA  7808              js 0x17f4
000F17EC  8B461C            mov ax,[bp+0x1c]
000F17EF  88461E            mov [bp+0x1e],al
000F17F2  EB03              jmp short 0x17f7
000F17F4  88461E            mov [bp+0x1e],al
000F17F7  E83501            call 0x192f
000F17FA  8B17              mov dx,[bx]
000F17FC  80FEE6            cmp dh,0xe6
000F17FF  7410              jz 0x1811
000F1801  B006              mov al,0x6
000F1803  E60B              out 0xb,al
000F1805  80FEC9            cmp dh,0xc9
000F1808  753E              jnz 0x1848
000F180A  9A9D00ABFD        call 0xfdab:0x9d
000F180F  EB3C              jmp short 0x184d
000F1811  B00A              mov al,0xa
000F1813  E60B              out 0xb,al
000F1815  9AA300ABFD        call 0xfdab:0xa3
000F181A  E87302            call 0x1a90
000F181D  755D              jnz 0x187c
000F181F  E8BE00            call 0x18e0
000F1822  803FE3            cmp byte [bx],0xe3
000F1825  742B              jz 0x1852
000F1827  F6460EC0          test byte [bp+0xe],0xc0
000F182B  7408              jz 0x1835
000F182D  2A4604            sub al,[bp+0x4]
000F1830  88461E            mov [bp+0x1e],al
000F1833  741D              jz 0x1852
000F1835  E8F700            call 0x192f
000F1838  9A9900ABFD        call 0xfdab:0x99
000F183D  7565              jnz 0x18a4
000F183F  F6460EC0          test byte [bp+0xe],0xc0
000F1843  740D              jz 0x1852
000F1845  E8E700            call 0x192f
000F1848  9A9900ABFD        call 0xfdab:0x99
000F184D  7555              jnz 0x18a4
000F184F  E88E00            call 0x18e0
000F1852  F64622FF          test byte [bp+0x22],0xff
000F1856  7426              jz 0x187e
000F1858  FF4616            inc word [bp+0x16]
000F185B  83FE06            cmp si,byte +0x6
000F185E  7506              jnz 0x1866
000F1860  E89B00            call 0x18fe
000F1863  E8BE00            call 0x1924
000F1866  4E                dec si
000F1867  7403              jz 0x186c
000F1869  E96EFF            jmp 0x17da
000F186C  B004              mov al,0x4
000F186E  807F01E6          cmp byte [bx+0x1],0xe6
000F1872  7508              jnz 0x187c
000F1874  F6460F02          test byte [bp+0xf],0x2
000F1878  7402              jz 0x187c
000F187A  B00C              mov al,0xc
000F187C  EB26              jmp short 0x18a4
000F187E  8A461E            mov al,[bp+0x1e]
000F1881  98                cbw
000F1882  29461C            sub [bp+0x1c],ax
000F1885  761B              jna 0x18a2
000F1887  80760301          xor byte [bp+0x3],0x1
000F188B  7503              jnz 0x1890
000F188D  FE4602            inc byte [bp+0x2]
000F1890  C6460401          mov byte [bp+0x4],0x1
000F1894  E404              in al,0x4
000F1896  86E0              xchg ah,al
000F1898  E404              in al,0x4
000F189A  86E0              xchg ah,al
000F189C  894618            mov [bp+0x18],ax
000F189F  E901FF            jmp 0x17a3
000F18A2  B000              mov al,0x0
000F18A4  88470D            mov [bx+0xd],al
000F18A7  3C04              cmp al,0x4
000F18A9  7522              jnz 0x18cd
000F18AB  33C0              xor ax,ax
000F18AD  8A4602            mov al,[bp+0x2]
000F18B0  F66606            mul byte [bp+0x6]
000F18B3  D1E0              shl ax,1
000F18B5  8BD0              mov dx,ax
000F18B7  807E0300          cmp byte [bp+0x3],0x0
000F18BB  7406              jz 0x18c3
000F18BD  8A4606            mov al,[bp+0x6]
000F18C0  98                cbw
000F18C1  03D0              add dx,ax
000F18C3  8A4622            mov al,[bp+0x22]
000F18C6  98                cbw
000F18C7  48                dec ax
000F18C8  03D0              add dx,ax
000F18CA  89570E            mov [bx+0xe],dx
000F18CD  896F10            mov [bx+0x10],bp
000F18D0  8A470D            mov al,[bx+0xd]
000F18D3  8BE5              mov sp,bp
000F18D5  83C44A            add sp,byte +0x4a
000F18D8  9A00006AFD        call 0xfd6a:0x0
000F18DD  CA0400            retf 0x4
000F18E0  8A460E            mov al,[bp+0xe]
000F18E3  24C0              and al,0xc0
000F18E5  3CC0              cmp al,0xc0
000F18E7  7504              jnz 0x18ed
000F18E9  B002              mov al,0x2
000F18EB  EBB7              jmp short 0x18a4
000F18ED  A8C0              test al,0xc0
000F18EF  740C              jz 0x18fd
000F18F1  8A4613            mov al,[bp+0x13]
000F18F4  3C00              cmp al,0x0
000F18F6  7502              jnz 0x18fa
000F18F8  FEC0              inc al
000F18FA  884622            mov [bp+0x22],al
000F18FD  C3                ret
000F18FE  56                push si
000F18FF  BE0200            mov si,0x2
000F1902  9A0000ABFD        call 0xfdab:0x0
000F1907  E88601            call 0x1a90
000F190A  7514              jnz 0x1920
000F190C  8A460E            mov al,[bp+0xe]
000F190F  24F8              and al,0xf8
000F1911  3C20              cmp al,0x20
000F1913  740D              jz 0x1922
000F1915  4E                dec si
000F1916  75EA              jnz 0x1902
000F1918  A808              test al,0x8
000F191A  B002              mov al,0x2
000F191C  7502              jnz 0x1920
000F191E  B008              mov al,0x8
000F1920  EB82              jmp short 0x18a4
000F1922  5E                pop si
000F1923  C3                ret
000F1924  56                push si
000F1925  BE0100            mov si,0x1
000F1928  9A1000ABFD        call 0xfdab:0x10
000F192D  EBDB              jmp short 0x190a
000F192F  B202              mov dl,0x2
000F1931  B000              mov al,0x0
000F1933  E60C              out 0xc,al
000F1935  B002              mov al,0x2
000F1937  E60B              out 0xb,al
000F1939  8B4618            mov ax,[bp+0x18]
000F193C  E604              out 0x4,al
000F193E  86C4              xchg al,ah
000F1940  E604              out 0x4,al
000F1942  8A461E            mov al,[bp+0x1e]
000F1945  98                cbw
000F1946  8A4E05            mov cl,[bp+0x5]
000F1949  80C107            add cl,0x7
000F194C  D3E0              shl ax,cl
000F194E  7401              jz 0x1951
000F1950  48                dec ax
000F1951  E605              out 0x5,al
000F1953  86C4              xchg al,ah
000F1955  E605              out 0x5,al
000F1957  B002              mov al,0x2
000F1959  E60A              out 0xa,al
000F195B  FECA              dec dl
000F195D  75D2              jnz 0x1931
000F195F  C3                ret
000F1960  83EC10            sub sp,byte +0x10
000F1963  9A00006CFD        call 0xfd6c:0x0
000F1968  81EC3401          sub sp,0x134
000F196C  8BF5              mov si,bp
000F196E  8BEC              mov bp,sp
000F1970  16                push ss
000F1971  07                pop es
000F1972  8BFD              mov di,bp
000F1974  B94600            mov cx,0x46
000F1977  16                push ss
000F1978  1F                pop ds
000F1979  FC                cld
000F197A  F3A4              rep movsb
000F197C  8D7E46            lea di,[bp+0x46]
000F197F  FEC1              inc cl
000F1981  8A4602            mov al,[bp+0x2]
000F1984  AA                stosb
000F1985  8A4603            mov al,[bp+0x3]
000F1988  AA                stosb
000F1989  8AC1              mov al,cl
000F198B  AA                stosb
000F198C  B002              mov al,0x2
000F198E  AA                stosb
000F198F  3A4E06            cmp cl,[bp+0x6]
000F1992  75EB              jnz 0x197f
000F1994  BE0A00            mov si,0xa
000F1997  C646004D          mov byte [bp+0x0],0x4d
000F199B  8A4603            mov al,[bp+0x3]
000F199E  B102              mov cl,0x2
000F19A0  D2E0              shl al,cl
000F19A2  0A470A            or al,[bx+0xa]
000F19A5  884601            mov [bp+0x1],al
000F19A8  C6460202          mov byte [bp+0x2],0x2
000F19AC  8A4606            mov al,[bp+0x6]
000F19AF  884603            mov [bp+0x3],al
000F19B2  C6460450          mov byte [bp+0x4],0x50
000F19B6  C64605CC          mov byte [bp+0x5],0xcc
000F19BA  16                push ss
000F19BB  58                pop ax
000F19BC  8BD0              mov dx,ax
000F19BE  B104              mov cl,0x4
000F19C0  D3E0              shl ax,cl
000F19C2  B10C              mov cl,0xc
000F19C4  D3EA              shr dx,cl
000F19C6  8BC8              mov cx,ax
000F19C8  8D4646            lea ax,[bp+0x46]
000F19CB  03C1              add ax,cx
000F19CD  83D200            adc dx,byte +0x0
000F19D0  88561A            mov [bp+0x1a],dl
000F19D3  894618            mov [bp+0x18],ax
000F19D6  8AC2              mov al,dl
000F19D8  E682              out 0x82,al
000F19DA  B000              mov al,0x0
000F19DC  E60C              out 0xc,al
000F19DE  8B4618            mov ax,[bp+0x18]
000F19E1  E604              out 0x4,al
000F19E3  86C4              xchg al,ah
000F19E5  E604              out 0x4,al
000F19E7  B004              mov al,0x4
000F19E9  F66606            mul byte [bp+0x6]
000F19EC  48                dec ax
000F19ED  E605              out 0x5,al
000F19EF  B000              mov al,0x0
000F19F1  E605              out 0x5,al
000F19F3  B00A              mov al,0xa
000F19F5  E60B              out 0xb,al
000F19F7  B002              mov al,0x2
000F19F9  E60A              out 0xa,al
000F19FB  C6462006          mov byte [bp+0x20],0x6
000F19FF  9A4901ABFD        call 0xfdab:0x149
000F1A04  7551              jnz 0x1a57
000F1A06  807F01E3          cmp byte [bx+0x1],0xe3
000F1A0A  752A              jnz 0x1a36
000F1A0C  B064              mov al,0x64
000F1A0E  E86700            call 0x1a78
000F1A11  33C0              xor ax,ax
000F1A13  8EC0              mov es,ax
000F1A15  BF0020            mov di,0x2000
000F1A18  B9582B            mov cx,0x2b58
000F1A1B  B8B001            mov ax,0x1b0
000F1A1E  BAF003            mov dx,0x3f0
000F1A21  EF                out dx,ax
000F1A22  B2F6              mov dl,0xf6
000F1A24  EC                in al,dx
000F1A25  AA                stosb
000F1A26  E2FC              loop 0x1a24
000F1A28  B103              mov cl,0x3
000F1A2A  9A85036EFD        call 0xfd6e:0x385
000F1A2F  B0C8              mov al,0xc8
000F1A31  E84400            call 0x1a78
000F1A34  E2F4              loop 0x1a2a
000F1A36  9A9B01ABFD        call 0xfdab:0x19b
000F1A3B  E85200            call 0x1a90
000F1A3E  7517              jnz 0x1a57
000F1A40  F6460EC0          test byte [bp+0xe],0xc0
000F1A44  740A              jz 0x1a50
000F1A46  4E                dec si
000F1A47  7403              jz 0x1a4c
000F1A49  E96EFF            jmp 0x19ba
000F1A4C  B00C              mov al,0xc
000F1A4E  EB07              jmp short 0x1a57
000F1A50  8A460B            mov al,[bp+0xb]
000F1A53  E682              out 0x82,al
000F1A55  B000              mov al,0x0
000F1A57  8BE5              mov sp,bp
000F1A59  81C43401          add sp,0x134
000F1A5D  9A00006AFD        call 0xfd6a:0x0
000F1A62  3C00              cmp al,0x0
000F1A64  CB                retf
000F1A65  B8B001            mov ax,0x1b0
000F1A68  BAF003            mov dx,0x3f0
000F1A6B  EF                out dx,ax
000F1A6C  E80700            call 0x1a76
000F1A6F  B090              mov al,0x90
000F1A71  EF                out dx,ax
000F1A72  E80100            call 0x1a76
000F1A75  CB                retf
000F1A76  B001              mov al,0x1
000F1A78  9A9E036EFD        call 0xfd6e:0x39e
000F1A7D  C3                ret
000F1A7E  50                push ax
000F1A7F  51                push cx
000F1A80  B9FF08            mov cx,0x8ff
000F1A83  D2E4              shl ah,cl
000F1A85  FECD              dec ch
000F1A87  75FA              jnz 0x1a83
000F1A89  FEC8              dec al
000F1A8B  75F3              jnz 0x1a80
000F1A8D  59                pop cx
000F1A8E  58                pop ax
000F1A8F  CB                retf
000F1A90  50                push ax
000F1A91  9C                pushf
000F1A92  B012              mov al,0x12
000F1A94  E8E1FF            call 0x1a78
000F1A97  9D                popf
000F1A98  58                pop ax
000F1A99  C3                ret
000F1A9A  50                push ax
000F1A9B  E421              in al,0x21
000F1A9D  0C10              or al,0x10
000F1A9F  E621              out 0x21,al
000F1AA1  B064              mov al,0x64
000F1AA3  FA                cli
000F1AA4  E620              out 0x20,al
000F1AA6  58                pop ax
000F1AA7  CF                iret
000F1AA8  CC                int3
000F1AA9  CC                int3
000F1AAA  CC                int3
000F1AAB  CC                int3
000F1AAC  CC                int3
000F1AAD  CC                int3
000F1AAE  CC                int3
000F1AAF  CC                int3
000F1AB0  C6460007          mov byte [bp+0x0],0x7
000F1AB4  8A470A            mov al,[bx+0xa]
000F1AB7  884601            mov [bp+0x1],al
000F1ABA  C6462002          mov byte [bp+0x20],0x2
000F1ABE  EB15              jmp short 0x1ad5
000F1AC0  C646000F          mov byte [bp+0x0],0xf
000F1AC4  8A4603            mov al,[bp+0x3]
000F1AC7  B102              mov cl,0x2
000F1AC9  D2E0              shl al,cl
000F1ACB  0A470A            or al,[bx+0xa]
000F1ACE  884601            mov [bp+0x1],al
000F1AD1  C6462003          mov byte [bp+0x20],0x3
000F1AD5  9A4901ABFD        call 0xfdab:0x149
000F1ADA  754C              jnz 0x1b28
000F1ADC  803FE3            cmp byte [bx],0xe3
000F1ADF  7508              jnz 0x1ae9
000F1AE1  B88000            mov ax,0x80
000F1AE4  9A3806B9FE        call 0xfeb9:0x638
000F1AE9  33C9              xor cx,cx
000F1AEB  51                push cx
000F1AEC  9A7B00ABFD        call 0xfdab:0x7b
000F1AF1  59                pop cx
000F1AF2  7534              jnz 0x1b28
000F1AF4  8A460E            mov al,[bp+0xe]
000F1AF7  8AE0              mov ah,al
000F1AF9  24C0              and al,0xc0
000F1AFB  3C80              cmp al,0x80
000F1AFD  7425              jz 0x1b24
000F1AFF  8AC4              mov al,ah
000F1B01  2403              and al,0x3
000F1B03  3A470A            cmp al,[bx+0xa]
000F1B06  750E              jnz 0x1b16
000F1B08  B002              mov al,0x2
000F1B0A  F6C408            test ah,0x8
000F1B0D  7519              jnz 0x1b28
000F1B0F  B000              mov al,0x0
000F1B11  F6C420            test ah,0x20
000F1B14  7512              jnz 0x1b28
000F1B16  51                push cx
000F1B17  8ACC              mov cl,ah
000F1B19  80E103            and cl,0x3
000F1B1C  B001              mov al,0x1
000F1B1E  D2E0              shl al,cl
000F1B20  08470C            or [bx+0xc],al
000F1B23  59                pop cx
000F1B24  E2C5              loop 0x1aeb
000F1B26  B008              mov al,0x8
000F1B28  E9CB00            jmp 0x1bf6
000F1B2B  C6460008          mov byte [bp+0x0],0x8
000F1B2F  C6462001          mov byte [bp+0x20],0x1
000F1B33  B400              mov ah,0x0
000F1B35  9A5001ABFD        call 0xfdab:0x150
000F1B3A  75EC              jnz 0x1b28
000F1B3C  E99200            jmp 0x1bd1
000F1B3F  C6460004          mov byte [bp+0x0],0x4
000F1B43  C6462002          mov byte [bp+0x20],0x2
000F1B47  EB27              jmp short 0x1b70
000F1B49  B006              mov al,0x6
000F1B4B  EB08              jmp short 0x1b55
000F1B4D  B00A              mov al,0xa
000F1B4F  B402              mov ah,0x2
000F1B51  EB04              jmp short 0x1b57
000F1B53  B005              mov al,0x5
000F1B55  B409              mov ah,0x9
000F1B57  50                push ax
000F1B58  803FE3            cmp byte [bx],0xe3
000F1B5B  7509              jnz 0x1b66
000F1B5D  9A1306B9FE        call 0xfeb9:0x613
000F1B62  B0EF              mov al,0xef
000F1B64  E621              out 0x21,al
000F1B66  58                pop ax
000F1B67  886620            mov [bp+0x20],ah
000F1B6A  0A461F            or al,[bp+0x1f]
000F1B6D  884600            mov [bp+0x0],al
000F1B70  8A4603            mov al,[bp+0x3]
000F1B73  B102              mov cl,0x2
000F1B75  D2E0              shl al,cl
000F1B77  0A470A            or al,[bx+0xa]
000F1B7A  884601            mov [bp+0x1],al
000F1B7D  9A4901ABFD        call 0xfdab:0x149
000F1B82  7572              jnz 0x1bf6
000F1B84  807F01E3          cmp byte [bx+0x1],0xe3
000F1B88  7531              jnz 0x1bbb
000F1B8A  83FE02            cmp si,byte +0x2
000F1B8D  7203              jc 0x1b92
000F1B8F  BE0200            mov si,0x2
000F1B92  1E                push ds
000F1B93  56                push si
000F1B94  B90300            mov cx,0x3
000F1B97  51                push cx
000F1B98  33C0              xor ax,ax
000F1B9A  8ED8              mov ds,ax
000F1B9C  BE0020            mov si,0x2000
000F1B9F  B9582B            mov cx,0x2b58
000F1BA2  B89101            mov ax,0x191
000F1BA5  BAF003            mov dx,0x3f0
000F1BA8  EF                out dx,ax
000F1BA9  B2F6              mov dl,0xf6
000F1BAB  AC                lodsb
000F1BAC  EE                out dx,al
000F1BAD  E2FC              loop 0x1bab
000F1BAF  9A85036EFD        call 0xfd6e:0x385
000F1BB4  59                pop cx
000F1BB5  E2E0              loop 0x1b97
000F1BB7  5E                pop si
000F1BB8  1F                pop ds
000F1BB9  EB16              jmp short 0x1bd1
000F1BBB  803FE3            cmp byte [bx],0xe3
000F1BBE  7511              jnz 0x1bd1
000F1BC0  8A4F0A            mov cl,[bx+0xa]
000F1BC3  FEC1              inc cl
000F1BC5  B80008            mov ax,0x800
000F1BC8  D3E0              shl ax,cl
000F1BCA  9AA307B9FE        call 0xfeb9:0x7a3
000F1BCF  7525              jnz 0x1bf6
000F1BD1  9A9B01ABFD        call 0xfdab:0x19b
000F1BD6  EB1E              jmp short 0x1bf6
000F1BD8  C6460003          mov byte [bp+0x0],0x3
000F1BDC  C64609DF          mov byte [bp+0x9],0xdf
000F1BE0  C6460A1A          mov byte [bp+0xa],0x1a
000F1BE4  C646200B          mov byte [bp+0x20],0xb
000F1BE8  9A4901ABFD        call 0xfdab:0x149
000F1BED  50                push ax
000F1BEE  B00A              mov al,0xa
000F1BF0  9A9E036EFD        call 0xfd6e:0x39e
000F1BF5  58                pop ax
000F1BF6  3C00              cmp al,0x0
000F1BF8  CB                retf
000F1BF9  B401              mov ah,0x1
000F1BFB  8A4F0A            mov cl,[bx+0xa]
000F1BFE  D2E4              shl ah,cl
000F1C00  80CC10            or ah,0x10
000F1C03  33C9              xor cx,cx
000F1C05  BAF403            mov dx,0x3f4
000F1C08  EC                in al,dx
000F1C09  84C4              test ah,al
000F1C0B  7406              jz 0x1c13
000F1C0D  E2F6              loop 0x1c05
000F1C0F  B006              mov al,0x6
000F1C11  EB35              jmp short 0x1c48
000F1C13  BF0000            mov di,0x0
000F1C16  B132              mov cl,0x32
000F1C18  D2E0              shl al,cl
000F1C1A  33C9              xor cx,cx
000F1C1C  BAF403            mov dx,0x3f4
000F1C1F  EC                in al,dx
000F1C20  24C0              and al,0xc0
000F1C22  3C80              cmp al,0x80
000F1C24  7404              jz 0x1c2a
000F1C26  E2F4              loop 0x1c1c
000F1C28  EBE5              jmp short 0x1c0f
000F1C2A  BAF503            mov dx,0x3f5
000F1C2D  8A03              mov al,[bp+di]
000F1C2F  EE                out dx,al
000F1C30  807E0003          cmp byte [bp+0x0],0x3
000F1C34  7508              jnz 0x1c3e
000F1C36  83FF00            cmp di,byte +0x0
000F1C39  7503              jnz 0x1c3e
000F1C3B  BF0800            mov di,0x8
000F1C3E  47                inc di
000F1C3F  8BC7              mov ax,di
000F1C41  384620            cmp [bp+0x20],al
000F1C44  75D0              jnz 0x1c16
000F1C46  B000              mov al,0x0
000F1C48  3C00              cmp al,0x0
000F1C4A  CB                retf
000F1C4B  B132              mov cl,0x32
000F1C4D  D3EF              shr di,cl
000F1C4F  33C9              xor cx,cx
000F1C51  D2E8              shr al,cl
000F1C53  BAF403            mov dx,0x3f4
000F1C56  EC                in al,dx
000F1C57  24C0              and al,0xc0
000F1C59  3CC0              cmp al,0xc0
000F1C5B  7406              jz 0x1c63
000F1C5D  E2F2              loop 0x1c51
000F1C5F  B006              mov al,0x6
000F1C61  EB29              jmp short 0x1c8c
000F1C63  807E0008          cmp byte [bp+0x0],0x8
000F1C67  7508              jnz 0x1c71
000F1C69  83FF01            cmp di,byte +0x1
000F1C6C  7503              jnz 0x1c71
000F1C6E  83C702            add di,byte +0x2
000F1C71  83FF07            cmp di,byte +0x7
000F1C74  74E9              jz 0x1c5f
000F1C76  BAF503            mov dx,0x3f5
000F1C79  EC                in al,dx
000F1C7A  88430E            mov [bp+di+0xe],al
000F1C7D  47                inc di
000F1C7E  B132              mov cl,0x32
000F1C80  D3C8              ror ax,cl
000F1C82  BAF403            mov dx,0x3f4
000F1C85  EC                in al,dx
000F1C86  A810              test al,0x10
000F1C88  75C5              jnz 0x1c4f
000F1C8A  B000              mov al,0x0
000F1C8C  3C00              cmp al,0x0
000F1C8E  CB                retf
000F1C8F  CC                int3
000F1C90  C746292603        mov word [bp+0x29],0x326
000F1C95  C6461A00          mov byte [bp+0x1a],0x0
000F1C99  1E                push ds
000F1C9A  0E                push cs
000F1C9B  1F                pop ds
000F1C9C  8D36F304          lea si,[0x4f3]
000F1CA0  16                push ss
000F1CA1  07                pop es
000F1CA2  8D7E30            lea di,[bp+0x30]
000F1CA5  B91600            mov cx,0x16
000F1CA8  FC                cld
000F1CA9  F3A4              rep movsb
000F1CAB  1F                pop ds
000F1CAC  E4A2              in al,0xa2
000F1CAE  A880              test al,0x80
000F1CB0  7405              jz 0x1cb7
000F1CB2  B00A              mov al,0xa
000F1CB4  E9C100            jmp 0x1d78
000F1CB7  BA2403            mov dx,0x324
000F1CBA  EC                in al,dx
000F1CBB  A818              test al,0x18
000F1CBD  C6462F01          mov byte [bp+0x2f],0x1
000F1CC1  7504              jnz 0x1cc7
000F1CC3  C6462F02          mov byte [bp+0x2f],0x2
000F1CC7  807F01E2          cmp byte [bx+0x1],0xe2
000F1CCB  7403              jz 0x1cd0
000F1CCD  E9AB00            jmp 0x1d7b
000F1CD0  C6461115          mov byte [bp+0x11],0x15
000F1CD4  B0C0              mov al,0xc0
000F1CD6  9A80021AFE        call 0xfe1a:0x280
000F1CDB  FE4E11            dec byte [bp+0x11]
000F1CDE  7505              jnz 0x1ce5
000F1CE0  B006              mov al,0x6
000F1CE2  E99300            jmp 0x1d78
000F1CE5  BA2203            mov dx,0x322
000F1CE8  EC                in al,dx
000F1CE9  884609            mov [bp+0x9],al
000F1CEC  2489              and al,0x89
000F1CEE  75E4              jnz 0x1cd4
000F1CF0  BA2403            mov dx,0x324
000F1CF3  EC                in al,dx
000F1CF4  2406              and al,0x6
000F1CF6  740E              jz 0x1d06
000F1CF8  B222              mov dl,0x22
000F1CFA  EC                in al,dx
000F1CFB  A810              test al,0x10
000F1CFD  74D5              jz 0x1cd4
000F1CFF  9A45001AFE        call 0xfe1a:0x45
000F1D04  EBD5              jmp short 0x1cdb
000F1D06  9AF4001AFE        call 0xfe1a:0xf4
000F1D0B  756B              jnz 0x1d78
000F1D0D  E84C04            call 0x215c
000F1D10  74CE              jz 0x1ce0
000F1D12  BA2203            mov dx,0x322
000F1D15  B030              mov al,0x30
000F1D17  EE                out dx,al
000F1D18  B00A              mov al,0xa
000F1D1A  E620              out 0x20,al
000F1D1C  E420              in al,0x20
000F1D1E  A804              test al,0x4
000F1D20  74F6              jz 0x1d18
000F1D22  E83704            call 0x215c
000F1D25  74B9              jz 0x1ce0
000F1D27  BA2003            mov dx,0x320
000F1D2A  EC                in al,dx
000F1D2B  A810              test al,0x10
000F1D2D  9C                pushf
000F1D2E  E82B04            call 0x215c
000F1D31  7412              jz 0x1d45
000F1D33  B008              mov al,0x8
000F1D35  BA2203            mov dx,0x322
000F1D38  EE                out dx,al
000F1D39  E82004            call 0x215c
000F1D3C  7407              jz 0x1d45
000F1D3E  9D                popf
000F1D3F  B00A              mov al,0xa
000F1D41  7435              jz 0x1d78
000F1D43  EB03              jmp short 0x1d48
000F1D45  9D                popf
000F1D46  EB98              jmp short 0x1ce0
000F1D48  E8E902            call 0x2034
000F1D4B  803FC8            cmp byte [bx],0xc8
000F1D4E  7528              jnz 0x1d78
000F1D50  807E2F02          cmp byte [bp+0x2f],0x2
000F1D54  7522              jnz 0x1d78
000F1D56  9AD8011AFE        call 0xfe1a:0x1d8
000F1D5B  751B              jnz 0x1d78
000F1D5D  1E                push ds
000F1D5E  C57706            lds si,[bx+0x6]
000F1D61  81C61201          add si,0x112
000F1D65  8D7E30            lea di,[bp+0x30]
000F1D68  16                push ss
000F1D69  07                pop es
000F1D6A  B90B00            mov cx,0xb
000F1D6D  F3A5              rep movsw
000F1D6F  1F                pop ds
000F1D70  9AF4001AFE        call 0xfe1a:0xf4
000F1D75  E8BC02            call 0x2034
000F1D78  E90502            jmp 0x1f80
000F1D7B  813FC8D9          cmp word [bx],0xd9c8
000F1D7F  752F              jnz 0x1db0
000F1D81  807E2F01          cmp byte [bp+0x2f],0x1
000F1D85  750F              jnz 0x1d96
000F1D87  B80000            mov ax,0x0
000F1D8A  1E                push ds
000F1D8B  C47F18            les di,[bx+0x18]
000F1D8E  0E                push cs
000F1D8F  1F                pop ds
000F1D90  8D36E104          lea si,[0x4e1]
000F1D94  EB12              jmp short 0x1da8
000F1D96  9AD8011AFE        call 0xfe1a:0x1d8
000F1D9B  7510              jnz 0x1dad
000F1D9D  1E                push ds
000F1D9E  C47F18            les di,[bx+0x18]
000F1DA1  C57706            lds si,[bx+0x6]
000F1DA4  81C60001          add si,0x100
000F1DA8  8B0C              mov cx,[si]
000F1DAA  F3A4              rep movsb
000F1DAC  1F                pop ds
000F1DAD  E9D001            jmp 0x1f80
000F1DB0  803FD7            cmp byte [bx],0xd7
000F1DB3  7405              jz 0x1dba
000F1DB5  803FC3            cmp byte [bx],0xc3
000F1DB8  7512              jnz 0x1dcc
000F1DBA  1E                push ds
000F1DBB  C57718            lds si,[bx+0x18]
000F1DBE  83C612            add si,byte +0x12
000F1DC1  8D7E30            lea di,[bp+0x30]
000F1DC4  16                push ss
000F1DC5  07                pop es
000F1DC6  B90B00            mov cx,0xb
000F1DC9  F3A5              rep movsw
000F1DCB  1F                pop ds
000F1DCC  8B4632            mov ax,[bp+0x32]
000F1DCF  F66634            mul byte [bp+0x34]
000F1DD2  89461F            mov [bp+0x1f],ax
000F1DD5  803FC3            cmp byte [bx],0xc3
000F1DD8  741A              jz 0x1df4
000F1DDA  33D2              xor dx,dx
000F1DDC  8B4702            mov ax,[bx+0x2]
000F1DDF  F7761F            div word [bp+0x1f]
000F1DE2  86C4              xchg al,ah
000F1DE4  894602            mov [bp+0x2],ax
000F1DE7  8BC2              mov ax,dx
000F1DE9  F67634            div byte [bp+0x34]
000F1DEC  884604            mov [bp+0x4],al
000F1DEF  886605            mov [bp+0x5],ah
000F1DF2  EB0C              jmp short 0x1e00
000F1DF4  8B471C            mov ax,[bx+0x1c]
000F1DF7  894602            mov [bp+0x2],ax
000F1DFA  8B471E            mov ax,[bx+0x1e]
000F1DFD  894604            mov [bp+0x4],ax
000F1E00  F64602FC          test byte [bp+0x2],0xfc
000F1E04  7405              jz 0x1e0b
000F1E06  B008              mov al,0x8
000F1E08  E97501            jmp 0x1f80
000F1E0B  8B4704            mov ax,[bx+0x4]
000F1E0E  894618            mov [bp+0x18],ax
000F1E11  8B7F08            mov di,[bx+0x8]
000F1E14  8B4706            mov ax,[bx+0x6]
000F1E17  8BD0              mov dx,ax
000F1E19  B104              mov cl,0x4
000F1E1B  D3E8              shr ax,cl
000F1E1D  03C7              add ax,di
000F1E1F  894616            mov [bp+0x16],ax
000F1E22  81E20F00          and dx,0xf
000F1E26  895614            mov [bp+0x14],dx
000F1E29  895607            mov [bp+0x7],dx
000F1E2C  803FE3            cmp byte [bx],0xe3
000F1E2F  741B              jz 0x1e4c
000F1E31  BA2203            mov dx,0x322
000F1E34  EC                in al,dx
000F1E35  A810              test al,0x10
000F1E37  7407              jz 0x1e40
000F1E39  9A45001AFE        call 0xfe1a:0x45
000F1E3E  7509              jnz 0x1e49
000F1E40  E81402            call 0x2057
000F1E43  813FE2D9          cmp word [bx],0xd9e2
000F1E47  7503              jnz 0x1e4c
000F1E49  E93401            jmp 0x1f80
000F1E4C  807F01E6          cmp byte [bx+0x1],0xe6
000F1E50  7520              jnz 0x1e72
000F1E52  803FE3            cmp byte [bx],0xe3
000F1E55  741B              jz 0x1e72
000F1E57  BAA000            mov dx,0xa0
000F1E5A  EC                in al,dx
000F1E5B  A802              test al,0x2
000F1E5D  7413              jz 0x1e72
000F1E5F  807E0500          cmp byte [bp+0x5],0x0
000F1E63  750D              jnz 0x1e72
000F1E65  807F0A04          cmp byte [bx+0xa],0x4
000F1E69  7507              jnz 0x1e72
000F1E6B  9ACE03C9FD        call 0xfdc9:0x3ce
000F1E70  75D7              jnz 0x1e49
000F1E72  C646110F          mov byte [bp+0x11],0xf
000F1E76  C6461EFF          mov byte [bp+0x1e],0xff
000F1E7A  8B4614            mov ax,[bp+0x14]
000F1E7D  894607            mov [bp+0x7],ax
000F1E80  8A4634            mov al,[bp+0x34]
000F1E83  2A4605            sub al,[bp+0x5]
000F1E86  98                cbw
000F1E87  3B4618            cmp ax,[bp+0x18]
000F1E8A  7803              js 0x1e8f
000F1E8C  8B4618            mov ax,[bp+0x18]
000F1E8F  88461A            mov [bp+0x1a],al
000F1E92  884606            mov [bp+0x6],al
000F1E95  C6461B01          mov byte [bp+0x1b],0x1
000F1E99  8B17              mov dx,[bx]
000F1E9B  80FEE6            cmp dh,0xe6
000F1E9E  740C              jz 0x1eac
000F1EA0  80FEC9            cmp dh,0xc9
000F1EA3  7548              jnz 0x1eed
000F1EA5  9A70001AFE        call 0xfe1a:0x70
000F1EAA  EB46              jmp short 0x1ef2
000F1EAC  C6461B02          mov byte [bp+0x1b],0x2
000F1EB0  9A90001AFE        call 0xfe1a:0x90
000F1EB5  753B              jnz 0x1ef2
000F1EB7  E8FD00            call 0x1fb7
000F1EBA  803FE3            cmp byte [bx],0xe3
000F1EBD  743B              jz 0x1efa
000F1EBF  807E1EFF          cmp byte [bp+0x1e],0xff
000F1EC3  740B              jz 0x1ed0
000F1EC5  2A4605            sub al,[bp+0x5]
000F1EC8  88461A            mov [bp+0x1a],al
000F1ECB  884606            mov [bp+0x6],al
000F1ECE  742A              jz 0x1efa
000F1ED0  C6461B04          mov byte [bp+0x1b],0x4
000F1ED4  8A4606            mov al,[bp+0x6]
000F1ED7  88461A            mov [bp+0x1a],al
000F1EDA  9A8C001AFE        call 0xfe1a:0x8c
000F1EDF  7511              jnz 0x1ef2
000F1EE1  807E0940          cmp byte [bp+0x9],0x40
000F1EE5  7413              jz 0x1efa
000F1EE7  8A4606            mov al,[bp+0x6]
000F1EEA  88461A            mov [bp+0x1a],al
000F1EED  9A8C001AFE        call 0xfe1a:0x8c
000F1EF2  7403              jz 0x1ef7
000F1EF4  E98900            jmp 0x1f80
000F1EF7  E8BD00            call 0x1fb7
000F1EFA  807F01C9          cmp byte [bx+0x1],0xc9
000F1EFE  7406              jz 0x1f06
000F1F00  807E1A00          cmp byte [bp+0x1a],0x0
000F1F04  7506              jnz 0x1f0c
000F1F06  807E1EFF          cmp byte [bp+0x1e],0xff
000F1F0A  7443              jz 0x1f4f
000F1F0C  B00F              mov al,0xf
000F1F0E  9A9E036EFD        call 0xfd6e:0x39e
000F1F13  FF4612            inc word [bp+0x12]
000F1F16  803FE3            cmp byte [bx],0xe3
000F1F19  742A              jz 0x1f45
000F1F1B  807E110B          cmp byte [bp+0x11],0xb
000F1F1F  7506              jnz 0x1f27
000F1F21  E81001            call 0x2034
000F1F24  E83001            call 0x2057
000F1F27  807E1106          cmp byte [bp+0x11],0x6
000F1F2B  7518              jnz 0x1f45
000F1F2D  E80401            call 0x2034
000F1F30  FF7602            push word [bp+0x2]
000F1F33  8B4630            mov ax,[bp+0x30]
000F1F36  48                dec ax
000F1F37  86C4              xchg al,ah
000F1F39  894602            mov [bp+0x2],ax
000F1F3C  E81801            call 0x2057
000F1F3F  8F4602            pop word [bp+0x2]
000F1F42  E81201            call 0x2057
000F1F45  B004              mov al,0x4
000F1F47  FE4E11            dec byte [bp+0x11]
000F1F4A  7434              jz 0x1f80
000F1F4C  E927FF            jmp 0x1e76
000F1F4F  8A4606            mov al,[bp+0x6]
000F1F52  98                cbw
000F1F53  294618            sub [bp+0x18],ax
000F1F56  B000              mov al,0x0
000F1F58  7426              jz 0x1f80
000F1F5A  8A4604            mov al,[bp+0x4]
000F1F5D  FEC0              inc al
000F1F5F  3A4632            cmp al,[bp+0x32]
000F1F62  7C02              jl 0x1f66
000F1F64  B000              mov al,0x0
000F1F66  884604            mov [bp+0x4],al
000F1F69  7508              jnz 0x1f73
000F1F6B  FE4603            inc byte [bp+0x3]
000F1F6E  7503              jnz 0x1f73
000F1F70  FE4602            inc byte [bp+0x2]
000F1F73  C6460500          mov byte [bp+0x5],0x0
000F1F77  8B4607            mov ax,[bp+0x7]
000F1F7A  8B7E16            mov di,[bp+0x16]
000F1F7D  E997FE            jmp 0x1e17
000F1F80  88470D            mov [bx+0xd],al
000F1F83  50                push ax
000F1F84  3C04              cmp al,0x4
000F1F86  751E              jnz 0x1fa6
000F1F88  8B460D            mov ax,[bp+0xd]
000F1F8B  86E0              xchg ah,al
000F1F8D  80E403            and ah,0x3
000F1F90  F7661F            mul word [bp+0x1f]
000F1F93  8BD0              mov dx,ax
000F1F95  8B4634            mov ax,[bp+0x34]
000F1F98  F66604            mul byte [bp+0x4]
000F1F9B  03D0              add dx,ax
000F1F9D  8A461E            mov al,[bp+0x1e]
000F1FA0  98                cbw
000F1FA1  03D0              add dx,ax
000F1FA3  89570E            mov [bx+0xe],dx
000F1FA6  58                pop ax
000F1FA7  896F10            mov [bx+0x10],bp
000F1FAA  8BE5              mov sp,bp
000F1FAC  83C44A            add sp,byte +0x4a
000F1FAF  9A00006AFD        call 0xfd6a:0x0
000F1FB4  CA0400            retf 0x4
000F1FB7  8A460A            mov al,[bp+0xa]
000F1FBA  A808              test al,0x8
000F1FBC  7404              jz 0x1fc2
000F1FBE  B002              mov al,0x2
000F1FC0  EBBE              jmp short 0x1f80
000F1FC2  807E0940          cmp byte [bp+0x9],0x40
000F1FC6  7506              jnz 0x1fce
000F1FC8  807E0A00          cmp byte [bp+0xa],0x0
000F1FCC  7408              jz 0x1fd6
000F1FCE  8A460F            mov al,[bp+0xf]
000F1FD1  247F              and al,0x7f
000F1FD3  88461E            mov [bp+0x1e],al
000F1FD6  C3                ret
000F1FD7  807E1A00          cmp byte [bp+0x1a],0x0
000F1FDB  B00C              mov al,0xc
000F1FDD  744D              jz 0x202c
000F1FDF  83EC10            sub sp,byte +0x10
000F1FE2  9A00006CFD        call 0xfd6c:0x0
000F1FE7  B90001            mov cx,0x100
000F1FEA  FC                cld
000F1FEB  B800E8            mov ax,0xe800
000F1FEE  807E1B02          cmp byte [bp+0x1b],0x2
000F1FF2  7510              jnz 0x2004
000F1FF4  8B7607            mov si,[bp+0x7]
000F1FF7  8E5E16            mov ds,[bp+0x16]
000F1FFA  33FF              xor di,di
000F1FFC  8EC0              mov es,ax
000F1FFE  F3A5              rep movsw
000F2000  8BC6              mov ax,si
000F2002  EB1A              jmp short 0x201e
000F2004  33F6              xor si,si
000F2006  8ED8              mov ds,ax
000F2008  8B7E07            mov di,[bp+0x7]
000F200B  8E4616            mov es,[bp+0x16]
000F200E  807E1B01          cmp byte [bp+0x1b],0x1
000F2012  7506              jnz 0x201a
000F2014  F3A5              rep movsw
000F2016  8BC7              mov ax,di
000F2018  EB04              jmp short 0x201e
000F201A  F3AD              rep lodsw
000F201C  8BC7              mov ax,di
000F201E  894607            mov [bp+0x7],ax
000F2021  FE4E1A            dec byte [bp+0x1a]
000F2024  BA2403            mov dx,0x324
000F2027  B003              mov al,0x3
000F2029  EE                out dx,al
000F202A  B000              mov al,0x0
000F202C  9A00006AFD        call 0xfd6a:0x0
000F2031  3C00              cmp al,0x0
000F2033  CB                retf
000F2034  9A00001AFE        call 0xfe1a:0x0
000F2039  7516              jnz 0x2051
000F203B  807E0940          cmp byte [bp+0x9],0x40
000F203F  7506              jnz 0x2047
000F2041  807E0A80          cmp byte [bp+0xa],0x80
000F2045  740D              jz 0x2054
000F2047  B002              mov al,0x2
000F2049  F6460A08          test byte [bp+0xa],0x8
000F204D  7502              jnz 0x2051
000F204F  B008              mov al,0x8
000F2051  E92CFF            jmp 0x1f80
000F2054  B000              mov al,0x0
000F2056  C3                ret
000F2057  9A06001AFE        call 0xfe1a:0x6
000F205C  EBDB              jmp short 0x2039
000F205E  83EC10            sub sp,byte +0x10
000F2061  9A00006CFD        call 0xfd6c:0x0
000F2066  81ECC804          sub sp,0x4c8
000F206A  8BF5              mov si,bp
000F206C  8BEC              mov bp,sp
000F206E  16                push ss
000F206F  07                pop es
000F2070  8BFD              mov di,bp
000F2072  B94600            mov cx,0x46
000F2075  16                push ss
000F2076  1F                pop ds
000F2077  FC                cld
000F2078  F3A4              rep movsb
000F207A  803FE3            cmp byte [bx],0xe3
000F207D  7509              jnz 0x2088
000F207F  9A9C021AFE        call 0xfe1a:0x29c
000F2084  B0FB              mov al,0xfb
000F2086  E621              out 0x21,al
000F2088  53                push bx
000F2089  8B5E3C            mov bx,[bp+0x3c]
000F208C  43                inc bx
000F208D  B90100            mov cx,0x1
000F2090  8BC1              mov ax,cx
000F2092  F76634            mul word [bp+0x34]
000F2095  40                inc ax
000F2096  33D2              xor dx,dx
000F2098  F7F3              div bx
000F209A  83FA00            cmp dx,byte +0x0
000F209D  740C              jz 0x20ab
000F209F  41                inc cx
000F20A0  3B4E34            cmp cx,[bp+0x34]
000F20A3  7CEB              jl 0x2090
000F20A5  5B                pop bx
000F20A6  B014              mov al,0x14
000F20A8  E9A800            jmp 0x2153
000F20AB  8BD0              mov dx,ax
000F20AD  33DB              xor bx,bx
000F20AF  33C9              xor cx,cx
000F20B1  8D7E46            lea di,[bp+0x46]
000F20B4  16                push ss
000F20B5  07                pop es
000F20B6  8B4602            mov ax,[bp+0x2]
000F20B9  0CFC              or al,0xfc
000F20BB  AB                stosw
000F20BC  8A4604            mov al,[bp+0x4]
000F20BF  AA                stosb
000F20C0  8AC3              mov al,bl
000F20C2  AA                stosb
000F20C3  03DA              add bx,dx
000F20C5  3B5E34            cmp bx,[bp+0x34]
000F20C8  7C03              jl 0x20cd
000F20CA  2B5E34            sub bx,[bp+0x34]
000F20CD  41                inc cx
000F20CE  3B4E34            cmp cx,[bp+0x34]
000F20D1  7CE3              jl 0x20b6
000F20D3  5B                pop bx
000F20D4  C646110F          mov byte [bp+0x11],0xf
000F20D8  C6461B02          mov byte [bp+0x1b],0x2
000F20DC  8D4646            lea ax,[bp+0x46]
000F20DF  894607            mov [bp+0x7],ax
000F20E2  8C5616            mov [bp+0x16],ss
000F20E5  C6461A01          mov byte [bp+0x1a],0x1
000F20E9  9A4703C9FD        call 0xfdc9:0x347
000F20EE  BA2603            mov dx,0x326
000F20F1  B0C0              mov al,0xc0
000F20F3  8B4E02            mov cx,[bp+0x2]
000F20F6  86E9              xchg ch,cl
000F20F8  3B4E38            cmp cx,[bp+0x38]
000F20FB  7202              jc 0x20ff
000F20FD  B0C1              mov al,0xc1
000F20FF  EE                out dx,al
000F2100  B220              mov dl,0x20
000F2102  8A4604            mov al,[bp+0x4]
000F2105  EE                out dx,al
000F2106  8A4634            mov al,[bp+0x34]
000F2109  EE                out dx,al
000F210A  B0CC              mov al,0xcc
000F210C  EE                out dx,al
000F210D  B016              mov al,0x16
000F210F  EE                out dx,al
000F2110  B00F              mov al,0xf
000F2112  EE                out dx,al
000F2113  B070              mov al,0x70
000F2115  B222              mov dl,0x22
000F2117  884600            mov [bp+0x0],al
000F211A  EE                out dx,al
000F211B  803FE3            cmp byte [bx],0xe3
000F211E  750A              jnz 0x212a
000F2120  B80010            mov ax,0x1000
000F2123  9AA307B9FE        call 0xfeb9:0x7a3
000F2128  EB05              jmp short 0x212f
000F212A  9A54011AFE        call 0xfe1a:0x154
000F212F  7522              jnz 0x2153
000F2131  C6461D02          mov byte [bp+0x1d],0x2
000F2135  9A87011AFE        call 0xfe1a:0x187
000F213A  8A660A            mov ah,[bp+0xa]
000F213D  807E0940          cmp byte [bp+0x9],0x40
000F2141  7505              jnz 0x2148
000F2143  80FC00            cmp ah,0x0
000F2146  7409              jz 0x2151
000F2148  FE4E11            dec byte [bp+0x11]
000F214B  758B              jnz 0x20d8
000F214D  B00C              mov al,0xc
000F214F  EB02              jmp short 0x2153
000F2151  B000              mov al,0x0
000F2153  8BE5              mov sp,bp
000F2155  81C4C804          add sp,0x4c8
000F2159  E9D0FE            jmp 0x202c
000F215C  B9FFFF            mov cx,0xffff
000F215F  BA2403            mov dx,0x324
000F2162  EC                in al,dx
000F2163  A801              test al,0x1
000F2165  7505              jnz 0x216c
000F2167  B222              mov dl,0x22
000F2169  EC                in al,dx
000F216A  A889              test al,0x89
000F216C  E0F1              loopne 0x215f
000F216E  85C9              test cx,cx
000F2170  C3                ret
000F2171  2800              sub [bx+si],al
000F2173  0902              or [bp+si],ax
000F2175  0D8585            or ax,0x8585
000F2178  85800801          test [bx+si+0x108],ax
000F217C  1204              adc al,[si]
000F217E  0004              add [si],al
000F2180  0913              or [bp+di],dx
000F2182  0BA00006          or sp,[bx+si+0x600]
000F2186  0011              add [bx+di],dl
000F2188  00800080          add [bx+si+0x8000],al
000F218C  0000              add [bx+si],al
000F218E  0202              add al,[bp+si]
000F2190  00060005          add [0x500],al
000F2194  000C              add [si],cl
000F2196  00D1              add cl,dl
000F2198  03CC              add cx,sp
000F219A  CC                int3
000F219B  CC                int3
000F219C  CC                int3
000F219D  CC                int3
000F219E  CC                int3
000F219F  CC                int3
000F21A0  C6460050          mov byte [bp+0x0],0x50
000F21A4  EB0F              jmp short 0x21b5
000F21A6  C6460060          mov byte [bp+0x0],0x60
000F21AA  BA2003            mov dx,0x320
000F21AD  8A4602            mov al,[bp+0x2]
000F21B0  EE                out dx,al
000F21B1  8A4603            mov al,[bp+0x3]
000F21B4  EE                out dx,al
000F21B5  BA2203            mov dx,0x322
000F21B8  8A4600            mov al,[bp+0x0]
000F21BB  EE                out dx,al
000F21BC  803FE3            cmp byte [bx],0xe3
000F21BF  7508              jnz 0x21c9
000F21C1  B88000            mov ax,0x80
000F21C4  9A3806B9FE        call 0xfeb9:0x638
000F21C9  E88F01            call 0x235b
000F21CC  BA2203            mov dx,0x322
000F21CF  B008              mov al,0x8
000F21D1  EE                out dx,al
000F21D2  B9FFFF            mov cx,0xffff
000F21D5  D2E0              shl al,cl
000F21D7  D2E0              shl al,cl
000F21D9  EC                in al,dx
000F21DA  A810              test al,0x10
000F21DC  7504              jnz 0x21e2
000F21DE  E2F7              loop 0x21d7
000F21E0  EB1E              jmp short 0x2200
000F21E2  E87601            call 0x235b
000F21E5  C6460010          mov byte [bp+0x0],0x10
000F21E9  C6461D01          mov byte [bp+0x1d],0x1
000F21ED  8A4600            mov al,[bp+0x0]
000F21F0  BA2203            mov dx,0x322
000F21F3  EE                out dx,al
000F21F4  B9FFFF            mov cx,0xffff
000F21F7  D2E0              shl al,cl
000F21F9  EC                in al,dx
000F21FA  A880              test al,0x80
000F21FC  7405              jz 0x2203
000F21FE  E2F7              loop 0x21f7
000F2200  E90501            jmp 0x2308
000F2203  E98700            jmp 0x228d
000F2206  C6460030          mov byte [bp+0x0],0x30
000F220A  C6461D01          mov byte [bp+0x1d],0x1
000F220E  EB61              jmp short 0x2271
000F2210  E85401            call 0x2367
000F2213  C6460090          mov byte [bp+0x0],0x90
000F2217  C6461D02          mov byte [bp+0x1d],0x2
000F221B  BA2003            mov dx,0x320
000F221E  8A4604            mov al,[bp+0x4]
000F2221  EE                out dx,al
000F2222  8A4606            mov al,[bp+0x6]
000F2225  EE                out dx,al
000F2226  EB49              jmp short 0x2271
000F2228  B0E0              mov al,0xe0
000F222A  EB0D              jmp short 0x2239
000F222C  B0B0              mov al,0xb0
000F222E  EB09              jmp short 0x2239
000F2230  9A4703C9FD        call 0xfdc9:0x347
000F2235  754D              jnz 0x2284
000F2237  B0F0              mov al,0xf0
000F2239  E82B01            call 0x2367
000F223C  884600            mov [bp+0x0],al
000F223F  BA2603            mov dx,0x326
000F2242  B0C0              mov al,0xc0
000F2244  8B4E02            mov cx,[bp+0x2]
000F2247  86E9              xchg ch,cl
000F2249  3B4E38            cmp cx,[bp+0x38]
000F224C  7202              jc 0x2250
000F224E  B0C1              mov al,0xc1
000F2250  EE                out dx,al
000F2251  B220              mov dl,0x20
000F2253  C6461D07          mov byte [bp+0x1d],0x7
000F2257  8A4604            mov al,[bp+0x4]
000F225A  EE                out dx,al
000F225B  8A4602            mov al,[bp+0x2]
000F225E  0CFC              or al,0xfc
000F2260  EE                out dx,al
000F2261  8A4603            mov al,[bp+0x3]
000F2264  EE                out dx,al
000F2265  8A4604            mov al,[bp+0x4]
000F2268  EE                out dx,al
000F2269  8A4605            mov al,[bp+0x5]
000F226C  EE                out dx,al
000F226D  8A4606            mov al,[bp+0x6]
000F2270  EE                out dx,al
000F2271  8A4600            mov al,[bp+0x0]
000F2274  B222              mov dl,0x22
000F2276  EE                out dx,al
000F2277  803FE3            cmp byte [bx],0xe3
000F227A  750A              jnz 0x2286
000F227C  B80010            mov ax,0x1000
000F227F  9AA307B9FE        call 0xfeb9:0x7a3
000F2284  756B              jnz 0x22f1
000F2286  9A54011AFE        call 0xfe1a:0x154
000F228B  7564              jnz 0x22f1
000F228D  9A87011AFE        call 0xfe1a:0x187
000F2292  EB5B              jmp short 0x22ef
000F2294  C6460020          mov byte [bp+0x0],0x20
000F2298  BA2003            mov dx,0x320
000F229B  8A463E            mov al,[bp+0x3e]
000F229E  FEC0              inc al
000F22A0  D0E8              shr al,1
000F22A2  240F              and al,0xf
000F22A4  0C10              or al,0x10
000F22A6  EE                out dx,al
000F22A7  8A463B            mov al,[bp+0x3b]
000F22AA  240F              and al,0xf
000F22AC  0CA0              or al,0xa0
000F22AE  EE                out dx,al
000F22AF  8A463A            mov al,[bp+0x3a]
000F22B2  EE                out dx,al
000F22B3  8A4632            mov al,[bp+0x32]
000F22B6  FEC8              dec al
000F22B8  EE                out dx,al
000F22B9  8A4634            mov al,[bp+0x34]
000F22BC  FEC8              dec al
000F22BE  EE                out dx,al
000F22BF  B00E              mov al,0xe
000F22C1  EE                out dx,al
000F22C2  8A4637            mov al,[bp+0x37]
000F22C5  EE                out dx,al
000F22C6  8A4636            mov al,[bp+0x36]
000F22C9  EE                out dx,al
000F22CA  B222              mov dl,0x22
000F22CC  8A4600            mov al,[bp+0x0]
000F22CF  EE                out dx,al
000F22D0  B0C8              mov al,0xc8
000F22D2  E88C00            call 0x2361
000F22D5  EC                in al,dx
000F22D6  A880              test al,0x80
000F22D8  7405              jz 0x22df
000F22DA  884609            mov [bp+0x9],al
000F22DD  EB29              jmp short 0x2308
000F22DF  B008              mov al,0x8
000F22E1  EE                out dx,al
000F22E2  E87600            call 0x235b
000F22E5  EC                in al,dx
000F22E6  A810              test al,0x10
000F22E8  7405              jz 0x22ef
000F22EA  9A9C021AFE        call 0xfe1a:0x29c
000F22EF  B000              mov al,0x0
000F22F1  3C00              cmp al,0x0
000F22F3  CB                retf
000F22F4  E86400            call 0x235b
000F22F7  B9FFFF            mov cx,0xffff
000F22FA  D2E0              shl al,cl
000F22FC  D2E0              shl al,cl
000F22FE  BA2403            mov dx,0x324
000F2301  EC                in al,dx
000F2302  2406              and al,0x6
000F2304  7506              jnz 0x230c
000F2306  E2F4              loop 0x22fc
000F2308  B006              mov al,0x6
000F230A  EBE5              jmp short 0x22f1
000F230C  B120              mov cl,0x20
000F230E  D2E0              shl al,cl
000F2310  EC                in al,dx
000F2311  A802              test al,0x2
000F2313  740D              jz 0x2322
000F2315  9A4703C9FD        call 0xfdc9:0x347
000F231A  75D5              jnz 0x22f1
000F231C  B1FF              mov cl,0xff
000F231E  D2E0              shl al,cl
000F2320  EBD5              jmp short 0x22f7
000F2322  E83600            call 0x235b
000F2325  EBC8              jmp short 0x22ef
000F2327  E83100            call 0x235b
000F232A  BA2203            mov dx,0x322
000F232D  EC                in al,dx
000F232E  2460              and al,0x60
000F2330  3C60              cmp al,0x60
000F2332  7411              jz 0x2345
000F2334  16                push ss
000F2335  07                pop es
000F2336  8D7E0A            lea di,[bp+0xa]
000F2339  BA2003            mov dx,0x320
000F233C  33C9              xor cx,cx
000F233E  8A4E1D            mov cl,[bp+0x1d]
000F2341  EC                in al,dx
000F2342  AA                stosb
000F2343  E2FC              loop 0x2341
000F2345  BA2203            mov dx,0x322
000F2348  EC                in al,dx
000F2349  884609            mov [bp+0x9],al
000F234C  BA2203            mov dx,0x322
000F234F  B008              mov al,0x8
000F2351  EE                out dx,al
000F2352  B002              mov al,0x2
000F2354  E80A00            call 0x2361
000F2357  8A460A            mov al,[bp+0xa]
000F235A  CB                retf
000F235B  B001              mov al,0x1
000F235D  EB02              jmp short 0x2361
000F235F  B005              mov al,0x5
000F2361  9A9E036EFD        call 0xfd6e:0x39e
000F2366  C3                ret
000F2367  803FE3            cmp byte [bx],0xe3
000F236A  750B              jnz 0x2377
000F236C  50                push ax
000F236D  9A9C021AFE        call 0xfe1a:0x29c
000F2372  B0FB              mov al,0xfb
000F2374  E621              out 0x21,al
000F2376  58                pop ax
000F2377  C3                ret
000F2378  9A00001AFE        call 0xfe1a:0x0
000F237D  756A              jnz 0x23e9
000F237F  B91400            mov cx,0x14
000F2382  E86700            call 0x23ec
000F2385  E88700            call 0x240f
000F2388  E0F8              loopne 0x2382
000F238A  755D              jnz 0x23e9
000F238C  B91400            mov cx,0x14
000F238F  C47F06            les di,[bx+0x6]
000F2392  268A950801        mov dl,[es:di+0x108]
000F2397  E85200            call 0x23ec
000F239A  885605            mov [bp+0x5],dl
000F239D  52                push dx
000F239E  E86E00            call 0x240f
000F23A1  5A                pop dx
000F23A2  E0F3              loopne 0x2397
000F23A4  7543              jnz 0x23e9
000F23A6  B402              mov ah,0x2
000F23A8  80F90A            cmp cl,0xa
000F23AB  7A02              jpe 0x23af
000F23AD  B404              mov ah,0x4
000F23AF  1E                push ds
000F23B0  50                push ax
000F23B1  C57706            lds si,[bx+0x6]
000F23B4  81C60001          add si,0x100
000F23B8  8B14              mov dx,[si]
000F23BA  83C602            add si,byte +0x2
000F23BD  B8C9FD            mov ax,0xfdc9
000F23C0  8EC0              mov es,ax
000F23C2  BFE104            mov di,0x4e1
000F23C5  83C702            add di,byte +0x2
000F23C8  B91000            mov cx,0x10
000F23CB  FC                cld
000F23CC  F3A6              repe cmpsb
000F23CE  7513              jnz 0x23e3
000F23D0  8BCA              mov cx,dx
000F23D2  83E914            sub cx,byte +0x14
000F23D5  D1E9              shr cx,1
000F23D7  33C0              xor ax,ax
000F23D9  0304              add ax,[si]
000F23DB  83C602            add si,byte +0x2
000F23DE  E2F9              loop 0x23d9
000F23E0  40                inc ax
000F23E1  3B04              cmp ax,[si]
000F23E3  58                pop ax
000F23E4  1F                pop ds
000F23E5  7402              jz 0x23e9
000F23E7  B014              mov al,0x14
000F23E9  3C00              cmp al,0x0
000F23EB  CB                retf
000F23EC  8B4706            mov ax,[bx+0x6]
000F23EF  894607            mov [bp+0x7],ax
000F23F2  8B4708            mov ax,[bx+0x8]
000F23F5  894616            mov [bp+0x16],ax
000F23F8  C6461B01          mov byte [bp+0x1b],0x1
000F23FC  C6461A01          mov byte [bp+0x1a],0x1
000F2400  C746020000        mov word [bp+0x2],0x0
000F2405  C746040000        mov word [bp+0x4],0x0
000F240A  C6460601          mov byte [bp+0x6],0x1
000F240E  C3                ret
000F240F  80F90A            cmp cl,0xa
000F2412  7A04              jpe 0x2418
000F2414  C6460401          mov byte [bp+0x4],0x1
000F2418  51                push cx
000F2419  9A8C001AFE        call 0xfe1a:0x8c
000F241E  59                pop cx
000F241F  C3                ret
000F2420  52                push dx
000F2421  50                push ax
000F2422  BA2A03            mov dx,0x32a
000F2425  EE                out dx,al
000F2426  E6A2              out 0xa2,al
000F2428  E834FF            call 0x235f
000F242B  58                pop ax
000F242C  3D0000            cmp ax,0x0
000F242F  7406              jz 0x2437
000F2431  B228              mov dl,0x28
000F2433  EE                out dx,al
000F2434  B226              mov dl,0x26
000F2436  EE                out dx,al
000F2437  E825FF            call 0x235f
000F243A  5A                pop dx
000F243B  CB                retf
000F243C  33C9              xor cx,cx
000F243E  E81EFF            call 0x235f
000F2441  51                push cx
000F2442  9A45001AFE        call 0xfe1a:0x45
000F2447  59                pop cx
000F2448  8A4609            mov al,[bp+0x9]
000F244B  2460              and al,0x60
000F244D  3C60              cmp al,0x60
000F244F  7407              jz 0x2458
000F2451  FEC5              inc ch
000F2453  80FD0B            cmp ch,0xb
000F2456  75E6              jnz 0x243e
000F2458  8AC5              mov al,ch
000F245A  CB                retf
000F245B  CC                int3
000F245C  CC                int3
000F245D  CC                int3
000F245E  CC                int3
000F245F  CC                int3
000F2460  83EC10            sub sp,byte +0x10
000F2463  9A00006CFD        call 0xfd6c:0x0
000F2468  83EC04            sub sp,byte +0x4
000F246B  8BEC              mov bp,sp
000F246D  C55E1C            lds bx,[bp+0x1c]
000F2470  8B5702            mov dx,[bx+0x2]
000F2473  8B7F06            mov di,[bx+0x6]
000F2476  8E4708            mov es,[bx+0x8]
000F2479  C746020000        mov word [bp+0x2],0x0
000F247E  C746000000        mov word [bp+0x0],0x0
000F2483  817E200002        cmp word [bp+0x20],0x200
000F2488  721F              jc 0x24a9
000F248A  8CC0              mov ax,es
000F248C  B104              mov cl,0x4
000F248E  D3E0              shl ax,cl
000F2490  03C7              add ax,di
000F2492  034600            add ax,[bp+0x0]
000F2495  050002            add ax,0x200
000F2498  720F              jc 0x24a9
000F249A  FF4602            inc word [bp+0x2]
000F249D  816E200002        sub word [bp+0x20],0x200
000F24A2  8146000002        add word [bp+0x0],0x200
000F24A7  EBDA              jmp short 0x2483
000F24A9  837E0200          cmp word [bp+0x2],byte +0x0
000F24AD  7625              jna 0x24d4
000F24AF  895702            mov [bx+0x2],dx
000F24B2  8B4602            mov ax,[bp+0x2]
000F24B5  894704            mov [bx+0x4],ax
000F24B8  897F06            mov [bx+0x6],di
000F24BB  8C4708            mov [bx+0x8],es
000F24BE  1E                push ds
000F24BF  53                push bx
000F24C0  9A00006EFD        call 0xfd6e:0x0
000F24C5  807F0D00          cmp byte [bx+0xd],0x0
000F24C9  7403              jz 0x24ce
000F24CB  EB65              jmp short 0x2532
000F24CD  90                nop
000F24CE  035602            add dx,[bp+0x2]
000F24D1  037E00            add di,[bp+0x0]
000F24D4  837E2000          cmp word [bp+0x20],byte +0x0
000F24D8  764F              jna 0x2529
000F24DA  895702            mov [bx+0x2],dx
000F24DD  C747040100        mov word [bx+0x4],0x1
000F24E2  8B4618            mov ax,[bp+0x18]
000F24E5  894706            mov [bx+0x6],ax
000F24E8  8B461A            mov ax,[bp+0x1a]
000F24EB  894708            mov [bx+0x8],ax
000F24EE  1E                push ds
000F24EF  53                push bx
000F24F0  9A00006EFD        call 0xfd6e:0x0
000F24F5  807F0D00          cmp byte [bx+0xd],0x0
000F24F9  7403              jz 0x24fe
000F24FB  EB35              jmp short 0x2532
000F24FD  90                nop
000F24FE  42                inc dx
000F24FF  817E200002        cmp word [bp+0x20],0x200
000F2504  7208              jc 0x250e
000F2506  C746000002        mov word [bp+0x0],0x200
000F250B  EB07              jmp short 0x2514
000F250D  90                nop
000F250E  8B4620            mov ax,[bp+0x20]
000F2511  894600            mov [bp+0x0],ax
000F2514  FC                cld
000F2515  8B7618            mov si,[bp+0x18]
000F2518  8E5E1A            mov ds,[bp+0x1a]
000F251B  8B4E00            mov cx,[bp+0x0]
000F251E  F3A4              rep movsb
000F2520  8E5E1E            mov ds,[bp+0x1e]
000F2523  8B4600            mov ax,[bp+0x0]
000F2526  294620            sub [bp+0x20],ax
000F2529  837E2000          cmp word [bp+0x20],byte +0x0
000F252D  7403              jz 0x2532
000F252F  E947FF            jmp 0x2479
000F2532  83C404            add sp,byte +0x4
000F2535  9A00006AFD        call 0xfd6a:0x0
000F253A  CA0A00            retf 0xa
000F253D  CC                int3
000F253E  CC                int3
000F253F  CC                int3
000F2540  83EC10            sub sp,byte +0x10
000F2543  9A00006CFD        call 0xfd6c:0x0
000F2548  83EC0C            sub sp,byte +0xc
000F254B  8BEC              mov bp,sp
000F254D  8E5E28            mov ds,[bp+0x28]
000F2550  33DB              xor bx,bx
000F2552  BE1000            mov si,0x10
000F2555  C6460101          mov byte [bp+0x1],0x1
000F2559  C6460300          mov byte [bp+0x3],0x0
000F255D  C746040000        mov word [bp+0x4],0x0
000F2562  C746060000        mov word [bp+0x6],0x0
000F2567  807E0100          cmp byte [bp+0x1],0x0
000F256B  7408              jz 0x2575
000F256D  8A470C            mov al,[bx+0xc]
000F2570  384601            cmp [bp+0x1],al
000F2573  7603              jna 0x2578
000F2575  E9FA00            jmp 0x2672
000F2578  C6400C00          mov byte [bx+si+0xc],0x0
000F257C  8A4603            mov al,[bp+0x3]
000F257F  88400D            mov [bx+si+0xd],al
000F2582  F6400840          test byte [bx+si+0x8],0x40
000F2586  740B              jz 0x2593
000F2588  8A4009            mov al,[bx+si+0x9]
000F258B  384603            cmp [bp+0x3],al
000F258E  7403              jz 0x2593
000F2590  E9D600            jmp 0x2669
000F2593  80480C80          or byte [bx+si+0xc],0x80
000F2597  817806FFFF        cmp word [bx+si+0x6],0xffff
000F259C  7537              jnz 0x25d5
000F259E  80480C40          or byte [bx+si+0xc],0x40
000F25A2  F6400810          test byte [bx+si+0x8],0x10
000F25A6  7409              jz 0x25b1
000F25A8  8B7E04            mov di,[bp+0x4]
000F25AB  8B5708            mov dx,[bx+0x8]
000F25AE  EB07              jmp short 0x25b7
000F25B0  90                nop
000F25B1  8B7E06            mov di,[bp+0x6]
000F25B4  8B570A            mov dx,[bx+0xa]
000F25B7  83FF00            cmp di,byte +0x0
000F25BA  7411              jz 0x25cd
000F25BC  8B5104            mov dx,[bx+di+0x4]
000F25BF  83C20F            add dx,byte +0xf
000F25C2  81E2F0FF          and dx,0xfff0
000F25C6  B104              mov cl,0x4
000F25C8  D3EA              shr dx,cl
000F25CA  035106            add dx,[bx+di+0x6]
000F25CD  895006            mov [bx+si+0x6],dx
000F25D0  C7400E0000        mov word [bx+si+0xe],0x0
000F25D5  C47E24            les di,[bp+0x24]
000F25D8  8B4002            mov ax,[bx+si+0x2]
000F25DB  26894502          mov [es:di+0x2],ax
000F25DF  8B4006            mov ax,[bx+si+0x6]
000F25E2  26894508          mov [es:di+0x8],ax
000F25E6  8B400E            mov ax,[bx+si+0xe]
000F25E9  26894506          mov [es:di+0x6],ax
000F25ED  FF7004            push word [bx+si+0x4]
000F25F0  06                push es
000F25F1  57                push di
000F25F2  FF7622            push word [bp+0x22]
000F25F5  FF7620            push word [bp+0x20]
000F25F8  9A000046FE        call 0xfe46:0x0
000F25FD  26807D0D00        cmp byte [es:di+0xd],0x0
000F2602  7403              jz 0x2607
000F2604  EB6C              jmp short 0x2672
000F2606  90                nop
000F2607  807E0101          cmp byte [bp+0x1],0x1
000F260B  7506              jnz 0x2613
000F260D  B080              mov al,0x80
000F260F  BA2C03            mov dx,0x32c
000F2612  EE                out dx,al
000F2613  F6400880          test byte [bx+si+0x8],0x80
000F2617  741F              jz 0x2638
000F2619  83EC10            sub sp,byte +0x10
000F261C  9A00006CFD        call 0xfd6c:0x0
000F2621  8B4006            mov ax,[bx+si+0x6]
000F2624  89460A            mov [bp+0xa],ax
000F2627  8B400A            mov ax,[bx+si+0xa]
000F262A  894608            mov [bp+0x8],ax
000F262D  FF5E08            call far [bp+0x8]
000F2630  9A00006AFD        call 0xfd6a:0x0
000F2635  884603            mov [bp+0x3],al
000F2638  F6400820          test byte [bx+si+0x8],0x20
000F263C  752B              jnz 0x2669
000F263E  F6400C40          test byte [bx+si+0xc],0x40
000F2642  740F              jz 0x2653
000F2644  F6400810          test byte [bx+si+0x8],0x10
000F2648  7406              jz 0x2650
000F264A  897604            mov [bp+0x4],si
000F264D  EB04              jmp short 0x2653
000F264F  90                nop
000F2650  897606            mov [bp+0x6],si
000F2653  F6400801          test byte [bx+si+0x8],0x1
000F2657  7410              jz 0x2669
000F2659  C47E2A            les di,[bp+0x2a]
000F265C  8B4006            mov ax,[bx+si+0x6]
000F265F  26894502          mov [es:di+0x2],ax
000F2663  8B400A            mov ax,[bx+si+0xa]
000F2666  268905            mov [es:di],ax
000F2669  FE4601            inc byte [bp+0x1]
000F266C  83C610            add si,byte +0x10
000F266F  E9F5FE            jmp 0x2567
000F2672  83C40C            add sp,byte +0xc
000F2675  9A00006AFD        call 0xfd6a:0x0
000F267A  CA0E00            retf 0xe
000F267D  CC                int3
000F267E  83EC02            sub sp,byte +0x2
000F2681  8BEC              mov bp,sp
000F2683  B040              mov al,0x40
000F2685  E80601            call 0x278e
000F2688  B00A              mov al,0xa
000F268A  9A9E036EFD        call 0xfd6e:0x39e
000F268F  33C9              xor cx,cx
000F2691  B279              mov dl,0x79
000F2693  EC                in al,dx
000F2694  2483              and al,0x83
000F2696  3C83              cmp al,0x83
000F2698  7408              jz 0x26a2
000F269A  E2F5              loop 0x2691
000F269C  B8D1B1            mov ax,0xb1d1
000F269F  E9CF00            jmp 0x2771
000F26A2  33C9              xor cx,cx
000F26A4  8EC1              mov es,cx
000F26A6  BF9400            mov di,0x94
000F26A9  B85D01            mov ax,0x15d
000F26AC  AB                stosw
000F26AD  B867FE            mov ax,0xfe67
000F26B0  AB                stosw
000F26B1  B120              mov cl,0x20
000F26B3  B0DF              mov al,0xdf
000F26B5  E621              out 0x21,al
000F26B7  FB                sti
000F26B8  D2E0              shl al,cl
000F26BA  E421              in al,0x21
000F26BC  A820              test al,0x20
000F26BE  7408              jz 0x26c8
000F26C0  E2F1              loop 0x26b3
000F26C2  B8111B            mov ax,0x1b11
000F26C5  E9A900            jmp 0x2771
000F26C8  B002              mov al,0x2
000F26CA  E8C100            call 0x278e
000F26CD  E8DD00            call 0x27ad
000F26D0  B279              mov dl,0x79
000F26D2  EC                in al,dx
000F26D3  A802              test al,0x2
000F26D5  7406              jz 0x26dd
000F26D7  B8131B            mov ax,0x1b13
000F26DA  E99400            jmp 0x2771
000F26DD  B0FD              mov al,0xfd
000F26DF  E8A600            call 0x2788
000F26E2  E8C800            call 0x27ad
000F26E5  B00C              mov al,0xc
000F26E7  E89900            call 0x2783
000F26EA  1E                push ds
000F26EB  07                pop es
000F26EC  8BFE              mov di,si
000F26EE  8BC7              mov ax,di
000F26F0  A801              test al,0x1
000F26F2  7402              jz 0x26f6
000F26F4  8AC4              mov al,ah
000F26F6  AA                stosb
000F26F7  3BFB              cmp di,bx
000F26F9  75F3              jnz 0x26ee
000F26FB  4F                dec di
000F26FC  8CC0              mov ax,es
000F26FE  268825            mov [es:di],ah
000F2701  BA0600            mov dx,0x6
000F2704  8BC6              mov ax,si
000F2706  EE                out dx,al
000F2707  86E0              xchg ah,al
000F2709  EE                out dx,al
000F270A  8BC3              mov ax,bx
000F270C  2BC6              sub ax,si
000F270E  48                dec ax
000F270F  42                inc dx
000F2710  EE                out dx,al
000F2711  86E0              xchg ah,al
000F2713  EE                out dx,al
000F2714  B10C              mov cl,0xc
000F2716  8CD8              mov ax,ds
000F2718  D3E8              shr ax,cl
000F271A  E683              out 0x83,al
000F271C  B00B              mov al,0xb
000F271E  E60B              out 0xb,al
000F2720  B003              mov al,0x3
000F2722  E60A              out 0xa,al
000F2724  4B                dec bx
000F2725  4B                dec bx
000F2726  8BCE              mov cx,si
000F2728  49                dec cx
000F2729  8BC1              mov ax,cx
000F272B  A801              test al,0x1
000F272D  7402              jz 0x2731
000F272F  8AC4              mov al,ah
000F2731  BA7803            mov dx,0x378
000F2734  EE                out dx,al
000F2735  E87500            call 0x27ad
000F2738  E85B00            call 0x2796
000F273B  E8D200            call 0x2810
000F273E  41                inc cx
000F273F  3BCB              cmp cx,bx
000F2741  75F2              jnz 0x2735
000F2743  B0FB              mov al,0xfb
000F2745  E84000            call 0x2788
000F2748  E86200            call 0x27ad
000F274B  E84800            call 0x2796
000F274E  E8BF00            call 0x2810
000F2751  E85900            call 0x27ad
000F2754  8CD8              mov ax,ds
000F2756  B278              mov dl,0x78
000F2758  EC                in al,dx
000F2759  3AC4              cmp al,ah
000F275B  7405              jz 0x2762
000F275D  B8141B            mov ax,0x1b14
000F2760  EB0F              jmp short 0x2771
000F2762  B003              mov al,0x3
000F2764  E60A              out 0xa,al
000F2766  EE                out dx,al
000F2767  D2E0              shl al,cl
000F2769  E421              in al,0x21
000F276B  A820              test al,0x20
000F276D  7538              jnz 0x27a7
000F276F  33C0              xor ax,ax
000F2771  50                push ax
000F2772  B0C0              mov al,0xc0
000F2774  E81700            call 0x278e
000F2777  9A800167FE        call 0xfe67:0x180
000F277C  58                pop ax
000F277D  8BE5              mov sp,bp
000F277F  83C402            add sp,byte +0x2
000F2782  CB                retf
000F2783  084600            or [bp+0x0],al
000F2786  EB03              jmp short 0x278b
000F2788  204600            and [bp+0x0],al
000F278B  8A4600            mov al,[bp+0x0]
000F278E  884600            mov [bp+0x0],al
000F2791  BA7A03            mov dx,0x37a
000F2794  EE                out dx,al
000F2795  C3                ret
000F2796  BA7803            mov dx,0x378
000F2799  EC                in al,dx
000F279A  8AE1              mov ah,cl
000F279C  F6C101            test cl,0x1
000F279F  7402              jz 0x27a3
000F27A1  8AE5              mov ah,ch
000F27A3  3AC4              cmp al,ah
000F27A5  7405              jz 0x27ac
000F27A7  B8D2B1            mov ax,0xb1d2
000F27AA  EBC5              jmp short 0x2771
000F27AC  C3                ret
000F27AD  51                push cx
000F27AE  33C9              xor cx,cx
000F27B0  E421              in al,0x21
000F27B2  A820              test al,0x20
000F27B4  7507              jnz 0x27bd
000F27B6  E2F8              loop 0x27b0
000F27B8  B8121B            mov ax,0x1b12
000F27BB  EBB4              jmp short 0x2771
000F27BD  B0DF              mov al,0xdf
000F27BF  E621              out 0x21,al
000F27C1  B114              mov cl,0x14
000F27C3  D2E0              shl al,cl
000F27C5  E421              in al,0x21
000F27C7  A820              test al,0x20
000F27C9  75DC              jnz 0x27a7
000F27CB  59                pop cx
000F27CC  C3                ret
000F27CD  50                push ax
000F27CE  52                push dx
000F27CF  B0FF              mov al,0xff
000F27D1  E621              out 0x21,al
000F27D3  8A4600            mov al,[bp+0x0]
000F27D6  0C40              or al,0x40
000F27D8  BA7A03            mov dx,0x37a
000F27DB  EE                out dx,al
000F27DC  B065              mov al,0x65
000F27DE  FA                cli
000F27DF  E620              out 0x20,al
000F27E1  5A                pop dx
000F27E2  58                pop ax
000F27E3  CF                iret
000F27E4  B0B6              mov al,0xb6
000F27E6  E643              out 0x43,al
000F27E8  B0D0              mov al,0xd0
000F27EA  E642              out 0x42,al
000F27EC  B007              mov al,0x7
000F27EE  E642              out 0x42,al
000F27F0  FA                cli
000F27F1  B01B              mov al,0x1b
000F27F3  E620              out 0x20,al
000F27F5  B020              mov al,0x20
000F27F7  E621              out 0x21,al
000F27F9  B001              mov al,0x1
000F27FB  E621              out 0x21,al
000F27FD  B0FF              mov al,0xff
000F27FF  E621              out 0x21,al
000F2801  E60D              out 0xd,al
000F2803  B070              mov al,0x70
000F2805  E6A0              out 0xa0,al
000F2807  33C0              xor ax,ax
000F2809  E7A6              out 0xa6,ax
000F280B  B040              mov al,0x40
000F280D  E608              out 0x8,al
000F280F  CB                retf
000F2810  B001              mov al,0x1
000F2812  E86EFF            call 0x2783
000F2815  B0FE              mov al,0xfe
000F2817  E86EFF            call 0x2788
000F281A  C3                ret
000F281B  CC                int3
000F281C  CC                int3
000F281D  CC                int3
000F281E  CC                int3
000F281F  CC                int3
000F2820  83EC10            sub sp,byte +0x10
000F2823  9A00006CFD        call 0xfd6c:0x0
000F2828  81EC2C3B          sub sp,0x3b2c
000F282C  8BEC              mov bp,sp
000F282E  FC                cld
000F282F  50                push ax
000F2830  51                push cx
000F2831  33C0              xor ax,ax
000F2833  8ED8              mov ds,ax
000F2835  BE2F01            mov si,0x12f
000F2838  8A04              mov al,[si]
000F283A  16                push ss
000F283B  07                pop es
000F283C  8BFD              mov di,bp
000F283E  0E                push cs
000F283F  1F                pop ds
000F2840  BEC001            mov si,0x1c0
000F2843  90                nop
000F2844  A880              test al,0x80
000F2846  7504              jnz 0x284c
000F2848  BED001            mov si,0x1d0
000F284B  90                nop
000F284C  B91000            mov cx,0x10
000F284F  F3A4              rep movsb
000F2851  59                pop cx
000F2852  5E                pop si
000F2853  80F900            cmp cl,0x0
000F2856  7503              jnz 0x285b
000F2858  EB7B              jmp short 0x28d5
000F285A  90                nop
000F285B  B500              mov ch,0x0
000F285D  8E4606            mov es,[bp+0x6]
000F2860  33FF              xor di,di
000F2862  51                push cx
000F2863  57                push di
000F2864  56                push si
000F2865  368A0C            mov cl,[ss:si]
000F2868  41                inc cx
000F2869  B870FC            mov ax,0xfc70
000F286C  8ED8              mov ds,ax
000F286E  BE1A01            mov si,0x11a
000F2871  807E0E00          cmp byte [bp+0xe],0x0
000F2875  7505              jnz 0x287c
000F2877  83F913            cmp cx,byte +0x13
000F287A  7208              jc 0x2884
000F287C  83F911            cmp cx,byte +0x11
000F287F  7203              jc 0x2884
000F2881  83C612            add si,byte +0x12
000F2884  83C609            add si,byte +0x9
000F2887  E2FB              loop 0x2884
000F2889  33C0              xor ax,ax
000F288B  B109              mov cl,0x9
000F288D  AC                lodsb
000F288E  51                push cx
000F288F  B107              mov cl,0x7
000F2891  8AD0              mov dl,al
000F2893  33C0              xor ax,ax
000F2895  D0EA              shr dl,1
000F2897  9C                pushf
000F2898  D1D8              rcr ax,1
000F289A  9D                popf
000F289B  D1D8              rcr ax,1
000F289D  E2F6              loop 0x2895
000F289F  86C4              xchg al,ah
000F28A1  B102              mov cl,0x2
000F28A3  F7C70100          test di,0x1
000F28A7  7415              jz 0x28be
000F28A9  4F                dec di
000F28AA  33D2              xor dx,dx
000F28AC  8AF0              mov dh,al
000F28AE  268915            mov [es:di],dx
000F28B1  83C702            add di,byte +0x2
000F28B4  33D2              xor dx,dx
000F28B6  8AD4              mov dl,ah
000F28B8  268915            mov [es:di],dx
000F28BB  4F                dec di
000F28BC  EB03              jmp short 0x28c1
000F28BE  268905            mov [es:di],ax
000F28C1  037E0C            add di,[bp+0xc]
000F28C4  E2DD              loop 0x28a3
000F28C6  59                pop cx
000F28C7  E2C4              loop 0x288d
000F28C9  5E                pop si
000F28CA  46                inc si
000F28CB  5F                pop di
000F28CC  83C703            add di,byte +0x3
000F28CF  59                pop cx
000F28D0  E290              loop 0x2862
000F28D2  E99900            jmp 0x296e
000F28D5  BEE001            mov si,0x1e0
000F28D8  90                nop
000F28D9  B99C00            mov cx,0x9c
000F28DC  AC                lodsb
000F28DD  807E0E00          cmp byte [bp+0xe],0x0
000F28E1  7506              jnz 0x28e9
000F28E3  8AE0              mov ah,al
000F28E5  D0EC              shr ah,1
000F28E7  02C4              add al,ah
000F28E9  AA                stosb
000F28EA  E2F0              loop 0x28dc
000F28EC  B10D              mov cl,0xd
000F28EE  51                push cx
000F28EF  8B4E0A            mov cx,[bp+0xa]
000F28F2  B0FF              mov al,0xff
000F28F4  F3AA              rep stosb
000F28F6  8B4E08            mov cx,[bp+0x8]
000F28F9  B000              mov al,0x0
000F28FB  F3AA              rep stosb
000F28FD  59                pop cx
000F28FE  E2EE              loop 0x28ee
000F2900  E8AE00            call 0x29b1
000F2903  16                push ss
000F2904  07                pop es
000F2905  8DBEAC00          lea di,[bp+0xac]
000F2909  B9401D            mov cx,0x1d40
000F290C  33C0              xor ax,ax
000F290E  F3AB              rep stosw
000F2910  16                push ss
000F2911  1F                pop ds
000F2912  8D7610            lea si,[bp+0x10]
000F2915  8DBEAC00          lea di,[bp+0xac]
000F2919  037E02            add di,[bp+0x2]
000F291C  B10D              mov cl,0xd
000F291E  51                push cx
000F291F  57                push di
000F2920  33C0              xor ax,ax
000F2922  B20C              mov dl,0xc
000F2924  803C00            cmp byte [si],0x0
000F2927  7505              jnz 0x292e
000F2929  46                inc si
000F292A  FECA              dec dl
000F292C  EBF6              jmp short 0x2924
000F292E  B108              mov cl,0x8
000F2930  D0E0              shl al,1
000F2932  FE0C              dec byte [si]
000F2934  750D              jnz 0x2943
000F2936  46                inc si
000F2937  FECA              dec dl
000F2939  7413              jz 0x294e
000F293B  A802              test al,0x2
000F293D  7502              jnz 0x2941
000F293F  0C01              or al,0x1
000F2941  EB06              jmp short 0x2949
000F2943  A802              test al,0x2
000F2945  7402              jz 0x2949
000F2947  0C01              or al,0x1
000F2949  E2E5              loop 0x2930
000F294B  AA                stosb
000F294C  EBE0              jmp short 0x292e
000F294E  D2E0              shl al,cl
000F2950  AA                stosb
000F2951  5F                pop di
000F2952  56                push si
000F2953  8BF7              mov si,di
000F2955  037E0C            add di,[bp+0xc]
000F2958  8B4E0A            mov cx,[bp+0xa]
000F295B  2B4E0C            sub cx,[bp+0xc]
000F295E  F3A4              rep movsb
000F2960  5E                pop si
000F2961  037E08            add di,[bp+0x8]
000F2964  59                pop cx
000F2965  E2B7              loop 0x291e
000F2967  B580              mov ch,0x80
000F2969  E2FE              loop 0x2969
000F296B  E84300            call 0x29b1
000F296E  8BE5              mov sp,bp
000F2970  81C42C3B          add sp,0x3b2c
000F2974  9A00006AFD        call 0xfd6a:0x0
000F2979  CB                retf
000F297A  83EC10            sub sp,byte +0x10
000F297D  9A00006CFD        call 0xfd6c:0x0
000F2982  B00A              mov al,0xa
000F2984  BAD803            mov dx,0x3d8
000F2987  EE                out dx,al
000F2988  BE1000            mov si,0x10
000F298B  9A400070FC        call 0xfc70:0x40
000F2990  BB00A0            mov bx,0xa000
000F2993  B90080            mov cx,0x8000
000F2996  8EC3              mov es,bx
000F2998  33FF              xor di,di
000F299A  33C0              xor ax,ax
000F299C  F3AB              rep stosw
000F299E  B540              mov ch,0x40
000F29A0  80C710            add bh,0x10
000F29A3  80FFC0            cmp bh,0xc0
000F29A6  75EE              jnz 0x2996
000F29A8  B002              mov al,0x2
000F29AA  EE                out dx,al
000F29AB  9A00006AFD        call 0xfd6a:0x0
000F29B0  CB                retf
000F29B1  16                push ss
000F29B2  1F                pop ds
000F29B3  8DB6AC00          lea si,[bp+0xac]
000F29B7  8E4600            mov es,[bp+0x0]
000F29BA  33FF              xor di,di
000F29BC  8B560C            mov dx,[bp+0xc]
000F29BF  8BCA              mov cx,dx
000F29C1  D1E9              shr cx,1
000F29C3  51                push cx
000F29C4  8A4E0F            mov cl,[bp+0xf]
000F29C7  33DB              xor bx,bx
000F29C9  8B00              mov ax,[bx+si]
000F29CB  268901            mov [es:bx+di],ax
000F29CE  03DA              add bx,dx
000F29D0  E2F7              loop 0x29c9
000F29D2  83C602            add si,byte +0x2
000F29D5  83C702            add di,byte +0x2
000F29D8  B509              mov ch,0x9
000F29DA  E2FE              loop 0x29da
000F29DC  59                pop cx
000F29DD  E2E4              loop 0x29c3
000F29DF  C3                ret
000F29E0  D8B25C00          fdiv dword [bp+si+0x5c]
000F29E4  803A40            cmp byte [bp+si],0x40
000F29E7  B700              mov bh,0x0
000F29E9  02800280          add al,[bx+si+0x8002]
000F29ED  0000              add [bx+si],al
000F29EF  7590              jnz 0x2981
000F29F1  AC                lodsb
000F29F2  42                inc dx
000F29F3  0000              add [bx+si],al
000F29F5  27                daa
000F29F6  70AF              jo 0x29a7
000F29F8  800180            add byte [bx+di],0x80
000F29FB  01800003          add [bx+si+0x300],ax
000F29FF  4E                dec si
000F2A00  0000              add [bx+si],al
000F2A02  0000              add [bx+si],al
000F2A04  0422              add al,0x22
000F2A06  06                push es
000F2A07  2C10              sub al,0x10
000F2A09  1C18              sbb al,0x18
000F2A0B  1C00              sbb al,0x0
000F2A0D  0000              add [bx+si],al
000F2A0F  0004              add [si],al
000F2A11  2206320A          and al,[0xa32]
000F2A15  1E                push ds
000F2A16  141E              adc al,0x1e
000F2A18  0000              add [bx+si],al
000F2A1A  0000              add [bx+si],al
000F2A1C  0422              add al,0x22
000F2A1E  06                push es
000F2A1F  3606              ss push es
000F2A21  2010              and [bx+si],dl
000F2A23  2000              and [bx+si],al
000F2A25  000E0E1A          add [0x1a0e],cl
000F2A29  0E                push cs
000F2A2A  0E                push cs
000F2A2B  120E180C          adc cl,[0xc18]
000F2A2F  1800              sbb [bx+si],al
000F2A31  000E0E1A          add [0x1a0e],cl
000F2A35  0E                push cs
000F2A36  0E                push cs
000F2A37  1010              adc [bx+si],dl
000F2A39  1A08              sbb cl,[bx+si]
000F2A3B  1A00              sbb al,[bx+si]
000F2A3D  0000              add [bx+si],al
000F2A3F  000E0E1A          add [0x1a0e],cl
000F2A43  2814              sub [si],dl
000F2A45  1C04              sbb al,0x4
000F2A47  1C00              sbb al,0x0
000F2A49  000E0E1A          add [0x1a0e],cl
000F2A4D  2418              and al,0x18
000F2A4F  0E                push cs
000F2A50  021C              add bl,[si]
000F2A52  020E0000          add cl,[0x0]
000F2A56  0E                push cs
000F2A57  0E                push cs
000F2A58  1A28              sbb ch,[bx+si]
000F2A5A  140E              adc al,0xe
000F2A5C  0418              add al,0x18
000F2A5E  040E              add al,0xe
000F2A60  0E                push cs
000F2A61  0E                push cs
000F2A62  1A0E0E10          sbb cl,[0x100e]
000F2A66  100E0614          adc [0x1406],cl
000F2A6A  06                push es
000F2A6B  0E                push cs
000F2A6C  0E                push cs
000F2A6D  0E                push cs
000F2A6E  1A0E0E12          sbb cl,[0x120e]
000F2A72  0E                push cs
000F2A73  0E                push cs
000F2A74  0810              or [bx+si],dl
000F2A76  080E0000          or [0x0],cl
000F2A7A  0422              add al,0x22
000F2A7C  06                push es
000F2A7D  3606              ss push es
000F2A7F  180A              sbb [bp+si],cl
000F2A81  0C0A              or al,0xa
000F2A83  1800              sbb [bx+si],al
000F2A85  0004              add [si],al
000F2A87  2206320A          and al,[0xa32]
000F2A8B  180C              sbb [si],cl
000F2A8D  080C              or [si],cl
000F2A8F  1800              sbb [bx+si],al
000F2A91  0004              add [si],al
000F2A93  22062C10          and al,[0x102c]
000F2A97  180E040E          sbb [0xe04],cl
000F2A9B  18CC              sbb ah,cl
000F2A9D  CC                int3
000F2A9E  CC                int3
000F2A9F  CC                int3
000F2AA0  E60D              out 0xd,al
000F2AA2  B90800            mov cx,0x8
000F2AA5  33D2              xor dx,dx
000F2AA7  8AC2              mov al,dl
000F2AA9  F8                clc
000F2AAA  D2D8              rcr al,cl
000F2AAC  EE                out dx,al
000F2AAD  F6D0              not al
000F2AAF  EE                out dx,al
000F2AB0  42                inc dx
000F2AB1  80FA08            cmp dl,0x8
000F2AB4  75F1              jnz 0x2aa7
000F2AB6  4A                dec dx
000F2AB7  8AE2              mov ah,dl
000F2AB9  F8                clc
000F2ABA  D2DC              rcr ah,cl
000F2ABC  EC                in al,dx
000F2ABD  3AE0              cmp ah,al
000F2ABF  740A              jz 0x2acb
000F2AC1  E60D              out 0xd,al
000F2AC3  B81411            mov ax,0x1114
000F2AC6  0BC0              or ax,ax
000F2AC8  8BD0              mov dx,ax
000F2ACA  CB                retf
000F2ACB  F6D4              not ah
000F2ACD  EC                in al,dx
000F2ACE  3AC4              cmp al,ah
000F2AD0  75EF              jnz 0x2ac1
000F2AD2  80FA00            cmp dl,0x0
000F2AD5  75DF              jnz 0x2ab6
000F2AD7  E2CC              loop 0x2aa5
000F2AD9  E60D              out 0xd,al
000F2ADB  B040              mov al,0x40
000F2ADD  E608              out 0x8,al
000F2ADF  E4A0              in al,0xa0
000F2AE1  A840              test al,0x40
000F2AE3  755C              jnz 0x2b41
000F2AE5  33C0              xor ax,ax
000F2AE7  8EC0              mov es,ax
000F2AE9  E408              in al,0x8
000F2AEB  2470              and al,0x70
000F2AED  3C00              cmp al,0x0
000F2AEF  7415              jz 0x2b06
000F2AF1  A840              test al,0x40
000F2AF3  7405              jz 0x2afa
000F2AF5  B8D131            mov ax,0x31d1
000F2AF8  EB0A              jmp short 0x2b04
000F2AFA  A820              test al,0x20
000F2AFC  B8D2C1            mov ax,0xc1d2
000F2AFF  7403              jz 0x2b04
000F2B01  B8D1C1            mov ax,0xc1d1
000F2B04  EBC0              jmp short 0x2ac6
000F2B06  33D2              xor dx,dx
000F2B08  B80002            mov ax,0x200
000F2B0B  EE                out dx,al
000F2B0C  86C4              xchg al,ah
000F2B0E  EE                out dx,al
000F2B0F  42                inc dx
000F2B10  EE                out dx,al
000F2B11  86C4              xchg al,ah
000F2B13  EE                out dx,al
000F2B14  42                inc dx
000F2B15  80FA06            cmp dl,0x6
000F2B18  75EE              jnz 0x2b08
000F2B1A  8BF8              mov di,ax
000F2B1C  E680              out 0x80,al
000F2B1E  E681              out 0x81,al
000F2B20  E682              out 0x82,al
000F2B22  B004              mov al,0x4
000F2B24  BA0B00            mov dx,0xb
000F2B27  EE                out dx,al
000F2B28  40                inc ax
000F2B29  EE                out dx,al
000F2B2A  40                inc ax
000F2B2B  EE                out dx,al
000F2B2C  E4A6              in al,0xa6
000F2B2E  A801              test al,0x1
000F2B30  7549              jnz 0x2b7b
000F2B32  B401              mov ah,0x1
000F2B34  B91000            mov cx,0x10
000F2B37  B002              mov al,0x2
000F2B39  E6A6              out 0xa6,al
000F2B3B  E4A0              in al,0xa0
000F2B3D  A840              test al,0x40
000F2B3F  7403              jz 0x2b44
000F2B41  E97DFF            jmp 0x2ac1
000F2B44  B070              mov al,0x70
000F2B46  E6A0              out 0xa0,al
000F2B48  26C7050F5A        mov word [es:di],0x5a0f
000F2B4D  8AC4              mov al,ah
000F2B4F  34FF              xor al,0xff
000F2B51  E60F              out 0xf,al
000F2B53  D2E2              shl dl,cl
000F2B55  BA0000            mov dx,0x0
000F2B58  02D5              add dl,ch
000F2B5A  EC                in al,dx
000F2B5B  3C03              cmp al,0x3
000F2B5D  75E2              jnz 0x2b41
000F2B5F  EC                in al,dx
000F2B60  3C02              cmp al,0x2
000F2B62  75DD              jnz 0x2b41
000F2B64  E408              in al,0x8
000F2B66  84C4              test ah,al
000F2B68  74D7              jz 0x2b41
000F2B6A  26813D0F5A        cmp word [es:di],0x5a0f
000F2B6F  74D0              jz 0x2b41
000F2B71  D0E4              shl ah,1
000F2B73  80C502            add ch,0x2
000F2B76  80FD06            cmp ch,0x6
000F2B79  75CD              jnz 0x2b48
000F2B7B  9A910167FE        call 0xfe67:0x191
000F2B80  CB                retf
000F2B81  CC                int3
000F2B82  CC                int3
000F2B83  CC                int3
000F2B84  CC                int3
000F2B85  CC                int3
000F2B86  CC                int3
000F2B87  CC                int3
000F2B88  CC                int3
000F2B89  CC                int3
000F2B8A  CC                int3
000F2B8B  CC                int3
000F2B8C  CC                int3
000F2B8D  CC                int3
000F2B8E  CC                int3
000F2B8F  CC                int3
000F2B90  FA                cli
000F2B91  81EC2001          sub sp,0x120
000F2B95  8BEC              mov bp,sp
000F2B97  16                push ss
000F2B98  1F                pop ds
000F2B99  8D9EAE00          lea bx,[bp+0xae]
000F2B9D  88470A            mov [bx+0xa],al
000F2BA0  50                push ax
000F2BA1  16                push ss
000F2BA2  07                pop es
000F2BA3  8DBEDA00          lea di,[bp+0xda]
000F2BA7  B8FF06            mov ax,0x6ff
000F2BAA  AB                stosw
000F2BAB  B014              mov al,0x14
000F2BAD  AA                stosb
000F2BAE  B013              mov al,0x13
000F2BB0  B94000            mov cx,0x40
000F2BB3  F3AA              rep stosb
000F2BB5  C6869E0000        mov byte [bp+0x9e],0x0
000F2BBA  33C9              xor cx,cx
000F2BBC  8EC1              mov es,cx
000F2BBE  B0FF              mov al,0xff
000F2BC0  E621              out 0x21,al
000F2BC2  BF9000            mov di,0x90
000F2BC5  B8BA03            mov ax,0x3ba
000F2BC8  AB                stosw
000F2BC9  B86EFD            mov ax,0xfd6e
000F2BCC  AB                stosw
000F2BCD  58                pop ax
000F2BCE  E85D04            call 0x302e
000F2BD1  33C0              xor ax,ax
000F2BD3  9AF605B9FE        call 0xfeb9:0x5f6
000F2BD8  9A910167FE        call 0xfe67:0x191
000F2BDD  BAF403            mov dx,0x3f4
000F2BE0  EC                in al,dx
000F2BE1  3C80              cmp al,0x80
000F2BE3  742D              jz 0x2c12
000F2BE5  B80001            mov ax,0x100
000F2BE8  9AF605B9FE        call 0xfeb9:0x5f6
000F2BED  EC                in al,dx
000F2BEE  3C80              cmp al,0x80
000F2BF0  7520              jnz 0x2c12
000F2BF2  BAF003            mov dx,0x3f0
000F2BF5  ED                in ax,dx
000F2BF6  250002            and ax,0x200
000F2BF9  3D0000            cmp ax,0x0
000F2BFC  7505              jnz 0x2c03
000F2BFE  E82D04            call 0x302e
000F2C01  EB02              jmp short 0x2c05
000F2C03  7554              jnz 0x2c59
000F2C05  E82604            call 0x302e
000F2C08  33C0              xor ax,ax
000F2C0A  EF                out dx,ax
000F2C0B  9A2801ABFD        call 0xfdab:0x128
000F2C10  7406              jz 0x2c18
000F2C12  B81131            mov ax,0x3111
000F2C15  E90404            jmp 0x301c
000F2C18  E81304            call 0x302e
000F2C1B  BAF003            mov dx,0x3f0
000F2C1E  B81001            mov ax,0x110
000F2C21  EF                out dx,ax
000F2C22  B0EF              mov al,0xef
000F2C24  E621              out 0x21,al
000F2C26  FB                sti
000F2C27  B00A              mov al,0xa
000F2C29  E8C206            call 0x32ee
000F2C2C  E421              in al,0x21
000F2C2E  A810              test al,0x10
000F2C30  75E0              jnz 0x2c12
000F2C32  B89001            mov ax,0x190
000F2C35  EF                out dx,ax
000F2C36  E8B306            call 0x32ec
000F2C39  ED                in ax,dx
000F2C3A  F6C402            test ah,0x2
000F2C3D  74D3              jz 0x2c12
000F2C3F  E421              in al,0x21
000F2C41  A810              test al,0x10
000F2C43  74CD              jz 0x2c12
000F2C45  9A1306B9FE        call 0xfeb9:0x613
000F2C4A  3C04              cmp al,0x4
000F2C4C  75C4              jnz 0x2c12
000F2C4E  ED                in ax,dx
000F2C4F  F6C402            test ah,0x2
000F2C52  75BE              jnz 0x2c12
000F2C54  E8D703            call 0x302e
000F2C57  EB08              jmp short 0x2c61
000F2C59  B8DD43            mov ax,0x43dd
000F2C5C  E9BD03            jmp 0x301c
000F2C5F  EBB1              jmp short 0x2c12
000F2C61  E8CA03            call 0x302e
000F2C64  E6A2              out 0xa2,al
000F2C66  C6460200          mov byte [bp+0x2],0x0
000F2C6A  C6460301          mov byte [bp+0x3],0x1
000F2C6E  C707E3E3          mov word [bx],0xe3e3
000F2C72  C6470B08          mov byte [bx+0xb],0x8
000F2C76  C6460608          mov byte [bp+0x6],0x8
000F2C7A  EB08              jmp short 0x2c84
000F2C7C  B81113            mov ax,0x1311
000F2C7F  E99A03            jmp 0x301c
000F2C82  EB8E              jmp short 0x2c12
000F2C84  E8A703            call 0x302e
000F2C87  33C9              xor cx,cx
000F2C89  E2FE              loop 0x2c89
000F2C8B  E2FE              loop 0x2c8b
000F2C8D  E2FE              loop 0x2c8d
000F2C8F  E2FE              loop 0x2c8f
000F2C91  E2FE              loop 0x2c91
000F2C93  B8C001            mov ax,0x1c0
000F2C96  9AF605B9FE        call 0xfeb9:0x5f6
000F2C9B  BAF003            mov dx,0x3f0
000F2C9E  B8400F            mov ax,0xf40
000F2CA1  EF                out dx,ax
000F2CA2  B93C00            mov cx,0x3c
000F2CA5  C6460004          mov byte [bp+0x0],0x4
000F2CA9  8A470A            mov al,[bx+0xa]
000F2CAC  884601            mov [bp+0x1],al
000F2CAF  C6462002          mov byte [bp+0x20],0x2
000F2CB3  51                push cx
000F2CB4  9A4901ABFD        call 0xfdab:0x149
000F2CB9  9A9B01ABFD        call 0xfdab:0x19b
000F2CBE  59                pop cx
000F2CBF  F6460E20          test byte [bp+0xe],0x20
000F2CC3  740C              jz 0x2cd1
000F2CC5  B0FA              mov al,0xfa
000F2CC7  9A9E036EFD        call 0xfd6e:0x39e
000F2CCC  E2D7              loop 0x2ca5
000F2CCE  E91104            jmp 0x30e2
000F2CD1  B10C              mov cl,0xc
000F2CD3  B0FA              mov al,0xfa
000F2CD5  9A9E036EFD        call 0xfd6e:0x39e
000F2CDA  E2F7              loop 0x2cd3
000F2CDC  B8C001            mov ax,0x1c0
000F2CDF  9AF605B9FE        call 0xfeb9:0x5f6
000F2CE4  B108              mov cl,0x8
000F2CE6  B0FA              mov al,0xfa
000F2CE8  9A9E036EFD        call 0xfd6e:0x39e
000F2CED  C6460004          mov byte [bp+0x0],0x4
000F2CF1  8A470A            mov al,[bx+0xa]
000F2CF4  884601            mov [bp+0x1],al
000F2CF7  C6462002          mov byte [bp+0x20],0x2
000F2CFB  51                push cx
000F2CFC  9A4901ABFD        call 0xfdab:0x149
000F2D01  9A9B01ABFD        call 0xfdab:0x19b
000F2D06  59                pop cx
000F2D07  F6460E20          test byte [bp+0xe],0x20
000F2D0B  7555              jnz 0x2d62
000F2D0D  E2D7              loop 0x2ce6
000F2D0F  E9D003            jmp 0x30e2
000F2D12  C6460004          mov byte [bp+0x0],0x4
000F2D16  8A470A            mov al,[bx+0xa]
000F2D19  884601            mov [bp+0x1],al
000F2D1C  C6462002          mov byte [bp+0x20],0x2
000F2D20  9A4901ABFD        call 0xfdab:0x149
000F2D25  743B              jz 0x2d62
000F2D27  E9AE03            jmp 0x30d8
000F2D2A  BAF003            mov dx,0x3f0
000F2D2D  9A7906B9FE        call 0xfeb9:0x679
000F2D32  ED                in ax,dx
000F2D33  8A8EA100          mov cl,[bp+0xa1]
000F2D37  80F4FF            xor ah,0xff
000F2D3A  80E470            and ah,0x70
000F2D3D  3ACC              cmp cl,ah
000F2D3F  753D              jnz 0x2d7e
000F2D41  A808              test al,0x8
000F2D43  7403              jz 0x2d48
000F2D45  E99A03            jmp 0x30e2
000F2D48  8886A200          mov [bp+0xa2],al
000F2D4C  FF86A800          inc word [bp+0xa8]
000F2D50  7431              jz 0x2d83
000F2D52  9A9B01ABFD        call 0xfdab:0x19b
000F2D57  7403              jz 0x2d5c
000F2D59  E97C03            jmp 0x30d8
000F2D5C  F6460E20          test byte [bp+0xe],0x20
000F2D60  741C              jz 0x2d7e
000F2D62  E8C902            call 0x302e
000F2D65  B8C001            mov ax,0x1c0
000F2D68  9AF605B9FE        call 0xfeb9:0x5f6
000F2D6D  C707E3E2          mov word [bx],0xe2e3
000F2D71  E82F03            call 0x30a3
000F2D74  3C00              cmp al,0x0
000F2D76  7411              jz 0x2d89
000F2D78  F6462802          test byte [bp+0x28],0x2
000F2D7C  EB05              jmp short 0x2d83
000F2D7E  B81134            mov ax,0x3411
000F2D81  EB03              jmp short 0x2d86
000F2D83  B81243            mov ax,0x4312
000F2D86  E99302            jmp 0x301c
000F2D89  E8A202            call 0x302e
000F2D8C  C686A60000        mov byte [bp+0xa6],0x0
000F2D91  33C0              xor ax,ax
000F2D93  C707E3C9          mov word [bx],0xc9e3
000F2D97  894702            mov [bx+0x2],ax
000F2D9A  C747040100        mov word [bx+0x4],0x1
000F2D9F  C747060010        mov word [bx+0x6],0x1000
000F2DA4  894708            mov [bx+0x8],ax
000F2DA7  E8F902            call 0x30a3
000F2DAA  B401              mov ah,0x1
000F2DAC  E89603            call 0x3145
000F2DAF  C747020800        mov word [bx+0x2],0x8
000F2DB4  E8EC02            call 0x30a3
000F2DB7  B402              mov ah,0x2
000F2DB9  E88903            call 0x3145
000F2DBC  80BEA60000        cmp byte [bp+0xa6],0x0
000F2DC1  751E              jnz 0x2de1
000F2DC3  E86802            call 0x302e
000F2DC6  C646024F          mov byte [bp+0x2],0x4f
000F2DCA  9A1000ABFD        call 0xfdab:0x10
000F2DCF  75AD              jnz 0x2d7e
000F2DD1  C74702F004        mov word [bx+0x2],0x4f0
000F2DD6  C707E3C9          mov word [bx],0xc9e3
000F2DDA  E8C602            call 0x30a3
000F2DDD  3C00              cmp al,0x0
000F2DDF  7406              jz 0x2de7
000F2DE1  B81343            mov ax,0x4313
000F2DE4  E93502            jmp 0x301c
000F2DE7  B401              mov ah,0x1
000F2DE9  E85903            call 0x3145
000F2DEC  33C0              xor ax,ax
000F2DEE  8EC0              mov es,ax
000F2DF0  8BF0              mov si,ax
000F2DF2  BF0009            mov di,0x900
000F2DF5  B90002            mov cx,0x200
000F2DF8  8BC6              mov ax,si
000F2DFA  0BC7              or ax,di
000F2DFC  AB                stosw
000F2DFD  E2F9              loop 0x2df8
000F2DFF  B501              mov ch,0x1
000F2E01  B80F5A            mov ax,0x5a0f
000F2E04  F3AB              rep stosw
000F2E06  8CC0              mov ax,es
000F2E08  80C410            add ah,0x10
000F2E0B  80FCA0            cmp ah,0xa0
000F2E0E  75DE              jnz 0x2dee
000F2E10  33C0              xor ax,ax
000F2E12  894708            mov [bx+0x8],ax
000F2E15  E6A2              out 0xa2,al
000F2E17  C747060009        mov word [bx+0x6],0x900
000F2E1C  C707E3E6          mov word [bx],0xe6e3
000F2E20  C747040200        mov word [bx+0x4],0x2
000F2E25  E87B02            call 0x30a3
000F2E28  C686EF0000        mov byte [bp+0xef],0x0
000F2E2D  3C0C              cmp al,0xc
000F2E2F  750B              jnz 0x2e3c
000F2E31  808EEF0001        or byte [bp+0xef],0x1
000F2E36  E9E100            jmp 0x2f1a
000F2E39  E942FF            jmp 0x2d7e
000F2E3C  3C00              cmp al,0x0
000F2E3E  740C              jz 0x2e4c
000F2E40  807E0407          cmp byte [bp+0x4],0x7
000F2E44  739B              jnc 0x2de1
000F2E46  83470202          add word [bx+0x2],byte +0x2
000F2E4A  EBC9              jmp short 0x2e15
000F2E4C  8B4708            mov ax,[bx+0x8]
000F2E4F  8EC0              mov es,ax
000F2E51  BF0009            mov di,0x900
000F2E54  0BC7              or ax,di
000F2E56  263B05            cmp ax,[es:di]
000F2E59  7403              jz 0x2e5e
000F2E5B  E91EFE            jmp 0x2c7c
000F2E5E  E83802            call 0x3099
000F2E61  268035FF          xor byte [es:di],0xff
000F2E65  C707E3D9          mov word [bx],0xd9e3
000F2E69  E83702            call 0x30a3
000F2E6C  E6A2              out 0xa2,al
000F2E6E  8CC2              mov dx,es
000F2E70  BF0009            mov di,0x900
000F2E73  0BD7              or dx,di
000F2E75  3C00              cmp al,0x0
000F2E77  7405              jz 0x2e7e
000F2E79  268915            mov [es:di],dx
000F2E7C  EBC2              jmp short 0x2e40
000F2E7E  B90002            mov cx,0x200
000F2E81  268B05            mov ax,[es:di]
000F2E84  3BC2              cmp ax,dx
000F2E86  75B1              jnz 0x2e39
000F2E88  83C702            add di,byte +0x2
000F2E8B  83C202            add dx,byte +0x2
000F2E8E  E2F1              loop 0x2e81
000F2E90  E80602            call 0x3099
000F2E93  E408              in al,0x8
000F2E95  A804              test al,0x4
000F2E97  7503              jnz 0x2e9c
000F2E99  E976FD            jmp 0x2c12
000F2E9C  26813D0F5A        cmp word [es:di],0x5a0f
000F2EA1  75B8              jnz 0x2e5b
000F2EA3  33C0              xor ax,ax
000F2EA5  8EC0              mov es,ax
000F2EA7  BF3101            mov di,0x131
000F2EAA  268A15            mov dl,[es:di]
000F2EAD  80E2F0            and dl,0xf0
000F2EB0  8B4708            mov ax,[bx+0x8]
000F2EB3  80C410            add ah,0x10
000F2EB6  3AE2              cmp ah,dl
000F2EB8  7403              jz 0x2ebd
000F2EBA  E955FF            jmp 0x2e12
000F2EBD  33C0              xor ax,ax
000F2EBF  8EC0              mov es,ax
000F2EC1  BF0009            mov di,0x900
000F2EC4  B90002            mov cx,0x200
000F2EC7  8CC0              mov ax,es
000F2EC9  0BC7              or ax,di
000F2ECB  263905            cmp [es:di],ax
000F2ECE  7403              jz 0x2ed3
000F2ED0  E9A9FD            jmp 0x2c7c
000F2ED3  83C702            add di,byte +0x2
000F2ED6  E2EF              loop 0x2ec7
000F2ED8  8CC0              mov ax,es
000F2EDA  80C410            add ah,0x10
000F2EDD  3AE2              cmp ah,dl
000F2EDF  75DE              jnz 0x2ebf
000F2EE1  807E0300          cmp byte [bp+0x3],0x0
000F2EE5  750C              jnz 0x2ef3
000F2EE7  B80900            mov ax,0x9
000F2EEA  2A4604            sub al,[bp+0x4]
000F2EED  014702            add [bx+0x2],ax
000F2EF0  E9E3FE            jmp 0x2dd6
000F2EF3  807E0202          cmp byte [bp+0x2],0x2
000F2EF7  741A              jz 0x2f13
000F2EF9  C6460202          mov byte [bp+0x2],0x2
000F2EFD  9A1000ABFD        call 0xfdab:0x10
000F2F02  7502              jnz 0x2f06
000F2F04  EB03              jmp short 0x2f09
000F2F06  E975FE            jmp 0x2d7e
000F2F09  C707E3D9          mov word [bx],0xd9e3
000F2F0D  E8C403            call 0x32d4
000F2F10  E9C3FE            jmp 0x2dd6
000F2F13  C707E3E6          mov word [bx],0xe6e3
000F2F17  E8BA03            call 0x32d4
000F2F1A  E81101            call 0x302e
000F2F1D  C6470B09          mov byte [bx+0xb],0x9
000F2F21  C70740D9          mov word [bx],0xd940
000F2F25  C747020800        mov word [bx+0x2],0x8
000F2F2A  C747040100        mov word [bx+0x4],0x1
000F2F2F  E8ED01            call 0x311f
000F2F32  740F              jz 0x2f43
000F2F34  C6470211          mov byte [bx+0x2],0x11
000F2F38  E8E401            call 0x311f
000F2F3B  7406              jz 0x2f43
000F2F3D  C6470B08          mov byte [bx+0xb],0x8
000F2F41  EB05              jmp short 0x2f48
000F2F43  808EEF0004        or byte [bp+0xef],0x4
000F2F48  B002              mov al,0x2
000F2F4A  F6670B            mul byte [bx+0xb]
000F2F4D  8986A800          mov [bp+0xa8],ax
000F2F51  B0A0              mov al,0xa0
000F2F53  F6670B            mul byte [bx+0xb]
000F2F56  8986A600          mov [bp+0xa6],ax
000F2F5A  33C0              xor ax,ax
000F2F5C  8986A200          mov [bp+0xa2],ax
000F2F60  8986A400          mov [bp+0xa4],ax
000F2F64  894702            mov [bx+0x2],ax
000F2F67  C747080001        mov word [bx+0x8],0x100
000F2F6C  894706            mov [bx+0x6],ax
000F2F6F  C70740D9          mov word [bx],0xd940
000F2F73  8B86A800          mov ax,[bp+0xa8]
000F2F77  894704            mov [bx+0x4],ax
000F2F7A  807F0401          cmp byte [bx+0x4],0x1
000F2F7E  740E              jz 0x2f8e
000F2F80  E89C01            call 0x311f
000F2F83  7431              jz 0x2fb6
000F2F85  C6470401          mov byte [bx+0x4],0x1
000F2F89  C6869F0000        mov byte [bp+0x9f],0x0
000F2F8E  E88E01            call 0x311f
000F2F91  7406              jz 0x2f99
000F2F93  FF86A200          inc word [bp+0xa2]
000F2F97  EB07              jmp short 0x2fa0
000F2F99  8B4616            mov ax,[bp+0x16]
000F2F9C  0186A400          add [bp+0xa4],ax
000F2FA0  FF4702            inc word [bx+0x2]
000F2FA3  FE869F00          inc byte [bp+0x9f]
000F2FA7  8B86A800          mov ax,[bp+0xa8]
000F2FAB  3A869F00          cmp al,[bp+0x9f]
000F2FAF  7513              jnz 0x2fc4
000F2FB1  894704            mov [bx+0x4],ax
000F2FB4  EB0E              jmp short 0x2fc4
000F2FB6  8B4616            mov ax,[bp+0x16]
000F2FB9  0186A400          add [bp+0xa4],ax
000F2FBD  8B86A800          mov ax,[bp+0xa8]
000F2FC1  014702            add [bx+0x2],ax
000F2FC4  16                push ss
000F2FC5  07                pop es
000F2FC6  8DBEF600          lea di,[bp+0xf6]
000F2FCA  8B86A400          mov ax,[bp+0xa4]
000F2FCE  9A6407B9FE        call 0xfeb9:0x764
000F2FD3  8DBEFB00          lea di,[bp+0xfb]
000F2FD7  8B86A200          mov ax,[bp+0xa2]
000F2FDB  9A6407B9FE        call 0xfeb9:0x764
000F2FE0  8DBEF100          lea di,[bp+0xf1]
000F2FE4  33C0              xor ax,ax
000F2FE6  8A4602            mov al,[bp+0x2]
000F2FE9  807F0A03          cmp byte [bx+0xa],0x3
000F2FED  7503              jnz 0x2ff2
000F2FEF  8A460A            mov al,[bp+0xa]
000F2FF2  9A6407B9FE        call 0xfeb9:0x764
000F2FF7  E85100            call 0x304b
000F2FFA  8B4702            mov ax,[bx+0x2]
000F2FFD  3B86A600          cmp ax,[bp+0xa6]
000F3001  7303              jnc 0x3006
000F3003  E974FF            jmp 0x2f7a
000F3006  E82500            call 0x302e
000F3009  807F0A03          cmp byte [bx+0xa],0x3
000F300D  740A              jz 0x3019
000F300F  F686EF0001        test byte [bp+0xef],0x1
000F3014  B80600            mov ax,0x6
000F3017  7503              jnz 0x301c
000F3019  B80000            mov ax,0x0
000F301C  50                push ax
000F301D  33C0              xor ax,ax
000F301F  9AF605B9FE        call 0xfeb9:0x5f6
000F3024  E6A2              out 0xa2,al
000F3026  58                pop ax
000F3027  8BE5              mov sp,bp
000F3029  81C42001          add sp,0x120
000F302D  CB                retf
000F302E  FE869E00          inc byte [bp+0x9e]
000F3032  B400              mov ah,0x0
000F3034  8A869E00          mov al,[bp+0x9e]
000F3038  16                push ss
000F3039  07                pop es
000F303A  8DBEAA00          lea di,[bp+0xaa]
000F303E  9A6407B9FE        call 0xfeb9:0x764
000F3043  8B86AC00          mov ax,[bp+0xac]
000F3047  8986DD00          mov [bp+0xdd],ax
000F304B  16                push ss
000F304C  8DBECA00          lea di,[bp+0xca]
000F3050  57                push di
000F3051  83C704            add di,byte +0x4
000F3054  8D86DA00          lea ax,[bp+0xda]
000F3058  AB                stosw
000F3059  8CD0              mov ax,ss
000F305B  AB                stosw
000F305C  33C0              xor ax,ax
000F305E  AB                stosw
000F305F  B80418            mov ax,0x1804
000F3062  AB                stosw
000F3063  B84000            mov ax,0x40
000F3066  AB                stosw
000F3067  AB                stosw
000F3068  9A00004CFD        call 0xfd4c:0x0
000F306D  C686C60001        mov byte [bp+0xc6],0x1
000F3072  16                push ss
000F3073  8D86C600          lea ax,[bp+0xc6]
000F3077  50                push ax
000F3078  9A08003DFD        call 0xfd3d:0x8
000F307D  F6C408            test ah,0x8
000F3080  7506              jnz 0x3088
000F3082  F6C402            test ah,0x2
000F3085  7405              jz 0x308c
000F3087  C3                ret
000F3088  3C16              cmp al,0x16
000F308A  74FB              jz 0x3087
000F308C  B80A00            mov ax,0xa
000F308F  EB8B              jmp short 0x301c
000F3091  E89AFF            call 0x302e
000F3094  CB                retf
000F3095  E8B3FF            call 0x304b
000F3098  CB                retf
000F3099  E4A0              in al,0xa0
000F309B  A801              test al,0x1
000F309D  7403              jz 0x30a2
000F309F  E970FB            jmp 0x2c12
000F30A2  C3                ret
000F30A3  16                push ss
000F30A4  53                push bx
000F30A5  9A00006EFD        call 0xfd6e:0x0
000F30AA  B070              mov al,0x70
000F30AC  E6A0              out 0xa0,al
000F30AE  06                push es
000F30AF  8B7710            mov si,[bx+0x10]
000F30B2  8BFD              mov di,bp
000F30B4  16                push ss
000F30B5  07                pop es
000F30B6  B93200            mov cx,0x32
000F30B9  F3A4              rep movsb
000F30BB  07                pop es
000F30BC  8A470D            mov al,[bx+0xd]
000F30BF  3C06              cmp al,0x6
000F30C1  740A              jz 0x30cd
000F30C3  807F01E2          cmp byte [bx+0x1],0xe2
000F30C7  7415              jz 0x30de
000F30C9  3C08              cmp al,0x8
000F30CB  7511              jnz 0x30de
000F30CD  B401              mov ah,0x1
000F30CF  8A86A000          mov al,[bp+0xa0]
000F30D3  9AF605B9FE        call 0xfeb9:0x5f6
000F30D8  B81234            mov ax,0x3412
000F30DB  E93EFF            jmp 0x301c
000F30DE  3C02              cmp al,0x2
000F30E0  7506              jnz 0x30e8
000F30E2  B81143            mov ax,0x4311
000F30E5  E934FF            jmp 0x301c
000F30E8  807F01E2          cmp byte [bx+0x1],0xe2
000F30EC  742D              jz 0x311b
000F30EE  F6460E10          test byte [bp+0xe],0x10
000F30F2  756F              jnz 0x3163
000F30F4  803FE3            cmp byte [bx],0xe3
000F30F7  7522              jnz 0x311b
000F30F9  807F0D0C          cmp byte [bx+0xd],0xc
000F30FD  741C              jz 0x311b
000F30FF  8AA6A100          mov ah,[bp+0xa1]
000F3103  B010              mov al,0x10
000F3105  F6460104          test byte [bp+0x1],0x4
000F3109  7402              jz 0x310d
000F310B  B030              mov al,0x30
000F310D  807F01E6          cmp byte [bx+0x1],0xe6
000F3111  7508              jnz 0x311b
000F3113  807F0D00          cmp byte [bx+0xd],0x0
000F3117  7502              jnz 0x311b
000F3119  0C40              or al,0x40
000F311B  8A470D            mov al,[bx+0xd]
000F311E  C3                ret
000F311F  1E                push ds
000F3120  53                push bx
000F3121  9A00006EFD        call 0xfd6e:0x0
000F3126  8B7710            mov si,[bx+0x10]
000F3129  8BFD              mov di,bp
000F312B  B93200            mov cx,0x32
000F312E  F3A4              rep movsb
000F3130  8A470D            mov al,[bx+0xd]
000F3133  3C00              cmp al,0x0
000F3135  7406              jz 0x313d
000F3137  3C04              cmp al,0x4
000F3139  7503              jnz 0x313e
000F313B  3C00              cmp al,0x0
000F313D  C3                ret
000F313E  D0E8              shr al,1
000F3140  B400              mov ah,0x0
000F3142  E9D7FE            jmp 0x301c
000F3145  3C00              cmp al,0x0
000F3147  7406              jz 0x314f
000F3149  08A6A600          or [bp+0xa6],ah
000F314D  EB36              jmp short 0x3185
000F314F  8A4601            mov al,[bp+0x1]
000F3152  38460E            cmp [bp+0xe],al
000F3155  750C              jnz 0x3163
000F3157  B000              mov al,0x0
000F3159  38460F            cmp [bp+0xf],al
000F315C  7505              jnz 0x3163
000F315E  384610            cmp [bp+0x10],al
000F3161  7403              jz 0x3166
000F3163  E918FC            jmp 0x2d7e
000F3166  807E1402          cmp byte [bp+0x14],0x2
000F316A  7406              jz 0x3172
000F316C  B81334            mov ax,0x3413
000F316F  E9AAFE            jmp 0x301c
000F3172  8A4602            mov al,[bp+0x2]
000F3175  384611            cmp [bp+0x11],al
000F3178  7508              jnz 0x3182
000F317A  8A4603            mov al,[bp+0x3]
000F317D  384612            cmp [bp+0x12],al
000F3180  7403              jz 0x3185
000F3182  E9FEFB            jmp 0x2d83
000F3185  C3                ret
000F3186  52                push dx
000F3187  50                push ax
000F3188  BAF303            mov dx,0x3f3
000F318B  EE                out dx,al
000F318C  E6A2              out 0xa2,al
000F318E  E85B01            call 0x32ec
000F3191  58                pop ax
000F3192  3D0000            cmp ax,0x0
000F3195  7406              jz 0x319d
000F3197  B2F2              mov dl,0xf2
000F3199  EE                out dx,al
000F319A  B2F0              mov dl,0xf0
000F319C  EF                out dx,ax
000F319D  E84C01            call 0x32ec
000F31A0  ED                in ax,dx
000F31A1  5A                pop dx
000F31A2  CB                retf
000F31A3  52                push dx
000F31A4  33C9              xor cx,cx
000F31A6  B00A              mov al,0xa
000F31A8  E84301            call 0x32ee
000F31AB  51                push cx
000F31AC  9A7B00ABFD        call 0xfdab:0x7b
000F31B1  59                pop cx
000F31B2  8A460E            mov al,[bp+0xe]
000F31B5  8AC8              mov cl,al
000F31B7  24C0              and al,0xc0
000F31B9  3C80              cmp al,0x80
000F31BB  7407              jz 0x31c4
000F31BD  FEC5              inc ch
000F31BF  80FD0B            cmp ch,0xb
000F31C2  75E2              jnz 0x31a6
000F31C4  8AC5              mov al,ch
000F31C6  5A                pop dx
000F31C7  CB                retf
000F31C8  53                push bx
000F31C9  8BD8              mov bx,ax
000F31CB  33C0              xor ax,ax
000F31CD  89462A            mov [bp+0x2a],ax
000F31D0  8B562C            mov dx,[bp+0x2c]
000F31D3  89462E            mov [bp+0x2e],ax
000F31D6  48                dec ax
000F31D7  894628            mov [bp+0x28],ax
000F31DA  ED                in ax,dx
000F31DB  894630            mov [bp+0x30],ax
000F31DE  33C9              xor cx,cx
000F31E0  ED                in ax,dx
000F31E1  855E30            test [bp+0x30],bx
000F31E4  7406              jz 0x31ec
000F31E6  85C3              test bx,ax
000F31E8  7408              jz 0x31f2
000F31EA  EB14              jmp short 0x3200
000F31EC  85C3              test bx,ax
000F31EE  7502              jnz 0x31f2
000F31F0  EB0E              jmp short 0x3200
000F31F2  FF462E            inc word [bp+0x2e]
000F31F5  214628            and [bp+0x28],ax
000F31F8  09462A            or [bp+0x2a],ax
000F31FB  894630            mov [bp+0x30],ax
000F31FE  EBDE              jmp short 0x31de
000F3200  E2DE              loop 0x31e0
000F3202  817628FFFF        xor word [bp+0x28],0xffff
000F3207  5B                pop bx
000F3208  CB                retf
000F3209  83EC10            sub sp,byte +0x10
000F320C  9A00006CFD        call 0xfd6c:0x0
000F3211  55                push bp
000F3212  8BEC              mov bp,sp
000F3214  33C0              xor ax,ax
000F3216  E644              out 0x44,al
000F3218  BBE803            mov bx,0x3e8
000F321B  80FAF0            cmp dl,0xf0
000F321E  7403              jz 0x3223
000F3220  BB6400            mov bx,0x64
000F3223  E89700            call 0x32bd
000F3226  BE1100            mov si,0x11
000F3229  B001              mov al,0x1
000F322B  E644              out 0x44,al
000F322D  33C9              xor cx,cx
000F322F  ED                in ax,dx
000F3230  A801              test al,0x1
000F3232  750B              jnz 0x323f
000F3234  E2F9              loop 0x322f
000F3236  B8FFFF            mov ax,0xffff
000F3239  8BD8              mov bx,ax
000F323B  8BD0              mov dx,ax
000F323D  EB48              jmp short 0x3287
000F323F  B132              mov cl,0x32
000F3241  D2E8              shr al,cl
000F3243  ED                in ax,dx
000F3244  A801              test al,0x1
000F3246  74E7              jz 0x322f
000F3248  33C9              xor cx,cx
000F324A  ED                in ax,dx
000F324B  2401              and al,0x1
000F324D  7404              jz 0x3253
000F324F  E2F9              loop 0x324a
000F3251  EBE3              jmp short 0x3236
000F3253  B000              mov al,0x0
000F3255  E644              out 0x44,al
000F3257  E441              in al,0x41
000F3259  8AE0              mov ah,al
000F325B  E441              in al,0x41
000F325D  86E0              xchg ah,al
000F325F  33C9              xor cx,cx
000F3261  2BC8              sub cx,ax
000F3263  51                push cx
000F3264  E85600            call 0x32bd
000F3267  4E                dec si
000F3268  75BF              jnz 0x3229
000F326A  B90F00            mov cx,0xf
000F326D  5B                pop bx
000F326E  8BD3              mov dx,bx
000F3270  8BC3              mov ax,bx
000F3272  5E                pop si
000F3273  03DE              add bx,si
000F3275  3BD6              cmp dx,si
000F3277  7302              jnc 0x327b
000F3279  8BD6              mov dx,si
000F327B  3BC6              cmp ax,si
000F327D  7202              jc 0x3281
000F327F  8BC6              mov ax,si
000F3281  E2EF              loop 0x3272
000F3283  B105              mov cl,0x5
000F3285  D3EB              shr bx,cl
000F3287  8BC8              mov cx,ax
000F3289  8BE5              mov sp,bp
000F328B  5D                pop bp
000F328C  16                push ss
000F328D  07                pop es
000F328E  8BC2              mov ax,dx
000F3290  D1E8              shr ax,1
000F3292  8DBEE000          lea di,[bp+0xe0]
000F3296  9A6407B9FE        call 0xfeb9:0x764
000F329B  8BC3              mov ax,bx
000F329D  8986A800          mov [bp+0xa8],ax
000F32A1  8DBEE500          lea di,[bp+0xe5]
000F32A5  9A6407B9FE        call 0xfeb9:0x764
000F32AA  8BC1              mov ax,cx
000F32AC  D1E8              shr ax,1
000F32AE  8DBEEA00          lea di,[bp+0xea]
000F32B2  9A6407B9FE        call 0xfeb9:0x764
000F32B7  9A00006AFD        call 0xfd6a:0x0
000F32BC  CB                retf
000F32BD  B034              mov al,0x34
000F32BF  E643              out 0x43,al
000F32C1  B070              mov al,0x70
000F32C3  E643              out 0x43,al
000F32C5  8AC3              mov al,bl
000F32C7  E640              out 0x40,al
000F32C9  8AC7              mov al,bh
000F32CB  E640              out 0x40,al
000F32CD  B0FF              mov al,0xff
000F32CF  E641              out 0x41,al
000F32D1  E641              out 0x41,al
000F32D3  C3                ret
000F32D4  C747022000        mov word [bx+0x2],0x20
000F32D9  C747041000        mov word [bx+0x4],0x10
000F32DE  C747080000        mov word [bx+0x8],0x0
000F32E3  C747060020        mov word [bx+0x6],0x2000
000F32E8  E8B8FD            call 0x30a3
000F32EB  C3                ret
000F32EC  B001              mov al,0x1
000F32EE  9A9E036EFD        call 0xfd6e:0x39e
000F32F3  C3                ret
000F32F4  83EC10            sub sp,byte +0x10
000F32F7  9A00006CFD        call 0xfd6c:0x0
000F32FC  FC                cld
000F32FD  3D1027            cmp ax,0x2710
000F3300  7207              jc 0x3309
000F3302  B80F0F            mov ax,0xf0f
000F3305  AB                stosw
000F3306  AB                stosw
000F3307  EB16              jmp short 0x331f
000F3309  8BD8              mov bx,ax
000F330B  BAE803            mov dx,0x3e8
000F330E  E81400            call 0x3325
000F3311  BA6400            mov dx,0x64
000F3314  E80E00            call 0x3325
000F3317  B20A              mov dl,0xa
000F3319  E80900            call 0x3325
000F331C  8BC3              mov ax,bx
000F331E  AA                stosb
000F331F  9A00006AFD        call 0xfd6a:0x0
000F3324  CB                retf
000F3325  33C0              xor ax,ax
000F3327  53                push bx
000F3328  2BDA              sub bx,dx
000F332A  7204              jc 0x3330
000F332C  5E                pop si
000F332D  40                inc ax
000F332E  EBF7              jmp short 0x3327
000F3330  5B                pop bx
000F3331  AA                stosb
000F3332  C3                ret
000F3333  83EC10            sub sp,byte +0x10
000F3336  9A00006CFD        call 0xfd6c:0x0
000F333B  8BD8              mov bx,ax
000F333D  33C0              xor ax,ax
000F333F  89462A            mov [bp+0x2a],ax
000F3342  48                dec ax
000F3343  894628            mov [bp+0x28],ax
000F3346  8B562C            mov dx,[bp+0x2c]
000F3349  33C9              xor cx,cx
000F334B  E421              in al,0x21
000F334D  3CFF              cmp al,0xff
000F334F  7414              jz 0x3365
000F3351  ED                in ax,dx
000F3352  85C3              test bx,ax
000F3354  7509              jnz 0x335f
000F3356  214628            and [bp+0x28],ax
000F3359  09462A            or [bp+0x2a],ax
000F335C  894630            mov [bp+0x30],ax
000F335F  E2EA              loop 0x334b
000F3361  B006              mov al,0x6
000F3363  EB02              jmp short 0x3367
000F3365  B000              mov al,0x0
000F3367  817628FFFF        xor word [bp+0x28],0xffff
000F336C  9A00006AFD        call 0xfd6a:0x0
000F3371  3C00              cmp al,0x0
000F3373  CB                retf
000F3374  CC                int3
000F3375  CC                int3
000F3376  CC                int3
000F3377  CC                int3
000F3378  CC                int3
000F3379  CC                int3
000F337A  CC                int3
000F337B  CC                int3
000F337C  CC                int3
000F337D  CC                int3
000F337E  CC                int3
000F337F  CC                int3
000F3380  81EC2804          sub sp,0x428
000F3384  8BEC              mov bp,sp
000F3386  33C9              xor cx,cx
000F3388  8ED9              mov ds,cx
000F338A  BE4A01            mov si,0x14a
000F338D  16                push ss
000F338E  07                pop es
000F338F  8DBE1804          lea di,[bp+0x418]
000F3393  B10C              mov cl,0xc
000F3395  F3A4              rep movsb
000F3397  C686240446        mov byte [bp+0x424],0x46
000F339C  E85704            call 0x37f6
000F339F  740C              jz 0x33ad
000F33A1  8AD0              mov dl,al
000F33A3  D0EA              shr dl,1
000F33A5  80CAE0            or dl,0xe0
000F33A8  B6EE              mov dh,0xee
000F33AA  E9D302            jmp 0x3680
000F33AD  8C5708            mov [bx+0x8],ss
000F33B0  884F0B            mov [bx+0xb],cl
000F33B3  8D4600            lea ax,[bp+0x0]
000F33B6  894706            mov [bx+0x6],ax
000F33B9  894F02            mov [bx+0x2],cx
000F33BC  C747040100        mov word [bx+0x4],0x1
000F33C1  C70740D9          mov word [bx],0xd940
000F33C5  E83C04            call 0x3804
000F33C8  7537              jnz 0x3401
000F33CA  0E                push cs
000F33CB  1F                pop ds
000F33CC  BE1203            mov si,0x312
000F33CF  90                nop
000F33D0  8D7E18            lea di,[bp+0x18]
000F33D3  B10D              mov cl,0xd
000F33D5  F3A6              repe cmpsb
000F33D7  7528              jnz 0x3401
000F33D9  8A460A            mov al,[bp+0xa]
000F33DC  3C40              cmp al,0x40
000F33DE  7421              jz 0x3401
000F33E0  3CC4              cmp al,0xc4
000F33E2  741D              jz 0x3401
000F33E4  E9F101            jmp 0x35d8
000F33E7  884600            mov [bp+0x0],al
000F33EA  16                push ss
000F33EB  8D4600            lea ax,[bp+0x0]
000F33EE  50                push ax
000F33EF  9A08003DFD        call 0xfd3d:0x8
000F33F4  F6460380          test byte [bp+0x3],0x80
000F33F8  7403              jz 0x33fd
000F33FA  80E4F7            and ah,0xf7
000F33FD  F6C402            test ah,0x2
000F3400  C3                ret
000F3401  B001              mov al,0x1
000F3403  E8E1FF            call 0x33e7
000F3406  7411              jz 0x3419
000F3408  F6C408            test ah,0x8
000F340B  7404              jz 0x3411
000F340D  3C14              cmp al,0x14
000F340F  7408              jz 0x3419
000F3411  E8E203            call 0x37f6
000F3414  74EB              jz 0x3401
000F3416  EB08              jmp short 0x3420
000F3418  90                nop
000F3419  33D2              xor dx,dx
000F341B  33C0              xor ax,ax
000F341D  E96002            jmp 0x3680
000F3420  B001              mov al,0x1
000F3422  E8C2FF            call 0x33e7
000F3425  74F2              jz 0x3419
000F3427  F6C408            test ah,0x8
000F342A  7404              jz 0x3430
000F342C  3C14              cmp al,0x14
000F342E  74E9              jz 0x3419
000F3430  E8C303            call 0x37f6
000F3433  75EB              jnz 0x3420
000F3435  16                push ss
000F3436  1F                pop ds
000F3437  B106              mov cl,0x6
000F3439  8BE3              mov sp,bx
000F343B  8BEB              mov bp,bx
000F343D  E207              loop 0x3446
000F343F  81ED0004          sub bp,0x400
000F3443  E95BFF            jmp 0x33a1
000F3446  E8B303            call 0x37fc
000F3449  75F2              jnz 0x343d
000F344B  C707C6E6          mov word [bx],0xe6c6
000F344F  C747020000        mov word [bx+0x2],0x0
000F3454  C747040005        mov word [bx+0x4],0x500
000F3459  E8A803            call 0x3804
000F345C  75DF              jnz 0x343d
000F345E  C64725A0          mov byte [bx+0x25],0xa0
000F3462  C70740C9          mov word [bx],0xc940
000F3466  C747040100        mov word [bx+0x4],0x1
000F346B  E89603            call 0x3804
000F346E  75CD              jnz 0x343d
000F3470  8B7710            mov si,[bx+0x10]
000F3473  B0A0              mov al,0xa0
000F3475  2A4725            sub al,[bx+0x25]
000F3478  D0E8              shr al,1
000F347A  3A4411            cmp al,[si+0x11]
000F347D  B008              mov al,0x8
000F347F  75BC              jnz 0x343d
000F3481  83470208          add word [bx+0x2],byte +0x8
000F3485  FE4F25            dec byte [bx+0x25]
000F3488  75D8              jnz 0x3462
000F348A  81EC0004          sub sp,0x400
000F348E  8BEC              mov bp,sp
000F3490  8D7E00            lea di,[bp+0x0]
000F3493  0E                push cs
000F3494  1F                pop ds
000F3495  BE0703            mov si,0x307
000F3498  90                nop
000F3499  57                push di
000F349A  B040              mov al,0x40
000F349C  B90002            mov cx,0x200
000F349F  F3AA              rep stosb
000F34A1  5F                pop di
000F34A2  57                push di
000F34A3  B10B              mov cl,0xb
000F34A5  F3A4              rep movsb
000F34A7  83C70D            add di,byte +0xd
000F34AA  B10D              mov cl,0xd
000F34AC  F3A4              rep movsb
000F34AE  83C722            add di,byte +0x22
000F34B1  B109              mov cl,0x9
000F34B3  F3A4              rep movsb
000F34B5  83C730            add di,byte +0x30
000F34B8  B108              mov cl,0x8
000F34BA  F3A4              rep movsb
000F34BC  83C70E            add di,byte +0xe
000F34BF  B116              mov cl,0x16
000F34C1  F3A4              rep movsb
000F34C3  83C709            add di,byte +0x9
000F34C6  B104              mov cl,0x4
000F34C8  B0F0              mov al,0xf0
000F34CA  F3AA              rep stosb
000F34CC  83C709            add di,byte +0x9
000F34CF  B106              mov cl,0x6
000F34D1  B0F9              mov al,0xf9
000F34D3  F3AA              rep stosb
000F34D5  47                inc di
000F34D6  B106              mov cl,0x6
000F34D8  F3A4              rep movsb
000F34DA  83C710            add di,byte +0x10
000F34DD  BE1203            mov si,0x312
000F34E0  90                nop
000F34E1  B107              mov cl,0x7
000F34E3  F3A4              rep movsb
000F34E5  83C70A            add di,byte +0xa
000F34E8  B10A              mov cl,0xa
000F34EA  B0F0              mov al,0xf0
000F34EC  F3AA              rep stosb
000F34EE  33DB              xor bx,bx
000F34F0  E81A02            call 0x370d
000F34F3  5F                pop di
000F34F4  57                push di
000F34F5  B90001            mov cx,0x100
000F34F8  33C0              xor ax,ax
000F34FA  F3AB              rep stosw
000F34FC  5F                pop di
000F34FD  8A861E04          mov al,[bp+0x41e]
000F3501  AB                stosw
000F3502  B8F8FF            mov ax,0xfff8
000F3505  8ED8              mov ds,ax
000F3507  BE0400            mov si,0x4
000F350A  B17C              mov cl,0x7c
000F350C  F3A4              rep movsb
000F350E  8B862004          mov ax,[bp+0x420]
000F3512  8ED8              mov ds,ax
000F3514  33F6              xor si,si
000F3516  B145              mov cl,0x45
000F3518  F3A4              rep movsb
000F351A  47                inc di
000F351B  E5A2              in ax,0xa2
000F351D  AB                stosw
000F351E  E5A4              in ax,0xa4
000F3520  AB                stosw
000F3521  BA3003            mov dx,0x330
000F3524  B110              mov cl,0x10
000F3526  EC                in al,dx
000F3527  AA                stosb
000F3528  42                inc dx
000F3529  E2FB              loop 0x3526
000F352B  8CD0              mov ax,ss
000F352D  AB                stosw
000F352E  8BC5              mov ax,bp
000F3530  AB                stosw
000F3531  F6861E0401        test byte [bp+0x41e],0x1
000F3536  754B              jnz 0x3583
000F3538  B80400            mov ax,0x4
000F353B  BB4000            mov bx,0x40
000F353E  E88B01            call 0x36cc
000F3541  B800E0            mov ax,0xe000
000F3544  8ED8              mov ds,ax
000F3546  B90800            mov cx,0x8
000F3549  E8B701            call 0x3703
000F354C  B800D8            mov ax,0xd800
000F354F  8ED8              mov ds,ax
000F3551  B94000            mov cx,0x40
000F3554  E8AC01            call 0x3703
000F3557  B800E8            mov ax,0xe800
000F355A  8ED8              mov ds,ax
000F355C  B90100            mov cx,0x1
000F355F  E8A101            call 0x3703
000F3562  E5A2              in ax,0xa2
000F3564  F6C401            test ah,0x1
000F3567  751D              jnz 0x3586
000F3569  808E1E0401        or byte [bp+0x41e],0x1
000F356E  B80240            mov ax,0x4002
000F3571  E85801            call 0x36cc
000F3574  E5A2              in ax,0xa2
000F3576  F6C402            test ah,0x2
000F3579  752A              jnz 0x35a5
000F357B  B80260            mov ax,0x6002
000F357E  E84B01            call 0x36cc
000F3581  EB22              jmp short 0x35a5
000F3583  BB4000            mov bx,0x40
000F3586  B804A0            mov ax,0xa004
000F3589  E84001            call 0x36cc
000F358C  E5A2              in ax,0xa2
000F358E  F6C404            test ah,0x4
000F3591  750D              jnz 0x35a0
000F3593  F6861E0401        test byte [bp+0x41e],0x1
000F3598  7406              jz 0x35a0
000F359A  B80280            mov ax,0x8002
000F359D  E82C01            call 0x36cc
000F35A0  80A61E04FE        and byte [bp+0x41e],0xfe
000F35A5  BB0100            mov bx,0x1
000F35A8  E86201            call 0x370d
000F35AB  33DB              xor bx,bx
000F35AD  E85901            call 0x3709
000F35B0  8D7E07            lea di,[bp+0x7]
000F35B3  B90300            mov cx,0x3
000F35B6  B0F0              mov al,0xf0
000F35B8  F3AA              rep stosb
000F35BA  33DB              xor bx,bx
000F35BC  E84E01            call 0x370d
000F35BF  33C0              xor ax,ax
000F35C1  8EC0              mov es,ax
000F35C3  BF5001            mov di,0x150
000F35C6  8A861E04          mov al,[bp+0x41e]
000F35CA  AA                stosb
000F35CB  A801              test al,0x1
000F35CD  BA01E0            mov dx,0xe001
000F35D0  7503              jnz 0x35d5
000F35D2  BA00E0            mov dx,0xe000
000F35D5  E99C00            jmp 0x3674
000F35D8  BAEEEE            mov dx,0xeeee
000F35DB  3CD7              cmp al,0xd7
000F35DD  7403              jz 0x35e2
000F35DF  E98800            jmp 0x366a
000F35E2  B2BB              mov dl,0xbb
000F35E4  807E4948          cmp byte [bp+0x49],0x48
000F35E8  750C              jnz 0x35f6
000F35EA  80BEEE0040        cmp byte [bp+0xee],0x40
000F35EF  7405              jz 0x35f6
000F35F1  C6860B0409        mov byte [bp+0x40b],0x9
000F35F6  8B9E0801          mov bx,[bp+0x108]
000F35FA  8BBE0A01          mov di,[bp+0x10a]
000F35FE  B104              mov cl,0x4
000F3600  D3EF              shr di,cl
000F3602  7466              jz 0x366a
000F3604  4F                dec di
000F3605  7463              jz 0x366a
000F3607  BE1000            mov si,0x10
000F360A  56                push si
000F360B  52                push dx
000F360C  E8FA00            call 0x3709
000F360F  5A                pop dx
000F3610  5E                pop si
000F3611  8B02              mov ax,[bp+si]
000F3613  250FFE            and ax,0xfe0f
000F3616  3D0FE2            cmp ax,0xe20f
000F3619  7410              jz 0x362b
000F361B  4F                dec di
000F361C  744C              jz 0x366a
000F361E  83C610            add si,byte +0x10
000F3621  81FE0002          cmp si,0x200
000F3625  75EA              jnz 0x3611
000F3627  33F6              xor si,si
000F3629  EBDF              jmp short 0x360a
000F362B  56                push si
000F362C  16                push ss
000F362D  1F                pop ds
000F362E  8BF4              mov si,sp
000F3630  8CD0              mov ax,ss
000F3632  80C420            add ah,0x20
000F3635  250030            and ax,0x3000
000F3638  8EC0              mov es,ax
000F363A  B93404            mov cx,0x434
000F363D  33FF              xor di,di
000F363F  2BF9              sub di,cx
000F3641  8BE7              mov sp,di
000F3643  F3A4              rep movsb
000F3645  8ED0              mov ss,ax
000F3647  5E                pop si
000F3648  8BEC              mov bp,sp
000F364A  8B5A02            mov bx,[bp+si+0x2]
000F364D  8B4206            mov ax,[bp+si+0x6]
000F3650  8ED8              mov ds,ax
000F3652  50                push ax
000F3653  8B4204            mov ax,[bp+si+0x4]
000F3656  B109              mov cl,0x9
000F3658  D3E8              shr ax,cl
000F365A  40                inc ax
000F365B  8BC8              mov cx,ax
000F365D  8B7A0A            mov di,[bp+si+0xa]
000F3660  57                push di
000F3661  8B720E            mov si,[bp+si+0xe]
000F3664  B200              mov dl,0x0
000F3666  E8B700            call 0x3720
000F3669  CB                retf
000F366A  F6861E0401        test byte [bp+0x41e],0x1
000F366F  7403              jz 0x3674
000F3671  BAAAEE            mov dx,0xeeaa
000F3674  33C0              xor ax,ax
000F3676  8EC0              mov es,ax
000F3678  BF5001            mov di,0x150
000F367B  8A861E04          mov al,[bp+0x41e]
000F367F  AA                stosb
000F3680  8BE5              mov sp,bp
000F3682  81C42804          add sp,0x428
000F3686  CB                retf
000F3687  E5D6              in ax,0xd6
000F3689  D3                db 0xD3
000F368A  F1                int1
000F368B  C4                db 0xC4
000F368C  D7                xlatb
000F368D  C4                db 0xC4
000F368E  F9                stc
000F368F  F9                stc
000F3690  F9                stc
000F3691  C4                db 0xC4
000F3692  C9                leave
000F3693  C2D4F5            ret 0xf5d4
000F3696  F5                cmc
000F3697  F5                cmc
000F3698  F040              lock inc ax
000F369A  40                inc ax
000F369B  40                inc ax
000F369C  40                inc ax
000F369D  40                inc ax
000F369E  40                inc ax
000F369F  D440              aam 0x40
000F36A1  40                inc ax
000F36A2  40                inc ax
000F36A3  F240              repne inc ax
000F36A5  40                inc ax
000F36A6  40                inc ax
000F36A7  E6C8              out 0xc8,al
000F36A9  C4                db 0xC4
000F36AA  D9F1              fyl2x
000F36AC  40                inc ax
000F36AD  C4                db 0xC4
000F36AE  D7                xlatb
000F36AF  C4                db 0xC4
000F36B0  F0F0F5            lock cmc
000F36B3  F1                int1
000F36B4  F2E4F0            repne in al,0xf0
000F36B7  F0F0F0F1          lock int1
000F36BB  F2F7F9            repne idiv cx
000F36BE  F1                int1
000F36BF  F0F8              lock clc
000F36C1  E4C2              in al,0xc2
000F36C3  40                inc ax
000F36C4  40                inc ax
000F36C5  C5                db 0xC5
000F36C6  C4                db 0xC4
000F36C7  F7F9              idiv cx
000F36C9  F1                int1
000F36CA  F0F8              lock clc
000F36CC  50                push ax
000F36CD  B98000            mov cx,0x80
000F36D0  2500F0            and ax,0xf000
000F36D3  8ED8              mov ds,ax
000F36D5  33F6              xor si,si
000F36D7  E6A2              out 0xa2,al
000F36D9  8CD8              mov ax,ds
000F36DB  AB                stosw
000F36DC  8BC3              mov ax,bx
000F36DE  AB                stosw
000F36DF  8BC1              mov ax,cx
000F36E1  AB                stosw
000F36E2  B2FF              mov dl,0xff
000F36E4  808E1F0480        or byte [bp+0x41f],0x80
000F36E9  E83400            call 0x3720
000F36EC  E4A0              in al,0xa0
000F36EE  AA                stosb
000F36EF  E4A1              in al,0xa1
000F36F1  240F              and al,0xf
000F36F3  AA                stosb
000F36F4  B8FFFF            mov ax,0xffff
000F36F7  AB                stosw
000F36F8  E6A2              out 0xa2,al
000F36FA  58                pop ax
000F36FB  80C410            add ah,0x10
000F36FE  FEC8              dec al
000F3700  75CA              jnz 0x36cc
000F3702  C3                ret
000F3703  B80100            mov ax,0x1
000F3706  50                push ax
000F3707  EBCC              jmp short 0x36d5
000F3709  B200              mov dl,0x0
000F370B  EB02              jmp short 0x370f
000F370D  B2FF              mov dl,0xff
000F370F  16                push ss
000F3710  1F                pop ds
000F3711  8D7600            lea si,[bp+0x0]
000F3714  B90100            mov cx,0x1
000F3717  C6861F0400        mov byte [bp+0x41f],0x0
000F371C  E80100            call 0x3720
000F371F  C3                ret
000F3720  8CD8              mov ax,ds
000F3722  80FCA0            cmp ah,0xa0
000F3725  7243              jc 0x376a
000F3727  06                push es
000F3728  57                push di
000F3729  33D2              xor dx,dx
000F372B  8EC2              mov es,dx
000F372D  26800E500180      or byte [es:0x150],0x80
000F3733  808E1E0480        or byte [bp+0x41e],0x80
000F3738  8CD0              mov ax,ss
000F373A  80C420            add ah,0x20
000F373D  80E430            and ah,0x30
000F3740  B040              mov al,0x40
000F3742  8EC0              mov es,ax
000F3744  33FF              xor di,di
000F3746  51                push cx
000F3747  B90001            mov cx,0x100
000F374A  F3A5              rep movsw
000F374C  59                pop cx
000F374D  42                inc dx
000F374E  80FA08            cmp dl,0x8
000F3751  E0F3              loopne 0x3746
000F3753  5F                pop di
000F3754  07                pop es
000F3755  51                push cx
000F3756  1E                push ds
000F3757  56                push si
000F3758  8BCA              mov cx,dx
000F375A  8ED8              mov ds,ax
000F375C  33F6              xor si,si
000F375E  E8BFFF            call 0x3720
000F3761  5E                pop si
000F3762  1F                pop ds
000F3763  59                pop cx
000F3764  83F900            cmp cx,byte +0x0
000F3767  75BE              jnz 0x3727
000F3769  C3                ret
000F376A  80A61F04FE        and byte [bp+0x41f],0xfe
000F376F  8C9E0804          mov [bp+0x408],ds
000F3773  89B60604          mov [bp+0x406],si
000F3777  899E0204          mov [bp+0x402],bx
000F377B  B840D9            mov ax,0xd940
000F377E  80FA00            cmp dl,0x0
000F3781  7403              jz 0x3786
000F3783  B8E6E6            mov ax,0xe6e6
000F3786  89860004          mov [bp+0x400],ax
000F378A  898E0404          mov [bp+0x404],cx
000F378E  53                push bx
000F378F  8D9E0004          lea bx,[bp+0x400]
000F3793  E86E00            call 0x3804
000F3796  5B                pop bx
000F3797  745A              jz 0x37f3
000F3799  F6861F0480        test byte [bp+0x41f],0x80
000F379E  751C              jnz 0x37bc
000F37A0  F6861F0401        test byte [bp+0x41f],0x1
000F37A5  750E              jnz 0x37b5
000F37A7  808E1F0401        or byte [bp+0x41f],0x1
000F37AC  1E                push ds
000F37AD  53                push bx
000F37AE  E84500            call 0x37f6
000F37B1  5B                pop bx
000F37B2  1F                pop ds
000F37B3  74BA              jz 0x376f
000F37B5  8A860D04          mov al,[bp+0x40d]
000F37B9  E9E5FB            jmp 0x33a1
000F37BC  3C04              cmp al,0x4
000F37BE  7531              jnz 0x37f1
000F37C0  8B860E04          mov ax,[bp+0x40e]
000F37C4  3BC3              cmp ax,bx
000F37C6  7229              jc 0x37f1
000F37C8  53                push bx
000F37C9  039E0404          add bx,[bp+0x404]
000F37CD  3BC3              cmp ax,bx
000F37CF  5B                pop bx
000F37D0  731F              jnc 0x37f1
000F37D2  AB                stosw
000F37D3  FE8E2404          dec byte [bp+0x424]
000F37D7  74DC              jz 0x37b5
000F37D9  80A61F04FE        and byte [bp+0x41f],0xfe
000F37DE  2BC3              sub ax,bx
000F37E0  2BC8              sub cx,ax
000F37E2  03D8              add bx,ax
000F37E4  43                inc bx
000F37E5  3D0000            cmp ax,0x0
000F37E8  7485              jz 0x376f
000F37EA  81C60002          add si,0x200
000F37EE  48                dec ax
000F37EF  EBF4              jmp short 0x37e5
000F37F1  EBAD              jmp short 0x37a0
000F37F3  03D9              add bx,cx
000F37F5  C3                ret
000F37F6  16                push ss
000F37F7  1F                pop ds
000F37F8  8D9E0004          lea bx,[bp+0x400]
000F37FC  C6470A00          mov byte [bx+0xa],0x0
000F3800  C707D9E2          mov word [bx],0xe2d9
000F3804  16                push ss
000F3805  53                push bx
000F3806  9A00006EFD        call 0xfd6e:0x0
000F380B  3C00              cmp al,0x0
000F380D  C3                ret
000F380E  81ECAA00          sub sp,0xaa
000F3812  8BEC              mov bp,sp
000F3814  E88801            call 0x399f
000F3817  BA00A0            mov dx,0xa000
000F381A  33C0              xor ax,ax
000F381C  8EC2              mov es,dx
000F381E  33FF              xor di,di
000F3820  B94000            mov cx,0x40
000F3823  F3AB              rep stosw
000F3825  80C630            add dh,0x30
000F3828  75F2              jnz 0x381c
000F382A  BE2C01            mov si,0x12c
000F382D  B701              mov bh,0x1
000F382F  9ACB0070FC        call 0xfc70:0xcb
000F3834  BA00A0            mov dx,0xa000
000F3837  8EC2              mov es,dx
000F3839  BE3501            mov si,0x135
000F383C  B701              mov bh,0x1
000F383E  9ACB0070FC        call 0xfc70:0xcb
000F3843  B301              mov bl,0x1
000F3845  B90200            mov cx,0x2
000F3848  BA0700            mov dx,0x7
000F384B  B84701            mov ax,0x147
000F384E  E80B01            call 0x395c
000F3851  80C318            add bl,0x18
000F3854  E2F5              loop 0x384b
000F3856  B302              mov bl,0x2
000F3858  B91700            mov cx,0x17
000F385B  BA0E00            mov dx,0xe
000F385E  B84E01            mov ax,0x14e
000F3861  E8F800            call 0x395c
000F3864  FEC3              inc bl
000F3866  E2F6              loop 0x385e
000F3868  16                push ss
000F3869  07                pop es
000F386A  8D7E14            lea di,[bp+0x14]
000F386D  B8FF06            mov ax,0x6ff
000F3870  AB                stosw
000F3871  B01B              mov al,0x1b
000F3873  AA                stosb
000F3874  B90001            mov cx,0x100
000F3877  B8FF0C            mov ax,0xcff
000F387A  AB                stosw
000F387B  8AC1              mov al,cl
000F387D  AA                stosb
000F387E  33C0              xor ax,ax
000F3880  AB                stosw
000F3881  B8FF0C            mov ax,0xcff
000F3884  AB                stosw
000F3885  B80013            mov ax,0x1300
000F3888  AB                stosw
000F3889  D1E9              shr cx,1
000F388B  75EA              jnz 0x3877
000F388D  B30D              mov bl,0xd
000F388F  BA5400            mov dx,0x54
000F3892  E8E700            call 0x397c
000F3895  B002              mov al,0x2
000F3897  E81401            call 0x39ae
000F389A  7409              jz 0x38a5
000F389C  F6C408            test ah,0x8
000F389F  74F4              jz 0x3895
000F38A1  3C14              cmp al,0x14
000F38A3  7503              jnz 0x38a8
000F38A5  E98C00            jmp 0x3934
000F38A8  B91200            mov cx,0x12
000F38AB  16                push ss
000F38AC  07                pop es
000F38AD  8D7E14            lea di,[bp+0x14]
000F38B0  B8FF06            mov ax,0x6ff
000F38B3  AB                stosw
000F38B4  B013              mov al,0x13
000F38B6  AA                stosb
000F38B7  8BC1              mov ax,cx
000F38B9  AB                stosw
000F38BA  B013              mov al,0x13
000F38BC  AA                stosb
000F38BD  FEC5              inc ch
000F38BF  80FD10            cmp ch,0x10
000F38C2  75F3              jnz 0x38b7
000F38C4  B305              mov bl,0x5
000F38C6  BA3300            mov dx,0x33
000F38C9  E8B000            call 0x397c
000F38CC  B700              mov bh,0x0
000F38CE  B306              mov bl,0x6
000F38D0  16                push ss
000F38D1  07                pop es
000F38D2  8D7E14            lea di,[bp+0x14]
000F38D5  B8FF06            mov ax,0x6ff
000F38D8  AB                stosw
000F38D9  B010              mov al,0x10
000F38DB  AA                stosb
000F38DC  33C9              xor cx,cx
000F38DE  BA9600            mov dx,0x96
000F38E1  8D7E17            lea di,[bp+0x17]
000F38E4  B412              mov ah,0x12
000F38E6  8AC7              mov al,bh
000F38E8  AB                stosw
000F38E9  B013              mov al,0x13
000F38EB  AA                stosb
000F38EC  B8FF0C            mov ax,0xcff
000F38EF  AB                stosw
000F38F0  8BC1              mov ax,cx
000F38F2  AB                stosw
000F38F3  B800FF            mov ax,0xff00
000F38F6  AB                stosw
000F38F7  B80C00            mov ax,0xc
000F38FA  AB                stosw
000F38FB  B013              mov al,0x13
000F38FD  AA                stosb
000F38FE  FEC1              inc cl
000F3900  F6C10F            test cl,0xf
000F3903  75E7              jnz 0x38ec
000F3905  E87400            call 0x397c
000F3908  FEC7              inc bh
000F390A  FEC3              inc bl
000F390C  0AC9              or cl,cl
000F390E  75D1              jnz 0x38e1
000F3910  B002              mov al,0x2
000F3912  E89900            call 0x39ae
000F3915  741D              jz 0x3934
000F3917  F6C408            test ah,0x8
000F391A  74F4              jz 0x3910
000F391C  3C14              cmp al,0x14
000F391E  7414              jz 0x3934
000F3920  BADA03            mov dx,0x3da
000F3923  EC                in al,dx
000F3924  A801              test al,0x1
000F3926  750C              jnz 0x3934
000F3928  80F1FF            xor cl,0xff
000F392B  7407              jz 0x3934
000F392D  B2DB              mov dl,0xdb
000F392F  B08F              mov al,0x8f
000F3931  EE                out dx,al
000F3932  EBDC              jmp short 0x3910
000F3934  33DB              xor bx,bx
000F3936  9A910070FC        call 0xfc70:0x91
000F393B  E86100            call 0x399f
000F393E  8BE5              mov sp,bp
000F3940  81C4AA00          add sp,0xaa
000F3944  8BC3              mov ax,bx
000F3946  CB                retf
000F3947  FF04              inc word [si]
000F3949  3013              xor [bp+di],dl
000F394B  FF07              inc word [bx]
000F394D  51                push cx
000F394E  FF04              inc word [si]
000F3950  3013              xor [bp+di],dl
000F3952  FF05              inc word [di]
000F3954  00FF              add bh,bh
000F3956  06                push es
000F3957  50                push ax
000F3958  FF04              inc word [si]
000F395A  3013              xor [bp+di],dl
000F395C  894608            mov [bp+0x8],ax
000F395F  8C4E0A            mov [bp+0xa],cs
000F3962  C7460CFFFF        mov word [bp+0xc],0xffff
000F3967  C6460E04          mov byte [bp+0xe],0x4
000F396B  885E0F            mov [bp+0xf],bl
000F396E  895612            mov [bp+0x12],dx
000F3971  16                push ss
000F3972  8D4604            lea ax,[bp+0x4]
000F3975  50                push ax
000F3976  9A00004CFD        call 0xfd4c:0x0
000F397B  C3                ret
000F397C  8D4614            lea ax,[bp+0x14]
000F397F  894608            mov [bp+0x8],ax
000F3982  8C560A            mov [bp+0xa],ss
000F3985  C7460CFFFF        mov word [bp+0xc],0xffff
000F398A  C6460E04          mov byte [bp+0xe],0x4
000F398E  885E0F            mov [bp+0xf],bl
000F3991  895612            mov [bp+0x12],dx
000F3994  16                push ss
000F3995  8D4604            lea ax,[bp+0x4]
000F3998  50                push ax
000F3999  9A00004CFD        call 0xfd4c:0x0
000F399E  C3                ret
000F399F  C6460E05          mov byte [bp+0xe],0x5
000F39A3  16                push ss
000F39A4  8D4604            lea ax,[bp+0x4]
000F39A7  50                push ax
000F39A8  9A00004CFD        call 0xfd4c:0x0
000F39AD  C3                ret
000F39AE  884600            mov [bp+0x0],al
000F39B1  16                push ss
000F39B2  8D4600            lea ax,[bp+0x0]
000F39B5  50                push ax
000F39B6  9A08003DFD        call 0xfd3d:0x8
000F39BB  F6460380          test byte [bp+0x3],0x80
000F39BF  7403              jz 0x39c4
000F39C1  80E4F7            and ah,0xf7
000F39C4  F6C402            test ah,0x2
000F39C7  C3                ret
000F39C8  81ECAA00          sub sp,0xaa
000F39CC  8BEC              mov bp,sp
000F39CE  BE1000            mov si,0x10
000F39D1  9A400070FC        call 0xfc70:0x40
000F39D6  B6E0              mov dh,0xe0
000F39D8  E5A2              in ax,0xa2
000F39DA  8ED8              mov ds,ax
000F39DC  A802              test al,0x2
000F39DE  7402              jz 0x39e2
000F39E0  B6C0              mov dh,0xc0
000F39E2  BB00A0            mov bx,0xa000
000F39E5  8EC3              mov es,bx
000F39E7  33FF              xor di,di
000F39E9  33C0              xor ax,ax
000F39EB  B90080            mov cx,0x8000
000F39EE  F3AB              rep stosw
000F39F0  80C710            add bh,0x10
000F39F3  3AFE              cmp bh,dh
000F39F5  75EE              jnz 0x39e5
000F39F7  8AEE              mov ch,dh
000F39F9  B104              mov cl,0x4
000F39FB  33D2              xor dx,dx
000F39FD  52                push dx
000F39FE  BAD803            mov dx,0x3d8
000F3A01  B003              mov al,0x3
000F3A03  80F902            cmp cl,0x2
000F3A06  7F02              jg 0x3a0a
000F3A08  0C80              or al,0x80
000F3A0A  EE                out dx,al
000F3A0B  5A                pop dx
000F3A0C  33F6              xor si,si
000F3A0E  B88000            mov ax,0x80
000F3A11  50                push ax
000F3A12  33C2              xor ax,dx
000F3A14  BB00A0            mov bx,0xa000
000F3A17  8BFE              mov di,si
000F3A19  8EC3              mov es,bx
000F3A1B  51                push cx
000F3A1C  B90002            mov cx,0x200
000F3A1F  268905            mov [es:di],ax
000F3A22  268B05            mov ax,[es:di]
000F3A25  81C78000          add di,0x80
000F3A29  E2F4              loop 0x3a1f
000F3A2B  59                pop cx
000F3A2C  80C710            add bh,0x10
000F3A2F  3AFD              cmp bh,ch
000F3A31  75E6              jnz 0x3a19
000F3A33  B001              mov al,0x1
000F3A35  E876FF            call 0x39ae
000F3A38  7425              jz 0x3a5f
000F3A3A  F6C408            test ah,0x8
000F3A3D  7414              jz 0x3a53
000F3A3F  3C14              cmp al,0x14
000F3A41  741C              jz 0x3a5f
000F3A43  B002              mov al,0x2
000F3A45  E866FF            call 0x39ae
000F3A48  7415              jz 0x3a5f
000F3A4A  F6C408            test ah,0x8
000F3A4D  74F4              jz 0x3a43
000F3A4F  3C14              cmp al,0x14
000F3A51  740C              jz 0x3a5f
000F3A53  58                pop ax
000F3A54  86E0              xchg ah,al
000F3A56  F9                stc
000F3A57  D1D8              rcr ax,1
000F3A59  720A              jc 0x3a65
000F3A5B  86E0              xchg ah,al
000F3A5D  EBB2              jmp short 0x3a11
000F3A5F  BB0A00            mov bx,0xa
000F3A62  E9D1FE            jmp 0x3936
000F3A65  46                inc si
000F3A66  46                inc si
000F3A67  81FE8000          cmp si,0x80
000F3A6B  75A1              jnz 0x3a0e
000F3A6D  8CDB              mov bx,ds
000F3A6F  F6C308            test bl,0x8
000F3A72  740C              jz 0x3a80
000F3A74  51                push cx
000F3A75  B70F              mov bh,0xf
000F3A77  33C9              xor cx,cx
000F3A79  E2FE              loop 0x3a79
000F3A7B  FECF              dec bh
000F3A7D  75F8              jnz 0x3a77
000F3A7F  59                pop cx
000F3A80  81F2FFFF          xor dx,0xffff
000F3A84  753A              jnz 0x3ac0
000F3A86  33DB              xor bx,bx
000F3A88  FEC9              dec cl
000F3A8A  74D6              jz 0x3a62
000F3A8C  52                push dx
000F3A8D  BAD803            mov dx,0x3d8
000F3A90  B00B              mov al,0xb
000F3A92  EE                out dx,al
000F3A93  33DB              xor bx,bx
000F3A95  E5A2              in ax,0xa2
000F3A97  A802              test al,0x2
000F3A99  7409              jz 0x3aa4
000F3A9B  F6C101            test cl,0x1
000F3A9E  740B              jz 0x3aab
000F3AA0  B313              mov bl,0x13
000F3AA2  EB07              jmp short 0x3aab
000F3AA4  F6C101            test cl,0x1
000F3AA7  7402              jz 0x3aab
000F3AA9  B718              mov bh,0x18
000F3AAB  B2D0              mov dl,0xd0
000F3AAD  B00C              mov al,0xc
000F3AAF  EE                out dx,al
000F3AB0  B2D1              mov dl,0xd1
000F3AB2  8AC7              mov al,bh
000F3AB4  EE                out dx,al
000F3AB5  B2D0              mov dl,0xd0
000F3AB7  B00D              mov al,0xd
000F3AB9  EE                out dx,al
000F3ABA  B2D1              mov dl,0xd1
000F3ABC  8AC3              mov al,bl
000F3ABE  EE                out dx,al
000F3ABF  5A                pop dx
000F3AC0  E93AFF            jmp 0x39fd
000F3AC3  BAD803            mov dx,0x3d8
000F3AC6  B008              mov al,0x8
000F3AC8  EE                out dx,al
000F3AC9  E6A2              out 0xa2,al
000F3ACB  33DB              xor bx,bx
000F3ACD  33D2              xor dx,dx
000F3ACF  33ED              xor bp,bp
000F3AD1  E5A2              in ax,0xa2
000F3AD3  A802              test al,0x2
000F3AD5  7403              jz 0x3ada
000F3AD7  BD007F            mov bp,0x7f00
000F3ADA  B800E0            mov ax,0xe000
000F3ADD  8ED8              mov ds,ax
000F3ADF  B4A0              mov ah,0xa0
000F3AE1  9A830500FC        call 0xfc00:0x583
000F3AE6  7540              jnz 0x3b28
000F3AE8  80F3FF            xor bl,0xff
000F3AEB  75ED              jnz 0x3ada
000F3AED  81F2FFFF          xor dx,0xffff
000F3AF1  75E7              jnz 0x3ada
000F3AF3  9A910070FC        call 0xfc70:0x91
000F3AF8  E8A4FE            call 0x399f
000F3AFB  33C0              xor ax,ax
000F3AFD  8EC0              mov es,ax
000F3AFF  BF0002            mov di,0x200
000F3B02  8AC7              mov al,bh
000F3B04  9A6407B9FE        call 0xfeb9:0x764
000F3B09  06                push es
000F3B0A  1F                pop ds
000F3B0B  8BF7              mov si,di
000F3B0D  B800E0            mov ax,0xe000
000F3B10  8EC0              mov es,ax
000F3B12  BFE40E            mov di,0xee4
000F3B15  32E4              xor ah,ah
000F3B17  B90400            mov cx,0x4
000F3B1A  AC                lodsb
000F3B1B  AB                stosw
000F3B1C  E2FC              loop 0x3b1a
000F3B1E  33C0              xor ax,ax
000F3B20  0AFF              or bh,bh
000F3B22  7403              jz 0x3b27
000F3B24  B81121            mov ax,0x2111
000F3B27  CB                retf
000F3B28  FEC7              inc bh
000F3B2A  80FFFF            cmp bh,0xff
000F3B2D  74C4              jz 0x3af3
000F3B2F  83EC04            sub sp,byte +0x4
000F3B32  EA9E0500FC        jmp 0xfc00:0x59e
000F3B37  CC                int3
000F3B38  B80010            mov ax,0x1000
000F3B3B  8EC0              mov es,ax
000F3B3D  33FF              xor di,di
000F3B3F  BA3003            mov dx,0x330
000F3B42  B91000            mov cx,0x10
000F3B45  EC                in al,dx
000F3B46  42                inc dx
000F3B47  AA                stosb
000F3B48  E2FB              loop 0x3b45
000F3B4A  33DB              xor bx,bx
000F3B4C  B230              mov dl,0x30
000F3B4E  B400              mov ah,0x0
000F3B50  B110              mov cl,0x10
000F3B52  8AC4              mov al,ah
000F3B54  32C7              xor al,bh
000F3B56  0ADB              or bl,bl
000F3B58  740B              jz 0x3b65
000F3B5A  51                push cx
000F3B5B  8BC8              mov cx,ax
000F3B5D  EC                in al,dx
000F3B5E  240F              and al,0xf
000F3B60  2AC1              sub al,cl
000F3B62  59                pop cx
000F3B63  7515              jnz 0x3b7a
000F3B65  EE                out dx,al
000F3B66  FEC4              inc ah
000F3B68  42                inc dx
000F3B69  E2E7              loop 0x3b52
000F3B6B  80F3FF            xor bl,0xff
000F3B6E  75DC              jnz 0x3b4c
000F3B70  80F70F            xor bh,0xf
000F3B73  75D7              jnz 0x3b4c
000F3B75  33C0              xor ax,ax
000F3B77  EB04              jmp short 0x3b7d
000F3B79  90                nop
000F3B7A  B81331            mov ax,0x3113
000F3B7D  50                push ax
000F3B7E  06                push es
000F3B7F  1F                pop ds
000F3B80  33F6              xor si,si
000F3B82  B230              mov dl,0x30
000F3B84  B110              mov cl,0x10
000F3B86  AC                lodsb
000F3B87  EE                out dx,al
000F3B88  42                inc dx
000F3B89  E2FB              loop 0x3b86
000F3B8B  58                pop ax
000F3B8C  CB                retf
000F3B8D  9A910167FE        call 0xfe67:0x191
000F3B92  B80010            mov ax,0x1000
000F3B95  8EC0              mov es,ax
000F3B97  33FF              xor di,di
000F3B99  B00A              mov al,0xa
000F3B9B  AA                stosb
000F3B9C  B84EB1            mov ax,0xb14e
000F3B9F  B91E00            mov cx,0x1e
000F3BA2  F3AB              rep stosw
000F3BA4  B00D              mov al,0xd
000F3BA6  AA                stosb
000F3BA7  BA0600            mov dx,0x6
000F3BAA  33C0              xor ax,ax
000F3BAC  EE                out dx,al
000F3BAD  EE                out dx,al
000F3BAE  40                inc ax
000F3BAF  E683              out 0x83,al
000F3BB1  42                inc dx
000F3BB2  B03D              mov al,0x3d
000F3BB4  EE                out dx,al
000F3BB5  B000              mov al,0x0
000F3BB7  EE                out dx,al
000F3BB8  B00B              mov al,0xb
000F3BBA  E60B              out 0xb,al
000F3BBC  BA7903            mov dx,0x379
000F3BBF  EC                in al,dx
000F3BC0  2407              and al,0x7
000F3BC2  752E              jnz 0x3bf2
000F3BC4  B27A              mov dl,0x7a
000F3BC6  B0C8              mov al,0xc8
000F3BC8  EE                out dx,al
000F3BC9  B003              mov al,0x3
000F3BCB  E60A              out 0xa,al
000F3BCD  B278              mov dl,0x78
000F3BCF  B00D              mov al,0xd
000F3BD1  EE                out dx,al
000F3BD2  33C9              xor cx,cx
000F3BD4  B454              mov ah,0x54
000F3BD6  E408              in al,0x8
000F3BD8  49                dec cx
000F3BD9  7504              jnz 0x3bdf
000F3BDB  FECC              dec ah
000F3BDD  7413              jz 0x3bf2
000F3BDF  A808              test al,0x8
000F3BE1  74F3              jz 0x3bd6
000F3BE3  33C0              xor ax,ax
000F3BE5  50                push ax
000F3BE6  B27A              mov dl,0x7a
000F3BE8  B0C0              mov al,0xc0
000F3BEA  EE                out dx,al
000F3BEB  9A910167FE        call 0xfe67:0x191
000F3BF0  58                pop ax
000F3BF1  CB                retf
000F3BF2  B811B1            mov ax,0xb111
000F3BF5  50                push ax
000F3BF6  EBEE              jmp short 0x3be6
000F3BF8  CC                int3
000F3BF9  CC                int3
000F3BFA  CC                int3
000F3BFB  CC                int3
000F3BFC  CC                int3
000F3BFD  CC                int3
000F3BFE  CC                int3
000F3BFF  CC                int3
000F3C00  CC                int3
000F3C01  CC                int3
000F3C02  CC                int3
000F3C03  CC                int3
000F3C04  CC                int3
000F3C05  CC                int3
000F3C06  CC                int3
000F3C07  CC                int3
000F3C08  CC                int3
000F3C09  CC                int3
000F3C0A  CC                int3
000F3C0B  CC                int3
000F3C0C  CC                int3
000F3C0D  CC                int3
000F3C0E  CC                int3
000F3C0F  CC                int3
000F3C10  CC                int3
000F3C11  CC                int3
000F3C12  CC                int3
000F3C13  CC                int3
000F3C14  CC                int3
000F3C15  CC                int3
000F3C16  CC                int3
000F3C17  CC                int3
000F3C18  CC                int3
000F3C19  CC                int3
000F3C1A  CC                int3
000F3C1B  CC                int3
000F3C1C  CC                int3
000F3C1D  CC                int3
000F3C1E  CC                int3
000F3C1F  CC                int3
000F3C20  CC                int3
000F3C21  CC                int3
000F3C22  CC                int3
000F3C23  CC                int3
000F3C24  CC                int3
000F3C25  CC                int3
000F3C26  CC                int3
000F3C27  CC                int3
000F3C28  CC                int3
000F3C29  CC                int3
000F3C2A  CC                int3
000F3C2B  CC                int3
000F3C2C  CC                int3
000F3C2D  CC                int3
000F3C2E  CC                int3
000F3C2F  CC                int3
000F3C30  CC                int3
000F3C31  CC                int3
000F3C32  CC                int3
000F3C33  CC                int3
000F3C34  CC                int3
000F3C35  CC                int3
000F3C36  CC                int3
000F3C37  CC                int3
000F3C38  CC                int3
000F3C39  CC                int3
000F3C3A  CC                int3
000F3C3B  CC                int3
000F3C3C  CC                int3
000F3C3D  CC                int3
000F3C3E  CC                int3
000F3C3F  CC                int3
000F3C40  CC                int3
000F3C41  CC                int3
000F3C42  CC                int3
000F3C43  CC                int3
000F3C44  CC                int3
000F3C45  CC                int3
000F3C46  CC                int3
000F3C47  CC                int3
000F3C48  CC                int3
000F3C49  CC                int3
000F3C4A  CC                int3
000F3C4B  CC                int3
000F3C4C  CC                int3
000F3C4D  CC                int3
000F3C4E  CC                int3
000F3C4F  CC                int3
000F3C50  CC                int3
000F3C51  CC                int3
000F3C52  CC                int3
000F3C53  CC                int3
000F3C54  CC                int3
000F3C55  CC                int3
000F3C56  CC                int3
000F3C57  CC                int3
000F3C58  CC                int3
000F3C59  CC                int3
000F3C5A  CC                int3
000F3C5B  CC                int3
000F3C5C  CC                int3
000F3C5D  CC                int3
000F3C5E  CC                int3
000F3C5F  CC                int3
000F3C60  CC                int3
000F3C61  CC                int3
000F3C62  CC                int3
000F3C63  CC                int3
000F3C64  CC                int3
000F3C65  CC                int3
000F3C66  CC                int3
000F3C67  CC                int3
000F3C68  CC                int3
000F3C69  CC                int3
000F3C6A  CC                int3
000F3C6B  CC                int3
000F3C6C  CC                int3
000F3C6D  CC                int3
000F3C6E  CC                int3
000F3C6F  CC                int3
000F3C70  CC                int3
000F3C71  CC                int3
000F3C72  CC                int3
000F3C73  CC                int3
000F3C74  CC                int3
000F3C75  CC                int3
000F3C76  CC                int3
000F3C77  CC                int3
000F3C78  CC                int3
000F3C79  CC                int3
000F3C7A  CC                int3
000F3C7B  CC                int3
000F3C7C  CC                int3
000F3C7D  CC                int3
000F3C7E  CC                int3
000F3C7F  CC                int3
000F3C80  CC                int3
000F3C81  CC                int3
000F3C82  CC                int3
000F3C83  CC                int3
000F3C84  CC                int3
000F3C85  CC                int3
000F3C86  CC                int3
000F3C87  CC                int3
000F3C88  CC                int3
000F3C89  CC                int3
000F3C8A  CC                int3
000F3C8B  CC                int3
000F3C8C  CC                int3
000F3C8D  CC                int3
000F3C8E  CC                int3
000F3C8F  CC                int3
000F3C90  CC                int3
000F3C91  CC                int3
000F3C92  CC                int3
000F3C93  CC                int3
000F3C94  CC                int3
000F3C95  CC                int3
000F3C96  CC                int3
000F3C97  CC                int3
000F3C98  CC                int3
000F3C99  CC                int3
000F3C9A  CC                int3
000F3C9B  CC                int3
000F3C9C  CC                int3
000F3C9D  CC                int3
000F3C9E  CC                int3
000F3C9F  CC                int3
000F3CA0  CC                int3
000F3CA1  CC                int3
000F3CA2  CC                int3
000F3CA3  CC                int3
000F3CA4  CC                int3
000F3CA5  CC                int3
000F3CA6  CC                int3
000F3CA7  CC                int3
000F3CA8  CC                int3
000F3CA9  CC                int3
000F3CAA  CC                int3
000F3CAB  CC                int3
000F3CAC  CC                int3
000F3CAD  CC                int3
000F3CAE  CC                int3
000F3CAF  CC                int3
000F3CB0  CC                int3
000F3CB1  CC                int3
000F3CB2  CC                int3
000F3CB3  CC                int3
000F3CB4  CC                int3
000F3CB5  CC                int3
000F3CB6  CC                int3
000F3CB7  CC                int3
000F3CB8  CC                int3
000F3CB9  CC                int3
000F3CBA  CC                int3
000F3CBB  CC                int3
000F3CBC  CC                int3
000F3CBD  CC                int3
000F3CBE  CC                int3
000F3CBF  CC                int3
000F3CC0  CC                int3
000F3CC1  CC                int3
000F3CC2  CC                int3
000F3CC3  CC                int3
000F3CC4  CC                int3
000F3CC5  CC                int3
000F3CC6  CC                int3
000F3CC7  CC                int3
000F3CC8  CC                int3
000F3CC9  CC                int3
000F3CCA  CC                int3
000F3CCB  CC                int3
000F3CCC  CC                int3
000F3CCD  CC                int3
000F3CCE  CC                int3
000F3CCF  CC                int3
000F3CD0  CC                int3
000F3CD1  CC                int3
000F3CD2  CC                int3
000F3CD3  CC                int3
000F3CD4  CC                int3
000F3CD5  CC                int3
000F3CD6  CC                int3
000F3CD7  CC                int3
000F3CD8  CC                int3
000F3CD9  CC                int3
000F3CDA  CC                int3
000F3CDB  CC                int3
000F3CDC  CC                int3
000F3CDD  CC                int3
000F3CDE  CC                int3
000F3CDF  CC                int3
000F3CE0  CC                int3
000F3CE1  CC                int3
000F3CE2  CC                int3
000F3CE3  CC                int3
000F3CE4  CC                int3
000F3CE5  CC                int3
000F3CE6  CC                int3
000F3CE7  CC                int3
000F3CE8  CC                int3
000F3CE9  CC                int3
000F3CEA  CC                int3
000F3CEB  CC                int3
000F3CEC  CC                int3
000F3CED  CC                int3
000F3CEE  CC                int3
000F3CEF  CC                int3
000F3CF0  CC                int3
000F3CF1  CC                int3
000F3CF2  CC                int3
000F3CF3  CC                int3
000F3CF4  CC                int3
000F3CF5  CC                int3
000F3CF6  CC                int3
000F3CF7  CC                int3
000F3CF8  CC                int3
000F3CF9  CC                int3
000F3CFA  CC                int3
000F3CFB  CC                int3
000F3CFC  CC                int3
000F3CFD  CC                int3
000F3CFE  CC                int3
000F3CFF  CC                int3
000F3D00  CC                int3
000F3D01  CC                int3
000F3D02  CC                int3
000F3D03  CC                int3
000F3D04  CC                int3
000F3D05  CC                int3
000F3D06  CC                int3
000F3D07  CC                int3
000F3D08  CC                int3
000F3D09  CC                int3
000F3D0A  CC                int3
000F3D0B  CC                int3
000F3D0C  CC                int3
000F3D0D  CC                int3
000F3D0E  CC                int3
000F3D0F  CC                int3
000F3D10  CC                int3
000F3D11  CC                int3
000F3D12  CC                int3
000F3D13  CC                int3
000F3D14  CC                int3
000F3D15  CC                int3
000F3D16  CC                int3
000F3D17  CC                int3
000F3D18  CC                int3
000F3D19  CC                int3
000F3D1A  CC                int3
000F3D1B  CC                int3
000F3D1C  CC                int3
000F3D1D  CC                int3
000F3D1E  CC                int3
000F3D1F  CC                int3
000F3D20  CC                int3
000F3D21  CC                int3
000F3D22  CC                int3
000F3D23  CC                int3
000F3D24  CC                int3
000F3D25  CC                int3
000F3D26  CC                int3
000F3D27  CC                int3
000F3D28  CC                int3
000F3D29  CC                int3
000F3D2A  CC                int3
000F3D2B  CC                int3
000F3D2C  CC                int3
000F3D2D  CC                int3
000F3D2E  CC                int3
000F3D2F  CC                int3
000F3D30  CC                int3
000F3D31  CC                int3
000F3D32  CC                int3
000F3D33  CC                int3
000F3D34  CC                int3
000F3D35  CC                int3
000F3D36  CC                int3
000F3D37  CC                int3
000F3D38  CC                int3
000F3D39  CC                int3
000F3D3A  CC                int3
000F3D3B  CC                int3
000F3D3C  CC                int3
000F3D3D  CC                int3
000F3D3E  CC                int3
000F3D3F  CC                int3
000F3D40  CC                int3
000F3D41  CC                int3
000F3D42  CC                int3
000F3D43  CC                int3
000F3D44  CC                int3
000F3D45  CC                int3
000F3D46  CC                int3
000F3D47  CC                int3
000F3D48  CC                int3
000F3D49  CC                int3
000F3D4A  CC                int3
000F3D4B  CC                int3
000F3D4C  CC                int3
000F3D4D  CC                int3
000F3D4E  CC                int3
000F3D4F  CC                int3
000F3D50  CC                int3
000F3D51  CC                int3
000F3D52  CC                int3
000F3D53  CC                int3
000F3D54  CC                int3
000F3D55  CC                int3
000F3D56  CC                int3
000F3D57  CC                int3
000F3D58  CC                int3
000F3D59  CC                int3
000F3D5A  CC                int3
000F3D5B  CC                int3
000F3D5C  CC                int3
000F3D5D  CC                int3
000F3D5E  CC                int3
000F3D5F  CC                int3
000F3D60  CC                int3
000F3D61  CC                int3
000F3D62  CC                int3
000F3D63  CC                int3
000F3D64  CC                int3
000F3D65  CC                int3
000F3D66  CC                int3
000F3D67  CC                int3
000F3D68  CC                int3
000F3D69  CC                int3
000F3D6A  CC                int3
000F3D6B  CC                int3
000F3D6C  CC                int3
000F3D6D  CC                int3
000F3D6E  CC                int3
000F3D6F  CC                int3
000F3D70  CC                int3
000F3D71  CC                int3
000F3D72  CC                int3
000F3D73  CC                int3
000F3D74  CC                int3
000F3D75  CC                int3
000F3D76  CC                int3
000F3D77  CC                int3
000F3D78  CC                int3
000F3D79  CC                int3
000F3D7A  CC                int3
000F3D7B  CC                int3
000F3D7C  CC                int3
000F3D7D  CC                int3
000F3D7E  CC                int3
000F3D7F  CC                int3
000F3D80  CC                int3
000F3D81  CC                int3
000F3D82  CC                int3
000F3D83  CC                int3
000F3D84  CC                int3
000F3D85  CC                int3
000F3D86  CC                int3
000F3D87  CC                int3
000F3D88  CC                int3
000F3D89  CC                int3
000F3D8A  CC                int3
000F3D8B  CC                int3
000F3D8C  CC                int3
000F3D8D  CC                int3
000F3D8E  CC                int3
000F3D8F  CC                int3
000F3D90  CC                int3
000F3D91  CC                int3
000F3D92  CC                int3
000F3D93  CC                int3
000F3D94  CC                int3
000F3D95  CC                int3
000F3D96  CC                int3
000F3D97  CC                int3
000F3D98  CC                int3
000F3D99  CC                int3
000F3D9A  CC                int3
000F3D9B  CC                int3
000F3D9C  CC                int3
000F3D9D  CC                int3
000F3D9E  CC                int3
000F3D9F  CC                int3
000F3DA0  CC                int3
000F3DA1  CC                int3
000F3DA2  CC                int3
000F3DA3  CC                int3
000F3DA4  CC                int3
000F3DA5  CC                int3
000F3DA6  CC                int3
000F3DA7  CC                int3
000F3DA8  CC                int3
000F3DA9  CC                int3
000F3DAA  CC                int3
000F3DAB  CC                int3
000F3DAC  CC                int3
000F3DAD  CC                int3
000F3DAE  CC                int3
000F3DAF  CC                int3
000F3DB0  CC                int3
000F3DB1  CC                int3
000F3DB2  CC                int3
000F3DB3  CC                int3
000F3DB4  CC                int3
000F3DB5  CC                int3
000F3DB6  CC                int3
000F3DB7  CC                int3
000F3DB8  CC                int3
000F3DB9  CC                int3
000F3DBA  CC                int3
000F3DBB  CC                int3
000F3DBC  CC                int3
000F3DBD  CC                int3
000F3DBE  CC                int3
000F3DBF  CC                int3
000F3DC0  CC                int3
000F3DC1  CC                int3
000F3DC2  CC                int3
000F3DC3  CC                int3
000F3DC4  CC                int3
000F3DC5  CC                int3
000F3DC6  CC                int3
000F3DC7  CC                int3
000F3DC8  CC                int3
000F3DC9  CC                int3
000F3DCA  CC                int3
000F3DCB  CC                int3
000F3DCC  CC                int3
000F3DCD  CC                int3
000F3DCE  CC                int3
000F3DCF  CC                int3
000F3DD0  CC                int3
000F3DD1  CC                int3
000F3DD2  CC                int3
000F3DD3  CC                int3
000F3DD4  CC                int3
000F3DD5  CC                int3
000F3DD6  CC                int3
000F3DD7  CC                int3
000F3DD8  CC                int3
000F3DD9  CC                int3
000F3DDA  CC                int3
000F3DDB  CC                int3
000F3DDC  CC                int3
000F3DDD  CC                int3
000F3DDE  CC                int3
000F3DDF  CC                int3
000F3DE0  CC                int3
000F3DE1  CC                int3
000F3DE2  CC                int3
000F3DE3  CC                int3
000F3DE4  CC                int3
000F3DE5  CC                int3
000F3DE6  CC                int3
000F3DE7  CC                int3
000F3DE8  CC                int3
000F3DE9  CC                int3
000F3DEA  CC                int3
000F3DEB  CC                int3
000F3DEC  CC                int3
000F3DED  CC                int3
000F3DEE  CC                int3
000F3DEF  CC                int3
000F3DF0  CC                int3
000F3DF1  CC                int3
000F3DF2  CC                int3
000F3DF3  CC                int3
000F3DF4  CC                int3
000F3DF5  CC                int3
000F3DF6  CC                int3
000F3DF7  CC                int3
000F3DF8  CC                int3
000F3DF9  CC                int3
000F3DFA  CC                int3
000F3DFB  CC                int3
000F3DFC  CC                int3
000F3DFD  CC                int3
000F3DFE  CC                int3
000F3DFF  CC                int3
000F3E00  CC                int3
000F3E01  CC                int3
000F3E02  CC                int3
000F3E03  CC                int3
000F3E04  CC                int3
000F3E05  CC                int3
000F3E06  CC                int3
000F3E07  CC                int3
000F3E08  CC                int3
000F3E09  CC                int3
000F3E0A  CC                int3
000F3E0B  CC                int3
000F3E0C  CC                int3
000F3E0D  CC                int3
000F3E0E  CC                int3
000F3E0F  CC                int3
000F3E10  CC                int3
000F3E11  CC                int3
000F3E12  CC                int3
000F3E13  CC                int3
000F3E14  CC                int3
000F3E15  CC                int3
000F3E16  CC                int3
000F3E17  CC                int3
000F3E18  CC                int3
000F3E19  CC                int3
000F3E1A  CC                int3
000F3E1B  CC                int3
000F3E1C  CC                int3
000F3E1D  CC                int3
000F3E1E  CC                int3
000F3E1F  CC                int3
000F3E20  CC                int3
000F3E21  CC                int3
000F3E22  CC                int3
000F3E23  CC                int3
000F3E24  CC                int3
000F3E25  CC                int3
000F3E26  CC                int3
000F3E27  CC                int3
000F3E28  CC                int3
000F3E29  CC                int3
000F3E2A  CC                int3
000F3E2B  CC                int3
000F3E2C  CC                int3
000F3E2D  CC                int3
000F3E2E  CC                int3
000F3E2F  CC                int3
000F3E30  CC                int3
000F3E31  CC                int3
000F3E32  CC                int3
000F3E33  CC                int3
000F3E34  CC                int3
000F3E35  CC                int3
000F3E36  CC                int3
000F3E37  CC                int3
000F3E38  CC                int3
000F3E39  CC                int3
000F3E3A  CC                int3
000F3E3B  CC                int3
000F3E3C  CC                int3
000F3E3D  CC                int3
000F3E3E  CC                int3
000F3E3F  CC                int3
000F3E40  CC                int3
000F3E41  CC                int3
000F3E42  CC                int3
000F3E43  CC                int3
000F3E44  CC                int3
000F3E45  CC                int3
000F3E46  CC                int3
000F3E47  CC                int3
000F3E48  CC                int3
000F3E49  CC                int3
000F3E4A  CC                int3
000F3E4B  CC                int3
000F3E4C  CC                int3
000F3E4D  CC                int3
000F3E4E  CC                int3
000F3E4F  CC                int3
000F3E50  CC                int3
000F3E51  CC                int3
000F3E52  CC                int3
000F3E53  CC                int3
000F3E54  CC                int3
000F3E55  CC                int3
000F3E56  CC                int3
000F3E57  CC                int3
000F3E58  CC                int3
000F3E59  CC                int3
000F3E5A  CC                int3
000F3E5B  CC                int3
000F3E5C  CC                int3
000F3E5D  CC                int3
000F3E5E  CC                int3
000F3E5F  CC                int3
000F3E60  CC                int3
000F3E61  CC                int3
000F3E62  CC                int3
000F3E63  CC                int3
000F3E64  CC                int3
000F3E65  CC                int3
000F3E66  CC                int3
000F3E67  CC                int3
000F3E68  CC                int3
000F3E69  CC                int3
000F3E6A  CC                int3
000F3E6B  CC                int3
000F3E6C  CC                int3
000F3E6D  CC                int3
000F3E6E  CC                int3
000F3E6F  CC                int3
000F3E70  CC                int3
000F3E71  CC                int3
000F3E72  CC                int3
000F3E73  CC                int3
000F3E74  CC                int3
000F3E75  CC                int3
000F3E76  CC                int3
000F3E77  CC                int3
000F3E78  CC                int3
000F3E79  CC                int3
000F3E7A  CC                int3
000F3E7B  CC                int3
000F3E7C  CC                int3
000F3E7D  CC                int3
000F3E7E  CC                int3
000F3E7F  CC                int3
000F3E80  CC                int3
000F3E81  CC                int3
000F3E82  CC                int3
000F3E83  CC                int3
000F3E84  CC                int3
000F3E85  CC                int3
000F3E86  CC                int3
000F3E87  CC                int3
000F3E88  CC                int3
000F3E89  CC                int3
000F3E8A  CC                int3
000F3E8B  CC                int3
000F3E8C  CC                int3
000F3E8D  CC                int3
000F3E8E  CC                int3
000F3E8F  CC                int3
000F3E90  CC                int3
000F3E91  CC                int3
000F3E92  CC                int3
000F3E93  CC                int3
000F3E94  CC                int3
000F3E95  CC                int3
000F3E96  CC                int3
000F3E97  CC                int3
000F3E98  CC                int3
000F3E99  CC                int3
000F3E9A  CC                int3
000F3E9B  CC                int3
000F3E9C  CC                int3
000F3E9D  CC                int3
000F3E9E  CC                int3
000F3E9F  CC                int3
000F3EA0  CC                int3
000F3EA1  CC                int3
000F3EA2  CC                int3
000F3EA3  CC                int3
000F3EA4  CC                int3
000F3EA5  CC                int3
000F3EA6  CC                int3
000F3EA7  CC                int3
000F3EA8  CC                int3
000F3EA9  CC                int3
000F3EAA  CC                int3
000F3EAB  CC                int3
000F3EAC  CC                int3
000F3EAD  CC                int3
000F3EAE  CC                int3
000F3EAF  CC                int3
000F3EB0  CC                int3
000F3EB1  CC                int3
000F3EB2  CC                int3
000F3EB3  CC                int3
000F3EB4  CC                int3
000F3EB5  CC                int3
000F3EB6  CC                int3
000F3EB7  CC                int3
000F3EB8  CC                int3
000F3EB9  CC                int3
000F3EBA  CC                int3
000F3EBB  CC                int3
000F3EBC  CC                int3
000F3EBD  CC                int3
000F3EBE  CC                int3
000F3EBF  CC                int3
000F3EC0  CC                int3
000F3EC1  CC                int3
000F3EC2  CC                int3
000F3EC3  CC                int3
000F3EC4  CC                int3
000F3EC5  CC                int3
000F3EC6  CC                int3
000F3EC7  CC                int3
000F3EC8  CC                int3
000F3EC9  CC                int3
000F3ECA  CC                int3
000F3ECB  CC                int3
000F3ECC  CC                int3
000F3ECD  CC                int3
000F3ECE  CC                int3
000F3ECF  CC                int3
000F3ED0  CC                int3
000F3ED1  CC                int3
000F3ED2  CC                int3
000F3ED3  CC                int3
000F3ED4  CC                int3
000F3ED5  CC                int3
000F3ED6  CC                int3
000F3ED7  CC                int3
000F3ED8  CC                int3
000F3ED9  CC                int3
000F3EDA  CC                int3
000F3EDB  CC                int3
000F3EDC  CC                int3
000F3EDD  CC                int3
000F3EDE  CC                int3
000F3EDF  CC                int3
000F3EE0  CC                int3
000F3EE1  CC                int3
000F3EE2  CC                int3
000F3EE3  CC                int3
000F3EE4  CC                int3
000F3EE5  CC                int3
000F3EE6  CC                int3
000F3EE7  CC                int3
000F3EE8  CC                int3
000F3EE9  CC                int3
000F3EEA  CC                int3
000F3EEB  CC                int3
000F3EEC  CC                int3
000F3EED  CC                int3
000F3EEE  CC                int3
000F3EEF  CC                int3
000F3EF0  CC                int3
000F3EF1  CC                int3
000F3EF2  CC                int3
000F3EF3  CC                int3
000F3EF4  CC                int3
000F3EF5  CC                int3
000F3EF6  CC                int3
000F3EF7  CC                int3
000F3EF8  CC                int3
000F3EF9  CC                int3
000F3EFA  CC                int3
000F3EFB  CC                int3
000F3EFC  CC                int3
000F3EFD  CC                int3
000F3EFE  CC                int3
000F3EFF  CC                int3
000F3F00  CC                int3
000F3F01  CC                int3
000F3F02  CC                int3
000F3F03  CC                int3
000F3F04  CC                int3
000F3F05  CC                int3
000F3F06  CC                int3
000F3F07  CC                int3
000F3F08  CC                int3
000F3F09  CC                int3
000F3F0A  CC                int3
000F3F0B  CC                int3
000F3F0C  CC                int3
000F3F0D  CC                int3
000F3F0E  CC                int3
000F3F0F  CC                int3
000F3F10  CC                int3
000F3F11  CC                int3
000F3F12  CC                int3
000F3F13  CC                int3
000F3F14  CC                int3
000F3F15  CC                int3
000F3F16  CC                int3
000F3F17  CC                int3
000F3F18  CC                int3
000F3F19  CC                int3
000F3F1A  CC                int3
000F3F1B  CC                int3
000F3F1C  CC                int3
000F3F1D  CC                int3
000F3F1E  CC                int3
000F3F1F  CC                int3
000F3F20  CC                int3
000F3F21  CC                int3
000F3F22  CC                int3
000F3F23  CC                int3
000F3F24  CC                int3
000F3F25  CC                int3
000F3F26  CC                int3
000F3F27  CC                int3
000F3F28  CC                int3
000F3F29  CC                int3
000F3F2A  CC                int3
000F3F2B  CC                int3
000F3F2C  CC                int3
000F3F2D  CC                int3
000F3F2E  CC                int3
000F3F2F  CC                int3
000F3F30  CC                int3
000F3F31  CC                int3
000F3F32  CC                int3
000F3F33  CC                int3
000F3F34  CC                int3
000F3F35  CC                int3
000F3F36  CC                int3
000F3F37  CC                int3
000F3F38  CC                int3
000F3F39  CC                int3
000F3F3A  CC                int3
000F3F3B  CC                int3
000F3F3C  CC                int3
000F3F3D  CC                int3
000F3F3E  CC                int3
000F3F3F  CC                int3
000F3F40  CC                int3
000F3F41  CC                int3
000F3F42  CC                int3
000F3F43  CC                int3
000F3F44  CC                int3
000F3F45  CC                int3
000F3F46  CC                int3
000F3F47  CC                int3
000F3F48  CC                int3
000F3F49  CC                int3
000F3F4A  CC                int3
000F3F4B  CC                int3
000F3F4C  CC                int3
000F3F4D  CC                int3
000F3F4E  CC                int3
000F3F4F  CC                int3
000F3F50  CC                int3
000F3F51  CC                int3
000F3F52  CC                int3
000F3F53  CC                int3
000F3F54  CC                int3
000F3F55  CC                int3
000F3F56  CC                int3
000F3F57  CC                int3
000F3F58  CC                int3
000F3F59  CC                int3
000F3F5A  CC                int3
000F3F5B  CC                int3
000F3F5C  CC                int3
000F3F5D  CC                int3
000F3F5E  CC                int3
000F3F5F  CC                int3
000F3F60  CC                int3
000F3F61  CC                int3
000F3F62  CC                int3
000F3F63  CC                int3
000F3F64  CC                int3
000F3F65  CC                int3
000F3F66  CC                int3
000F3F67  CC                int3
000F3F68  CC                int3
000F3F69  CC                int3
000F3F6A  CC                int3
000F3F6B  CC                int3
000F3F6C  CC                int3
000F3F6D  CC                int3
000F3F6E  CC                int3
000F3F6F  CC                int3
000F3F70  CC                int3
000F3F71  CC                int3
000F3F72  CC                int3
000F3F73  CC                int3
000F3F74  CC                int3
000F3F75  CC                int3
000F3F76  CC                int3
000F3F77  CC                int3
000F3F78  CC                int3
000F3F79  CC                int3
000F3F7A  CC                int3
000F3F7B  CC                int3
000F3F7C  CC                int3
000F3F7D  CC                int3
000F3F7E  CC                int3
000F3F7F  CC                int3
000F3F80  CC                int3
000F3F81  CC                int3
000F3F82  CC                int3
000F3F83  CC                int3
000F3F84  43                inc bx
000F3F85  6F                outsw
000F3F86  7079              jo 0x4001
000F3F88  205269            and [bp+si+0x69],dl
000F3F8B  67687420          a32 push word 0x2074
000F3F8F  627920            bound di,[bx+di+0x20]
000F3F92  49                dec cx
000F3F93  42                inc dx
000F3F94  4D                dec bp
000F3F95  20436F            and [bp+di+0x6f],al
000F3F98  7270              jc 0x400a
000F3F9A  2E2031            and [cs:bx+di],dh
000F3F9D  3938              cmp [bx+si],di
000F3F9F  3300              xor ax,[bx+si]
000F3FA1  006CFD            add [si-0x3],ch
000F3FA4  0000              add [bx+si],al
000F3FA6  6AFD              push byte -0x3
000F3FA8  0000              add [bx+si],al
000F3FAA  6E                outsb
000F3FAB  FD                std
000F3FAC  0000              add [bx+si],al
000F3FAE  4C                dec sp
000F3FAF  FD                std
000F3FB0  0000              add [bx+si],al
000F3FB2  00FC              add ah,bh
000F3FB4  0D00BF            or ax,0xbf00
000F3FB7  FC                cld
000F3FB8  0000              add [bx+si],al
000F3FBA  54                push sp
000F3FBB  FE00              inc byte [bx+si]
000F3FBD  0046FE            add [bp-0x2],al
000F3FC0  0A00              or al,[bx+si]
000F3FC2  8EFC              mov segr7,sp
000F3FC4  46                inc si
000F3FC5  008EFC00          add [bp+0xfc],cl
000F3FC9  0019              add [bx+di],bl
000F3FCB  52                push dx
000F3FCC  0010              add [bx+si],dl
000F3FCE  0000              add [bx+si],al
000F3FD0  0200              add al,[bx+si]
000F3FD2  E5FC              in ax,0xfc
000F3FD4  50                push ax
000F3FD5  0000              add [bx+si],al
000F3FD7  FC                cld
000F3FD8  0000              add [bx+si],al
000F3FDA  8EFC              mov segr7,sp
000F3FDC  05008E            add ax,0x8e00
000F3FDF  FC                cld
000F3FE0  0F008EFC14        str [bp+0x14fc]
000F3FE5  008EFC00          add [bp+0xfc],cl
000F3FE9  0082FEA5          add [bp+si+0xa5fe],al
000F3FED  01BFFCEA          add [bx+0xeafc],di
000F3FF1  52                push dx
000F3FF2  0000              add [bx+si],al
000F3FF4  FC                cld
000F3FF5  0000              add [bx+si],al
000F3FF7  0038              add [bx+si],bh
000F3FF9  FF64CA            jmp near [si-0x36]
000F3FFC  232F              and bp,[bx]
000F3FFE  E0D0              loopne 0x3fd0
