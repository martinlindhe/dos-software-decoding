00000100  EB13              jmp short 0x115
00000102  7343              jnc 0x147
00000104  6566FE02          o32 inc byte [gs:bp+si]
00000108  4C                dec sp
00000109  4F                dec di
0000010A  47                inc di
0000010B  49                dec cx
0000010C  43                inc bx
0000010D  41                inc cx
0000010E  4C                dec sp
0000010F  2E43              cs inc bx
00000111  4F                dec di
00000112  4D                dec bp
00000113  0000              add [bx+si],al
00000115  BBFFFF            mov bx,0xffff
00000118  B44A              mov ah,0x4a
0000011A  CD21              int 0x21
0000011C  81EBF01F          sub bx,0x1ff0
00000120  7318              jnc 0x13a
00000122  BA2B01            mov dx,0x12b
00000125  B90F00            mov cx,0xf
00000128  E97901            jmp word 0x2a4
0000012B  4F                dec di
0000012C  7574              jnz 0x1a2
0000012E  206F66            and [bx+0x66],ch
00000131  206D65            and [di+0x65],ch
00000134  6D                insw
00000135  6F                outsw
00000136  7279              jc 0x1b1
00000138  2E07              cs pop es
0000013A  8CD8              mov ax,ds
0000013C  A3D202            mov [0x2d2],ax
0000013F  050010            add ax,0x1000
00000142  A35801            mov [0x158],ax
00000145  8EC0              mov es,ax
00000147  E8B401            call word 0x2fe
0000014A  B900FF            mov cx,0xff00
0000014D  FC                cld
0000014E  BE0001            mov si,0x100
00000151  33FF              xor di,di
00000153  F3A4              rep movsb
00000155  EADB000000        jmp word 0x0:0xdb
0000015A  356666            xor ax,0x6666
0000015D  66676687877888DF  xchg eax,[edi+0x79df8878]
         -79
00000166  7788              ja 0xf0
00000168  9F                lahf
00000169  7738              ja 0x1a3
0000016B  7979              jns 0x1e6
0000016D  7998              jns 0x107
0000016F  99                cwd
00000170  98                cbw
00000171  59                pop cx
00000172  F67888            idiv byte [bx+si-0x78]
00000175  99                cwd
00000176  897867            mov [bx+si+0x67],di
00000179  7897              js 0x112
0000017B  86886677          xchg cl,[bx+si+0x7766]
0000017F  877777            xchg si,[bx+0x77]
00000182  67677787          ja 0x10d
00000186  67879988857674    xchg bx,[ecx+0x74768588]
0000018D  8776F7            xchg si,[bp-0x9]
00000190  57                push di
00000191  55                push bp
00000192  8F                db 0x8f
00000193  55                push bp
00000194  55                push bp
00000195  8986FF9F          mov [bp-0x6001],ax
00000199  F9                stc
0000019A  78F7              js 0x193
0000019C  F9                stc
0000019D  AF                scasw
0000019E  F8                clc
0000019F  766A              jna 0x20b
000001A1  6A6F              push byte +0x6f
000001A3  AA                stosb
000001A4  8A8FFAAF          mov cl,[bx-0x5006]
000001A8  AF                scasw
000001A9  8AA9F79F          mov ch,[bx+di-0x6009]
000001AD  9AAFF98FAF        call word 0xaf8f:0xf9af
000001B2  7FAF              jg 0x163
000001B4  7FAA              jg 0x160
000001B6  7876              js 0x22e
000001B8  9F                lahf
000001B9  887AA6            mov [bp+si-0x5a],bh
000001BC  AA                stosb
000001BD  8989A8A8          mov [bx+di-0x5758],cx
000001C1  F9                stc
000001C2  A8AA              test al,0xaa
000001C4  FA                cli
000001C5  FA                cli
000001C6  89A8AAFA          mov [bx+si-0x556],bp
000001CA  8F                db 0x8f
000001CB  99                cwd
000001CC  8F                db 0x8f
000001CD  8F                db 0x8f
000001CE  68A69A            push word 0x9aa6
000001D1  FFAAF8AF          jmp word far [bp+si-0x5008]
000001D5  AB                stosw
000001D6  DF878887          fild word [bx-0x7878]
000001DA  200E1FBB          and [0xbb1f],cl
000001DE  1000              adc [bx+si],al
000001E0  BFFFFE            mov di,0xfeff
000001E3  BE5A00            mov si,0x5a
000001E6  33C0              xor ax,ax
000001E8  99                cwd
000001E9  B104              mov cl,0x4
000001EB  8A2C              mov ch,[si]
000001ED  D2ED              shr ch,cl
000001EF  80CDF0            or ch,0xf0
000001F2  02EB              add ch,bl
000001F4  7502              jnz 0x1f8
000001F6  42                inc dx
000001F7  AA                stosb
000001F8  40                inc ax
000001F9  80F104            xor cl,0x4
000001FC  7401              jz 0x1ff
000001FE  46                inc si
000001FF  3AE0              cmp ah,al
00000201  75E8              jnz 0x1eb
00000203  52                push dx
00000204  4B                dec bx
00000205  75DC              jnz 0x1e3
00000207  16                push ss
00000208  07                pop es
00000209  B80100            mov ax,0x1
0000020C  E8EF00            call word 0x2fe
0000020F  BF0001            mov di,0x100
00000212  BEFF01            mov si,0x1ff
00000215  33DB              xor bx,bx
00000217  33C9              xor cx,cx
00000219  BA0100            mov dx,0x1
0000021C  8BEC              mov bp,sp
0000021E  8B461E            mov ax,[bp+0x1e]
00000221  EB1B              jmp short 0x23e
00000223  03DA              add bx,dx
00000225  3BD8              cmp bx,ax
00000227  7211              jc 0x23a
00000229  2BD8              sub bx,ax
0000022B  03C8              add cx,ax
0000022D  4D                dec bp
0000022E  4D                dec bp
0000022F  8B461E            mov ax,[bp+0x1e]
00000232  D1E3              shl bx,1
00000234  D1E2              shl dx,1
00000236  3BD8              cmp bx,ax
00000238  73EF              jnc 0x229
0000023A  D1EA              shr dx,1
0000023C  740E              jz 0x24c
0000023E  D024              shl byte [si],1
00000240  73F4              jnc 0x236
00000242  75DF              jnz 0x223
00000244  46                inc si
00000245  F9                stc
00000246  D014              rcl byte [si],1
00000248  73EC              jnc 0x236
0000024A  EBD7              jmp short 0x223
0000024C  03D9              add bx,cx
0000024E  81FB0000          cmp bx,0x0
00000252  740D              jz 0x261
00000254  8A87FFFE          mov al,[bx-0x101]
00000258  AA                stosb
00000259  81FF4D0D          cmp di,0xd4d
0000025D  72B6              jc 0x215
0000025F  EB28              jmp short 0x289
00000261  B80200            mov ax,0x2
00000264  E86D00            call word 0x2d4
00000267  8BC8              mov cx,ax
00000269  03C7              add ax,di
0000026B  7231              jc 0x29e
0000026D  3D4D0D            cmp ax,0xd4d
00000270  772C              ja 0x29e
00000272  8BC1              mov ax,cx
00000274  E85D00            call word 0x2d4
00000277  56                push si
00000278  1E                push ds
00000279  8BF7              mov si,di
0000027B  2BF0              sub si,ax
0000027D  06                push es
0000027E  1F                pop ds
0000027F  F3A4              rep movsb
00000281  1F                pop ds
00000282  5E                pop si
00000283  81FF4D0D          cmp di,0xd4d
00000287  728C              jc 0x215
00000289  16                push ss
0000028A  1F                pop ds
0000028B  BE0001            mov si,0x100
0000028E  B94D0C            mov cx,0xc4d
00000291  B400              mov ah,0x0
00000293  AC                lodsb
00000294  03D0              add dx,ax
00000296  E2FB              loop 0x293
00000298  81EA4CFD          sub dx,0xfd4c
0000029C  741E              jz 0x2bc
0000029E  BAB201            mov dx,0x1b2
000002A1  B90A00            mov cx,0xa
000002A4  0E                push cs
000002A5  1F                pop ds
000002A6  B440              mov ah,0x40
000002A8  BB0200            mov bx,0x2
000002AB  CD21              int 0x21
000002AD  B8084C            mov ax,0x4c08
000002B0  CD21              int 0x21
000002B2  42                inc dx
000002B3  61                popaw
000002B4  6420636F          and [fs:bp+di+0x6f],ah
000002B8  7079              jo 0x333
000002BA  2E07              cs pop es
000002BC  33DB              xor bx,bx
000002BE  33F6              xor si,si
000002C0  33FF              xor di,di
000002C2  33ED              xor bp,bp
000002C4  83C420            add sp,byte +0x20
000002C7  B80200            mov ax,0x2
000002CA  E83100            call word 0x2fe
000002CD  33C0              xor ax,ax
000002CF  EA00010000        jmp word 0x0:0x100
000002D4  BA0200            mov dx,0x2
000002D7  D024              shl byte [si],1
000002D9  7310              jnc 0x2eb
000002DB  7506              jnz 0x2e3
000002DD  46                inc si
000002DE  F9                stc
000002DF  D014              rcl byte [si],1
000002E1  7308              jnc 0x2eb
000002E3  D1E2              shl dx,1
000002E5  03C2              add ax,dx
000002E7  D1E2              shl dx,1
000002E9  EBEC              jmp short 0x2d7
000002EB  D024              shl byte [si],1
000002ED  730A              jnc 0x2f9
000002EF  7506              jnz 0x2f7
000002F1  46                inc si
000002F2  F9                stc
000002F3  D014              rcl byte [si],1
000002F5  7302              jnc 0x2f9
000002F7  03C2              add ax,dx
000002F9  D1EA              shr dx,1
000002FB  75EE              jnz 0x2eb
000002FD  C3                ret
000002FE  C3                ret
000002FF  F1                int1
00000300  3D37C4            cmp ax,0xc437
00000303  44                inc sp
00000304  5A                pop dx
00000305  DF813D7A          fild word [bx+di+0x7a3d]
00000309  F729              imul word [bx+di]
0000030B  52                push dx
0000030C  48                dec ax
0000030D  BE74FC            mov si,0xfc74
00000310  AF                scasw
00000311  26249E            es and al,0x9e
00000314  6D                insw
00000315  B80F69            mov ax,0x690f
00000318  EE                out dx,al
00000319  E5A7              in ax,0xa7
0000031B  D6                salc
0000031C  06                push es
0000031D  629F82F2          bound bx,[bx-0xd7e]
00000321  357EEB            xor ax,0xeb7e
00000324  56                push si
00000325  776F              ja 0x396
00000327  F5                cmc
00000328  BCB22A            mov sp,0x2ab2
0000032B  1D14B7            sbb ax,0xb714
0000032E  D45B              aam 0x5b
00000330  8137566F          xor word [bx],0x6f56
00000334  60                pushaw
00000335  185CD3            sbb [si-0x2d],bl
00000338  873F              xchg di,[bx]
0000033A  C537              lds si,[bx]
0000033C  AF                scasw
0000033D  3B56BF            cmp dx,[bp-0x41]
00000340  898981E3          mov [bx+di-0x1c7f],cx
00000344  0319              add bx,[bx+di]
00000346  D4FB              aam 0xfb
00000348  C9                leave
00000349  7540              jnz 0x38b
0000034B  C5                db 0xc5
0000034C  F4                hlt
0000034D  DD9787E1          fst qword [bx-0x1e79]
00000351  EADA25A7A0        jmp word 0xa0a7:0x25da
00000356  97                xchg ax,di
00000357  3B84962F          cmp ax,[si+0x2f96]
0000035B  1F                pop ds
0000035C  8D6142            lea sp,[bx+di+0x42]
0000035F  C8A63DB3          enter 0x3da6,0xb3
00000363  D09A9438          rcr byte [bp+si+0x3894],1
00000367  61                popaw
00000368  41                inc cx
00000369  382C              cmp [si],ch
0000036B  1836F39E          sbb [0x9ef3],dh
0000036F  8154D7BAD6        adc word [si-0x29],0xd6ba
00000374  121EE351          adc bl,[0x51e3]
00000378  2220              and ah,[bx+si]
0000037A  40                inc ax
0000037B  801384            adc byte [bp+di],0x84
0000037E  F5                cmc
0000037F  D39E94F9          rcr word [bp-0x66c],cl
00000383  E009              loopne 0x38e
00000385  FA                cli
00000386  D181E37E          rol word [bx+di+0x7ee3],1
0000038A  82                db 0x82
0000038B  49                dec cx
0000038C  35B84F            xor ax,0x4fb8
0000038F  E0E7              loopne 0x378
00000391  A5                movsw
00000392  0355AD            add dx,[di-0x53]
00000395  B5CB              mov ch,0xcb
00000397  C9                leave
00000398  DAB67F02          fidiv dword [bp+0x27f]
0000039C  44                inc sp
0000039D  F4                hlt
0000039E  19B62EFD          sbb [bp-0x2d2],si
000003A2  D29E9E80          rcr byte [bp-0x7f62],cl
000003A6  1830              sbb [bx+si],dh
000003A8  7950              jns 0x3fa
000003AA  1C74              sbb al,0x74
000003AC  80743352          xor byte [si+0x33],0x52
000003B0  C4AF0B27          les bp,[bx+0x270b]
000003B4  3BB7DEE4          cmp si,[bx-0x1b22]
000003B8  7576              jnz 0x430
000003BA  4E                dec si
000003BB  13CD              adc cx,bp
000003BD  B620              mov dh,0x20
000003BF  3229              xor ch,[bx+di]
000003C1  DABB69DC          fidivr dword [bp+di-0x2397]
000003C5  58                pop ax
000003C6  B169              mov cl,0x69
000003C8  FFA8A9EB          jmp word far [bx+si-0x1457]
000003CC  F9                stc
000003CD  F61C              neg byte [si]
000003CF  7A7F              jpe 0x450
000003D1  C813DAEF          enter 0xda13,0xef
000003D5  299FDDD8          sub [bx-0x2723],bx
000003D9  66F7D4            not esp
000003DC  FB                sti
000003DD  1DD016            sbb ax,0x16d0
000003E0  89F7              mov di,si
000003E2  CE                into
000003E3  47                inc di
000003E4  CF                iretw
000003E5  7D5E              jnl 0x445
000003E7  E2E3              loop 0x3cc
000003E9  AC                lodsb
000003EA  E381              jcxz 0x36d
000003EC  BA730E            mov dx,0xe73
000003EF  83924F3ADF        adc word [bp+si+0x3a4f],byte -0x21
000003F4  D3                db 0xd3
000003F5  7693              jna 0x38a
000003F7  5D                pop bp
000003F8  AC                lodsb
000003F9  18D4              sbb ah,dl
000003FB  08A1E76B          or [bx+di+0x6be7],ah
000003FF  795B              jns 0x45c
00000401  73E0              jnc 0x3e3
00000403  FB                sti
00000404  25CDDF            and ax,0xdfcd
00000407  EBEC              jmp short 0x3f5
00000409  5B                pop bx
0000040A  FF                db 0xff
0000040B  79DE              jns 0x3eb
0000040D  F38AB6E9C6        rep mov dh,[bp-0x3917]
00000412  C1C0E9            rol ax,byte 0xe9
00000415  C0                db 0xc0
00000416  713E              jno 0x456
00000418  879C5490          xchg bx,[si-0x6fac]
0000041C  F317              rep pop ss
0000041E  1A469D            sbb al,[bp-0x63]
00000421  A146A5            mov ax,[0xa546]
00000424  D479              aam 0x79
00000426  204565            and [di+0x65],al
00000429  51                push cx
0000042A  52                push dx
0000042B  BD0B00            mov bp,0xb
0000042E  2586D8            and ax,0xd886
00000431  45                inc bp
00000432  27                daa
00000433  DC069B42          fadd qword [0x429b]
00000437  A5                movsw
00000438  B90A89            mov cx,0x890a
0000043B  94                xchg ax,sp
0000043C  5D                pop bp
0000043D  90                nop
0000043E  5C                pop sp
0000043F  E111              loope 0x452
00000441  D831              fdiv dword [bx+di]
00000443  C8DF031D          enter 0x3df,0x1d
00000447  C8517223          enter 0x7251,0x23
0000044B  031F              add bx,[bx]
0000044D  0C28              or al,0x28
0000044F  BB96C0            mov bx,0xc096
00000452  C7                db 0xc7
00000453  7814              js 0x469
00000455  53                push bx
00000456  77E0              ja 0x438
00000458  C7                db 0xc7
00000459  7CED              jl 0x448
0000045B  3F                aas
0000045C  95                xchg ax,bp
0000045D  E03C              loopne 0x49b
0000045F  8A5231            mov dl,[bp+si+0x31]
00000462  BC1075            mov sp,0x7510
00000465  D3996F11          rcr word [bx+di+0x116f],cl
00000469  DE76B9            fidiv word [bp-0x47]
0000046C  36E69F            ss out 0x9f,al
0000046F  1A7872            sbb bh,[bx+si+0x72]
00000472  7377              jnc 0x4eb
00000474  8BF4              mov si,sp
00000476  79AD              jns 0x425
00000478  B8CD02            mov ax,0x2cd
0000047B  8CEF              mov di,gs
0000047D  5B                pop bx
0000047E  76ED              jna 0x46d
00000480  2079C8            and [bx+di-0x38],bh
00000483  16                push ss
00000484  DD88978A          fisttp qword [bx+si-0x7569]
00000488  3F                aas
00000489  3BB10F16          cmp si,[bx+di+0x160f]
0000048D  56                push si
0000048E  3AA110A9          cmp ah,[bx+di-0x56f0]
00000492  7E30              jng 0x4c4
00000494  A7                cmpsw
00000495  A6                cmpsb
00000496  73C4              jnc 0x45c
00000498  33838AFB          xor ax,[bp+di-0x476]
0000049C  A22C28            mov [0x282c],al
0000049F  59                pop cx
000004A0  90                nop
000004A1  717E              jno 0x521
000004A3  F8                clc
000004A4  54                push sp
000004A5  783A              js 0x4e1
000004A7  FE                db 0xfe
000004A8  50                push ax
000004A9  7826              js 0x4d1
000004AB  E443              in al,0x43
000004AD  C252C2            ret 0xc252
000004B0  E150              loope 0x502
000004B2  27                daa
000004B3  10F0              adc al,dh
000004B5  97                xchg ax,di
000004B6  3F                aas
000004B7  F6833F0C4E        test byte [bp+di+0xc3f],0x4e
000004BC  6F                outsw
000004BD  029BA00C          add bl,[bp+di+0xca0]
000004C1  F8                clc
000004C2  FF30              push word [bx+si]
000004C4  3C65              cmp al,0x65
000004C6  EB07              jmp short 0x4cf
000004C8  C600B6            mov byte [bx+si],0xb6
000004CB  F6E1              mul cl
000004CD  7005              jo 0x4d4
000004CF  D8838BF7          fadd dword [bp+di-0x875]
000004D3  222E0CE8          and ch,[0xe80c]
000004D7  07                pop es
000004D8  C6                db 0xc6
000004D9  15E1F1            adc ax,0xf1e1
000004DC  85808660          test [bx+si+0x6086],ax
000004E0  7135              jno 0x517
000004E2  222C              and ch,[si]
000004E4  205980            and [bx+di-0x80],bl
000004E7  715E              jno 0x547
000004E9  47                inc di
000004EA  41                inc cx
000004EB  7187              jno 0x474
000004ED  B217              mov dl,0x17
000004EF  185F08            sbb [bx+0x8],bl
000004F2  78B6              js 0x4aa
000004F4  40                inc ax
000004F5  5C                pop sp
000004F6  60                pushaw
000004F7  04E0              add al,0xe0
000004F9  70B7              jo 0x4b2
000004FB  44                inc sp
000004FC  81E10DE8          and cx,0xe80d
00000500  7C1C              jl 0x51e
00000502  0B10              or dx,[bx+si]
00000504  7068              jo 0x56e
00000506  5E                pop si
00000507  03C1              add ax,cx
00000509  D87582            fdiv dword [di-0x7e]
0000050C  CF                iretw
0000050D  85459B            test [di-0x65],ax
00000510  B0B5              mov al,0xb5
00000512  DFA029C4          fbld tword [bx+si-0x3bd7]
00000516  1C1A              sbb al,0x1a
00000518  0D40E2            or ax,0xe240
0000051B  7E21              jng 0x53e
0000051D  16                push ss
0000051E  102C              adc [si],ch
00000520  C038AE            sar byte [bx+si],byte 0xae
00000523  807C1DF4          cmp byte [si+0x1d],0xf4
00000527  7915              jns 0x53e
00000529  5F                pop di
0000052A  2654              es push sp
0000052C  95                xchg ax,bp
0000052D  154D1C            adc ax,0x1c4d
00000530  C415              les dx,[di]
00000532  4B                dec bx
00000533  FB                sti
00000534  C10487            rol word [si],byte 0x87
00000537  CB                retf
00000538  82                db 0x82
00000539  9C                pushfw
0000053A  13BA59A4          adc di,[bp+si-0x5ba7]
0000053E  30A496A5          xor [si-0x5a6a],ah
00000542  72D0              jc 0x514
00000544  7840              js 0x586
00000546  47                inc di
00000547  296430            sub [si+0x30],sp
0000054A  78F2              js 0x53e
0000054C  CE                into
0000054D  3A19              cmp bl,[bx+di]
0000054F  92                xchg ax,dx
00000550  DA0E3815          fimul dword [0x1538]
00000554  E421              in al,0x21
00000556  8033A0            xor byte [bp+di],0xa0
00000559  088BB06D          or [bp+di+0x6db0],cl
0000055D  6520D5            gs and ch,dl
00000560  51                push cx
00000561  A4                movsb
00000562  32D1              xor dl,cl
00000564  B420              mov ah,0x20
00000566  C8B260EC          enter 0x60b2,0xec
0000056A  95                xchg ax,bp
0000056B  B503              mov ch,0x3
0000056D  135066            adc dx,[bx+si+0x66]
00000570  BD45FB            mov bp,0xfb45
00000573  6D                insw
00000574  1AFC              sbb bh,ah
00000576  90                nop
00000577  74AA              jz 0x523
00000579  49                dec cx
0000057A  CA3BD0            retf 0xd03b
0000057D  7147              jno 0x5c6
0000057F  7380              jnc 0x501
00000581  7E8E              jng 0x511
00000583  F6                db 0xf6
00000584  0E                push cs
00000585  F77021            div word [bx+si+0x21]
00000588  C3                ret
00000589  43                inc bx
0000058A  51                push cx
0000058B  59                pop cx
0000058C  5C                pop sp
0000058D  95                xchg ax,bp
0000058E  D85A52            fcomp dword [bp+si+0x52]
00000591  87C1              xchg ax,cx
00000593  61                popaw
00000594  0A664A            or ah,[bp+0x4a]
00000597  5B                pop bx
00000598  D0                db 0xd0
00000599  351BE6            xor ax,0xe61b
0000059C  261E              es push ds
0000059E  3F                aas
0000059F  D7                xlatb
000005A0  83BB116323        cmp word [bp+di+0x6311],byte +0x23
000005A5  AF                scasw
000005A6  27                daa
000005A7  2E59              cs pop cx
000005A9  DEAEDACD          fisubr word [bp-0x3226]
000005AD  03AF644F          add bp,[bx+0x4f64]
000005B1  5C                pop sp
000005B2  362503A1          ss and ax,0xa103
000005B6  51                push cx
000005B7  51                push cx
000005B8  06                push es
000005B9  A04778            mov al,[0x7847]
000005BC  5C                pop sp
000005BD  99                cwd
000005BE  85952993          test [di-0x6cd7],dx
000005C2  0428              add al,0x28
000005C4  B1DD              mov cl,0xdd
000005C6  5F                pop di
000005C7  43                inc bx
000005C8  117241            adc [bp+si+0x41],si
000005CB  B085              mov al,0x85
000005CD  50                push ax
000005CE  A3284C            mov [0x4c28],ax
000005D1  0C5D              or al,0x5d
000005D3  90                nop
000005D4  9F                lahf
000005D5  D1F8              sar ax,1
000005D7  9C                pushfw
000005D8  09455D            or [di+0x5d],ax
000005DB  779A              ja 0x577
000005DD  E44D              in al,0x4d
000005DF  D895B5D5          fcom dword [di-0x2a4b]
000005E3  CE                into
000005E4  6203              bound ax,[bp+di]
000005E6  C6                db 0xc6
000005E7  B90176            mov cx,0x7601
000005EA  0BF8              or di,ax
000005EC  EE                out dx,al
000005ED  041D              add al,0x1d
000005EF  82                db 0x82
000005F0  0C41              or al,0x41
000005F2  F620              mul byte [bx+si]
000005F4  1887C945          sbb [bx+0x45c9],al
000005F8  42                inc dx
000005F9  C8625491          enter 0x5462,0x91
000005FD  7F72              jg 0x671
000005FF  72ED              jc 0x5ee
00000601  13826F81          adc ax,[bp+si-0x7e91]
00000605  D1BA8F54          sar word [bp+si+0x548f],1
00000609  98                cbw
0000060A  0F8154DE          jno word 0xe462
0000060E  3E3A86EAF6        cmp al,[ds:bp-0x916]
00000613  A94C99            test ax,0x994c
00000616  4A                dec dx
00000617  AB                stosw
00000618  2A4B6D            sub cl,[bp+di+0x6d]
0000061B  352EB6            xor ax,0xb62e
0000061E  B5F0              mov ch,0xf0
00000620  8B27              mov sp,[bx]
00000622  257CCC            and ax,0xcc7c
00000625  C516C866          lds dx,[0x66c8]
00000629  D40B              aam 0xb
0000062B  AB                stosw
0000062C  9E                sahf
0000062D  B9EE6D            mov cx,0x6dee
00000630  60                pushaw
00000631  FF                db 0xff
00000632  7EE0              jng 0x614
00000634  7057              jo 0x68d
00000636  41                inc cx
00000637  1023              adc [bp+di],ah
00000639  3304              xor ax,[si]
0000063B  40                inc ax
0000063C  89EB              mov bx,bp
0000063E  9E                sahf
0000063F  E4F0              in al,0xf0
00000641  D6                salc
00000642  54                push sp
00000643  1E                push ds
00000644  B569              mov ch,0x69
00000646  1907              sbb [bx],ax
00000648  98                cbw
00000649  858DA5F2          test [di-0xd5b],cx
0000064D  7255              jc 0x6a4
0000064F  40                inc ax
00000650  830C20            or word [si],byte +0x20
00000653  0210              add dl,[bx+si]
00000655  06                push es
00000656  7C1D              jl 0x675
00000658  18873D51          sbb [bx+0x513d],al
0000065C  137A27            adc di,[bp+si+0x27]
0000065F  CC                int3
00000660  3404              xor al,0x4
00000662  48                dec ax
00000663  183C              sbb [si],bh
00000665  689B32            push word 0x329b
00000668  E627              out 0x27,al
0000066A  B00E              mov al,0xe
0000066C  8B07              mov ax,[bx]
0000066E  2E57              cs push di
00000670  281C              sub [si],bl
00000672  C1AC8E6346        shr word [si+0x638e],byte 0x46
00000677  AA                stosb
00000678  396854            cmp [bx+si+0x54],bp
0000067B  5B                pop bx
0000067C  C1221C            shl word [bp+si],byte 0x1c
0000067F  F093              lock xchg ax,bx
00000681  95                xchg ax,bp
00000682  B6B0              mov dh,0xb0
00000684  7FA8              jg 0x62e
00000686  1181256E          adc [bx+di+0x6e25],ax
0000068A  C7                db 0xc7
0000068B  6D                insw
0000068C  198432C9          sbb [si-0x36ce],ax
00000690  DC2D              fsubr qword [di]
00000692  2CF0              sub al,0xf0
00000694  97                xchg ax,di
00000695  386BAC            cmp [bp+di-0x54],ch
00000698  D4A5              aam 0xa5
0000069A  9B40              wait inc ax
0000069C  384775            cmp [bx+0x75],al
0000069F  58                pop ax
000006A0  6C                insb
000006A1  A03F20            mov al,[0x203f]
000006A4  F631              div byte [bx+di]
000006A6  58                pop ax
000006A7  44                inc sp
000006A8  B38C              mov bl,0x8c
000006AA  AB                stosw
000006AB  6C                insb
000006AC  D89E5831          fcomp dword [bp+0x3158]
000006B0  B4B9              mov ah,0xb9
000006B2  AA                stosb
000006B3  8683C108          xchg al,[bp+di+0x8c1]
000006B7  BC3A32            mov sp,0x323a
000006BA  8518              test [bx+si],bx
000006BC  93                xchg ax,bx
000006BD  94                xchg ax,sp
000006BE  60                pushaw
000006BF  F8                clc
000006C0  F20AF0            repne or dh,al
000006C3  B4B2              mov ah,0xb2
000006C5  40                inc ax
000006C6  95                xchg ax,bp
000006C7  844968            test [bx+di+0x68],cl
000006CA  D55E              aad 0x5e
000006CC  4A                dec dx
000006CD  8D4A5D            lea cx,[bp+si+0x5d]
000006D0  6653              push ebx
000006D2  3C20              cmp al,0x20
000006D4  7340              jnc 0x716
000006D6  63D0              arpl ax,dx
000006D8  05216B            add ax,0x6b21
000006DB  99                cwd
000006DC  3F                aas
000006DD  7252              jc 0x731
000006DF  AA                stosb
000006E0  85965809          test [bp+0x958],dx
000006E4  17                pop ss
000006E5  632C              arpl [si],bp
000006E7  F9                stc
000006E8  4C                dec sp
000006E9  2F                das
000006EA  CA430A            retf 0xa43
000006ED  CB                retf
000006EE  4C                dec sp
000006EF  3E238AA05D        and cx,[ds:bp+si+0x5da0]
000006F4  5B                pop bx
000006F5  2C0B              sub al,0xb
000006F7  0CED              or al,0xed
000006F9  4E                dec si
000006FA  E189              loope 0x685
000006FC  2A6420            sub ah,[si+0x20]
000006FF  F217              repne pop ss
00000701  6F                outsw
00000702  1D5060            sbb ax,0x6050
00000705  61                popaw
00000706  4C                dec sp
00000707  95                xchg ax,bp
00000708  D6                salc
00000709  DC8784C9          fadd qword [bx-0x367c]
0000070D  07                pop es
0000070E  20165C4F          and [0x4f5c],dl
00000712  D158E0            rcr word [bx+si-0x20],1
00000715  F3A216C9          rep mov [0xc916],al
00000719  0087B186          add [bx-0x794f],al
0000071D  C29272            ret 0x7292
00000720  D01F              rcr byte [bx],1
00000722  8D0B              lea cx,[bp+di]
00000724  53                push bx
00000725  B95180            mov cx,0x8051
00000728  2486              and al,0x86
0000072A  BB080B            mov bx,0xb08
0000072D  CDEE              int 0xee
0000072F  147C              adc al,0x7c
00000731  1BAF570B          sbb bp,[bx+0xb57]
00000735  83855A4444        add word [di+0x445a],byte +0x44
0000073A  CB                retf
0000073B  40                inc ax
0000073C  E40C              in al,0xc
0000073E  CC                int3
0000073F  44                inc sp
00000740  054062            add ax,0x6240
00000743  80D501            adc ch,0x1
00000746  C54139            lds ax,[bx+di+0x39]
00000749  B59F              mov ch,0x9f
0000074B  95                xchg ax,bp
0000074C  EA7CEB3D17        jmp word 0x173d:0xeb7c
00000751  B37A              mov bl,0x7a
00000753  FE                db 0xfe
00000754  29DF              sub di,bx
00000756  BFE4D1            mov di,0xd1e4
00000759  7DAD              jnl 0x708
0000075B  814BCC2C5C        or word [bp+di-0x34],0x5c2c
00000760  1A514B            sbb dl,[bx+di+0x4b]
00000763  1A9422F1          sbb dl,[si-0xede]
00000767  27                daa
00000768  382C              cmp [si],ch
0000076A  4C                dec sp
0000076B  C0                db 0xc0
0000076C  715A              jno 0x7c8
0000076E  D3E8              shr ax,cl
00000770  E1CC              loope 0x73e
00000772  FA                cli
00000773  E360              jcxz 0x7d5
00000775  C7                db 0xc7
00000776  99                cwd
00000777  C6                db 0xc6
00000778  75A7              jnz 0x721
0000077A  FD                std
0000077B  B77A              mov bh,0x7a
0000077D  9B32DF            wait xor bl,bh
00000780  7F16              jg 0x798
00000782  6B3FF3            imul di,[bx],byte -0xd
00000785  C3                ret
00000786  33B7DE53          xor si,[bx+0x53de]
0000078A  F2396DD6          repne cmp [di-0x2a],bp
0000078E  C1CF7D            ror di,byte 0x7d
00000791  4C                dec sp
00000792  FA                cli
00000793  3DFE06            cmp ax,0x6fe
00000796  7FCA              jg 0x762
00000798  02E2              add ah,dl
0000079A  E348              jcxz 0x7e4
0000079C  F6E8              imul al
0000079E  8181B2F18168      add word [bx+di-0xe4e],0x6881
000007A4  59                pop cx
000007A5  DC18              fcomp qword [bx+si]
000007A7  C167753F          shl word [bx+0x75],byte 0x3f
000007AB  A39FAE            mov [0xae9f],ax
000007AE  C9                leave
000007AF  F35A              rep pop dx
000007B1  D7                xlatb
000007B2  6D                insw
000007B3  FF                db 0xff
000007B4  EBC5              jmp short 0x77b
000007B6  91                xchg ax,cx
000007B7  8C062A96          mov [0x962a],es
000007BB  7B9F              jpo 0x75c
000007BD  93                xchg ax,bx
000007BE  F36C              rep insb
000007C0  26F627            mul byte [es:bx]
000007C3  771E              ja 0x7e3
000007C5  68D469            push word 0x69d4
000007C8  6F                outsw
000007C9  3B3B              cmp di,[bp+di]
000007CB  7E75              jng 0x842
000007CD  7CD4              jl 0x7a3
000007CF  8053D29A          adc byte [bp+di-0x2e],0x9a
000007D3  F27027            bnd jo 0x7fd
000007D6  ED                in ax,dx
000007D7  A5                movsw
000007D8  A9D148            test ax,0x48d1
000007DB  1C17              sbb al,0x17
000007DD  9E                sahf
000007DE  06                push es
000007DF  0F45F0            cmovnz si,ax
000007E2  830AE4            or word [bp+si],byte -0x1c
000007E5  1C03              sbb al,0x3
000007E7  B4B5              mov ah,0xb5
000007E9  1E                push ds
000007EA  A4                movsb
000007EB  0D40E0            or ax,0xe040
000007EE  1E                push ds
000007EF  D022              shl byte [bp+si],1
000007F1  CF                iretw
000007F2  FC                cld
000007F3  39A4FFB8          cmp [si-0x4701],sp
000007F7  D54E              aad 0x4e
000007F9  7517              jnz 0x812
000007FB  133B              adc di,[bp+di]
000007FD  1D4026            sbb ax,0x2640
00000800  EAE3C0F0FC        jmp word 0xfcf0:0xc0e3
00000805  343F              xor al,0x3f
00000807  7169              jno 0x872
00000809  70C0              jo 0x7cb
0000080B  C533              lds si,[bp+di]
0000080D  02369546          add dh,[0x4695]
00000811  A6                cmpsb
00000812  5B                pop bx
00000813  F024A7            lock and al,0xa7
00000816  773C              ja 0x854
00000818  18F7              sbb bh,dh
0000081A  40                inc ax
0000081B  C6                db 0xc6
0000081C  F2866B8D          xacquire xchg ch,[bp+di-0x73]
00000820  2B9022D0          sub dx,[bx+si-0x2fde]
00000824  E7A5              out 0xa5,ax
00000826  3B574A            cmp dx,[bx+0x4a]
00000829  E81D74            call word 0x7c49
0000082C  DEBE8488          fidivr word [bp-0x777c]
00000830  1A1ED007          sbb bl,[0x7d0]
00000834  91                xchg ax,cx
00000835  0352C5            add dx,[bp+si-0x3b]
00000838  D50C              aad 0xc
0000083A  281C              sub [si],bl
0000083C  EB38              jmp short 0x876
0000083E  F034CA            lock xor al,0xca
00000841  EC                in al,dx
00000842  0C2C              or al,0x2c
00000844  DF9A7768          fistp word [bp+si+0x6877]
00000848  1E                push ds
00000849  A4                movsb
0000084A  0289DF44          add cl,[bx+di+0x44df]
0000084E  EF                out dx,ax
0000084F  D2CC              ror ah,cl
00000851  10B6BF7C          adc [bp+0x7cbf],dh
00000855  1D648B            sbb ax,0x8b64
00000858  6704D5            add al,0xd5
0000085B  5D                pop bp
0000085C  B3A0              mov bl,0xa0
0000085E  1E                push ds
0000085F  CAD9F0            retf 0xf0d9
00000862  0F67A9A4FE        packuswb mm5,[bx+di-0x15c]
00000867  9D                popfw
00000868  5C                pop sp
00000869  FD                std
0000086A  4E                dec si
0000086B  D010              rcl byte [bx+si],1
0000086D  3F                aas
0000086E  020F              add cl,[bx]
00000870  F0040E            lock add al,0xe
00000873  8081F40032        add byte [bx+di+0xf4],0x32
00000878  C064EBFF          shl byte [si-0x15],byte 0xff
0000087C  6563910F28        arpl [gs:bx+di+0x280f],dx
00000881  58                pop ax
00000882  032C              add bp,[si]
00000884  F1                int1
00000885  0F39              dmint
00000887  D803              fadd dword [bp+di]
00000889  B14D              mov cl,0x4d
0000088B  D011              rcl byte [bx+di],1
0000088D  6995E00C61BD      imul dx,[di+0xce0],word 0xbd61
00000893  A0C661            mov al,[0x61c6]
00000896  7C90              jl 0x828
00000898  25CC10            and ax,0x10cc
0000089B  7B5F              jpo 0x8fc
0000089D  0BE0              or sp,ax
0000089F  B3E0              mov bl,0xe0
000008A1  5E                pop si
000008A2  9D                popfw
000008A3  99                cwd
000008A4  C7                db 0xc7
000008A5  8E17              mov ss,[bx]
000008A7  BE8C35            mov si,0x358c
000008AA  94                xchg ax,sp
000008AB  0BCD              or cx,bp
000008AD  F34B              rep dec bx
000008AF  9F                lahf
000008B0  258420            and ax,0x2084
000008B3  F31198BB12        rep adc [bx+si+0x12bb],bx
000008B8  C45E8B            les bx,[bp-0x75]
000008BB  8E4E54            mov cs,[bp+0x54]
000008BE  A5                movsw
000008BF  7202              jc 0x8c3
000008C1  F4                hlt
000008C2  0816A36E          or [0x6ea3],dl
000008C6  27                daa
000008C7  C7                db 0xc7
000008C8  2ABA827A          sub bh,[bp+si+0x7a82]
000008CC  61                popaw
000008CD  42                inc dx
000008CE  847877            test [bx+si+0x77],bh
000008D1  D7                xlatb
000008D2  77D7              ja 0x8ab
000008D4  F8                clc
000008D5  97                xchg ax,di
000008D6  C7C28F1E          mov dx,0x1e8f
000008DA  FE                db 0xfe
000008DB  39C3              cmp bx,ax
000008DD  BFE0F0            mov di,0xf0e0
000008E0  8EDE              mov ds,si
000008E2  DE                db 0xde
000008E3  DC4382            fadd qword [bp+di-0x7e]
000008E6  8928              mov [bx+si],bp
000008E8  1D12CB            sbb ax,0xcb12
000008EB  B40F              mov ah,0xf
000008ED  0305              add ax,[di]
000008EF  F01109            lock adc [bx+di],cx
000008F2  2BC2              sub ax,dx
000008F4  5D                pop bp
000008F5  73CC              jnc 0x8c3
000008F7  51                push cx
000008F8  6966BF290B        imul sp,[bp-0x41],word 0xb29
000008FD  1F                pop ds
000008FE  241C              and al,0x1c
00000900  83225B            and word [bp+si],byte +0x5b
00000903  EF                out dx,ax
00000904  81CDA165          or bp,0x65a1
00000908  DBC9              fcmovne st1
0000090A  CA1172            retf 0x7211
0000090D  08830401          or [bp+di+0x104],al
00000911  C4                db 0xc4
00000912  CA9524            retf 0x2495
00000915  0BC1              or ax,cx
00000917  E29E              loop 0x8b7
00000919  50                push ax
0000091A  3132              xor [bp+si],si
0000091C  798B              jns 0x8a9
0000091E  E407              in al,0x7
00000920  C80C36B6          enter 0x360c,0xb6
00000924  FC                cld
00000925  FD                std
00000926  1836DC28          sbb [0x28dc],dh
0000092A  B71E              mov bh,0x1e
0000092C  A5                movsw
0000092D  A5                movsw
0000092E  B710              mov bh,0x10
00000930  0837              or [bx],dh
00000932  07                pop es
00000933  6A1F              push byte +0x1f
00000935  C19D8F008B        rcr word [di+0x8f],byte 0x8b
0000093A  DA061542          fiadd dword [0x4215]
0000093E  94                xchg ax,sp
0000093F  C6                db 0xc6
00000940  3F                aas
00000941  E0C0              loopne 0x903
00000943  18F0              sbb al,dh
00000945  2003              and [bp+di],al
00000947  AA                stosb
00000948  BCD769            mov sp,0x69d7
0000094B  16                push ss
0000094C  8B9ECD5D          mov bx,[bp+0x5dcd]
00000950  1A5FF7            sbb bl,[bx-0x9]
00000953  5D                pop bp
00000954  E752              out 0x52,ax
00000956  33BD32D3          xor di,[di-0x2cce]
0000095A  9D                popfw
0000095B  AB                stosw
0000095C  D522              aad 0x22
0000095E  E9F19C            jmp word 0xa652
00000961  52                push dx
00000962  DA13              ficom dword [bp+di]
00000964  DD22              frstor [bp+si]
00000966  EC                in al,dx
00000967  D6                salc
00000968  42                inc dx
00000969  DB                db 0xdb
0000096A  36F297            ss repne xchg ax,di
0000096D  6F                outsw
0000096E  5F                pop di
0000096F  C17FE4A5          sar word [bx-0x1c],byte 0xa5
00000973  FC                cld
00000974  35E8F1            xor ax,0xf1e8
00000977  3123              xor [bp+di],sp
00000979  60                pushaw
0000097A  47                inc di
0000097B  99                cwd
0000097C  FC                cld
0000097D  F75ABE            neg word [bp+si-0x42]
00000980  3E90              ds nop
00000982  3827              cmp [bx],ah
00000984  79BF              jns 0x945
00000986  F3369D            ss rep popfw
00000989  E42A              in al,0x2a
0000098B  B65E              mov dh,0x5e
0000098D  E6F7              out 0xf7,al
0000098F  B94FFB            mov cx,0xfb4f
00000992  B4EE              mov ah,0xee
00000994  2156B5            and [bp-0x4b],dx
00000997  B466              mov ah,0x66
00000999  BBD4AB            mov bx,0xabd4
0000099C  71AA              jno 0x948
0000099E  0008              add [bx+si],cl
000009A0  0181FB40          add [bx+di+0x40fb],ax
000009A4  E03D              loopne 0x9e3
000009A6  2E6F              cs outsw
000009A8  EAFC4533C5        jmp word 0xc533:0x45fc
000009AD  4E                dec si
000009AE  C6                db 0xc6
000009AF  15736F            adc ax,0x6f73
000009B2  FA                cli
000009B3  58                pop ax
000009B4  16                push ss
000009B5  9F                lahf
000009B6  E73F              out 0x3f,ax
000009B8  AF                scasw
000009B9  A274F6            mov [0xf674],al
000009BC  10B6ADD5          adc [bp-0x2a53],dh
000009C0  74AE              jz 0x970
000009C2  839BA5F539        sbb word [bp+di-0xa5b],byte +0x39
000009C7  F8                clc
000009C8  FE                db 0xfe
000009C9  9F                lahf
000009CA  262DD7C7          es sub ax,0xc7d7
000009CE  F5                cmc
000009CF  38FA              cmp dl,bh
000009D1  7E2E              jng 0xa01
000009D3  2E2C8E            cs sub al,0x8e
000009D6  3F                aas
000009D7  1A                db 0x1a
000009D8  88                db 0x88
