00000100  BE8E2F            mov si,0x2f8e
00000103  50                push ax
00000104  53                push bx
00000105  51                push cx
00000106  52                push dx
00000107  0E                push cs
00000108  07                pop es
00000109  0E                push cs
0000010A  1F                pop ds
0000010B  E80000            call 0x10e
0000010E  5D                pop bp
0000010F  8BCE              mov cx,si
00000111  8D7234            lea si,[bp+si+0x34]
00000114  BF82FF            mov di,0xff82
00000117  D1E9              shr cx,1
00000119  FD                std
0000011A  57                push di
0000011B  F3A5              rep movsw
0000011D  8D7502            lea si,[di+0x2]
00000120  FC                cld
00000121  F9                stc
00000122  8D7EF2            lea di,[bp-0xe]
00000125  C3                ret
00000126  43                inc bx
00000127  6F                outsw
00000128  7079              jo 0x1a3
0000012A  7269              jc 0x195
0000012C  67687420          push word 0x2074
00000130  284329            sub [bp+di+0x29],al
00000133  2031              and [bx+di],dh
00000135  3939              cmp [bx+di],di
00000137  3120              xor [bx+si],sp
00000139  20572E            and [bx+0x2e],dl
0000013C  20436F            and [bp+di+0x6f],al
0000013F  6C                insb
00000140  6C                insb
00000141  6973900400        imul si,[bp+di-0x70],word 0x4
00000146  E9C6EB            jmp 0xed0f
00000149  00FF              add bh,bh
0000014B  C00000            rol byte [bx+si],byte 0x0
0000014E  0000              add [bx+si],al
00000150  0000              add [bx+si],al
00000152  00C0              add al,al
00000154  00FF              add bh,bh
00000156  C00000            rol byte [bx+si],byte 0x0
00000159  0000              add [bx+si],al
0000015B  0000              add [bx+si],al
0000015D  0000              add [bx+si],al
0000015F  18FF              sbb bh,bh
00000161  C00000            rol byte [bx+si],byte 0x0
00000164  0000              add [bx+si],al
00000166  0000              add [bx+si],al
00000168  0000              add [bx+si],al
0000016A  0003              add [bp+di],al
0000016C  00FC              add ah,bh
0000016E  800000            add byte [bx+si],0x0
00000171  0000              add [bx+si],al
00000173  80E366            and bl,0x66
00000176  9C                pushf
00000177  899D8A8E          mov [di-0x7176],bx
0000017B  89C6              mov si,ax
0000017D  18939499          sbb [bp+di-0x666c],dl
00000181  06                push es
00000182  0C9E              or al,0x9e
00000184  AC                lodsb
00000185  180C              sbb [si],cl
00000187  A4                movsb
00000188  B318              mov bl,0x18
0000018A  06                push es
0000018B  93                xchg ax,bx
0000018C  9C                pushf
0000018D  0C03              or al,0x3
0000018F  9D                popf
00000190  D50C              aad 0xc
00000192  03D0              add dx,ax
00000194  DF8601A6          fild word [bp-0x59ff]
00000198  C10686ACAD        rol word [0xac86],byte 0xad
0000019D  C1C0C7            rol ax,byte 0xc7
000001A0  F33060CE          rep xor [bx+si-0x32],ah
000001A4  9C                pushf
000001A5  A2C060            mov [0x60c0],al
000001A8  8D8CC060          lea cx,[si+0x60c0]
000001AC  C4                db 0xc4
000001AD  EA6030FBE2        jmp 0xe2fb:0x3060
000001B2  60                pusha
000001B3  60                pusha
000001B4  D100              rol word [bx+si],1
000001B6  98                cbw
000001B7  331C              xor bx,[si]
000001B9  00B10113          add [bx+di+0x1301],dh
000001BD  9C                pushf
000001BE  013C              add [si],di
000001C0  03C6              add ax,si
000001C2  AC                lodsb
000001C3  00F2              add dl,dh
000001C5  0083BA91          add [bp+di-0x6e46],al
000001C9  0FC69D00A4F5      shufps xmm3,oword [di-0x5c00],byte 0xf5
000001CF  0165C0            add [di-0x40],sp
000001D2  0001              add [bx+di],al
000001D4  95                xchg ax,bp
000001D5  FFC0              inc ax
000001D7  0000              add [bx+si],al
000001D9  0000              add [bx+si],al
000001DB  0000              add [bx+si],al
000001DD  0000              add [bx+si],al
000001DF  18FE              sbb dh,bh
000001E1  0000              add [bx+si],al
000001E3  0007              add [bx],al
000001E5  9B001A            wait add [bp+si],bl
000001E8  8C6194            mov [bx+di-0x6c],fs
000001EB  98                cbw
000001EC  91                xchg ax,cx
000001ED  8001A3            add byte [bx+di],0xa3
000001F0  8C01              mov [bx+di],es
000001F2  004F8D            add [bx-0x73],cl
000001F5  36B8A2A3          ss mov ax,0xa3a2
000001F9  9B005801          wait add [bx+si+0x1],bl
000001FD  7C96              jl 0x195
000001FF  9BFC              wait cld
00000201  00809DC0          add [bx+si-0x3f63],al
00000205  00F1              add cl,dh
00000207  CE                into
00000208  0D9B00            or ax,0x9b
0000020B  D6                salc
0000020C  9BFD              wait std
0000020E  80B6002318        xor byte [bp+0x2300],0x18
00000213  3000              xor [bx+si],al
00000215  3001              xor [bx+di],al
00000217  3A0C              cmp cl,[si]
00000219  06                push es
0000021A  000A              add [bp+si],cl
0000021C  95                xchg ax,bp
0000021D  0C18              or al,0x18
0000021F  AB                stosw
00000220  007967            add [bx+di+0x67],bh
00000223  309B0000          xor [bp+di+0x0],bl
00000227  99                cwd
00000228  002F              add [bx],ch
0000022A  0C1C              or al,0x1c
0000022C  0001              add [bx+di],al
0000022E  9C                pushf
0000022F  B90C0C            mov cx,0xc0c
00000232  90                nop
00000233  BE0C06            mov si,0x60c
00000236  F7903006          not word [bx+si+0x630]
0000023A  00B9A306          add [bx+di+0x6a3],bh
0000023E  30B90044          xor [bx+di+0x4400],bh
00000242  0C60              or al,0x60
00000244  DF                db 0xdf
00000245  FE00              inc byte [bx+si]
00000247  7A3B              jpe 0x284
00000249  0300              add ax,[bx+si]
0000024B  41                inc cx
0000024C  9C                pushf
0000024D  005BF4            add [bp+di-0xc],bl
00000250  187001            sbb [bx+si+0x1],dh
00000253  0B9B00B4          or bx,[bp+di-0x4c00]
00000257  18989702          sbb [bx+si+0x297],bl
0000025B  61                popa
0000025C  0106004A          add [0x4a00],ax
00000260  0232              add dh,[bp+si]
00000262  3600FF            ss add bh,bh
00000265  40                inc ax
00000266  A1FFC0            mov ax,[0xc0ff]
00000269  0000              add [bx+si],al
0000026B  0000              add [bx+si],al
0000026D  0000              add [bx+si],al
0000026F  0000              add [bx+si],al
00000271  06                push es
00000272  FFC0              inc ax
00000274  0050D8            add [bx+si-0x28],dl
00000277  9A9A8D8E18        call 0x188e:0x8d9a
0000027C  8C8B8A96          mov [bp+di-0x6976],cs
00000280  01C3              add bx,ax
00000282  A39280            mov [0x8092],ax
00000285  3191A698          xor [bx+di-0x675a],dx
00000289  0C0C              or al,0xc
0000028B  BF9D06            mov di,0x69d
0000028E  0CC0              or al,0xc0
00000290  D318              rcr word [bx+si],cl
00000292  0C93              or al,0x93
00000294  DA0C              fimul dword [si]
00000296  3091B718          xor [bx+di+0x18b7],dl
0000029A  0CAE              or al,0xae
0000029C  C83030D8          enter 0x3030,0xd8
000002A0  DDC0              ffree st0
000002A2  C19BB48061        rcr word [bp+di-0x7f4c],byte 0x61
000002A7  0101              add [bx+di],ax
000002A9  00FC              add ah,bh
000002AB  99                cwd
000002AC  30C0              xor al,al
000002AE  9C                pushf
000002AF  60                pusha
000002B0  C09EA53030        rcr byte [bp+0x30a5],byte 0x30
000002B5  0176C7            add [bp-0x39],si
000002B8  B730              mov bh,0x30
000002BA  0C99              or al,0x99
000002BC  9E                sahf
000002BD  0C0C              or al,0xc
000002BF  CB                retf
000002C0  C9                leave
000002C1  60                pusha
000002C2  C0CA0C            ror dl,byte 0xc
000002C5  1801              sbb [bx+di],al
000002C7  4D                dec bp
000002C8  92                xchg ax,dx
000002C9  00920E86          add [bp+si-0x79f2],dl
000002CD  9B01DA            wait add dx,bx
000002D0  01E8              add ax,bp
000002D2  61                popa
000002D3  00AEFFC0          add [bp-0x3f01],ch
000002D7  0000              add [bx+si],al
000002D9  0000              add [bx+si],al
000002DB  0000              add [bx+si],al
000002DD  0000              add [bx+si],al
000002DF  0CFD              or al,0xfd
000002E1  800000            add byte [bx+si],0x0
000002E4  0000              add [bx+si],al
000002E6  B89989            mov ax,0x8999
000002E9  01CC              add sp,cx
000002EB  8D8F8CC1          lea cx,[bx-0x3e74]
000002EF  9B8A9B0033        wait mov bl,[bp+di+0x3300]
000002F4  92                xchg ax,dx
000002F5  8F                db 0x8f
000002F6  B4D8              mov ah,0xd8
000002F8  8600              xchg al,[bx+si]
000002FA  0E                push cs
000002FB  003EC761          add [0x61c7],bh
000002FF  C0A1981818        shl byte [bx+di+0x1898],byte 0x18
00000304  96                xchg ax,si
00000305  D4A3              aam 0xa3
00000307  C3                ret
00000308  8090C2C130        adc byte [bx+si-0x3e3e],0x30
0000030D  B6AA              mov dh,0xaa
0000030F  008AC380          add [bp+si-0x7f3d],cl
00000313  BBD203            mov bx,0x3d2
00000316  339AEC01          xor bx,[bp+si+0x1ec]
0000031A  27                daa
0000031B  DD80C199          fld qword [bx+si-0x663f]
0000031F  60                pusha
00000320  0CB4              or al,0xb4
00000322  015FA2            add [bx-0x5e],bx
00000325  60                pusha
00000326  1801              sbb [bx+di],al
00000328  9C                pushf
00000329  92                xchg ax,dx
0000032A  0C60              or al,0x60
0000032C  C7                db 0xc7
0000032D  B1C0              mov cl,0xc0
0000032F  C7                db 0xc7
00000330  99                cwd
00000331  003B              add [bp+di],bh
00000333  00F6              add dh,dh
00000335  0006B401          add [0x1b4],al
00000339  9B3660            ss wait pusha
0000033C  000D              add [di],cl
0000033E  B1F1              mov cl,0xf1
00000340  800D00            or byte [di],0x0
00000343  5C                pop sp
00000344  FC                cld
00000345  0000              add [bx+si],al
00000347  00E0              add al,ah
00000349  9F                lahf
0000034A  8928              mov [bx+si],bp
0000034C  50                push ax
0000034D  1E                push ds
0000034E  1D891E            sbb ax,0x1e89
00000351  99                cwd
00000352  FD                std
00000353  800000            add byte [bx+si],0x0
00000356  00D6              add dh,dl
00000358  0902              or [bp+si],ax
0000035A  691CAD97          imul bx,[si],word 0x97ad
0000035E  89F7              mov di,si
00000360  F8                clc
00000361  16                push ss
00000362  07                pop es
00000363  8914              mov [si],dx
00000365  0017              add [bx],dl
00000367  08FD              or ch,bh
00000369  41                inc cx
0000036A  44                inc sp
0000036B  60                pusha
0000036C  D804              fadd dword [si]
0000036E  A6                cmpsb
0000036F  FC                cld
00000370  42                inc dx
00000371  59                pop cx
00000372  2A04              sub al,[si]
00000374  A6                cmpsb
00000375  0817              or [bx],dl
00000377  025E14            add bl,[bp+0x14]
0000037A  07                pop es
0000037B  09F7              or di,si
0000037D  098A1330          or [bp+si+0x3013],cx
00000381  897C07            mov [si+0x7],di
00000384  C29902            ret 0x299
00000387  881C              mov [si],bl
00000389  FFC1              inc cx
0000038B  3900              cmp [bx+si],ax
0000038D  66023C            o32 add bh,[si]
00000390  0000              add [bx+si],al
00000392  055717            add ax,0x1757
00000395  0802              or [bp+si],al
00000397  82                db 0x82
00000398  1E                push ds
00000399  A6                cmpsb
0000039A  14C2              adc al,0xc2
0000039C  02627E            add ah,[bp+si+0x7e]
0000039F  1A13              sbb dl,[bp+di]
000003A1  8930              mov [bx+si],si
000003A3  0000              add [bx+si],al
000003A5  C21608            ret 0x816
000003A8  02DE              add bl,dh
000003AA  700C              jo 0x3b8
000003AC  98                cbw
000003AD  8B96B001          mov dx,[bp+0x1b0]
000003B1  89983606          mov [bx+si+0x636],bx
000003B5  8F                db 0x8f
000003B6  95                xchg ax,bp
000003B7  A08CC1            mov al,[0xc18c]
000003BA  00668D            add [bp-0x73],ah
000003BD  1930              sbb [bx+si],si
000003BF  98                cbw
000003C0  00969800          add [bp+0x98],dl
000003C4  0F06              clts
000003C6  0CD8              or al,0xd8
000003C8  8F                db 0x8f
000003C9  30CC              xor ah,cl
000003CB  C500              lds ax,[bx+si]
000003CD  82                db 0x82
000003CE  C03895            sar byte [bx+si],byte 0x95
000003D1  8F                db 0x8f
000003D2  1E                push ds
000003D3  0436              add al,0x36
000003D5  3080BF71          xor [bx+si+0x71bf],al
000003D9  1CA3              sbb al,0xa3
000003DB  1E                push ds
000003DC  891F              mov [bx],bx
000003DE  CA0C66            retf 0x660c
000003E1  C8015596          enter 0x5501,0x96
000003E5  C0C004            rol al,byte 0x4
000003E8  C3                ret
000003E9  B9311E            mov cx,0x1e31
000003EC  01A51E02          add [di+0x21e],sp
000003F0  7302              jnc 0x3f4
000003F2  3C04              cmp al,0x4
000003F4  B2D8              mov dl,0xd8
000003F6  CC                int3
000003F7  04AD              add al,0xad
000003F9  A9BEC6            test ax,0xc6be
000003FC  98                cbw
000003FD  AA                stosb
000003FE  003B              add [bp+di],bh
00000400  005702            add [bx+0x2],dl
00000403  DE61CC            fisub word [bx+di-0x34]
00000406  F7                db 0xf7
00000407  8B02              mov ax,[bp+si]
00000409  5E                pop si
0000040A  0C8C              or al,0x8c
0000040C  8C938963          mov [bp+di+0x6389],ss
00000410  001EFB98          add [0x98fb],bl
00000414  1B30              sbb si,[bx+si]
00000416  FE4000            inc byte [bx+si+0x0]
00000419  AD                lodsw
0000041A  B5C0              mov ch,0xc0
0000041C  40                inc ax
0000041D  006ADF            add [bp+si-0x21],ch
00000420  2F                das
00000421  7118              jno 0x43b
00000423  89DE              mov si,bx
00000425  01A08970          add [bx+si+0x7089],sp
00000429  301E01CC          xor [0xcc01],bl
0000042D  C8386C1E          enter 0x6c38,0x1e
00000431  0440              add al,0x40
00000433  0157DD            add [bx-0x23],dx
00000436  C018B4            rcr byte [bx+si],byte 0xb4
00000439  A3478D            mov [0x8d47],ax
0000043C  17                pop ss
0000043D  8919              mov [bx+di],bx
0000043F  1C02              sbb al,0x2
00000441  8700              xchg ax,[bx+si]
00000443  01C1              add cx,ax
00000445  C0D804            rcr al,byte 0x4
00000448  C3                ret
00000449  C6                db 0xc6
0000044A  DBCC              fcmovne st4
0000044C  E41E              in al,0x1e
0000044E  FD                std
0000044F  C11BC2            rcr word [bp+di],byte 0xc2
00000452  16                push ss
00000453  1CC4              sbb al,0xc4
00000455  6D                insw
00000456  D81C              fcomp dword [si]
00000458  BEFE81            mov si,0x81fe
0000045B  3D02DF            cmp ax,0xdf02
0000045E  FD                std
0000045F  40                inc ax
00000460  ED                in ax,dx
00000461  CC                int3
00000462  E001              loopne 0x465
00000464  790A              jns 0x470
00000466  58                pop ax
00000467  01CF              add di,cx
00000469  98                cbw
0000046A  FC                cld
0000046B  C0A9C32100        shr byte [bx+di+0x21c3],byte 0x0
00000470  001E004A          add [0x4a00],bl
00000474  1CD3              sbb al,0xd3
00000476  D2E8              shr al,cl
00000478  157389            adc ax,0x8973
0000047B  D2D0              rcl al,cl
0000047D  0B17              or dx,[bx]
0000047F  00FD              add ch,bh
00000481  1E                push ds
00000482  01D0              add ax,dx
00000484  60                pusha
00000485  36025501          add dl,[ss:di+0x1]
00000489  0101              add [bx+di],ax
0000048B  88D8              mov al,bl
0000048D  60                pusha
0000048E  01569F            add [bp-0x61],dx
00000491  0130              add [bx+si],si
00000493  8CA2A313          mov [bp+si+0x13a3],fs
00000497  1489              adc al,0x89
00000499  07                pop es
0000049A  16                push ss
0000049B  4C                dec sp
0000049C  6302              arpl [bp+si],ax
0000049E  8600              xchg al,[bx+si]
000004A0  D41E              aam 0x1e
000004A2  1C18              sbb al,0x18
000004A4  EC                in al,dx
000004A5  020B              add cl,[bp+di]
000004A7  60                pusha
000004A8  53                push bx
000004A9  CC                int3
000004AA  FA                cli
000004AB  1D1800            sbb ax,0x18
000004AE  2A7CAF            sub bh,[si-0x51]
000004B1  12890044          adc cl,[bx+di+0x4400]
000004B5  17                pop ss
000004B6  D11E17FF          rcr word [0xff17],1
000004BA  C13BC1            sar word [bp+di],byte 0xc1
000004BD  2002              and [bp+si],al
000004BF  DF00              fild word [bx+si]
000004C1  011C              add [si],bx
000004C3  17                pop ss
000004C4  1413              adc al,0x13
000004C6  99                cwd
000004C7  B1E1              mov cl,0xe1
000004C9  0A5803            or bl,[bx+si+0x3]
000004CC  70FC              jo 0x4ca
000004CE  41                inc cx
000004CF  3B03              cmp ax,[bp+di]
000004D1  07                pop es
000004D2  DD08              fisttp qword [bx+si]
000004D4  8907              mov [bx],ax
000004D6  02360321          add dh,[0x2103]
000004DA  0411              add al,0x11
000004DC  1431              adc al,0x31
000004DE  3233              xor dh,[bp+di]
000004E0  3433              xor al,0x33
000004E2  3231              xor dh,[bx+di]
000004E4  00FC              add ah,bh
000004E6  38061F02          cmp [0x21f],al
000004EA  1D03AD            sbb ax,0xad03
000004ED  0A18              or bl,[bx+si]
000004EF  1E                push ds
000004F0  1804              sbb [si],al
000004F2  049F              add al,0x9f
000004F4  6C                insb
000004F5  C00131            rol byte [bx+di],byte 0x31
000004F8  A00C06            mov al,[0x60c]
000004FB  027F89            add bh,[bx-0x77]
000004FE  0314              add dx,[si]
00000500  A20417            mov [0x1704],al
00000503  F8                clc
00000504  F8                clc
00000505  8C8B89FC          mov [bp+di-0x377],cs
00000509  80F01A            xor al,0x1a
0000050C  17                pop ss
0000050D  1313              adc dx,[bp+di]
0000050F  0260BD            add ah,[bx+si-0x43]
00000512  98                cbw
00000513  30898B89          xor [bx+di-0x7675],cl
00000517  005414            add [si+0x14],dl
0000051A  081F              or [bx],bl
0000051C  0814              or [si],dl
0000051E  3030              xor [bx+si],dh
00000520  FF01              inc word [bx+di]
00000522  40                inc ax
00000523  9E                sahf
00000524  61                popa
00000525  1E                push ds
00000526  17                pop ss
00000527  1200              adc al,[bx+si]
00000529  B003              mov al,0x3
0000052B  7000              jo 0x52d
0000052D  47                inc di
0000052E  015409            add [si+0x9],dx
00000531  48                dec ax
00000532  CE                into
00000533  D1                db 0xd1
00000534  3331              xor si,[bx+di]
00000536  00B3081E          add [bp+di+0x1e08],dh
0000053A  1F                pop ds
0000053B  1E                push ds
0000053C  04B1              add al,0xb1
0000053E  0C5F              or al,0x5f
00000540  01E6              add si,sp
00000542  31890049          xor [bx+di+0x4900],cx
00000546  17                pop ss
00000547  0803              or [bp+di],al
00000549  6218              bound bx,[bx+si]
0000054B  06                push es
0000054C  53                push bx
0000054D  1307              adc ax,[bx]
0000054F  181D              sbb [di],bl
00000551  98                cbw
00000552  1D0704            sbb ax,0x407
00000555  44                inc sp
00000556  C006015904        rol byte [0x5901],byte 0x4
0000055B  39C3              cmp bx,ax
0000055D  3102              xor [bp+si],ax
0000055F  7F13              jg 0x574
00000561  A4                movsb
00000562  06                push es
00000563  F0138AF312        lock adc cx,[bp+si+0x12f3]
00000568  8B8C0909          mov cx,[si+0x909]
0000056C  8C8B12FC          mov [bp+di-0x3ee],cs
00000570  009614F5          add [bp-0xaec],dl
00000574  7DF5              jnl 0x56b
00000576  F5                cmc
00000577  8030B6            xor byte [bx+si],0xb6
0000057A  0C1F              or al,0x1f
0000057C  B400              mov ah,0x0
0000057E  55                push bp
0000057F  0122              add [bp+si],sp
00000581  1983FD82          sbb [bp+di-0x7d03],ax
00000585  7E05              jng 0x58c
00000587  60                pusha
00000588  0000              add [bx+si],al
0000058A  6207              bound ax,[bx]
0000058C  0814              or [si],dl
0000058E  00B00CE1          add [bx+si-0x1ef4],dh
00000592  1E                push ds
00000593  05420A            add ax,0xa42
00000596  8C07              mov [bx],es
00000598  07                pop es
00000599  049D              add al,0x9d
0000059B  00B2D480          add [bp+si-0x7f2c],dh
0000059F  1418              adc al,0x18
000005A1  0818              or [bx+si],bl
000005A3  FF04              inc word [si]
000005A5  47                inc di
000005A6  07                pop es
000005A7  1907              sbb [bx],ax
000005A9  027A10            add bh,[bp+si+0x10]
000005AC  60                pusha
000005AD  8A09              mov cl,[bx+di]
000005AF  F7F8              idiv ax
000005B1  F8                clc
000005B2  1D1C16            sbb ax,0x161c
000005B5  C20392            ret 0x9203
000005B8  D801              fadd dword [bx+di]
000005BA  0108              add [bx+si],cx
000005BC  089F8AED          or [bx-0x1276],bl
000005C0  3012              xor [bp+si],dl
000005C2  028104A1          add al,[bx+di-0x5efc]
000005C6  02801D01          add al,[bx+si+0x11d]
000005CA  F2B4A5            repne mov ah,0xa5
000005CD  128B0989          adc cl,[bp+di-0x76f7]
000005D1  FC                cld
000005D2  41                inc cx
000005D3  3F                aas
000005D4  13F4              adc si,sp
000005D6  85878906          test [bx+0x689],ax
000005DA  8C85F413          mov [di+0x13f4],es
000005DE  CC                int3
000005DF  B40D              mov ah,0xd
000005E1  60                pusha
000005E2  005501            add [di+0x1],dl
000005E5  22FC              and bh,ah
000005E7  40                inc ax
000005E8  DCA3F801          fsub qword [bp+di+0x1f8]
000005EC  B107              mov cl,0x7
000005EE  1D021E            sbb ax,0x1e02
000005F1  97                xchg ax,di
000005F2  8A061B8B          mov al,[0x8b1b]
000005F6  90                nop
000005F7  03CB              add cx,bx
000005F9  00B1C3D9          add [bx+di-0x263d],dh
000005FD  050697            add ax,0x9706
00000600  AF                scasw
00000601  8BF6              mov si,si
00000603  06                push es
00000604  01BE071B          add [bp+0x1b07],di
00000608  0CFD              or al,0xfd
0000060A  8140301418        add word [bx+si+0x30],0x1814
0000060F  0B5097            or dx,[bx+si-0x69]
00000612  EA12FC413F        jmp 0x3f41:0xfc12
00000617  138CF793          adc cx,[si-0x6c09]
0000061B  89F7              mov di,si
0000061D  F7C407C4          test sp,0xc407
00000621  E0A6              loopne 0x5c9
00000623  8903              mov [bp+di],ax
00000625  92                xchg ax,dx
00000626  02811416          add al,[bx+di+0x1614]
0000062A  00C3              add bl,al
0000062C  9F                lahf
0000062D  028134D8          add al,[bx+di-0x27cc]
00000631  07                pop es
00000632  1F                pop ds
00000633  C2171A            ret 0x1a17
00000636  D4FD              aam 0xfd
00000638  82                db 0x82
00000639  7F56              jg 0x691
0000063B  3002              xor [bp+si],al
0000063D  7C89              jl 0x5c8
0000063F  877E02            xchg di,[bp+0x2]
00000642  8004FF            add byte [si],0xff
00000645  60                pusha
00000646  33FC              xor di,sp
00000648  013F              add [bx],di
0000064A  0989068B          or [bx+di-0x74fa],cx
0000064E  4C                dec sp
0000064F  8398161817        sbb word [bx+si+0x1816],byte +0x17
00000654  CAF20D            retf 0xdf2
00000657  07                pop es
00000658  1D021F            sbb ax,0x1f02
0000065B  97                xchg ax,di
0000065C  0001              add [bx+di],al
0000065E  06                push es
0000065F  7800              js 0x661
00000661  B033              mov al,0x33
00000663  60                pusha
00000664  07                pop es
00000665  25AA04            and ax,0x4aa
00000668  3D4D01            cmp ax,0x14d
0000066B  3233              xor dh,[bp+di]
0000066D  0C89              or al,0x89
0000066F  3332              xor si,[bp+si]
00000671  0230              add dh,[bx+si]
00000673  2C61              sub al,0x61
00000675  06                push es
00000676  E5C2              in ax,0xc2
00000678  07                pop es
00000679  1818              sbb [bx+si],bl
0000067B  01DA              add dx,bx
0000067D  01D6              add si,dx
0000067F  A3BF08            mov [0x8bf],ax
00000682  EF                out dx,ax
00000683  C213C2            ret 0xc213
00000686  FD                std
00000687  80AD8A027D        sub byte [di+0x28a],0x7d
0000068C  896686            mov [bp-0x7a],sp
0000068F  F7                db 0xf7
00000690  8B07              mov ax,[bx]
00000692  025202            add dl,[bp+si+0x2]
00000695  1A01              sbb al,[bx+di]
00000697  141D              adc al,0x1d
00000699  36DC161318        fcom qword [ss:0x1813]
0000069E  DD890612          fisttp qword [bx+di+0x1206]
000006A2  DF14              fist word [si]
000006A4  1816C205          sbb [0x5c2],dl
000006A8  61                popa
000006A9  D6                salc
000006AA  14FC              adc al,0xfc
000006AC  04FF              add al,0xff
000006AE  12808502          adc al,[bx+si+0x285]
000006B2  7E85              jng 0x639
000006B4  80D788            adc bh,0x88
000006B7  361417            ss adc al,0x17
000006BA  F8                clc
000006BB  F6F8              idiv al
000006BD  16                push ss
000006BE  FE01              inc byte [bx+di]
000006C0  3F                aas
000006C1  0D730E            or ax,0xe73
000006C4  2646              es inc si
000006C6  0F09              wbinvd
000006C8  18161819          sbb [0x1918],dl
000006CC  F304FF            rep add al,0xff
000006CF  C7                db 0xc7
000006D0  0E                push cs
000006D1  97                xchg ax,di
000006D2  0001              add [bx+di],al
000006D4  0A858901          or al,[di+0x189]
000006D8  07                pop es
000006D9  D8600B            fsub dword [bx+si+0xb]
000006DC  85A9090D          test [bx+di+0xd09],bp
000006E0  1F                pop ds
000006E1  07                pop es
000006E2  3104              xor [si],ax
000006E4  FA                cli
000006E5  8934              mov [si],si
000006E7  0A05              or al,[di]
000006E9  4C                dec sp
000006EA  150A79            adc ax,0x790a
000006ED  1212              adc dl,[bp+si]
000006EF  B81814            mov ax,0x1418
000006F2  09A836F6          or [bx+si-0x9ca],bp
000006F6  8901              mov [bx+di],ax
000006F8  F29E              repne sahf
000006FA  14FD              adc al,0xfd
000006FC  40                inc ax
000006FD  AD                lodsw
000006FE  866213            xchg ah,[bp+si+0x13]
00000701  09938909          or [bp+di+0x989],dx
00000705  1402              adc al,0x2
00000707  80071B            add byte [bx],0x1b
0000070A  86C1              xchg al,cl
0000070C  06                push es
0000070D  1402              adc al,0x2
0000070F  F8                clc
00000710  0003              add [bp+di],al
00000712  0AE2              or ah,dl
00000714  F5                cmc
00000715  1C8C              sbb al,0x8c
00000717  120EA906          adc cl,[0x6a9]
0000071B  D919              fstp dword [bx+di]
0000071D  4C                dec sp
0000071E  04FC              add al,0xfc
00000720  050109            add ax,0x901
00000723  2A9F1EC1          sub bl,[bx-0x3ee2]
00000727  0008              add [bx+si],cl
00000729  2901              sub [bx+di],ax
0000072B  22852B14          and al,[di+0x142b]
0000072F  1A04              sbb al,[si]
00000731  689710            push word 0x1097
00000734  8B19              mov bx,[bx+di]
00000736  16                push ss
00000737  092C              or [si],bp
00000739  D80C              fmul dword [si]
0000073B  FC                cld
0000073C  013F              add [bx],di
0000073E  0B4901            or cx,[bx+di+0x1]
00000741  06                push es
00000742  0C63              or al,0x63
00000744  0CDF              or al,0xdf
00000746  054102            add ax,0x241
00000749  7E87              jng 0x6d2
0000074B  010C              add [si],cx
0000074D  8902              mov [bp+si],ax
0000074F  7ECA              jng 0x71b
00000751  8712              xchg dx,[bp+si]
00000753  8A05              mov al,[di]
00000755  788A              js 0x6e1
00000757  C804261F          enter 0x2604,0x1f
0000075B  06                push es
0000075C  12060714          adc al,[0x1407]
00000760  D901              fld dword [bx+di]
00000762  44                inc sp
00000763  039C027F          add bx,[si+0x7f02]
00000767  F7027E62          test word [bp+si],0x627e
0000076B  60                pusha
0000076C  F713              not word [bp+di]
0000076E  021E04FF          add bl,[0xff04]
00000772  FEC5              inc ch
00000774  4C                dec sp
00000775  46                inc si
00000776  350EE6            xor ax,0xe60e
00000779  1813              sbb [bp+di],dl
0000077B  FC                cld
0000077C  813F1319          cmp word [bx],0x1913
00000780  1F                pop ds
00000781  06                push es
00000782  9A0E0C3005        call 0x530:0xc0e
00000787  8B0C              mov cx,[si]
00000789  40                inc ax
0000078A  036E02            add bp,[bp+0x2]
0000078D  3A1C              cmp bl,[si]
0000078F  0040FC            add [bx+si-0x4],al
00000792  013F              add [bx],di
00000794  350C1D            xor ax,0x1d0c
00000797  07                pop es
00000798  FE07              inc byte [bx]
0000079A  B002              mov al,0x2
0000079C  7F04              jg 0x7a2
0000079E  FF66CE            jmp [bp-0x32]
000007A1  084903            or [bx+di+0x3],cl
000007A4  2F                das
000007A5  8904              mov [si],ax
000007A7  6461              fs popa
000007A9  30890426          xor [bx+di+0x2604],cl
000007AD  04FE              add al,0xfe
000007AF  01CE              add si,cx
000007B1  1830              sbb [bx+si],dh
000007B3  015B04            add [bp+di+0x4],bx
000007B6  FE                db 0xfe
000007B7  D8C0              fadd st0
000007B9  B5A5              mov ch,0xa5
000007BB  60                pusha
000007BC  FC                cld
000007BD  09FE              or si,di
000007BF  FC                cld
000007C0  013F              add [bx],di
000007C2  C29F1A            ret 0x1a9f
000007C5  ED                in ax,dx
000007C6  60                pusha
000007C7  8004FF            add byte [si],0xff
000007CA  310C              xor [si],cx
000007CC  0239              add bh,[bx+di]
000007CE  116705            adc [bx+0x5],sp
000007D1  8AC6              mov al,dh
000007D3  B611              mov dh,0x11
000007D5  A0FC42            mov al,[0x42fc]
000007D8  5C                pop sp
000007D9  FE413F            inc byte [bx+di+0x3f]
000007DC  FE09              dec byte [bx+di]
000007DE  0199C102          add [bx+di+0x2c1],bx
000007E2  8102C209          add word [bp+si],0x9c2
000007E6  FE                db 0xfe
000007E7  98                cbw
000007E8  99                cwd
000007E9  08491C            or [bx+di+0x1c],cl
000007EC  680463            push word 0x6304
000007EF  0467              add al,0x67
000007F1  61                popa
000007F2  A6                cmpsb
000007F3  01A609FE          add [bp-0x1f7],sp
000007F7  02C9              add cl,cl
000007F9  181A              sbb [bp+si],bl
000007FB  871B              xchg bx,[bp+di]
000007FD  07                pop es
000007FE  FD                std
000007FF  00AD09FF          add [di-0xf7],ch
00000803  8AA50782          mov ah,[di-0x7df9]
00000807  DF1C              fistp word [si]
00000809  89FC              mov sp,di
0000080B  84CD              test ch,cl
0000080D  FD                std
0000080E  C3                ret
0000080F  BF002A            mov di,0x2a00
00000812  190D              sbb [di],cx
00000814  8A33              mov dh,[bp+di]
00000816  6309              arpl [bx+di],cx
00000818  FF02              inc word [bp+si]
0000081A  7E09              jng 0x825
0000081C  FE02              inc byte [bp+si]
0000081E  3A05              cmp al,[di]
00000820  06                push es
00000821  96                xchg ax,si
00000822  96                xchg ax,si
00000823  0229              add ch,[bx+di]
00000825  030A              add cx,[bp+si]
00000827  0C30              or al,0x30
00000829  023E027F          add bh,[0x7f02]
0000082D  306C05            xor [si+0x5],ch
00000830  3DD089            cmp ax,0x89d0
00000833  86ED              xchg ch,ch
00000835  8EFE              mov segr7,si
00000837  8B800281          mov ax,[bx+si-0x7efe]
0000083B  96                xchg ax,si
0000083C  027E06            add bh,[bp+0x6]
0000083F  1B0EFE08          sbb cx,[0x8fe]
00000843  48                dec ax
00000844  C6                db 0xc6
00000845  D6                salc
00000846  66084208          o32 or [bp+si+0x8],al
0000084A  16                push ss
0000084B  1304              adc ax,[si]
0000084D  FD                std
0000084E  096601            or [bp+0x1],sp
00000851  1B686A            sbb bp,[bx+si+0x6a]
00000854  1207              adc al,[bx]
00000856  16                push ss
00000857  199D1C07          sbb [di+0x71c],bx
0000085B  FD                std
0000085C  82                db 0x82
0000085D  330EFE34          xor cx,[0x34fe]
00000861  B68C              mov dh,0x8c
00000863  1330              adc si,[bx+si]
00000865  0281FC04          add al,[bx+di+0x4fc]
00000869  49                dec cx
0000086A  FC                cld
0000086B  07                pop es
0000086C  EE                out dx,al
0000086D  0324              add sp,[si]
0000086F  16                push ss
00000870  016E14            add [bp+0x14],bp
00000873  1A1A              sbb bl,[bp+si]
00000875  140E              adc al,0xe
00000877  FFB0B102          push word [bx+si+0x2b1]
0000087B  7F0E              jg 0x88b
0000087D  FF01              inc word [bx+di]
0000087F  FC                cld
00000880  6D                insw
00000881  1801              sbb [bx+di],al
00000883  E78B              out 0x8b,ax
00000885  0465              add al,0x65
00000887  008C9B99          add [si-0x6665],cl
0000088B  027E02            add bh,[bp+0x2]
0000088E  2F                das
0000088F  024189            add al,[bx+di-0x77]
00000892  810204BA          add word [bp+si],0xba04
00000896  1408              adc al,0x8
00000898  9F                lahf
00000899  06                push es
0000089A  3089077D          xor [bx+di+0x7d07],cl
0000089E  180C              sbb [si],cl
000008A0  07                pop es
000008A1  2D186A            sub ax,0x6a18
000008A4  06                push es
000008A5  DBCC              fcmovne st4
000008A7  0280896C          add al,[bx+si+0x6c89]
000008AB  0011              add [bx+di],dl
000008AD  7CEE              jl 0x89d
000008AF  C705C308          mov word [di],0x8c3
000008B3  07                pop es
000008B4  04FE              add al,0xfe
000008B6  011A              add [bp+si],bx
000008B8  0C03              or al,0x3
000008BA  216300            and [bp+di+0x0],sp
000008BD  C01180            rcl byte [bx+di],byte 0x80
000008C0  38C6              cmp dh,al
000008C2  8A24              mov ah,[si]
000008C4  5F                pop di
000008C5  0281B015          add al,[bx+di+0x15b0]
000008C9  0000              add [bx+si],al
000008CB  FC                cld
000008CC  06                push es
000008CD  45                inc bp
000008CE  FC                cld
000008CF  83BE071A04        cmp word [bp+0x1a07],byte +0x4
000008D4  1B8C0211          sbb cx,[si+0x1102]
000008D8  80F513            xor ch,0x13
000008DB  A7                cmpsw
000008DC  1C18              sbb al,0x18
000008DE  1D0229            sbb ax,0x2902
000008E1  058C30            add ax,0x308c
000008E4  1B04              sbb ax,[si]
000008E6  3300              xor ax,[bx+si]
000008E8  0104              add [si],ax
000008EA  BD6C1B            mov bp,0x1b6c
000008ED  02FF              add bh,bh
000008EF  FE413F            inc byte [bx+di+0x3f]
000008F2  C7                db 0xc7
000008F3  0F                db 0x0f
000008F4  71C3              jno 0x8b9
000008F6  3002              xor [bp+si],al
000008F8  870B              xchg cx,[bp+di]
000008FA  2118              and [bx+si],bx
000008FC  9C                pushf
000008FD  0C76              or al,0x76
000008FF  027FE8            add bh,[bx-0x18]
00000902  8A09              mov cl,[bx+di]
00000904  FE0C              dec byte [si]
00000906  1B01              sbb ax,[bx+di]
00000908  1A02              sbb al,[bp+si]
0000090A  E800C0            call 0xc90d
0000090D  D860FC            fsub dword [bx+si-0x4]
00000910  00F4              add ah,dh
00000912  245E              and al,0x5e
00000914  FD                std
00000915  014085            add [bx+si-0x7b],ax
00000918  0113              add [bp+di],dx
0000091A  16                push ss
0000091B  002C              add [si],ch
0000091D  07                pop es
0000091E  7C6C              jl 0x98c
00000920  3003              xor [bp+di],al
00000922  F9                stc
00000923  0858C1            or [bx+si-0x3f],bl
00000926  648080F4F57E      add byte [fs:bx+si-0xa0c],0x7e
0000092C  19B13118          sbb [bx+di+0x1831],si
00000930  047E              add al,0x7e
00000932  0227              add ah,[bx]
00000934  02E3              add ah,bl
00000936  98                cbw
00000937  811EF0023F61      sbb word [0x2f0],0x613f
0000093D  1F                pop ds
0000093E  1C84              sbb al,0x84
00000940  111F              adc [bx],bx
00000942  96                xchg ax,si
00000943  FE813F02          inc byte [bx+di+0x23f]
00000947  3003              xor [bp+di],al
00000949  0323              add sp,[bp+di]
0000094B  A301AB            mov [0xab01],ax
0000094E  0CE6              or al,0xe6
00000950  027FE8            add bh,[bx-0x18]
00000953  8B0EFF0C          mov cx,[0xcff]
00000957  C3                ret
00000958  024005            add al,[bx+si+0x5]
0000095B  CE                into
0000095C  8CC3              mov bx,es
0000095E  1D4406            sbb ax,0x644
00000961  43                inc bx
00000962  C211C0            ret 0xc011
00000965  C06C0001          shr byte [si+0x0],byte 0x1
00000969  00D4              add ah,dl
0000096B  021F              add bl,[bx]
0000096D  0109              add [bx+di],cx
0000096F  06                push es
00000970  3002              xor [bp+si],al
00000972  AE                scasb
00000973  07                pop es
00000974  7DC0              jnl 0x936
00000976  1C05              sbb al,0x5
00000978  E51C              in ax,0x1c
0000097A  03416C            add ax,[bx+di+0x6c]
0000097D  3012              xor [bp+si],dl
0000097F  A6                cmpsb
00000980  036504            add sp,[di+0x4]
00000983  8006750727        add byte [0x775],0x27
00000988  07                pop es
00000989  1C0E              sbb al,0xe
0000098B  C3                ret
0000098C  311C              xor [si],bx
0000098E  D2CC              ror ah,cl
00000990  C00BB6            ror byte [bp+di],byte 0xb6
00000993  02841860          add al,[si+0x6018]
00000997  2431              and al,0x31
00000999  02B204FE          add dh,[bp+si-0x1fc]
0000099D  001F              add [bx],bl
0000099F  0800              or [bx+si],al
000009A1  6B0283            imul ax,[bp+si],byte -0x7d
000009A4  030C              add cx,[si]
000009A6  017C08            add [si+0x8],di
000009A9  0D9403            or ax,0x394
000009AC  0807              or [bx],al
000009AE  13FF              adc di,di
000009B0  3002              xor [bp+si],al
000009B2  7EA7              jng 0x95b
000009B4  381E1504          cmp [0x415],bl
000009B8  16                push ss
000009B9  17                pop ss
000009BA  2302              and ax,[bp+si]
000009BC  16                push ss
000009BD  16                push ss
000009BE  C06C0AFF          shr byte [si+0xa],byte 0xff
000009C2  014017            add [bx+si+0x17],ax
000009C5  EA1919B90C        jmp 0xcb9:0x1919
000009CA  3004              xor [si],al
000009CC  DB05              fild dword [di]
000009CE  93                xchg ax,bx
000009CF  60                pusha
000009D0  0C04              or al,0x4
000009D2  3910              cmp [bx+si],dx
000009D4  99                cwd
000009D5  186009            sbb [bx+si+0x9],ah
000009D8  BEAC06            mov si,0x6ac
000009DB  661124            adc [si],esp
000009DE  9A981BB60B        call 0xbb6:0x1b98
000009E3  B41A              mov ah,0x1a
000009E5  B31A              mov bl,0x1a
000009E7  F714              not word [si]
000009E9  51                push cx
000009EA  86839F1F          xchg al,[bp+di+0x1f9f]
000009EE  96                xchg ax,si
000009EF  040A              add al,0xa
000009F1  1D02A9            sbb ax,0xa902
000009F4  0333              add si,[bp+di]
000009F6  95                xchg ax,bp
000009F7  8900              mov [bx+si],ax
000009F9  E203              loop 0x9fe
000009FB  3E1B1C            sbb bx,[ds:si]
000009FE  9B8C1E0B14        wait mov [0x140b],ds
00000A03  03060281          add ax,[0x8102]
00000A07  AF                scasw
00000A08  63C6              arpl si,ax
00000A0A  C58EC930          lds cx,[bp+0x30c9]
00000A0E  360BE4            ss or sp,sp
00000A11  01AC0417          add [si+0x1704],bp
00000A15  080A              or [bp+si],cl
00000A17  FC                cld
00000A18  C7                db 0xc7
00000A19  12951C15          adc dl,[di+0x151c]
00000A1D  111A              adc [bp+si],bx
00000A1F  17                pop ss
00000A20  8DB68DFF          lea si,[bp-0x73]
00000A24  47                inc di
00000A25  56                push si
00000A26  FA                cli
00000A27  17                pop ss
00000A28  EBC9              jmp short 0x9f3
00000A2A  056101            add ax,0x161
00000A2D  06                push es
00000A2E  04DC              add al,0xdc
00000A30  027E6C            add bh,[bp+0x6c]
00000A33  07                pop es
00000A34  1A5901            sbb bl,[bx+di+0x1]
00000A37  689502            push word 0x295
00000A3A  7E06              jng 0xa42
00000A3C  D805              fadd dword [di]
00000A3E  E209              loop 0xa49
00000A40  41                inc cx
00000A41  60                pusha
00000A42  92                xchg ax,dx
00000A43  16                push ss
00000A44  7F01              jg 0xa47
00000A46  94                xchg ax,sp
00000A47  95                xchg ax,bp
00000A48  DBD3              fcmovnbe st3
00000A4A  3589C1            xor ax,0xc189
00000A4D  B218              mov dl,0x18
00000A4F  321C              xor bl,[si]
00000A51  72F8              jc 0xa4b
00000A53  F6F6              div dh
00000A55  F7AE0268          imul word [bp+0x6802]
00000A59  8D31              lea si,[bx+di]
00000A5B  01CF              add di,cx
00000A5D  8A8990C3          mov cl,[bx+di-0x3c70]
00000A61  01919589          add [bx+di-0x766b],dx
00000A65  A6                cmpsb
00000A66  8E00              mov es,[bx+si]
00000A68  E207              loop 0xa71
00000A6A  1D0032            sbb ax,0x3200
00000A6D  1E                push ds
00000A6E  2020              and [bx+si],ah
00000A70  0233              add dh,[bp+di]
00000A72  31160473          xor [0x7304],dx
00000A76  004C06            add [si+0x6],cl
00000A79  1A30              sbb dh,[bx+si]
00000A7B  3601AC0386        add [ss:si-0x79fd],bp
00000A80  24F1              and al,0xf1
00000A82  3406              xor al,0x6
00000A84  F5                cmc
00000A85  871F              xchg bx,[bx]
00000A87  D6                salc
00000A88  0D2F3E            or ax,0x3e2f
00000A8B  9B14FC            wait adc al,0xfc
00000A8E  94                xchg ax,sp
00000A8F  B602              mov dh,0x2
00000A91  53                push bx
00000A92  8E2E9E61          mov gs,[0x619e]
00000A96  8004EE            add byte [si],0xee
00000A99  050081            add ax,0x8100
00000A9C  8D02              lea ax,[bp+si]
00000A9E  7F0A              jg 0xaaa
00000AA0  DE01              fiadd word [bx+di]
00000AA2  67811A099A        sbb word [edx],0x9a09
00000AA7  16                push ss
00000AA8  1AAF2829          sbb ch,[bx+0x2928]
00000AAC  305000            xor [bx+si+0x0],dl
00000AAF  EB14              jmp short 0xac5
00000AB1  08BE94C1          or [bp-0x3e6c],bh
00000AB5  2EE80280          cs call 0x8abb
00000AB9  1D34DC            sbb ax,0xdc34
00000ABC  07                pop es
00000ABD  132A              adc bp,[bp+si]
00000ABF  8B27              mov sp,[bx]
00000AC1  99                cwd
00000AC2  95                xchg ax,bp
00000AC3  FE4000            inc byte [bx+si+0x0]
00000AC6  027E06            add bh,[bp+0x6]
00000AC9  03D7              add dx,di
00000ACB  892E821E          mov [0x1e82],bp
00000ACF  0357C3            add dx,[bx-0x3d]
00000AD2  C5                db 0xc5
00000AD3  C8CDD1D2          enter 0xd1cd,0xd2
00000AD7  0111              add [bx+di],dx
00000AD9  0D0C00            or ax,0xc
00000ADC  4D                dec bp
00000ADD  06                push es
00000ADE  1B08              sbb cx,[bx+si]
00000AE0  DACC              fcmove st4
00000AE2  CE                into
00000AE3  0E                push cs
00000AE4  6C                insb
00000AE5  2209              and cl,[bx+di]
00000AE7  7F00              jg 0xae9
00000AE9  CF                iret
00000AEA  6C                insb
00000AEB  06                push es
00000AEC  1483              adc al,0x83
00000AEE  FC                cld
00000AEF  17                pop ss
00000AF0  58                pop ax
00000AF1  05D7D0            add ax,0xd0d7
00000AF4  46                inc si
00000AF5  030C              add cx,[si]
00000AF7  7131              jno 0xb2a
00000AF9  3116075E          xor [0x5e07],dx
00000AFD  03C3              add ax,bx
00000AFF  052002            add ax,0x220
00000B02  7D60              jnl 0xb64
00000B04  36011C            add [ss:si],bx
00000B07  2A7FFF            sub bh,[bx-0x1]
00000B0A  129E0412          adc bl,[bp+0x1204]
00000B0E  6A30              push byte +0x30
00000B10  2EE80283          cs call 0x8e16
00000B14  1AB5150C          sbb dh,[di+0xc15]
00000B18  C6C607            mov dh,0x7
00000B1B  98                cbw
00000B1C  FF813F20          inc word [bx+di+0x203f]
00000B20  EC                in al,dx
00000B21  59                pop cx
00000B22  0C18              or al,0x18
00000B24  005404            add [si+0x4],dl
00000B27  B8C3C7            mov ax,0xc7c3
00000B2A  CB                retf
00000B2B  CC                int3
00000B2C  CDCE              int 0xce
00000B2E  D202              rol byte [bp+si],cl
00000B30  8133060B          xor word [bp+di],0xb06
00000B34  56                push si
00000B35  1E                push ds
00000B36  CA08BF            retf 0xbf08
00000B39  06                push es
00000B3A  3301              xor ax,[bx+di]
00000B3C  CD1D              int 0x1d
00000B3E  F210872B30        repne adc [bx+0x302b],al
00000B43  05001E            add ax,0x1e00
00000B46  16                push ss
00000B47  104F03            adc [bx+0x3],cl
00000B4A  41                inc cx
00000B4B  63C0              arpl ax,ax
00000B4D  17                pop ss
00000B4E  0B02              or ax,[bp+si]
00000B50  809815023C        sbb byte [bx+si+0x215],0x3c
00000B55  0303              add ax,[bp+di]
00000B57  14F3              adc al,0xf3
00000B59  E9D51A            jmp 0x2631
00000B5C  D0                db 0xd0
00000B5D  30980521          xor [bx+si+0x2105],bl
00000B61  039DD951          add bx,[di+0x51d9]
00000B65  3B7002            cmp si,[bx+si+0x2]
00000B68  80172F            adc byte [bx],0x2f
00000B6B  7F95              jg 0xb02
00000B6D  1DFF12            sbb ax,0x12ff
00000B70  9E                sahf
00000B71  A36A06            mov [0x66a],ax
00000B74  93                xchg ax,bx
00000B75  DF2C              fild qword [si]
00000B77  02803431          add al,[bx+si+0x3134]
00000B7B  FC                cld
00000B7C  16                push ss
00000B7D  A90310            test ax,0x1003
00000B80  36B6FE            ss mov dh,0xfe
00000B83  813F0B5A          cmp word [bx],0x5a0b
00000B87  898D016B          mov [di+0x6b01],cx
00000B8B  027E06            add bh,[bp+0x6]
00000B8E  EAC7CBCD89        jmp 0x89cd:0xcbc7
00000B93  03C6              add ax,si
00000B95  028023C9          add al,[bx+si-0x36dd]
00000B99  8081047A02        add byte [bx+di+0x7a04],0x2
00000B9E  7E31              jng 0xbd1
00000BA0  56                push si
00000BA1  95                xchg ax,bp
00000BA2  2208              and cl,[bx+si]
00000BA4  05001F            add ax,0x1f00
00000BA7  1A2EC9D8          sbb ch,[0xd8c9]
00000BAB  C008EA            ror byte [bx+si],byte 0xea
00000BAE  05CDC0            add ax,0xc0cd
00000BB1  0E                push cs
00000BB2  2F                das
00000BB3  7802              js 0xbb7
00000BB5  801302            adc byte [bp+di],0x2
00000BB8  3C5B              cmp al,0x5b
00000BBA  4D                dec bp
00000BBB  1C72              sbb al,0x72
00000BBD  0436              add al,0x36
00000BBF  E8D3FD            call 0x995
00000BC2  83C002            add ax,byte +0x2
00000BC5  7E9F              jng 0xb66
00000BC7  99                cwd
00000BC8  258618            and ax,0x1886
00000BCB  2C99              sub al,0x99
00000BCD  9E                sahf
00000BCE  9F                lahf
00000BCF  1F                pop ds
00000BD0  30C4              xor ah,al
00000BD2  EA0D7AFF01        jmp 0x1ff:0x7a0d
00000BD7  3F                aas
00000BD8  0110              add [bx+si],dx
00000BDA  2EE8E9FD          cs call 0x9c7
00000BDE  16                push ss
00000BDF  1D05C0            sbb ax,0xc005
00000BE2  60                pusha
00000BE3  008967B3          add [bx+di-0x4c99],cl
00000BE7  94                xchg ax,sp
00000BE8  027E0A            add bh,[bp+0xa]
00000BEB  5A                pop dx
00000BEC  0B5B89            or bx,[bp+di-0x77]
00000BEF  B6C1              mov dh,0xc1
00000BF1  16                push ss
00000BF2  191C              sbb [si],bx
00000BF4  00F0              add al,dh
00000BF6  A3A5B2            mov [0xb2a5],ax
00000BF9  0F891E1C          jns near 0x281b
00000BFD  D2CE              ror dh,cl
00000BFF  CD02              int 0x2
00000C01  80D1FF            adc cl,0xff
00000C04  47                inc di
00000C05  3D027E            cmp ax,0x7e02
00000C08  60                pusha
00000C09  CC                int3
00000C0A  18060780          sbb [0x8007],al
00000C0E  8D                db 0x8d
00000C0F  CD1A              int 0x1a
00000C11  0342CD            add ax,[bp+si-0x33]
00000C14  01E0              add ax,sp
00000C16  E8C018            call 0x24d9
00000C19  EB8F              jmp short 0xbaa
00000C1B  2228              and ch,[bx+si]
00000C1D  D8F1              fdiv st1
00000C1F  02810707          add al,[bx+di+0x707]
00000C23  3F                aas
00000C24  3202              xor al,[bp+si]
00000C26  7D04              jnl 0xc2c
00000C28  98                cbw
00000C29  35E8D7            xor ax,0xd7e8
00000C2C  07                pop es
00000C2D  00D2              add dl,dl
00000C2F  06                push es
00000C30  1C4A              sbb al,0x4a
00000C32  D8989419          fcomp dword [bx+si+0x1994]
00000C36  92                xchg ax,dx
00000C37  94                xchg ax,sp
00000C38  01999F01          add [bx+di+0x19f],bx
00000C3C  B5FF              mov ch,0xff
00000C3E  013F              add [bx],di
00000C40  66A80F            o32 test al,0xf
00000C43  6901D4B7          imul ax,[bx+di],word 0xb7d4
00000C47  DF                db 0xdf
00000C48  DA                db 0xda
00000C49  FD                std
00000C4A  96                xchg ax,si
00000C4B  00817103          add [bx+di+0x371],al
00000C4F  E0B6              loopne 0xc07
00000C51  94                xchg ax,sp
00000C52  898C9F8F          mov [si-0x7061],cx
00000C56  0801              or [bx+di],al
00000C58  56                push si
00000C59  1823              sbb [bp+di],ah
00000C5B  47                inc di
00000C5C  19063750          sbb [0x5037],ax
00000C60  DCA9507A          fsubr qword [bx+di+0x7a50]
00000C64  DDD4              fst st4
00000C66  0281CD16          add al,[bx+di+0x16cd]
00000C6A  17                pop ss
00000C6B  FF487E            dec word [bx+si+0x7e]
00000C6E  0BCC              or cx,sp
00000C70  60                pusha
00000C71  F0027E1F          lock add bh,[bp+0x1f]
00000C75  CF                iret
00000C76  3207              xor al,[bx]
00000C78  7F7D              jg 0xcf7
00000C7A  034309            add ax,[bp+di+0x9]
00000C7D  BC1DE8            mov sp,0xe81d
00000C80  6330              arpl [bx+si],si
00000C82  E9F631            jmp 0x3e7b
00000C85  D218              rcr byte [bx+si],cl
00000C87  47                inc di
00000C88  CF                iret
00000C89  07                pop es
00000C8A  0FE431            pmulhuw mm6,[bx+di]
00000C8D  3329              xor bp,[bx+di]
00000C8F  3002              xor [bp+si],al
00000C91  7CD9              jl 0xc6c
00000C93  E8043B            call 0x479a
00000C96  0A01              or al,[bx+di]
00000C98  B02B              mov al,0x2b
00000C9A  06                push es
00000C9B  7EF8              jng 0xc95
00000C9D  2113              and [bp+di],dx
00000C9F  94                xchg ax,sp
00000CA0  99                cwd
00000CA1  F4                hlt
00000CA2  C3                ret
00000CA3  D8E1              fsub st1
00000CA5  DEFE              fdivp st6
00000CA7  0E                push cs
00000CA8  9C                pushf
00000CA9  1466              adc al,0x66
00000CAB  16                push ss
00000CAC  56                push si
00000CAD  95                xchg ax,bp
00000CAE  94                xchg ax,sp
00000CAF  01D6              add si,dx
00000CB1  B608              mov dh,0x8
00000CB3  97                xchg ax,di
00000CB4  C0600BE3          shl byte [bx+si+0xb],byte 0xe3
00000CB8  01550A            add [di+0xa],dx
00000CBB  60                pusha
00000CBC  94                xchg ax,sp
00000CBD  95                xchg ax,bp
00000CBE  B789              mov bh,0x89
00000CC0  C8C01F1A          enter 0x1fc0,0x1a
00000CC4  17                pop ss
00000CC5  17                pop ss
00000CC6  16                push ss
00000CC7  1B634C            sbb sp,[bp+di+0x4c]
00000CCA  B200              mov dl,0x0
00000CCC  45                inc bp
00000CCD  0281CCC8          add al,[bx+di-0x3734]
00000CD1  3116FE0A          xor [0xafe],dx
00000CD5  FE                db 0xfe
00000CD6  17                pop ss
00000CD7  B554              mov ch,0x54
00000CD9  8D18              lea bx,[bx+si]
00000CDB  07                pop es
00000CDC  16                push ss
00000CDD  F5                cmc
00000CDE  2E                cs
00000CDF  82                db 0x82
00000CE0  877F02            xchg di,[bx+0x2]
00000CE3  7C87              jl 0xc6c
00000CE5  F5                cmc
00000CE6  1302              adc ax,[bp+si]
00000CE8  C46100            les sp,[bx+di+0x0]
00000CEB  027F89            add bh,[bx-0x77]
00000CEE  837D0505          cmp word [di+0x5],byte +0x5
00000CF2  0238              add bh,[bx+si]
00000CF4  13D4              adc dx,sp
00000CF6  012D              add [di],bp
00000CF8  2A813134          sub al,[bx+di+0x3431]
00000CFC  37                aaa
00000CFD  8AE8              mov ch,al
00000CFF  2E2EE8093A        cs call 0x470d
00000D04  01460F            add [bp+0xf],ax
00000D07  2321              and sp,[bx+di]
00000D09  15F81E            adc ax,0x1ef8
00000D0C  2D0100            sub ax,0x1
00000D0F  AB                stosw
00000D10  FD                std
00000D11  D11C              rcr word [si],1
00000D13  1317              adc dx,[bx]
00000D15  081F              or [bx],bl
00000D17  010B              add [bp+di],cx
00000D19  06                push es
00000D1A  0338              add di,[bx+si]
00000D1C  380B              cmp [bp+di],cl
00000D1E  2A03              sub al,[bp+di]
00000D20  06                push es
00000D21  0229              add ch,[bx+di]
00000D23  8914              mov [si],dx
00000D25  60                pusha
00000D26  1F                pop ds
00000D27  0807              or [bx],al
00000D29  2C00              sub al,0x0
00000D2B  56                push si
00000D2C  A85A              test al,0x5a
00000D2E  DBD1              fcmovnbe st1
00000D30  027ECB            add bh,[bp-0x35]
00000D33  C5                db 0xc5
00000D34  FC                cld
00000D35  CF                iret
00000D36  B3FD              mov bl,0xfd
00000D38  013EC217          add [0x17c2],di
00000D3C  AA                stosb
00000D3D  0D1D1E            or ax,0x1e1d
00000D40  8A1F              mov bl,[bx]
00000D42  7F89              jg 0xccd
00000D44  04FB              add al,0xfb
00000D46  2209              and cl,[bx+di]
00000D48  B30D              mov bl,0xd
00000D4A  CDFC              int 0xfc
00000D4C  013F              add [bx],di
00000D4E  890F              mov [bx],cx
00000D50  93                xchg ax,bx
00000D51  338B0A04          xor cx,[bp+di+0x40a]
00000D55  06                push es
00000D56  2C05              sub al,0x5
00000D58  60                pusha
00000D59  D42C              aam 0x2c
00000D5B  2F                das
00000D5C  2F                das
00000D5D  DF948101          fist word [si+0x181]
00000D61  2F                das
00000D62  04FE              add al,0xfe
00000D64  16                push ss
00000D65  82                db 0x82
00000D66  C6                db 0xc6
00000D67  6D                insw
00000D68  2115              and [di],dx
00000D6A  17                pop ss
00000D6B  00B6FE13          add [bp+0x13fe],dh
00000D6F  9C                pushf
00000D70  04FF              add al,0xff
00000D72  0318              add bx,[bx+si]
00000D74  010C              add [si],cx
00000D76  3B4406            cmp ax,[si+0x6]
00000D79  760B              jna 0xd86
00000D7B  2BFC              sub di,sp
00000D7D  C1401E36          rol word [bx+si+0x1e],byte 0x36
00000D81  2480              and al,0x80
00000D83  4D                dec bp
00000D84  07                pop es
00000D85  DA00              fiadd dword [bx+si]
00000D87  46                inc si
00000D88  DF                db 0xdf
00000D89  D6                salc
00000D8A  3C80              cmp al,0x80
00000D8C  CE                into
00000D8D  CC                int3
00000D8E  CB                retf
00000D8F  C7C3FD8F          mov bx,0x8ffd
00000D93  E031              loopne 0xdc6
00000D95  5A                pop dx
00000D96  0DE008            or ax,0x8e0
00000D99  B7CA              mov bh,0xca
00000D9B  7F31              jg 0xdce
00000D9D  09D8              or ax,bx
00000D9F  1804              sbb [si],al
00000DA1  7102              jno 0xda5
00000DA3  7E0B              jng 0xdb0
00000DA5  D303              rol word [bp+di],cl
00000DA7  CC                int3
00000DA8  02801AEC          add al,[bx+si-0x13e6]
00000DAC  96                xchg ax,si
00000DAD  D08D0B2C          ror byte [di+0x2c0b],1
00000DB1  1A1C              sbb bl,[si]
00000DB3  1DDFA4            sbb ax,0xa4df
00000DB6  2F                das
00000DB7  D2                db 0xd2
00000DB8  32FE              xor bh,dh
00000DBA  D040E3            rol byte [bx+si-0x1d],1
00000DBD  BE2114            mov si,0x1421
00000DC0  07                pop es
00000DC1  FC                cld
00000DC2  013F              add [bx],di
00000DC4  12FE              adc bh,dh
00000DC6  41                inc cx
00000DC7  41                inc cx
00000DC8  FC                cld
00000DC9  0312              add dx,[bp+si]
00000DCB  01060228          add [0x2802],ax
00000DCF  00C0              add al,al
00000DD1  304006            xor [bx+si+0x6],al
00000DD4  BEDBD0            mov si,0xd0db
00000DD7  DEC0              faddp st0
00000DD9  C8C5C3FE          enter 0xc3c5,0xfe
00000DDD  51                push cx
00000DDE  210F              and [bx],cx
00000DE0  C6                db 0xc6
00000DE1  155636            adc ax,0x3656
00000DE4  831821            sbb word [bx+si],byte +0x21
00000DE7  FC                cld
00000DE8  41                inc cx
00000DE9  3E01F0            ds add ax,si
00000DEC  E88D81            call 0x8f7c
00000DEF  17                pop ss
00000DF0  3E1CB1            ds sbb al,0xb1
00000DF3  02813107          add al,[bx+di+0x731]
00000DF7  1F                pop ds
00000DF8  ED                in ax,dx
00000DF9  DE18              ficomp word [bx+si]
00000DFB  A37A03            mov [0x37a],ax
00000DFE  DE                db 0xde
00000DFF  D0                db 0xd0
00000E00  31FF              xor di,di
00000E02  9BCC              wait int3
00000E04  2115              and [di],dx
00000E06  0337              add si,[bx]
00000E08  1F                pop ds
00000E09  06                push es
00000E0A  08FC              or ah,bh
00000E0C  0331              add si,[bx+di]
00000E0E  333B              xor di,[bp+di]
00000E10  03CB              add cx,bx
00000E12  86810001          xchg al,[bx+di+0x100]
00000E16  183641D9          sbb [0xd941],dh
00000E1A  0229              add ch,[bx+di]
00000E1C  93                xchg ax,bx
00000E1D  94                xchg ax,sp
00000E1E  0ADB              or bl,bl
00000E20  FC                cld
00000E21  41                inc cx
00000E22  3F                aas
00000E23  70A6              jo 0xdcb
00000E25  13BC1EAE          adc di,[si-0x51e2]
00000E29  B51D              mov ch,0x1d
00000E2B  16                push ss
00000E2C  6760              a32 pusha
00000E2E  C3                ret
00000E2F  FE                db 0xfe
00000E30  14B5              adc al,0xb5
00000E32  30B31556          xor [bp+di+0x5615],dh
00000E36  0ADE              or bl,dh
00000E38  C3                ret
00000E39  24E8              and al,0xe8
00000E3B  8C1E1C1C          mov [0x1c1c],ds
00000E3F  7E3B              jng 0xe7c
00000E41  09D8              or ax,bx
00000E43  C601F0            mov byte [bx+di],0xf0
00000E46  A6                cmpsb
00000E47  A5                movsw
00000E48  D88C00F5          fmul dword [si-0xb00]
00000E4C  0189B28A          add [bx+di-0x754e],cx
00000E50  196C02            sbb [si+0x2],bp
00000E53  8024ED            and byte [si],0xed
00000E56  0168CE            add [bx+si-0x32],bp
00000E59  50                push ax
00000E5A  831D16            sbb word [di],byte +0x16
00000E5D  FE07              inc byte [bx]
00000E5F  EA20D67D6C        jmp 0x6c7d:0xd620
00000E64  044C              add al,0x4c
00000E66  93                xchg ax,bx
00000E67  0D1D1E            or ax,0x1e1d
00000E6A  E6FC              out 0xfc,al
00000E6C  01F0              add ax,si
00000E6E  2E3A30            cmp dh,[cs:bx+si]
00000E71  2B07              sub ax,[bx]
00000E73  2EB81E1E          cs mov ax,0x1e1e
00000E77  015C0C            add [si+0xc],bx
00000E7A  60                pusha
00000E7B  8904              mov [si],ax
00000E7D  BAC0C6            mov dx,0xc6c0
00000E80  01A40272          add [si+0x7202],sp
00000E84  1830              sbb [bx+si],dh
00000E86  8E89027E          mov cs,[bx+di+0x7e02]
00000E8A  801D04            sbb byte [di],0x4
00000E8D  CA164D            retf 0x4d16
00000E90  FB                sti
00000E91  57                push di
00000E92  111EAD08          adc [0x8ad],bx
00000E96  14FE              adc al,0xfe
00000E98  93                xchg ax,bx
00000E99  7613              jna 0xeae
00000E9B  181D              sbb [di],bl
00000E9D  0000              add [bx+si],al
00000E9F  1E                push ds
00000EA0  027F18            add bh,[bx+0x18]
00000EA3  D3E5              shl bp,cl
00000EA5  40                inc ax
00000EA6  43                inc bx
00000EA7  1417              adc al,0x17
00000EA9  1A35              sbb dh,[di]
00000EAB  E6C0              out 0xc0,al
00000EAD  06                push es
00000EAE  01C8              add ax,cx
00000EB0  00F4              add ah,dh
00000EB2  36660188011C      add [ss:bx+si+0x1c01],ecx
00000EB8  F229EC            repne sub sp,bp
00000EBB  60                pusha
00000EBC  30D0              xor al,dl
00000EBE  D30E0C18          ror word [0x180c],cl
00000EC2  14D6              adc al,0xd6
00000EC4  118030C7          adc [bx+si-0x38d0],ax
00000EC8  0BF1              or si,cx
00000ECA  17                pop ss
00000ECB  D2                db 0xd2
00000ECC  3080190B          xor [bx+si+0xb19],al
00000ED0  06                push es
00000ED1  62                db 0x62
00000ED2  C16C333B          shr word [si+0x33],byte 0x3b
00000ED6  0B4DC3            or cx,[di-0x3d]
00000ED9  16                push ss
00000EDA  DBC7              fcmovnb st7
00000EDC  8093000120        adc byte [bp+di+0x100],0x20
00000EE1  3801              cmp [bx+di],al
00000EE3  0C00              or al,0x0
00000EE5  42                inc dx
00000EE6  40                inc ax
00000EE7  55                push bp
00000EE8  9B0200            wait add al,[bx+si]
00000EEB  E448              in al,0x48
00000EED  EF                out dx,ax
00000EEE  1D0832            sbb ax,0x3208
00000EF1  E00C              loopne 0xeff
00000EF3  58                pop ax
00000EF4  2AD0              sub dl,al
00000EF6  0483              add al,0x83
00000EF8  0000              add [bx+si],al
00000EFA  99                cwd
00000EFB  61                popa
00000EFC  02CB              add cl,bl
00000EFE  27                daa
00000EFF  9F                lahf
00000F00  01A3AD06          add [bp+di+0x6ad],sp
00000F04  C602E9            mov byte [bp+si],0xe9
00000F07  96                xchg ax,si
00000F08  1CCE              sbb al,0xce
00000F0A  022C              add ch,[si]
00000F0C  1D0201            sbb ax,0x102
00000F0F  1C02              sbb al,0x2
00000F11  7FC0              jg 0xed3
00000F13  002EEDA1          add [0xa1ed],ch
00000F17  1B18              sbb bx,[bx+si]
00000F19  147B              adc al,0x7b
00000F1B  2100              and [bx+si],ax
00000F1D  16                push ss
00000F1E  81183303          sbb word [bx+si],0x333
00000F22  5B                pop bx
00000F23  020B              add cl,[bp+di]
00000F25  1CA6              sbb al,0xa6
00000F27  D860FC            fsub dword [bx+si-0x4]
00000F2A  014004            add [bx+si+0x4],ax
00000F2D  FF2F              jmp far [bx]
00000F2F  E4CC              in al,0xcc
00000F31  C6                db 0xc6
00000F32  18C8              sbb al,cl
00000F34  FC                cld
00000F35  C11D02            rcr word [di],byte 0x2
00000F38  3530C0            xor ax,0xc030
00000F3B  0396027F          add dx,[bp+0x7f02]
00000F3F  306045            xor [bx+si+0x45],ah
00000F42  55                push bp
00000F43  0C0C              or al,0xc
00000F45  2015              and [di],dl
00000F47  60                pusha
00000F48  1807              sbb [bx],al
00000F4A  802AD1            sub byte [bp+si],0xd1
00000F4D  036CA2            add bp,[si-0x5e]
00000F50  09DF              or di,bx
00000F52  26F7C3602C        es test bx,0x2c60
00000F57  9E                sahf
00000F58  1F                pop ds
00000F59  53                push bx
00000F5A  0F6F6033          movq mm4,[bx+si+0x33]
00000F5E  01F1              add cx,si
00000F60  039600F4          add dx,[bp-0xc00]
00000F64  6333              arpl [bp+di],si
00000F66  43                inc bx
00000F67  5B                pop bx
00000F68  0F5909            mulps xmm1,oword [bx+di]
00000F6B  5C                pop sp
00000F6C  33EC              xor bp,sp
00000F6E  60                pusha
00000F6F  CC                int3
00000F70  0280071E          add al,[bx+si+0x1e07]
00000F74  C0A0260002        shl byte [bx+si+0x26],byte 0x2
00000F79  7F07              jg 0xf82
00000F7B  1DC080            sbb ax,0x80c0
00000F7E  01A62088          add [bp-0x77e0],sp
00000F82  010608E4          add [0xe408],ax
00000F86  3D3A87            cmp ax,0x873a
00000F89  0130              add [bx+si],si
00000F8B  2E67028136D80424  add al,[cs:ecx+0x2404d836]
00000F93  0234              add dh,[si]
00000F95  FC                cld
00000F96  028030DB          add al,[bx+si-0x24d0]
00000F9A  F4                hlt
00000F9B  1A4523            sbb al,[di+0x23]
00000F9E  801915            sbb byte [bx+di],0x15
00000FA1  B681              mov dh,0x81
00000FA3  FE8C6601          dec byte [si+0x166]
00000FA7  6C                insb
00000FA8  3D8ED2            cmp ax,0xd28e
00000FAB  C11628490E        rcl word [0x4928],byte 0xe
00000FB0  6495              fs xchg ax,bp
00000FB2  148C              adc al,0x8c
00000FB4  F7940101          not word [si+0x101]
00000FB8  196031            sbb [bx+si+0x31],sp
00000FBB  9F                lahf
00000FBC  0821              or [bx+di],ah
00000FBE  B430              mov ah,0x30
00000FC0  DB01              fild dword [bx+di]
00000FC2  F00397027F        lock add dx,[bx+0x7f02]
00000FC7  B061              mov al,0x61
00000FC9  345A              xor al,0x5a
00000FCB  1459              adc al,0x59
00000FCD  AA                stosb
00000FCE  366D              ss insw
00000FD0  C09C01AC1C        rcr byte [si-0x53ff],byte 0x1c
00000FD5  05EAC1            add ax,0xc1ea
00000FD8  0E                push cs
00000FD9  251CFD            and ax,0xfd1c
00000FDC  013F              add [bx],di
00000FDE  1E                push ds
00000FDF  2A896C1B          sub cl,[bx+di+0x1b6c]
00000FE3  FC                cld
00000FE4  0472              add al,0x72
00000FE6  FC                cld
00000FE7  5F                pop di
00000FE8  42                inc dx
00000FE9  39BE0236          cmp [bp+0x3602],di
00000FED  B061              mov al,0x61
00000FEF  039C0234          add bx,[si+0x3402]
00000FF3  034D80            add cx,[di-0x80]
00000FF6  51                push cx
00000FF7  89929206          mov [bp+si+0x692],dx
00000FFB  EBB3              jmp short 0xfb0
00000FFD  DA1A              ficomp dword [bp+si]
00000FFF  45                inc bp
00001000  23803117          and ax,[bx+si+0x1731]
00001004  FF13              call [bp+di]
00001006  A4                movsb
00001007  F787C116428E      test word [bx+0x16c1],0x8e42
0000100D  0312              add dx,[bp+si]
0000100F  0FC4E281          pinsrw mm4,dx,0x81
00001013  41                inc cx
00001014  0117              add [bx],dx
00001016  F701989A          test word [bx+di],0x9a98
0000101A  9A97369F02        call 0x29f:0x3697
0000101F  8199D91EBA42      sbb word [bx+di+0x1ed9],0x42ba
00001025  0B01              or ax,[bx+di]
00001027  60                pusha
00001028  03976018          add dx,[bx+0x1860]
0000102C  41                inc cx
0000102D  EF                out dx,ax
0000102E  43                inc bx
0000102F  1F                pop ds
00001030  3B6DA0            cmp bp,[di-0x60]
00001033  0018              add [bx+si],bl
00001035  1CED              sbb al,0xed
00001037  830105            add word [bx+di],byte +0x5
0000103A  92                xchg ax,dx
0000103B  07                pop es
0000103C  7E65              jng 0x10a3
0000103E  03929202          add dx,[bp+si+0x292]
00001042  7908              jns 0x104c
00001044  662F              o32 das
00001046  88063040          mov [0x4030],al
0000104A  C6                db 0xc6
0000104B  0A951876          or dl,[di+0x7618]
0000104F  3F                aas
00001050  BE39F4            mov si,0xf439
00001053  1C0E              sbb al,0xe
00001055  6BC366            imul ax,bx,byte +0x66
00001058  D305              rol word [di],cl
0000105A  E7AE              out 0xae,ax
0000105C  0234              add dh,[si]
0000105E  186C02            sbb [si+0x2],ch
00001061  7EA8              jng 0x100b
00001063  F6C336            test bl,0x36
00001066  8902              mov [bp+si],ax
00001068  7F01              jg 0x106b
0000106A  8A1A              mov bl,[bp+si]
0000106C  45                inc bp
0000106D  F3FF23            rep jmp [bp+di]
00001070  8014FF            adc byte [si],0xff
00001073  14E2              adc al,0xe2
00001075  141D              adc al,0x1d
00001077  82                db 0x82
00001078  14F2              adc al,0xf2
0000107A  1F                pop ds
0000107B  CD60              int 0x60
0000107D  838D15EA7E        or word [di-0x15eb],byte +0x7e
00001082  0F14161A5F        unpcklps xmm2,oword [0x5f1a]
00001087  CE                into
00001088  98                cbw
00001089  8C01              mov [bx+di],es
0000108B  0913              or [bp+di],dx
0000108D  FC                cld
0000108E  225404            and dl,[si+0x4]
00001091  FE                db 0xfe
00001092  76CC              jna 0x1060
00001094  01169246          add [0x4692],dx
00001098  EF                out dx,ax
00001099  C21960            ret 0x6019
0000109C  1931              sbb [bx+di],si
0000109E  4D                dec bp
0000109F  38EC              cmp ah,ch
000010A1  46                inc si
000010A2  B130              mov cl,0x30
000010A4  1807              sbb [bx],al
000010A6  180C              sbb [si],cl
000010A8  7E60              jng 0x110a
000010AA  1823              sbb [bp+di],ah
000010AC  94                xchg ax,sp
000010AD  026030            add ah,[bx+si+0x30]
000010B0  C017EA            rcl byte [bx],byte 0xea
000010B3  0C30              or al,0x30
000010B5  2A88DC35          sub cl,[bx+si+0x35dc]
000010B9  39B66D06          cmp [bp+0x66d],si
000010BD  49                dec cx
000010BE  50                push ax
000010BF  B88D0A            mov ax,0xa8d
000010C2  1001              adc [bx+di],al
000010C4  B333              mov bl,0x33
000010C6  D804              fadd dword [si]
000010C8  3302              xor ax,[bp+si]
000010CA  3403              xor al,0x3
000010CC  E7CC              out 0xcc,ax
000010CE  0A01              or al,[bx+di]
000010D0  E200              loop 0x10d2
000010D2  0101              add [bx+di],ax
000010D4  8A31              mov dh,[bx+di]
000010D6  34AD              xor al,0xad
000010D8  D40B              aam 0xb
000010DA  3431              xor al,0x31
000010DC  FF5C37            call far [si+0x37]
000010DF  120E9814          adc cl,[0x1498]
000010E3  16                push ss
000010E4  EA0383893F        jmp 0x3f89:0x8303
000010E9  9D                popf
000010EA  A09AF7            mov al,[0xf79a]
000010ED  99                cwd
000010EE  98                cbw
000010EF  0194019A          add [si-0x65ff],dx
000010F3  98                cbw
000010F4  F713              not word [bp+di]
000010F6  FF10              call [bx+si]
000010F8  6314              arpl [si],dx
000010FA  0805              or [di],al
000010FC  F5                cmc
000010FD  47                inc di
000010FE  F9                stc
000010FF  0FC3160868        movnti [0x6808],edx
00001104  05ED05            add ax,0x5ed
00001107  0018              add [bx+si],bl
00001109  60                pusha
0000110A  366E              ss outsb
0000110C  21260B9F          and [0x9f0b],sp
00001110  06                push es
00001111  1811              sbb [bx+di],dl
00001113  7E03              jng 0x1118
00001115  40                inc ax
00001116  B0AD              mov al,0xad
00001118  FD                std
00001119  8500              test [bx+si],ax
0000111B  037401            add si,[si+0x1]
0000111E  EC                in al,dx
0000111F  1A14              sbb dl,[si]
00001121  00DD              add ch,bl
00001123  1A7814            sbb bh,[bx+si+0x14]
00001126  80F489            xor ah,0x89
00001129  801312            adc byte [bp+di],0x12
0000112C  024E63            add cl,[bp+0x63]
0000112F  B009              mov al,0x9
00001131  3302              xor ax,[bp+si]
00001133  350165            xor ax,0x6501
00001136  41                inc cx
00001137  52                push dx
00001138  0000              add [bx+si],al
0000113A  1C17              sbb al,0x17
0000113C  16                push ss
0000113D  E9FD81            jmp 0x933d
00001140  3F                aas
00001141  3016E266          xor [0x66e2],dl
00001145  0003              add [bp+di],al
00001147  1002              adc [bp+si],al
00001149  809D3613F8        sbb byte [di+0x1336],0xf8
0000114E  95                xchg ax,bp
0000114F  135D97            adc bx,[di-0x69]
00001152  99                cwd
00001153  F714              not word [si]
00001155  FF01              inc word [bx+di]
00001157  3F                aas
00001158  039950EE          add bx,[bx+di-0x11b0]
0000115C  06                push es
0000115D  8C0EB011          mov [0x11b0],cs
00001161  81ED36DF          sub bp,0xdf36
00001165  FC                cld
00001166  50                push ax
00001167  93                xchg ax,bx
00001168  16                push ss
00001169  0B9FFDCF          or bx,[bx-0x3003]
0000116D  8C07              mov [bx],es
0000116F  61                popa
00001170  60                pusha
00001171  3800              cmp [bx+si],al
00001173  1E                push ds
00001174  1D046E            sbb ax,0x6e04
00001177  03AE054A          add bp,[bp+0x4a05]
0000117B  1403              adc al,0x3
0000117D  71F4              jno 0x1173
0000117F  13C6              adc ax,si
00001181  60                pusha
00001182  34A6              xor al,0xa6
00001184  053D02            add ax,0x23d
00001187  7FC0              jg 0x1149
00001189  3024              xor [si],ah
0000118B  0001              add [bx+di],al
0000118D  1E                push ds
0000118E  1DDBE8            sbb ax,0xe8db
00001191  8928              mov [bx+si],bp
00001193  D8D2              fcom st2
00001195  16                push ss
00001196  54                push sp
00001197  A9FC83            test ax,0x83fc
0000119A  CA0083            retf 0x8300
0000119D  027F02            add bh,[bx+0x2]
000011A0  80E9B1            sub cl,0xb1
000011A3  1F                pop ds
000011A4  8994971A          mov [si+0x1a97],dx
000011A8  FD                std
000011A9  CDE7              int 0xe7
000011AB  01F0              add ax,si
000011AD  011B              add [bp+di],bx
000011AF  AD                lodsw
000011B0  78C1              js 0x1173
000011B2  0E                push cs
000011B3  FC                cld
000011B4  1314              adc dx,[si]
000011B6  00D3              add bl,dl
000011B8  1304              adc ax,[si]
000011BA  0FF508            pmaddwd mm1,[bx+si]
000011BD  97                xchg ax,di
000011BE  0F07              sysret
000011C0  FC                cld
000011C1  07                pop es
000011C2  BCD6D2            mov sp,0xd2d6
000011C5  0B9F07FD          or bx,[bx-0x2f9]
000011C9  8F                db 0x8f
000011CA  8B07              mov ax,[bx]
000011CC  61                popa
000011CD  1830              sbb [bx+si],dh
000011CF  051F01            add ax,0x11f
000011D2  7A06              jpe 0x11da
000011D4  7620              jna 0x11f6
000011D6  B401              mov ah,0x1
000011D8  2A16027D          sub dl,[0x7d02]
000011DC  6BC089            imul ax,ax,byte -0x77
000011DF  F5                cmc
000011E0  17                pop ss
000011E1  19C9              sbb cx,cx
000011E3  60                pusha
000011E4  C0077E            rol byte [bx],byte 0x7e
000011E7  C0608600          shl byte [bx+si-0x7a],byte 0x0
000011EB  015BD5            add [bp+di-0x2b],bx
000011EE  5B                pop bx
000011EF  D7                xlatb
000011F0  030C              add cx,[si]
000011F2  1D2C30            sbb ax,0x302c
000011F5  07                pop es
000011F6  7EC6              jng 0x11be
000011F8  3000              xor [bx+si],al
000011FA  93                xchg ax,bx
000011FB  02801F88          add al,[bx+si-0x77e1]
000011FF  6A98              push byte -0x68
00001201  F8                clc
00001202  17                pop ss
00001203  FD                std
00001204  4F                dec di
00001205  2813              sub [bp+di],dl
00001207  1E                push ds
00001208  039A6F0C          add bx,[bp+si+0xc6f]
0000120C  1CFC              sbb al,0xfc
0000120E  AD                lodsw
0000120F  DC4D53            fmul qword [di+0x53]
00001212  2F                das
00001213  6301              arpl [bx+di],ax
00001215  FB                sti
00001216  94                xchg ax,sp
00001217  1E                push ds
00001218  14D3              adc al,0xd3
0000121A  315435            xor [si+0x35],dx
0000121D  E918FD            jmp 0xf38
00001220  92                xchg ax,dx
00001221  0B21              or sp,[bx+di]
00001223  8F                db 0x8f
00001224  30C0              xor al,al
00001226  45                inc bp
00001227  C6                db 0xc6
00001228  0CEC              or al,0xec
0000122A  016919            add [bx+di+0x19],bp
0000122D  A20AC8            mov [0xc80a],al
00001230  F5                cmc
00001231  027C14            add bh,[si+0x14]
00001234  0C85              or al,0x85
00001236  871D              xchg bx,[di]
00001238  110C              adc [si],cx
0000123A  7F03              jg 0x123f
0000123C  1C07              sbb al,0x7
0000123E  7D91              jnl 0x11d1
00001240  8A33              mov dh,[bp+di]
00001242  30908993          xor [bx+si-0x6c77],dl
00001246  0C66              or al,0x66
00001248  A08F8C            mov al,[0x8c8f]
0000124B  07                pop es
0000124C  6C                insb
0000124D  1E                push ds
0000124E  1C7D              sbb al,0x7d
00001250  0E                push cs
00001251  92                xchg ax,dx
00001252  02AA05C3          add ch,[bp+si-0x3cfb]
00001256  17                pop ss
00001257  1E                push ds
00001258  B8AE18            mov ax,0x18ae
0000125B  C6                db 0xc6
0000125C  8B03              mov ax,[bp+di]
0000125E  96                xchg ax,si
0000125F  13FE              adc di,si
00001261  87E2              xchg sp,dx
00001263  12FD              adc bh,ch
00001265  035D01            add bx,[di+0x1]
00001268  B707              mov bh,0x7
0000126A  1DC31E            sbb ax,0x1ec3
0000126D  FC                cld
0000126E  EF                out dx,ax
0000126F  1E                push ds
00001270  C3                ret
00001271  C01155            rcl byte [bx+di],byte 0x55
00001274  027FE8            add bh,[bx-0x18]
00001277  81069EE8DB08      add word [0xe89e],0x8db
0000127D  FD                std
0000127E  D20A              ror byte [bp+si],cl
00001280  50                push ax
00001281  6C                insb
00001282  01361680          add [0x8016],si
00001286  00F0              add al,dh
00001288  01E2              add dx,sp
0000128A  0DA7DF            or ax,0xdfa7
0000128D  D2                db 0xd2
0000128E  3105              xor [di],ax
00001290  47                inc di
00001291  17                pop ss
00001292  04FD              add al,0xfd
00001294  86870186          xchg al,[bx-0x79ff]
00001298  F5                cmc
00001299  C6                db 0xc6
0000129A  13B58639          adc si,[di+0x3986]
0000129E  1418              adc al,0x18
000012A0  1E                push ds
000012A1  026DFC            add ch,[di-0x4]
000012A4  C0001C            rol byte [bx+si],byte 0x1c
000012A7  64EB90            fs jmp short 0x123a
000012AA  CE                into
000012AB  1A1A              sbb bl,[bp+si]
000012AD  1817              sbb [bx],dl
000012AF  8D1F              lea bx,[bx]
000012B1  004C60            add [si+0x60],cl
000012B4  3606              ss push es
000012B6  16                push ss
000012B7  18FF              sbb bh,bh
000012B9  FC                cld
000012BA  D2EA              shr dl,cl
000012BC  01999C02          add [bx+di+0x29c],bx
000012C0  C20306            ret 0x603
000012C3  91                xchg ax,cx
000012C4  1E                push ds
000012C5  05CC6C            add ax,0x6ccc
000012C8  58                pop ax
000012C9  0C19              or al,0x19
000012CB  150DFC            adc ax,0xfc0d
000012CE  013F              add [bx],di
000012D0  E82ECF            call 0xe201
000012D3  0C91              or al,0x91
000012D5  FE                db 0xfe
000012D6  56                push si
000012D7  59                pop cx
000012D8  0E                push cs
000012D9  A7                cmpsw
000012DA  17                pop ss
000012DB  354D44            xor ax,0x444d
000012DE  60                pusha
000012DF  BC01B7            mov sp,0xb701
000012E2  14FC              adc al,0xfc
000012E4  41                inc cx
000012E5  3F                aas
000012E6  858660EC          test [bp-0x13a0],ax
000012EA  027F16            add bh,[bx+0x16]
000012ED  7F18              jg 0x1307
000012EF  3E91              ds xchg ax,cx
000012F1  FC                cld
000012F2  0000              add [bx+si],al
000012F4  0CB8              or al,0xb8
000012F6  69EB1F65          imul bp,bx,word 0x651f
000012FA  8A31              mov dh,[bx+di]
000012FC  C00046            rol byte [bx+si],byte 0x46
000012FF  0419              add al,0x19
00001301  36B6FC            ss mov dh,0xfc
00001304  51                push cx
00001305  A904A8            test ax,0xa804
00001308  44                inc sp
00001309  16                push ss
0000130A  1BE1              sbb sp,cx
0000130C  00C4              add ah,al
0000130E  81F95FAD          cmp cx,0xad5f
00001312  3E7016            ds jo 0x132b
00001315  FC                cld
00001316  8CBC6C9B          mov [si-0x6494],segr7
0000131A  091E027C          or [0x7c02],bx
0000131E  BDFF6D            mov bp,0x6dff
00001321  F8                clc
00001322  17                pop ss
00001323  35010A            xor ax,0xa01
00001326  0E                push cs
00001327  FA                cli
00001328  1408              adc al,0x8
0000132A  00EE              add dh,ch
0000132C  1B0C              sbb cx,[si]
0000132E  0084027F          add [si+0x7f02],al
00001332  2456              and al,0x56
00001334  46                inc si
00001335  82                db 0x82
00001336  1DB531            sbb ax,0x31b5
00001339  16                push ss
0000133A  1C91              sbb al,0x91
0000133C  FD                std
0000133D  40                inc ax
0000133E  0034              add [si],dh
00001340  37                aaa
00001341  1F                pop ds
00001342  0817              or [bx],dl
00001344  13FF              adc di,di
00001346  E65F              out 0x5f,al
00001348  26DA1F            ficomp dword [es:bx]
0000134B  05A192            add ax,0x92a1
0000134E  BB83FC            mov bx,0xfc83
00001351  01A51C32          add [di+0x321c],sp
00001355  45                inc bp
00001356  16                push ss
00001357  46                inc si
00001358  FF                db 0xff
00001359  E98100            jmp 0x13dd
0000135C  90                nop
0000135D  32E9              xor ch,cl
0000135F  E8027D            call 0x9064
00001362  05E481            add ax,0x81e4
00001365  1900              sbb [bx+si],ax
00001367  0017              add [bx],dl
00001369  352301            xor ax,0x123
0000136C  60                pusha
0000136D  0308              add cx,[bx+si]
0000136F  6F                outsw
00001370  06                push es
00001371  6BEC28            imul bp,sp,byte +0x28
00001374  0FAE80027E        fxsave [bx+si+0x7e02]
00001379  801232            adc byte [bp+si],0x32
0000137C  4F                dec di
0000137D  C06191FD          shl byte [bx+di-0x6f],byte 0xfd
00001381  C000FC            rol byte [bx+si],byte 0xfc
00001384  7521              jnz 0x13a7
00001386  1B30              sbb si,[bx+si]
00001388  3E056CE1          ds add ax,0xe16c
0000138C  02546C            add dl,[si+0x6c]
0000138F  66FC              o32 cld
00001391  C3                ret
00001392  0B28              or bp,[bx+si]
00001394  2300              and ax,[bx+si]
00001396  8F                db 0x8f
00001397  60                pusha
00001398  C7                db 0xc7
00001399  B006              mov al,0x6
0000139B  1F                pop ds
0000139C  CB                retf
0000139D  DA2F              fisubr dword [bx]
0000139F  DF04              fild word [si]
000013A1  7AEC              jpe 0x138f
000013A3  79FC              jns 0x13a1
000013A5  813F0940          cmp word [bx],0x4009
000013A9  841C              test [si],bl
000013AB  1C18              sbb al,0x18
000013AD  1330              adc si,[bx+si]
000013AF  FC                cld
000013B0  83BE008456        cmp word [bp-0x7c00],byte +0x56
000013B5  B308              mov bl,0x8
000013B7  4A                dec dx
000013B8  13F4              adc si,sp
000013BA  FC                cld
000013BB  42                inc dx
000013BC  7E3C              jng 0x13fa
000013BE  02FE              add bh,dh
000013C0  83BBE3CC90        cmp word [bp+di-0x331d],byte -0x70
000013C5  0017              add [bx],dl
000013C7  90                nop
000013C8  90                nop
000013C9  8CC1              mov cx,es
000013CB  8090004CA6        adc byte [bx+si+0x4c00],0xa6
000013D0  8181047F6637      add word [bx+di+0x7f04],0x3766
000013D6  C1183C            rcr word [bx+si],byte 0x3c
000013D9  46                inc si
000013DA  07                pop es
000013DB  F4                hlt
000013DC  BBF800            mov bx,0xf8
000013DF  90                nop
000013E0  FD                std
000013E1  807E668C          cmp byte [bp+0x66],0x8c
000013E5  766C              jna 0x1453
000013E7  181A              sbb [bp+si],bl
000013E9  1F                pop ds
000013EA  0B08              or cx,[bx+si]
000013EC  24CB              and al,0xcb
000013EE  012D              add [di],bp
000013F0  DC97909E          fcom qword [bx-0x6170]
000013F4  14FD              adc al,0xfd
000013F6  15CC08            adc ax,0x8cc
000013F9  0BF8              or di,ax
000013FB  F7AE9F06          imul word [bp+0x69f]
000013FF  06                push es
00001400  08D0              or al,dl
00001402  57                push di
00001403  0107              add [bx],ax
00001405  7C1F              jl 0x1426
00001407  06                push es
00001408  91                xchg ax,cx
00001409  0037              add [bx],dh
0000140B  35D702            xor ax,0x2d7
0000140E  7D66              jnl 0x1476
00001410  0C48              or al,0x48
00001412  9D                popf
00001413  F7021886          test word [bp+si],0x8618
00001417  3197898F          xor [bx-0x7077],dx
0000141B  1818              sbb [bx+si],bl
0000141D  95                xchg ax,bp
0000141E  0000              add [bx+si],al
00001420  1C18              sbb al,0x18
00001422  91                xchg ax,cx
00001423  001ED683          add [0x83d6],bl
00001427  41                inc cx
00001428  002C              add [si],ch
0000142A  6B3714            imul si,[bx],byte +0x14
0000142D  C28D01            ret 0x18d
00001430  015200            add [bp+si+0x0],dx
00001433  766B              jna 0x14a0
00001435  F9                stc
00001436  C7                db 0xc7
00001437  0E                push cs
00001438  1E                push ds
00001439  A9004B            test ax,0x4b00
0000143C  1E                push ds
0000143D  69C0CC06          imul ax,ax,word 0x6cc
00001441  0178AA            add [bx+si-0x56],di
00001444  C10C07            ror word [si],byte 0x7
00001447  B991BE            mov cx,0xbe91
0000144A  6A6C              push byte +0x6c
0000144C  1E                push ds
0000144D  1DFCB5            sbb ax,0xb5fc
00001450  0E                push cs
00001451  5E                pop si
00001452  82                db 0x82
00001453  0B4AAF            or cx,[bp+si-0x51]
00001456  0C6C              or al,0x6c
00001458  07                pop es
00001459  D104              rol word [si],1
0000145B  FC                cld
0000145C  00E5              add ch,ah
0000145E  C3                ret
0000145F  DC12              fcom qword [bp+si]
00001461  7E0D              jng 0x1470
00001463  4A                dec dx
00001464  1318              adc bx,[bx+si]
00001466  FF800146          inc word [bx+si+0x4601]
0000146A  AE                scasb
0000146B  01483E            add [bx+si+0x3e],cx
0000146E  46                inc si
0000146F  91                xchg ax,cx
00001470  FD                std
00001471  8130FFC0          xor word [bx+si],0xc0ff
00001475  002E7117          add [0x1771],ch
00001479  16                push ss
0000147A  02BC1A1F          add bh,[si+0x1f1a]
0000147E  9BDE14            wait ficom word [si]
00001481  BBDA18            mov bx,0x18da
00001484  000E01D0          add [0xd001],cl
00001488  1E                push ds
00001489  007DC6            add [di-0x3a],bh
0000148C  1C02              sbb al,0x2
0000148E  61                popa
0000148F  FC                cld
00001490  806C1D00          sub byte [si+0x1d],0x0
00001494  686007            push word 0x760
00001497  AC                lodsb
00001498  17                pop ss
00001499  340A              xor al,0xa
0000149B  634C00            arpl [si+0x0],cx
0000149E  3803              cmp [bp+di],al
000014A0  0420              add al,0x20
000014A2  E712              out 0x12,ax
000014A4  13C1              adc ax,cx
000014A6  1C6B              sbb al,0x6b
000014A8  DD05              fld qword [di]
000014AA  F8                clc
000014AB  90                nop
000014AC  FD                std
000014AD  0000              add [bx+si],al
000014AF  38FB              cmp bl,bh
000014B1  1E                push ds
000014B2  018E044B          add [bp+0x4b04],cx
000014B6  16                push ss
000014B7  7093              jo 0x144c
000014B9  00633F            add [bp+di+0x3f],ah
000014BC  BF742C            mov di,0x2c74
000014BF  FF00              inc word [bx+si]
000014C1  8930              mov [bx+si],si
000014C3  B052              mov al,0x52
000014C5  02FC              add bh,ah
000014C7  C18203C61E        rol word [bp+si-0x39fd],byte 0x1e
000014CC  46                inc si
000014CD  52                push dx
000014CE  07                pop es
000014CF  7280              jc 0x1451
000014D1  39FE              cmp si,di
000014D3  C00013            rol byte [bx+si],byte 0x13
000014D6  BA3124            mov dx,0x2431
000014D9  090C              or [si],cx
000014DB  706B              jo 0x1548
000014DD  F1                int1
000014DE  1E                push ds
000014DF  FD                std
000014E0  C2F66C            ret 0x6cf6
000014E3  30FC              xor ah,bh
000014E5  42                inc dx
000014E6  8D5202            lea dx,[bp+si+0x2]
000014E9  0081C0C0          add [bx+di-0x3f40],al
000014ED  0A4FCC            or cl,[bx-0x34]
000014F0  661058FC          o32 adc [bx+si-0x4],bl
000014F4  8079321A          cmp byte [bx+di+0x32],0x1a
000014F8  8C906C0C          mov [bx+si+0xc6c],ss
000014FC  00168A94          add [0x948a],dl
00001500  8C19              mov [bx+di],ds
00001502  FE00              inc byte [bx+si]
00001504  D318              rcr word [bx+si],cl
00001506  BB2409            mov bx,0x924
00001509  6C                insb
0000150A  BEFC1B            mov si,0x1bfc
0000150D  EC                in al,dx
0000150E  FC                cld
0000150F  41                inc cx
00001510  17                pop ss
00001511  1E                push ds
00001512  FE4023            inc byte [bx+si+0x23]
00001515  FD                std
00001516  3A18              cmp bl,[bx+si]
00001518  F1                int1
00001519  3102              xor [bp+si],ax
0000151B  681EFF            push word 0xff1e
0000151E  C40D              les cx,[di]
00001520  054D7F            add ax,0x7f4d
00001523  65B3C1            gs mov bl,0xc1
00001526  FE03              inc byte [bp+di]
00001528  16                push ss
00001529  025B8E            add bl,[bp+di-0x72]
0000152C  06                push es
0000152D  C60003            mov byte [bx+si],0x3
00001530  8BFE              mov di,si
00001532  0337              add si,[bx]
00001534  7D05              jnl 0x153b
00001536  07                pop es
00001537  762C              jna 0x1565
00001539  30FE              xor dh,bh
0000153B  93                xchg ax,bx
0000153C  1F                pop ds
0000153D  FC                cld
0000153E  813F1E1D          cmp word [bx],0x1d1e
00001542  7A26              jpe 0x156a
00001544  6C                insb
00001545  80FC05            cmp ah,0x5
00001548  2CF0              sub al,0xf0
0000154A  6D                insw
0000154B  C3                ret
0000154C  FD                std
0000154D  F8                clc
0000154E  B9FC43            mov cx,0x43fc
00001551  B4FD              mov ah,0xfd
00001553  43                inc bx
00001554  2B84648C          sub ax,[si-0x739c]
00001558  01FD              add bp,di
0000155A  013A              add [bp+si],di
0000155C  024E04            add cl,[bp+0x4]
0000155F  FE                db 0xfe
00001560  638002A0          arpl [bx+si-0x5ffe],ax
00001564  A0B199            mov al,[0x99b1]
00001567  FC                cld
00001568  43                inc bx
00001569  B90620            mov cx,0x2006
0000156C  1807              sbb [bx],al
0000156E  FF427F            inc word [bp+si+0x7f]
00001571  C3                ret
00001572  C01E0F8C0A        rcr byte [0x8c0f],byte 0xa
00001577  59                pop cx
00001578  00EA              add dl,ch
0000157A  01B01C16          add [bx+si+0x161c],si
0000157E  FF6395            jmp [bp+di-0x6b]
00001581  1CFE              sbb al,0xfe
00001583  0404              add al,0x4
00001585  6618FF            o32 sbb bh,bh
00001588  044E              add al,0x4e
0000158A  025D04            add bl,[di+0x4]
0000158D  F718              neg word [bx+si]
0000158F  33FE              xor di,si
00001591  82                db 0x82
00001592  7F06              jg 0x159a
00001594  1A2F              sbb ch,[bx]
00001596  3D360D            cmp ax,0xd36
00001599  FD                std
0000159A  C4                db 0xc4
0000159B  FF14              call [si]
0000159D  4F                dec di
0000159E  DE2F              fisubr word [bx]
000015A0  DF01              fild word [bx+di]
000015A2  8D1F              lea bx,[bx]
000015A4  90                nop
000015A5  18FD              sbb ch,bh
000015A7  89D9              mov cx,bx
000015A9  06                push es
000015AA  B01E              mov al,0x1e
000015AC  1D0816            sbb ax,0x1608
000015AF  07                pop es
000015B0  73C2              jnc 0x1574
000015B2  FF                db 0xff
000015B3  FB                sti
000015B4  B6FD              mov dh,0xfd
000015B6  C5                db 0xc5
000015B7  E204              loop 0x15bd
000015B9  E794              out 0x94,ax
000015BB  09E7              or di,sp
000015BD  308C04FE          xor [si-0x1fc],cl
000015C1  FD                std
000015C2  C27C61            ret 0x617c
000015C5  3076DF            xor [bp-0x21],dh
000015C8  3309              xor cx,[bx+di]
000015CA  75EE              jnz 0x15ba
000015CC  80FF07            cmp bh,0x7
000015CF  0F                db 0x0f
000015D0  3F                aas
000015D1  2C11              sub al,0x11
000015D3  C5DF10E2          vmovsd xmm4,xmm4,xmm2
000015D7  800DFC            or byte [di],0xfc
000015DA  22B50445          and dh,[di+0x4504]
000015DE  1B70FD            sbb si,[bx+si-0x3]
000015E1  4B                dec bx
000015E2  43                inc bx
000015E3  4A                dec dx
000015E4  7B90              jpo 0x1576
000015E6  FE00              inc byte [bx+si]
000015E8  0000              add [bx+si],al
000015EA  C3                ret
000015EB  252830            and ax,0x3028
000015EE  0E                push cs
000015EF  343C              xor al,0x3c
000015F1  21883166          and [bx+si+0x6631],cx
000015F5  1198CD1D          adc [bx+si+0x1dcd],bx
000015F9  BC0A41            mov sp,0x410a
000015FC  2B836DF8          sub ax,[bp+di-0x793]
00001600  DA02              fiadd dword [bp+si]
00001602  34FE              xor al,0xfe
00001604  4E                dec si
00001605  DB13              fist dword [bp+di]
00001607  2D1FFF            sub ax,0xff1f
0000160A  C27B0C            ret 0xc7b
0000160D  30FE              xor dh,bh
0000160F  C3                ret
00001610  C1FC00            sar sp,byte 0x0
00001613  002A              add [bp+si],ch
00001615  2818              sub [bx+si],bl
00001617  366D              ss insw
00001619  99                cwd
0000161A  316977            xor [bx+di+0x77],bp
0000161D  9D                popf
0000161E  3018              xor [bx+si],bl
00001620  234E0A            and cx,[bp+0xa]
00001623  41                inc cx
00001624  66F8              o32 clc
00001626  07                pop es
00001627  3F                aas
00001628  253912            and ax,0x1239
0000162B  FD                std
0000162C  C10FC1            ror word [bx],byte 0xc1
0000162F  80AF7794FD        sub byte [bx-0x6b89],0xfd
00001634  C3                ret
00001635  C16130FE          shl word [bx+di+0x30],byte 0xfe
00001639  C13E042927        sar word [0x2904],byte 0x27
0000163E  06                push es
0000163F  6300              arpl [bx+si],ax
00001641  57                push di
00001642  DB4518            fild dword [di+0x18]
00001645  6398253A          arpl [bx+si+0x3a25],bx
00001649  0A4112            or al,[bx+di+0x12]
0000164C  F00218            lock add bl,[bx+si]
0000164F  1C07              sbb al,0x7
00001651  3DD00A            cmp ax,0xad0
00001654  68906D            push word 0x6d90
00001657  1F                pop ds
00001658  9F                lahf
00001659  F7                db 0xf7
0000165A  098BFD01          or [bp+di+0x1fd],cx
0000165E  3F                aas
0000165F  FEC9              dec cl
00001661  24FC              and al,0xfc
00001663  40                inc ax
00001664  006C00            add [si+0x0],ch
00001667  FD                std
00001668  4E                dec si
00001669  FC                cld
0000166A  1DB4E3            sbb ax,0xe3b4
0000166D  60                pusha
0000166E  1BE4              sbb sp,sp
00001670  91                xchg ax,cx
00001671  1DF100            sbb ax,0xf1
00001674  1B1F              sbb bx,[bx]
00001676  0E                push cs
00001677  91                xchg ax,cx
00001678  FD                std
00001679  47                inc di
0000167A  0E                push cs
0000167B  7BA5              jpo 0x1622
0000167D  0800              or [bx+si],al
0000167F  3433              xor al,0x33
00001681  98                cbw
00001682  25390A            and ax,0xa39
00001685  41                inc cx
00001686  9D                popf
00001687  31D5              xor bp,dx
00001689  30FF              xor bh,bh
0000168B  42                inc dx
0000168C  D012              rcl byte [bp+si],1
0000168E  14FC              adc al,0xfc
00001690  28CF              sub bh,cl
00001692  07                pop es
00001693  F8                clc
00001694  AD                lodsw
00001695  FC                cld
00001696  41                inc cx
00001697  3F                aas
00001698  7C06              jl 0x16a0
0000169A  91                xchg ax,cx
0000169B  FD                std
0000169C  0FDB991FDC        pand mm3,[bx+di-0x23e1]
000016A1  70E0              jo 0x1683
000016A3  91                xchg ax,cx
000016A4  B291              mov dl,0x91
000016A6  005818            add [bx+si+0x18],bl
000016A9  06                push es
000016AA  22D4              and dl,ah
000016AC  20A803D8          and [bx+si-0x27fd],ch
000016B0  22D4              and dl,ah
000016B2  FD                std
000016B3  91                xchg ax,cx
000016B4  3261C0            xor ah,[bx+di-0x40]
000016B7  90                nop
000016B8  231B              and bx,[bp+di]
000016BA  96                xchg ax,si
000016BB  801902            sbb byte [bx+di],0x2
000016BE  7D04              jnl 0x16c4
000016C0  9E                sahf
000016C1  B138              mov cl,0x38
000016C3  301D              xor [di],bl
000016C5  68672C            push word 0x2c67
000016C8  CB                retf
000016C9  1C86              sbb al,0x86
000016CB  31853973          xor [di+0x7339],ax
000016CF  121D              adc bl,[di]
000016D1  032D              add bp,[di]
000016D3  11167EA1          adc [0xa17e],dx
000016D7  05B0C9            add ax,0xc9b0
000016DA  0E                push cs
000016DB  8BF6              mov si,si
000016DD  F7F8              idiv ax
000016DF  FE01              inc byte [bx+di]
000016E1  3F                aas
000016E2  FC                cld
000016E3  00CB              add bl,cl
000016E5  90                nop
000016E6  24FF              and al,0xff
000016E8  186024            sbb [bx+si+0x24],ah
000016EB  EA00015030        jmp 0x3050:0x100
000016F0  90                nop
000016F1  90                nop
000016F2  FD                std
000016F3  140A              adc al,0xa
000016F5  027C60            add bh,[si+0x60]
000016F8  B002              mov al,0x2
000016FA  7B26              jpo 0x1722
000016FC  DF83C112          fild word [bp+di+0x12c1]
00001700  24C2              and al,0xc2
00001702  3BEB              cmp bp,bx
00001704  60                pusha
00001705  F8                clc
00001706  49                dec cx
00001707  800281            add byte [bp+si],0x81
0000170A  135DA1            adc bx,[di-0x5f]
0000170D  00E6              add dh,ah
0000170F  C800B889          enter 0xb800,0x89
00001713  71AE              jno 0x16c3
00001715  1F                pop ds
00001716  0C14              or al,0x14
00001718  FE                db 0xfe
00001719  17                pop ss
0000171A  BE309F            mov si,0x9f30
0000171D  27                daa
0000171E  EB06              jmp short 0x1726
00001720  30FE              xor dh,bh
00001722  0000              add [bx+si],al
00001724  10F2              adc dl,dh
00001726  E060              loopne 0x1788
00001728  C2306B            ret 0x6b30
0000172B  5A                pop dx
0000172C  D6                salc
0000172D  E330              jcxz 0x175f
0000172F  18971C4A          sbb [bx+0x4a1c],dl
00001733  9D                popf
00001734  029C0353          add bl,[si+0x5303]
00001738  5B                pop bx
00001739  07                pop es
0000173A  02811213          add al,[bx+di+0x1312]
0000173E  2E6F              cs outsw
00001740  60                pusha
00001741  A00F2E            mov al,[0x2e0f]
00001744  1217              adc dl,[bx]
00001746  07                pop es
00001747  6319              arpl [bx+di],bx
00001749  FC                cld
0000174A  C13F82            sar word [bx],byte 0x82
0000174D  E435              in al,0x35
0000174F  9E                sahf
00001750  27                daa
00001751  EA6000FDC0        jmp 0xc0fd:0x60
00001756  0003              add [bp+di],al
00001758  06                push es
00001759  07                pop es
0000175A  42                inc dx
0000175B  016D0C            add [di+0xc],bp
0000175E  C7                db 0xc7
0000175F  6336914F          arpl [0x4f91],si
00001763  9D                popf
00001764  0C18              or al,0x18
00001766  67C3              a32 ret
00001768  58                pop ax
00001769  DA05              fiadd dword [di]
0000176B  02A60600          add ah,[bp+0x6]
0000176F  831D07            sbb word [di],byte +0x7
00001772  FF                db 0xff
00001773  BC022F            mov sp,0x2f02
00001776  E286              loop 0x16fe
00001778  015A29            add [bp+si+0x29],bx
0000177B  FC                cld
0000177C  41                inc cx
0000177D  3F                aas
0000177E  50                push ax
0000177F  9B07              wait pop es
00001781  1DFF80            sbb ax,0x80ff
00001784  28451A            sub [di+0x1a],al
00001787  054781            add ax,0x8147
0000178A  3142A3            xor [bp+si-0x5d],ax
0000178D  7091              jo 0x1720
0000178F  0582F0            add ax,0xf082
00001792  191D              sbb [di],bx
00001794  FFA41889          jmp [si-0x76e8]
00001798  3DFC0C            cmp ax,0xcfc
0000179B  C3                ret
0000179C  5F                pop di
0000179D  29FE              sub si,di
0000179F  C0E819            shr al,byte 0x19
000017A2  87923BC4          xchg dx,[bp+si-0x3bc5]
000017A6  3C05              cmp al,0x5
000017A8  92                xchg ax,dx
000017A9  9E                sahf
000017AA  0106A29D          add [0x9da2],ax
000017AE  18063C1C          sbb [0x1c3c],al
000017B2  8D03              lea ax,[bp+di]
000017B4  833C73            cmp word [si],byte +0x73
000017B7  B701              mov bh,0x1
000017B9  1C9D              sbb al,0x9d
000017BB  92                xchg ax,dx
000017BC  04FF              add al,0xff
000017BE  2818              sub [bx+si],bl
000017C0  1A1EAEE3          sbb bl,[0xe3ae]
000017C4  866F3C            xchg ch,[bx+0x3c]
000017C7  AE                scasb
000017C8  92                xchg ax,dx
000017C9  00513E            add [bx+di+0x3e],dl
000017CC  8ECD              mov cs,bp
000017CE  60                pusha
000017CF  60                pusha
000017D0  07                pop es
000017D1  F9                stc
000017D2  7395              jnc 0x1769
000017D4  1436              adc al,0x36
000017D6  1417              adc al,0x17
000017D8  46                inc si
000017D9  D9FE              fsin
000017DB  41                inc cx
000017DC  3F                aas
000017DD  0F                db 0x0f
000017DE  CE                into
000017DF  0C63              or al,0x63
000017E1  4D                dec bp
000017E2  7F85              jg 0x1769
000017E4  3E47              ds inc di
000017E6  22C7              and al,bh
000017E8  181F              sbb [bx],bl
000017EA  3B6C3D            cmp bp,[si+0x3d]
000017ED  640123            add [fs:bp+di],sp
000017F0  C7                db 0xc7
000017F1  61                popa
000017F2  92                xchg ax,dx
000017F3  3E0292013F        add dl,[ds:bp+si+0x3f01]
000017F8  3E290C            sub [ds:si],cx
000017FB  188FB00C          sbb [bx+0xcb0],cl
000017FF  05025E            add ax,0x5e02
00001802  91                xchg ax,cx
00001803  92                xchg ax,dx
00001804  FC                cld
00001805  800003            add byte [bx+si],0x3
00001808  6C                insb
00001809  0E                push cs
0000180A  C20C7C            ret 0x7c0c
0000180D  005060            add [bx+si+0x60],dl
00001810  7058              jo 0x186a
00001812  221D              and bl,[di]
00001814  0028              add [bx+si],ch
00001816  181C              sbb [si],bl
00001818  023B              add bh,[bp+di]
0000181A  C2495B            ret 0x5b49
0000181D  DBB8FE01          fstp tword [bx+si+0x1fe]
00001821  3F                aas
00001822  055300            add ax,0x53
00001825  4D                dec bp
00001826  13449D            adc ax,[si-0x63]
00001829  0460              add al,0x60
0000182B  98                cbw
0000182C  9E                sahf
0000182D  9F                lahf
0000182E  92                xchg ax,dx
0000182F  FC                cld
00001830  80003D            add byte [bx+si],0x3d
00001833  AA                stosb
00001834  806113F9          and byte [bx+di+0x13],0xf9
00001838  89708C            mov [bx+si-0x74],si
0000183B  1E                push ds
0000183C  4B                dec bx
0000183D  E84351            call 0x6983
00001840  02C3              add al,bl
00001842  16                push ss
00001843  1E                push ds
00001844  007B02            add [bp+di+0x2],bh
00001847  3B501B            cmp dx,[bx+si+0x1b]
0000184A  44                inc sp
0000184B  F1                int1
0000184C  0814              or [si],dl
0000184E  FD                std
0000184F  1D210C            sbb ax,0xc21
00001852  D3D0              rcl ax,cl
00001854  60                pusha
00001855  D835              fdiv dword [di]
00001857  0C04              or al,0x4
00001859  FF0E606B          dec word [0x6b60]
0000185D  A5                movsw
0000185E  92                xchg ax,dx
0000185F  FD                std
00001860  0000              add [bx+si],al
00001862  649A00C370D5      fs call 0xd570:0xc300
00001868  185634            sbb [bp+0x34],dl
0000186B  2102              and [bp+si],ax
0000186D  53                push bx
0000186E  3361F5            xor sp,[bx+di-0xb]
00001871  7FFF              jg 0x1872
00001873  013F              add [bx],di
00001875  C3                ret
00001876  C00544            rol byte [di],byte 0x44
00001879  117E40            adc [bp+0x40],di
0000187C  C3                ret
0000187D  3F                aas
0000187E  42                inc dx
0000187F  13F4              adc si,sp
00001881  1A4A39            sbb cl,[bp+si+0x39]
00001884  50                push ax
00001885  07                pop es
00001886  350C18            xor ax,0x180c
00001889  F770A5            div word [bx+si-0x5b]
0000188C  92                xchg ax,dx
0000188D  FD                std
0000188E  8000F0            add byte [bx+si],0xf0
00001891  311EFECF          xor [0xcffe],bx
00001895  D20EDA0E          ror byte [0xeda],cl
00001899  D96383            fldenv [bp+di-0x7d]
0000189C  6E                outsb
0000189D  39FC              cmp sp,di
0000189F  013F              add [bx],di
000018A1  04BB              add al,0xbb
000018A3  0D1852            or ax,0x5218
000018A6  D7                xlatb
000018A7  16                push ss
000018A8  7F02              jg 0x18ac
000018AA  7D68              jnl 0x1914
000018AC  60                pusha
000018AD  F5                cmc
000018AE  877F4C            xchg di,[bx+0x4c]
000018B1  A7                cmpsw
000018B2  89D8              mov ax,bx
000018B4  E07F              loopne 0x1935
000018B6  0AFE              or bh,dh
000018B8  013D              add [di],di
000018BA  93                xchg ax,bx
000018BB  0015              add [di],dl
000018BD  07                pop es
000018BE  1893003C          sbb [bp+di+0x3c00],dl
000018C2  94                xchg ax,sp
000018C3  FC                cld
000018C4  0393FF00          add dx,[bp+di+0xff]
000018C8  44                inc sp
000018C9  92                xchg ax,dx
000018CA  FD                std
000018CB  A5                movsw
000018CC  52                push dx
000018CD  45                inc bp
000018CE  BC141B            mov sp,0x1b14
000018D1  16                push ss
000018D2  144E              adc al,0x4e
000018D4  DE01              fiadd word [bx+di]
000018D6  F4                hlt
000018D7  E536              in ax,0x36
000018D9  188D073D          sbb [di+0x3d07],cl
000018DD  43                inc bx
000018DE  6D                insw
000018DF  1418              adc al,0x18
000018E1  141A              adc al,0x1a
000018E3  3CB5              cmp al,0xb5
000018E5  5D                pop bp
000018E6  CB                retf
000018E7  D0                db 0xd0
000018E8  B013              mov al,0x13
000018EA  F4                hlt
000018EB  86CC              xchg cl,ah
000018ED  FD                std
000018EE  40                inc ax
000018EF  94                xchg ax,sp
000018F0  01FB              add bx,di
000018F2  98                cbw
000018F3  FC                cld
000018F4  40                inc ax
000018F5  E393              jcxz 0x188a
000018F7  000F              add [bx],cl
000018F9  6C                insb
000018FA  06                push es
000018FB  FD                std
000018FC  41                inc cx
000018FD  3A578D            cmp dl,[bx-0x73]
00001900  5A                pop dx
00001901  00906303          add [bx+si+0x363],dl
00001905  57                push di
00001906  B000              mov al,0x0
00001908  0D9E0C            or ax,0xc9e
0000190B  189F90E0          sbb [bx-0x1f70],bl
0000190F  C092950136        rcl byte [bp+si+0x195],byte 0x36
00001914  92                xchg ax,dx
00001915  5F                pop di
00001916  A2FD25            mov [0x25fd],al
00001919  52                push dx
0000191A  1B75E0            sbb si,[di-0x20]
0000191D  6C                insb
0000191E  194C61            sbb [si+0x61],cx
00001921  0500D2            add ax,0xd200
00001924  06                push es
00001925  56                push si
00001926  2A13              sub dl,[bp+di]
00001928  40                inc ax
00001929  EB14              jmp short 0x193f
0000192B  136BE5            adc bp,[bp+di-0x1b]
0000192E  0CCC              or al,0xcc
00001930  58                pop ax
00001931  AA                stosb
00001932  02FF              add bh,bh
00001934  B1C2              mov cl,0xc2
00001936  195DCD            sbb [di-0x33],bx
00001939  57                push di
0000193A  E287              loop 0x18c3
0000193C  7F01              jg 0x193f
0000193E  18C0              sbb al,al
00001940  E001              loopne 0x1943
00001942  2501BA            and ax,0xba01
00001945  92                xchg ax,dx
00001946  0039              add [bx+di],bh
00001948  C3                ret
00001949  00A0B9C3          add [bx+si-0x3c47],ah
0000194D  0101              add [bx+di],ax
0000194F  EF                out dx,ax
00001950  92                xchg ax,dx
00001951  01ED              add bp,bp
00001953  07                pop es
00001954  3693              ss xchg ax,bx
00001956  023D              add bh,[di]
00001958  FC                cld
00001959  80F6FD            xor dh,0xfd
0000195C  C000D4            rol byte [bx+si],byte 0xd4
0000195F  8A1E08FF          mov bl,[0xff08]
00001963  94                xchg ax,sp
00001964  D6                salc
00001965  0CB0              or al,0xb0
00001967  7D87              jnl 0x18f0
00001969  027E02            add bh,[bp+0x2]
0000196C  D6                salc
0000196D  7F1F              jg 0x198e
0000196F  7473              jz 0x19e4
00001971  0E                push cs
00001972  E61F              out 0x1f,al
00001974  1DF762            sbb ax,0x62f7
00001977  1306B002          adc ax,[0x2b0]
0000197B  F21974C1          repne sbb [si-0x3f],si
0000197F  1C60              sbb al,0x60
00001981  4E                dec si
00001982  804293FE          add byte [bp+si-0x6d],0xfe
00001986  40                inc ax
00001987  0000              add [bx+si],al
00001989  1BFC              sbb di,sp
0000198B  60                pusha
0000198C  1A54CB            sbb dl,[si-0x35]
0000198F  50                push ax
00001990  141A              adc al,0x1a
00001992  7E02              jng 0x1996
00001994  81F51600          xor bp,0x16
00001998  38AB0361          cmp [bp+di+0x6103],ch
0000199C  BD9F97            mov bp,0x979f
0000199F  187313            sbb [bp+di+0x13],dh
000019A2  74EA              jz 0x198e
000019A4  666348BD          o32 arpl [bx+si-0x43],cx
000019A8  07                pop es
000019A9  831BFE            sbb word [bp+di],byte -0x2
000019AC  027E36            add bh,[bp+0x36]
000019AF  0073CD            add [bp+di-0x33],dh
000019B2  FEC1              inc cl
000019B4  42                inc dx
000019B5  8C01              mov [bx+di],es
000019B7  0001              add [bx+di],al
000019B9  07                pop es
000019BA  AE                scasb
000019BB  C58013F5          lds ax,[bx+si-0xaed]
000019BF  027F4C            add bh,[bx+0x4c]
000019C2  61                popa
000019C3  A90165            test ax,0x6501
000019C6  53                push bx
000019C7  9F                lahf
000019C8  99                cwd
000019C9  5A                pop dx
000019CA  96                xchg ax,si
000019CB  6213              bound dx,[bp+di]
000019CD  839D079662        sbb word [di-0x69f9],byte +0x62
000019D2  5F                pop di
000019D3  07                pop es
000019D4  854272            test [bp+si+0x72],ax
000019D7  0A858778          or al,[di+0x7887]
000019DB  CC                int3
000019DC  7F1C              jg 0x19fa
000019DE  40                inc ax
000019DF  1E                push ds
000019E0  93                xchg ax,bx
000019E1  FC                cld
000019E2  40                inc ax
000019E3  0000              add [bx+si],al
000019E5  06                push es
000019E6  0F39              dmint
000019E8  0A03              or al,[bp+di]
000019EA  1218              adc bl,[bx+si]
000019EC  027E4C            add bh,[bp+0x4c]
000019EF  61                popa
000019F0  33A5709E          xor sp,[di-0x6190]
000019F4  899E018D          mov [bp-0x72ff],bx
000019F8  0913              or [bp+di],dx
000019FA  E694              out 0x94,al
000019FC  FE05              inc byte [di]
000019FE  44                inc sp
000019FF  050412            add ax,0x1204
00001A02  4C                dec sp
00001A03  F38787810B        xrelease xchg ax,[bx+0xb81]
00001A08  61                popa
00001A09  304602            xor [bp+0x2],al
00001A0C  FD                std
00001A0D  C0CB70            ror bl,byte 0x70
00001A10  8A679C            mov ah,[bx-0x64]
00001A13  94                xchg ax,sp
00001A14  70CC              jo 0x19e2
00001A16  731F              jnc 0x1a37
00001A18  94                xchg ax,sp
00001A19  001A              add [bp+si],bl
00001A1B  31C0              xor ax,ax
00001A1D  71F6              jno 0x1a15
00001A1F  9F                lahf
00001A20  60                pusha
00001A21  3093A1C8          xor [bp+di-0x375f],dl
00001A25  180C              sbb [si],cl
00001A27  AA                stosb
00001A28  92                xchg ax,dx
00001A29  0303              add ax,[bp+di]
00001A2B  8BA30C18          mov sp,[bp+di+0x180c]
00001A2F  8F                db 0x8f
00001A30  73D6              jnc 0x1a08
00001A32  66A08A16          o32 mov al,[0x168a]
00001A36  00161C37          add [0x371c],dl
00001A3A  F687FC427E        test byte [bx+0x42fc],0x7e
00001A3F  7C31              jl 0x1a72
00001A41  B707              mov bh,0x7
00001A43  8193FE310931      adc word [bp+di+0x31fe],0x3109
00001A49  C00505            rol byte [di],byte 0x5
00001A4C  4C                dec sp
00001A4D  F238631E          repne cmp [bp+di+0x1e],ah
00001A51  1108              adc [bx+si],cx
00001A53  78B7              js 0x1a0c
00001A55  01CE              add si,cx
00001A57  01588C            add [bx+si-0x74],bx
00001A5A  61                popa
00001A5B  01FC              add sp,di
00001A5D  01B6021F          add [bp+0x1f02],si
00001A61  18069D93          sbb [0x939d],al
00001A65  06                push es
00001A66  CE                into
00001A67  A7                cmpsw
00001A68  94                xchg ax,sp
00001A69  01FD              add bp,di
00001A6B  D8C0              fadd st0
00001A6D  01C2              add dx,ax
00001A6F  0056FF            add [bp-0x1],dl
00001A72  800040            add byte [bx+si],0x40
00001A75  19164308          sbb [0x843],dx
00001A79  8706EF31          xchg ax,[0x31ef]
00001A7D  8C30              mov [bx+si],segr6
00001A7F  A6                cmpsb
00001A80  7729              ja 0x1aab
00001A82  027EF8            add bh,[bp-0x8]
00001A85  16                push ss
00001A86  860D              xchg cl,[di]
00001A88  FD                std
00001A89  B00A              mov al,0xa
00001A8B  2D80FC            sub ax,0xfc80
00001A8E  267914            es jns 0x1aa5
00001A91  D805              fadd dword [di]
00001A93  801E94FD80        sbb byte [0xfd94],0x80
00001A98  0001              add [bx+di],al
00001A9A  35027E            xor ax,0x7e02
00001A9D  08878B89          or [bx-0x7675],al
00001AA1  03CC              add cx,sp
00001AA3  6C                insb
00001AA4  667AFB            o32 jpe 0x1aa2
00001AA7  9ACD077FF7        call 0xf77f:0x7cd
00001AAC  F8                clc
00001AAD  185525            sbb [di+0x25],dl
00001AB0  FC                cld
00001AB1  8144693B00        add word [si+0x69],0x3b
00001AB6  034CF3            add cx,[si-0xd]
00001AB9  3C62              cmp al,0x62
00001ABB  03C0              add ax,ax
00001ABD  FD                std
00001ABE  813F1857          cmp word [bx],0x5718
00001AC2  7B11              jpo 0x1ad5
00001AC4  027E19            add bh,[bp+0x19]
00001AC7  8727              xchg sp,[bx]
00001AC9  1919              sbb [bx+di],bx
00001ACB  57                push di
00001ACC  D6                salc
00001ACD  0011              add [bx+di],dl
00001ACF  1D9A95            sbb ax,0x959a
00001AD2  94                xchg ax,sp
00001AD3  0198AA28          add [bx+si+0x28aa],bx
00001AD7  60                pusha
00001AD8  1819              sbb [bx+di],bl
00001ADA  66CB              o32 retf
00001ADC  07                pop es
00001ADD  856060            test [bx+si+0x60],sp
00001AE0  4C                dec sp
00001AE1  F3FC              rep cld
00001AE3  42                inc dx
00001AE4  CE                into
00001AE5  0340FC            add ax,[bx+si-0x4]
00001AE8  0000              add [bx+si],al
00001AEA  DE                db 0xde
00001AEB  D119              rcr word [bx+di],1
00001AED  86801176          xchg al,[bx+si+0x7611]
00001AF1  F1                int1
00001AF2  92                xchg ax,dx
00001AF3  06                push es
00001AF4  48                dec ax
00001AF5  17                pop ss
00001AF6  1A07              sbb al,[bx]
00001AF8  0C38              or al,0x38
00001AFA  1A9898AD          sbb bl,[bx+si-0x5268]
00001AFE  6710CC            a32 adc ah,cl
00001B01  0009              add [bx+di],cl
00001B03  A002CD            mov al,[0xcd02]
00001B06  07                pop es
00001B07  36307329          xor [ss:bp+di+0x29],dh
00001B0B  FD                std
00001B0C  5D                pop bp
00001B0D  FE                db 0xfe
00001B0E  FD                std
00001B0F  80D2B8            adc dl,0xb8
00001B12  31958A8E          xor [di-0x7176],dx
00001B16  8F                db 0x8f
00001B17  6C                insb
00001B18  3000              xor [bx+si],al
00001B1A  2A00              sub al,[bx+si]
00001B1C  2800              sub [bx+si],al
00001B1E  720C              jc 0x1b2c
00001B20  E090              loopne 0x1ab2
00001B22  95                xchg ax,bp
00001B23  002C              add [si],ch
00001B25  18A7C595          sbb [bx-0x6a3b],ah
00001B29  0031              add [bx+di],dh
00001B2B  DBD1              fcmovnbe st1
00001B2D  0C58              or al,0x58
00001B2F  8510              test [bx+si],dx
00001B31  1B43FC            sbb ax,[bp+di-0x4]
00001B34  70ED              jo 0x1b23
00001B36  C20783            ret 0x8307
00001B39  D508              aad 0x8
00001B3B  1C17              sbb al,0x17
00001B3D  02E0              add ah,al
00001B3F  16                push ss
00001B40  C2FFF4            ret 0xf4ff
00001B43  6F                outsw
00001B44  0E                push cs
00001B45  18FE              sbb dh,bh
00001B47  41                inc cx
00001B48  40                inc ax
00001B49  95                xchg ax,bp
00001B4A  016102            add [bx+di+0x2],sp
00001B4D  0B6600            or sp,[bp+0x0]
00001B50  01628F            add [bp+si-0x71],sp
00001B53  03C6              add ax,si
00001B55  AE                scasb
00001B56  018C3033          add [si+0x3330],cx
00001B5A  019C918A          add [si-0x756f],bx
00001B5E  8E060C89          mov es,[0x890c]
00001B62  92                xchg ax,dx
00001B63  60                pusha
00001B64  3000              xor [bx+si],al
00001B66  01A63036          add [bp+0x3630],sp
00001B6A  C1FF80            sar di,byte 0x80
00001B6D  250029            and ax,0x2900
00001B70  0C26              or al,0x26
00001B72  8C8ADFDB          mov [bp+si-0x2421],cs
00001B76  D4CE              aam 0xce
00001B78  0498              add al,0x98
00001B7A  CDCD              int 0xcd
00001B7C  CB                retf
00001B7D  C520              lds sp,[bx+si]
00001B7F  40                inc ax
00001B80  94                xchg ax,sp
00001B81  0306076B          add ax,[0x6b07]
00001B85  8A02              mov al,[bp+si]
00001B87  5F                pop di
00001B88  1898BB74          sbb [bx+si+0x74bb],bl
00001B8C  FEC1              inc cl
00001B8E  B054              mov al,0x54
00001B90  4F                dec di
00001B91  80DEFD            sbb dh,0xfd
00001B94  4C                dec sp
00001B95  F4                hlt
00001B96  6D                insw
00001B97  300A              xor [bp+si],cl
00001B99  A1FF40            mov ax,[0x40ff]
00001B9C  AB                stosw
00001B9D  0154A9            add [si-0x57],dx
00001BA0  70C0              jo 0x1b62
00001BA2  94                xchg ax,sp
00001BA3  01E6              add si,sp
00001BA5  60                pusha
00001BA6  83A3FE8108        and word [bp+di-0x7e02],byte +0x8
00001BAB  FC                cld
00001BAC  800055            add byte [bx+si],0x55
00001BAF  036ECA            add bp,[bp-0x36]
00001BB2  D6                salc
00001BB3  D102              rol word [bp+si],1
00001BB5  7CCD              jl 0x1b84
00001BB7  CC                int3
00001BB8  C8879456          enter 0x9487,0x56
00001BBC  36025219          add dl,[ss:bp+si+0x19]
00001BC0  0819              or [bx+di],bl
00001BC2  64FC              fs cld
00001BC4  1A457D            sbb al,[di+0x7d]
00001BC7  7460              jz 0x1c29
00001BC9  8A28              mov ch,[bx+si]
00001BCB  A21C18            mov [0x181c],al
00001BCE  41                inc cx
00001BCF  AE                scasb
00001BD0  81015D54          add word [bx+di],0x545d
00001BD4  20CD              and ch,cl
00001BD6  0307              add ax,[bx]
00001BD8  53                push bx
00001BD9  4D                dec bp
00001BDA  95                xchg ax,bp
00001BDB  FD                std
00001BDC  C00060            rol byte [bx+si],byte 0x60
00001BDF  351E24            xor ax,0x241e
00001BE2  16                push ss
00001BE3  D002              rol byte [bp+si],1
00001BE5  7B89              jpo 0x1b70
00001BE7  0524C9            add ax,0xc924
00001BEA  C402              les ax,[bp+si]
00001BEC  351418            xor ax,0x1814
00001BEF  191C              sbb [si],bx
00001BF1  AD                lodsw
00001BF2  06                push es
00001BF3  0C3E              or al,0x3e
00001BF5  C502              lds ax,[bp+si]
00001BF7  81D84663          sbb ax,0x6346
00001BFB  4A                dec dx
00001BFC  2DA3D9            sub ax,0xd9a3
00001BFF  AF                scasw
00001C00  F7410111EA        test word [bx+di+0x1],0xea11
00001C05  07                pop es
00001C06  1DEFDB            sbb ax,0xdbef
00001C09  00FD              add ch,bh
00001C0B  37                aaa
00001C0C  B61C              mov dh,0x1c
00001C0E  25FD81            and ax,0x81fd
00001C11  3C98              cmp al,0x98
00001C13  B61B              mov dh,0x1b
00001C15  74C3              jz 0x1bda
00001C17  C8CC027C          enter 0x2cc,0x7c
00001C1B  04FE              add al,0xfe
00001C1D  013B              add [bp+di],di
00001C1F  82                db 0x82
00001C20  C8072E18          enter 0x2e07,0x18
00001C24  0203              add al,[bp+di]
00001C26  0306568C          add ax,[0x8c56]
00001C2A  667912            o32 jns 0x1c3f
00001C2D  8707              xchg ax,[bx]
00001C2F  1918              sbb [bx+si],bx
00001C31  1A04              sbb al,[si]
00001C33  8D1F              lea bx,[bx]
00001C35  65FB              gs sti
00001C37  01DB              add bx,bx
00001C39  C600DC            mov byte [bx+si],0xdc
00001C3C  FF03              inc word [bp+di]
00001C3E  C2000A            ret 0xa00
00001C41  FE01              inc byte [bx+di]
00001C43  2E1D1E04          cs sbb ax,0x41e
00001C47  F5                cmc
00001C48  4C                dec sp
00001C49  2904              sub [si],ax
00001C4B  21C5              and bp,ax
00001C4D  CB                retf
00001C4E  027ECB            add bh,[bp-0x35]
00001C51  C782C8A006C2      mov word [bp+si-0x5f38],0xc206
00001C57  16                push ss
00001C58  3C18              cmp al,0x18
00001C5A  BA1818            mov dx,0x1818
00001C5D  4A                dec dx
00001C5E  F77A4B            idiv word [bp+si+0x4b]
00001C61  28A81708          sub [bx+si+0x817],ch
00001C65  02061D07          add al,[0x71d]
00001C69  FC                cld
00001C6A  C13F19            sar word [bx],byte 0x19
00001C6D  C000E7            rol byte [bx+si],byte 0xe7
00001C70  2E10F0            cs adc al,dh
00001C73  0DFE03            or ax,0x3fe
00001C76  C2968A            ret 0x8a96
00001C79  8B8F33C6          mov cx,[bx-0x39cd]
00001C7D  8D959080          lea dx,[di-0x7f70]
00001C81  61                popa
00001C82  9F                lahf
00001C83  A39560            mov [0x6095],ax
00001C86  18AA9518          sbb [bp+si+0x1895],ch
00001C8A  06                push es
00001C8B  92                xchg ax,dx
00001C8C  8E0618A7          mov es,[0xa718]
00001C90  A08631            mov al,[0x3186]
00001C93  A6                cmpsb
00001C94  A122F3            mov ax,[0xf322]
00001C97  1B0C              sbb cx,[si]
00001C99  06                push es
00001C9A  C8DD0417          enter 0x4dd,0x17
00001C9E  42                inc dx
00001C9F  03C3              add ax,bx
00001CA1  C7                db 0xc7
00001CA2  CB                retf
00001CA3  CC                int3
00001CA4  CDCC              int 0xcc
00001CA6  CB                retf
00001CA7  C9                leave
00001CA8  A5                movsw
00001CA9  01BA4B98          add [bp+si-0x67b5],di
00001CAD  80EE08            sub dh,0x8
00001CB0  1A08              sbb cl,[bx+si]
00001CB2  1F                pop ds
00001CB3  C9                leave
00001CB4  BDED33            mov bp,0x33ed
00001CB7  FD                std
00001CB8  9A2304821C        call 0x1c82:0x423
00001CBD  8AE1              mov ah,cl
00001CBF  F8                clc
00001CC0  AC                lodsb
00001CC1  1900              sbb [bx+si],ax
00001CC3  51                push cx
00001CC4  1408              adc al,0x8
00001CC6  96                xchg ax,si
00001CC7  01A1015A          add [bx+di+0x5a01],sp
00001CCB  031C              add bx,[si]
00001CCD  028212AF          add al,[bp+si-0x50ee]
00001CD1  06                push es
00001CD2  67015296          add [edx-0x6a],dx
00001CD6  01FA              add dx,di
00001CD8  BAF0C1            mov dx,0xc1f0
00001CDB  96                xchg ax,si
00001CDC  0018              add [bx+si],bl
00001CDE  E800C6            call 0xe2e1
00001CE1  DB02              fild dword [bp+si]
00001CE3  46                inc si
00001CE4  98                cbw
00001CE5  C10205            rol word [bp+si],byte 0x5
00001CE8  01B3FC80          add [bp+di-0x7f04],si
00001CEC  00D8              add al,bl
00001CEE  0C51              or al,0x51
00001CF0  A01567            mov al,[0x6715]
00001CF3  027909            add bh,[bx+di+0x9]
00001CF6  17                pop ss
00001CF7  22C3              and al,bl
00001CF9  C3                ret
00001CFA  C5                db 0xc5
00001CFB  C8C9C8C7          enter 0xc8c9,0xc7
00001CFF  A201F5            mov [0xf501],al
00001D02  B631              mov dh,0x31
00001D04  B14B              mov cl,0x4b
00001D06  2A0E7AB7          sub cl,[0xb77a]
00001D0A  89D8              mov ax,bx
00001D0C  34FC              xor al,0xfc
00001D0E  5C                pop sp
00001D0F  C514              lds dx,[si]
00001D11  2119              and [bx+di],bx
00001D13  1A17              sbb dl,[bx]
00001D15  203636D8          and [0xd836],dh
00001D19  893C              mov [si],di
00001D1B  5C                pop sp
00001D1C  235E00            and bx,[bp+0x0]
00001D1F  830115            add word [bx+di],byte +0x15
00001D22  215B19            and [bp+di+0x19],bx
00001D25  184B91            sbb [bp+di-0x6f],cl
00001D28  004CFE            add [si-0x2],cl
00001D2B  40                inc ax
00001D2C  0060D3            add [bx+si-0x2d],ah
00001D2F  097B74            or [bp+di+0x74],di
00001D32  6D                insw
00001D33  C2171D            ret 0x1d17
00001D36  54                push sp
00001D37  3800              cmp [bx+si],al
00001D39  65C3              gs ret
00001D3B  C502              lds ax,[bp+si]
00001D3D  52                push dx
00001D3E  024728            add al,[bx+0x28]
00001D41  831317            adc word [bp+di],byte +0x17
00001D44  2C91              sub al,0x91
00001D46  01B4CD0C          add [si+0xccd],si
00001D4A  FC                cld
00001D4B  9C                pushf
00001D4C  C527              lds sp,[bx]
00001D4E  F00335            lock add si,[di]
00001D51  289C460D          sub [si+0xd46],bl
00001D55  81EF161D          sub di,0x1d16
00001D59  FC                cld
00001D5A  008DD260          add [di+0x60d2],cl
00001D5E  364B              ss dec bx
00001D60  90                nop
00001D61  07                pop es
00001D62  CF                iret
00001D63  FE813E80          inc byte [bx+di-0x7fc2]
00001D67  4D                dec bp
00001D68  48                dec ax
00001D69  40                inc ax
00001D6A  81A28912F9C1      and word [bp+si+0x1289],0xc1f9
00001D70  875013            xchg dx,[bx+si+0x13]
00001D73  FC                cld
00001D74  2B7C1E            sub di,[si+0x1e]
00001D77  01B2D960          add [bp+si+0x60d9],si
00001D7B  C213ED            ret 0xed13
00001D7E  06                push es
00001D7F  B789              mov bh,0x89
00001D81  FD                std
00001D82  1CC5              sbb al,0xc5
00001D84  03D8              add bx,ax
00001D86  8834              mov [si],dh
00001D88  1B78D9            sbb di,[bx+si-0x27]
00001D8B  07                pop es
00001D8C  19898E1E          sbb [bx+di+0x1e8e],cx
00001D90  FC                cld
00001D91  808EBAA606        or byte [bp-0x5946],0x6
00001D96  4E                dec si
00001D97  0414              add al,0x14
00001D99  1200              adc al,[bx+si]
00001D9B  C8FC8000          enter 0x80fc,0x0
00001D9F  B0AB              mov al,0xab
00001DA1  86A08A57          xchg ah,[bx+si+0x578a]
00001DA5  648A12            mov dl,[fs:bp+si]
00001DA8  FC                cld
00001DA9  6A6C              push byte +0x6c
00001DAB  9E                sahf
00001DAC  6F                outsw
00001DAD  16                push ss
00001DAE  081EFC03          or [0x3fc],bl
00001DB2  A4                movsb
00001DB3  48                dec ax
00001DB4  1B1D              sbb bx,[di]
00001DB6  FE813FFC          inc byte [bx+di-0x3c1]
00001DBA  D3FF              sar di,cl
00001DBC  53                push bx
00001DBD  317A0C            xor [bp+si+0xc],di
00001DC0  1A1F              sbb bl,[bx]
00001DC2  96                xchg ax,si
00001DC3  FE4280            inc byte [bp+si-0x80]
00001DC6  04FE              add al,0xfe
00001DC8  FD                std
00001DC9  C3                ret
00001DCA  C08E01978A        ror byte [bp-0x68ff],byte 0x8a
00001DCF  95                xchg ax,bp
00001DD0  06                push es
00001DD1  9B0041FF          wait add [bx+di-0x1],al
00001DD5  40                inc ax
00001DD6  42                inc dx
00001DD7  869EB302          xchg bl,[bp+0x2b3]
00001DDB  098915B9          or [bx+di-0x46eb],cx
00001DDF  C21318            ret 0x1813
00001DE2  9E                sahf
00001DE3  1C30              sbb al,0x30
00001DE5  1CD4              sbb al,0xd4
00001DE7  52                push dx
00001DE8  CAC0CA            retf 0xcac0
00001DEB  4F                dec di
00001DEC  9E                sahf
00001DED  AE                scasb
00001DEE  1F                pop ds
00001DEF  FE413F            inc byte [bx+di+0x3f]
00001DF2  30C0              xor al,al
00001DF4  2CFE              sub al,0xfe
00001DF6  E281              loop 0x1d79
00001DF8  01970153          add [bx+0x5301],dx
00001DFC  D3C6              rol si,cl
00001DFE  0E                push cs
00001DFF  55                push bp
00001E00  91                xchg ax,cx
00001E01  FD                std
00001E02  83C097            add ax,byte -0x69
00001E05  0020              add [bx+si],ah
00001E07  0E                push cs
00001E08  37                aaa
00001E09  97                xchg ax,di
00001E0A  8E9600BA          mov ss,[bp-0x4600]
00001E0E  91                xchg ax,cx
00001E0F  6663A18B89        o32 arpl [bx+di-0x7675],sp
00001E14  8F                db 0x8f
00001E15  8C819789          mov [bx+di-0x7669],es
00001E19  01C3              add bx,ax
00001E1B  92                xchg ax,dx
00001E1C  9B18C0            wait sbb al,al
00001E1F  004CB1            add [si-0x4f],cl
00001E22  C060968D          shl byte [bx+si-0x6a],byte 0x8d
00001E26  C500              lds ax,[bx+si]
00001E28  DB04              fild dword [si]
00001E2A  FC                cld
00001E2B  04FA              add al,0xfa
00001E2D  386089            cmp [bx+si-0x77],ah
00001E30  8C51B3            mov [bx+di-0x4d],ss
00001E33  0CA5              or al,0xa5
00001E35  0338              add di,[bx+si]
00001E37  ED                in ax,dx
00001E38  96                xchg ax,si
00001E39  39CD              cmp bp,cx
00001E3B  B062              mov al,0x62
00001E3D  775D              ja 0x1e9c
00001E3F  F7AFA6FD          imul word [bx-0x25a]
00001E43  013F              add [bx],di
00001E45  661825            o32 sbb [di],ah
00001E48  7303              jnc 0x1e4d
00001E4A  3401              xor al,0x1
00001E4C  1218              adc bl,[bx+si]
00001E4E  0E                push cs
00001E4F  0120              add [bx+si],sp
00001E51  305A91            xor [bp+si-0x6f],bl
00001E54  0A0C              or cl,[si]
00001E56  07                pop es
00001E57  1D0178            sbb ax,0x7801
00001E5A  BA30C5            mov dx,0xc530
00001E5D  007296            add [bp+si-0x6a],dh
00001E60  97                xchg ax,di
00001E61  009330D8          add [bp+di-0x27d0],dl
00001E65  00B0FC40          add [bx+si+0x40fc],dh
00001E69  0007              add [bx],al
00001E6B  281D              sub [di],bl
00001E6D  3012              xor [bp+si],dl
00001E6F  04FD              add al,0xfd
00001E71  0956B2            or [bp-0x4e],dx
00001E74  09F2              or dx,si
00001E76  3330              xor si,[bx+si]
00001E78  005B18            add [bp+di+0x18],bl
00001E7B  D502              aad 0x2
00001E7D  F20536F8          repne add ax,0xf836
00001E81  1C0E              sbb al,0xe
00001E83  AF                scasw
00001E84  FE01              inc byte [bx+di]
00001E86  3F                aas
00001E87  16                push ss
00001E88  B5B0              mov ch,0xb0
00001E8A  0D0732            or ax,0x3207
00001E8D  FC                cld
00001E8E  40                inc ax
00001E8F  90                nop
00001E90  55                push bp
00001E91  0C70              or al,0x70
00001E93  8097FD8000        adc byte [bx-0x7f03],0x0
00001E98  6D                insw
00001E99  8603              xchg al,[bp+di]
00001E9B  DA                db 0xda
00001E9C  FC                cld
00001E9D  82                db 0x82
00001E9E  7F29              jg 0x1ec9
00001EA0  8900              mov [bx+si],ax
00001EA2  5E                pop si
00001EA3  811D0505          sbb word [di],0x505
00001EA7  0CEF              or al,0xef
00001EA9  1452              adc al,0x52
00001EAB  90                nop
00001EAC  B001              mov al,0x1
00001EAE  FD                std
00001EAF  813F22EA          cmp word [bx],0xea22
00001EB3  F5                cmc
00001EB4  0107              add [bx],ax
00001EB6  1C1B              sbb al,0x1b
00001EB8  771E              ja 0x1ed8
00001EBA  FD                std
00001EBB  027EFF            add bh,[bp-0x1]
00001EBE  C13FCC            sar word [bx],byte 0xcc
00001EC1  60                pusha
00001EC2  09A409FE          or [si-0x1f7],sp
00001EC6  65E360            gs jcxz 0x1f29
00001EC9  3000              xor [bx+si],al
00001ECB  6334              arpl [si],si
00001ECD  9E                sahf
00001ECE  E000              loopne 0x1ed0
00001ED0  122A              adc ch,[bp+si]
00001ED2  003D              add [di],bh
00001ED4  60                pusha
00001ED5  07                pop es
00001ED6  1A18              sbb bl,[bx+si]
00001ED8  FC                cld
00001ED9  F4                hlt
00001EDA  8A82BEB1          mov al,[bp+si-0x4e42]
00001EDE  0E                push cs
00001EDF  1B07              sbb ax,[bx]
00001EE1  1438              adc al,0x38
00001EE3  FC                cld
00001EE4  6E                outsb
00001EE5  AE                scasb
00001EE6  FE413F            inc byte [bx+di+0x3f]
00001EE9  C00C06            ror byte [si],byte 0x6
00001EEC  59                pop cx
00001EED  0E                push cs
00001EEE  FF                db 0xff
00001EEF  DB3EFD43          fstp tword [0x43fd]
00001EF3  B8FD82            mov ax,0x82fd
00001EF6  82                db 0x82
00001EF7  FC                cld
00001EF8  31B71DFC          xor [bx-0x3e3],si
00001EFC  E0CE              loopne 0x1ecc
00001EFE  27                daa
00001EFF  E96005            jmp 0x2462
00001F02  98                cbw
00001F03  07                pop es
00001F04  124958            adc cl,[bx+di+0x58]
00001F07  0C86              or al,0x86
00001F09  006CFE            add [si-0x2],ch
00001F0C  41                inc cx
00001F0D  3F                aas
00001F0E  C26698            ret 0x9866
00001F11  98                cbw
00001F12  8D8E908D          lea cx,[bp-0x7270]
00001F16  8C31              mov [bx+di],segr6
00001F18  92                xchg ax,dx
00001F19  89956080          mov [di-0x7fa0],dx
00001F1D  9E                sahf
00001F1E  8131B692          xor word [bx+di],0x92b6
00001F22  AC                lodsb
00001F23  60                pusha
00001F24  308FC206          xor [bx+0x6c2],cl
00001F28  CE                into
00001F29  CA980B            retf 0xb98
00001F2C  EC                in al,dx
00001F2D  300C              xor [si],cl
00001F2F  13FE              adc di,si
00001F31  027BE9            add bh,[bp+di-0x17]
00001F34  0C0C              or al,0xc
00001F36  CC                int3
00001F37  E018              loopne 0x1f51
00001F39  6C                insb
00001F3A  8D                db 0x8d
00001F3B  FE                db 0xfe
00001F3C  A1EC0C            mov ax,[0xcec]
00001F3F  2C83              sub al,0x83
00001F41  01AC0217          add [si+0x1702],bp
00001F45  06                push es
00001F46  3407              xor al,0x7
00001F48  B114              mov cl,0x14
00001F4A  8B8C05E9          mov cx,[si-0x16fb]
00001F4E  EC                in al,dx
00001F4F  8CFD              mov bp,segr7
00001F51  6F                outsw
00001F52  869701D1          xchg dl,[bx-0x2eff]
00001F56  017331            add [bp+di+0x31],si
00001F59  0C01              or al,0x1
00001F5B  BF9B9A            mov di,0x9a9b
00001F5E  18DC              sbb ah,bl
00001F60  A99800            test ax,0x98
00001F63  08C0              or al,al
00001F65  30BE0202          xor [bp+0x202],bh
00001F69  FEC0              inc al
00001F6B  000C              add [si],cl
00001F6D  C3                ret
00001F6E  105707            adc [bx+0x7],dl
00001F71  0FB602            movzx ax,[bp+si]
00001F74  13E1              adc sp,cx
00001F76  FF00              inc word [bx+si]
00001F78  37                aaa
00001F79  FE                db 0xfe
00001F7A  25B114            and ax,0x14b1
00001F7D  08AC030C          or [si+0xc03],ch
00001F81  07                pop es
00001F82  17                pop ss
00001F83  04FE              add al,0xfe
00001F85  18766C            sbb [bp+0x6c],dh
00001F88  52                push dx
00001F89  FF01              inc word [bx+di]
00001F8B  3F                aas
00001F8C  98                cbw
00001F8D  FD                std
00001F8E  0000              add [bx+si],al
00001F90  80014F            add byte [bx+di],0x4f
00001F93  F5                cmc
00001F94  3DDBC3            cmp ax,0xc3db
00001F97  C431              les si,[bx+di]
00001F99  1162FC            adc [bp+si-0x4],sp
00001F9C  0039              add [bx+di],bh
00001F9E  FD                std
00001F9F  7A80              jpe 0x1f21
00001FA1  0E                push cs
00001FA2  A800              test al,0x0
00001FA4  06                push es
00001FA5  AD                lodsw
00001FA6  054E0C            add ax,0xc4e
00001FA9  1809              sbb [bx+di],cl
00001FAB  FE                db 0xfe
00001FAC  7153              jno 0x2001
00001FAE  03A0FD81          add sp,[bx+si-0x7e03]
00001FB2  3F                aas
00001FB3  98                cbw
00001FB4  1E                push ds
00001FB5  20B62C7F          and [bp+0x7f2c],dh
00001FB9  C3                ret
00001FBA  C6                db 0xc6
00001FBB  CE                into
00001FBC  D0D3              rcl bl,1
00001FBE  1C1E              sbb al,0x1e
00001FC0  FC                cld
00001FC1  8039FC            cmp byte [bx+di],0xfc
00001FC4  8505              test [di],ax
00001FC6  8301C2            add word [bx+di],byte -0x3e
00001FC9  02FD              add bh,ch
00001FCB  07                pop es
00001FCC  8B03              mov ax,[bp+di]
00001FCE  0307              add ax,[bx]
00001FD0  81FF827F          cmp di,0x7f82
00001FD4  60                pusha
00001FD5  8606CC48          xchg al,[0x48cc]
00001FD9  6C                insb
00001FDA  6C                insb
00001FDB  80D0D3            adc al,0xd3
00001FDE  DBDE              fcmovnu st6
00001FE0  DF                db 0xdf
00001FE1  FE417A            inc byte [bx+di+0x7a]
00001FE4  31FB              xor bx,di
00001FE6  0103              add [bp+di],ax
00001FE8  07                pop es
00001FE9  F723              mul word [bp+di]
00001FEB  9C                pushf
00001FEC  DB                db 0xdb
00001FED  304DC1            xor [di-0x3f],cl
00001FF0  006371            add [bp+di+0x71],ah
00001FF3  53                push bx
00001FF4  0000              add [bx+si],al
00001FF6  60                pusha
00001FF7  0A7180            or dh,[bx+di-0x80]
00001FFA  17                pop ss
00001FFB  1E                push ds
00001FFC  FD                std
00001FFD  C0EEC7            shr dh,byte 0xc7
00002000  60                pusha
00002001  99                cwd
00002002  8A00              mov al,[bx+si]
00002004  2F                das
00002005  8D                db 0x8d
00002006  C01800            rcr byte [bx+si],byte 0x0
00002009  29A4B01D          sub [si+0x1db0],sp
0000200D  8900              mov [bx+si],ax
0000200F  3F                aas
00002010  99                cwd
00002011  02861863          add al,[bp+0x6318]
00002015  8902              mov [bp+si],ax
00002017  78B1              js 0x1fca
00002019  867100            xchg dh,[bx+di+0x0]
0000201C  4A                dec dx
0000201D  9C                pushf
0000201E  99                cwd
0000201F  00B50618          add [di+0x1806],dh
00002023  4D                dec bp
00002024  8004F8            add byte [si],0xf8
00002027  8681CB8D          xchg al,[bx+di-0x7235]
0000202B  6307              arpl [bx],ax
0000202D  99                cwd
0000202E  4B                dec bx
0000202F  AF                scasw
00002030  A7                cmpsw
00002031  1F                pop ds
00002032  07                pop es
00002033  EF                out dx,ax
00002034  1B60FC            sbb sp,[bx+si-0x4]
00002037  48                dec ax
00002038  FE896C3F          dec byte [bx+di+0x3f6c]
0000203C  6A1C              push byte +0x1c
0000203E  16                push ss
0000203F  1CFF              sbb al,0xff
00002041  41                inc cx
00002042  1200              adc al,[bx+si]
00002044  1B99003F          sbb bx,[bx+di+0x3f00]
00002048  7CC6              jl 0x2010
0000204A  99                cwd
0000204B  011B              add [bp+di],bx
0000204D  020E0001          add cl,[0x100]
00002051  01C3              add bx,ax
00002053  98                cbw
00002054  9D                popf
00002055  0037              add [bx],dh
00002057  8601              xchg al,[bx+di]
00002059  002B              add [bp+di],ch
0000205B  90                nop
0000205C  D0061800          rol byte [0x18],1
00002060  55                push bp
00002061  A90C83            test ax,0x830c
00002064  B1B6              mov cl,0xb6
00002066  8101BCED          add word [bx+di],0xedbc
0000206A  06                push es
0000206B  0CCA              or al,0xca
0000206D  4D                dec bp
0000206E  E66C              out 0x6c,al
00002070  06                push es
00002071  0F                db 0x0f
00002072  6D                insw
00002073  00D7              add bh,dl
00002075  8C8CB957          mov [si+0x57b9],cs
00002079  33931CFC          xor dx,[bp+di-0x3e4]
0000207D  FB                sti
0000207E  FE                db 0xfe
0000207F  51                push cx
00002080  06                push es
00002081  713F              jno 0x20c2
00002083  E9DA03            jmp 0x2460
00002086  7601              jna 0x2089
00002088  30063801          xor [0x138],al
0000208C  D19801A8          rcr word [bx+si-0x57ff],1
00002090  1860B7            sbb [bx+si-0x49],ah
00002093  FC                cld
00002094  0000              add [bx+si],al
00002096  00864DE7          add [bp-0x18b3],al
0000209A  2B931EFC          sub dx,[bp+di-0x3e2]
0000209E  40                inc ax
0000209F  2F                das
000020A0  0814              or [si],dl
000020A2  FC                cld
000020A3  C13F76            sar word [bx],byte 0x76
000020A6  3EE8D7DF          ds call 0x81
000020AA  99                cwd
000020AB  0000              add [bx+si],al
000020AD  FE8000C9          inc byte [bx+si-0x3700]
000020B1  0E                push cs
000020B2  1E                push ds
000020B3  1814              sbb [si],dl
000020B5  C2FC82            ret 0x82fc
000020B8  7E02              jng 0x20bc
000020BA  7D2C              jnl 0x20e8
000020BC  FF01              inc word [bx+di]
000020BE  3E00D8            ds add al,bl
000020C1  89D8              mov ax,bx
000020C3  126150            adc ah,[bx+di+0x50]
000020C6  FF01              inc word [bx+di]
000020C8  45                inc bp
000020C9  803EE8E82E        cmp byte [0xe8e8],0x2e
000020CE  99                cwd
000020CF  FC                cld
000020D0  0000              add [bx+si],al
000020D2  00C0              add al,al
000020D4  B1C2              mov cl,0xc2
000020D6  1E                push ds
000020D7  3E6E              ds outsb
000020D9  FD                std
000020DA  E07D              loopne 0x2159
000020DC  07                pop es
000020DD  D2FF              sar bh,cl
000020DF  027C6D            add bh,[si+0x6d]
000020E2  C6                db 0xc6
000020E3  9A898D8F94        call 0x948f:0x8d89
000020E8  300C              xor [si],cl
000020EA  8B9497C6          mov dx,[si-0x3969]
000020EE  30A3A9B3          xor [bp+di-0x4c57],ah
000020F2  18869AB8          sbb [bp-0x4766],al
000020F6  61                popa
000020F7  60                pusha
000020F8  8C9CB618          mov [si+0x18b6],ds
000020FC  0CBB              or al,0xbb
000020FE  B50C              mov ch,0xc
00002100  0CCD              or al,0xcd
00002102  C10C30            ror word [si],byte 0x30
00002105  B9CE60            mov cx,0x60ce
00002108  309DC118          xor [di+0x18c1],bl
0000210C  0CC5              or al,0xc5
0000210E  A6                cmpsb
0000210F  06                push es
00002110  06                push es
00002111  D99D0683          fstp dword [di-0x7cfa]
00002115  DDDC              fstp st4
00002117  318000F7          xor [bx+si-0x900],ax
0000211B  8D31              lea si,[bx+di]
0000211D  1801              sbb [bx+di],al
0000211F  33EC              xor bp,sp
00002121  D38C4F8D          ror word [si-0x72b1],cl
00002125  1E                push ds
00002126  FD                std
00002127  A07D23            mov al,[0x237d]
0000212A  F8                clc
0000212B  DE                db 0xde
0000212C  DF6130            fbld tword [bx+di+0x30]
0000212F  0178F2            add [bx+si-0xe],di
00002132  CB                retf
00002133  8001F0            add byte [bx+di],0xf0
00002136  06                push es
00002137  C3                ret
00002138  9F                lahf
00002139  01B100C3          add [bx+di-0x3d00],si
0000213D  F200F1            repne add cl,dh
00002140  07                pop es
00002141  8099000AFF        sbb byte [bx+di+0xa00],0xff
00002146  C00086            rol byte [bx+si],byte 0x86
00002149  B11E              mov cl,0x1e
0000214B  1D1D0F            sbb ax,0xf1d
0000214E  8634              xchg dh,[si]
00002150  BE23F9            mov si,0xf923
00002153  0300              add ax,[bx+si]
00002155  9AFDC00038        call 0x3800:0xc0fd
0000215A  0E                push cs
0000215B  1E                push ds
0000215C  5D                pop bp
0000215D  5D                pop bp
0000215E  07                pop es
0000215F  FF413C            inc word [bx+di+0x3c]
00002162  006002            add [bx+si+0x2],ah
00002165  93                xchg ax,bx
00002166  C000FD            rol byte [bx+si],byte 0xfd
00002169  813C0018          cmp word [si],0x1800
0000216D  FE4000            inc byte [bx+si+0x0]
00002170  38869B8D          cmp [bp-0x7265],al
00002174  8E6103            mov fs,[bx+di+0x3]
00002177  95                xchg ax,bp
00002178  8B94036C          mov dx,[si+0x6c03]
0000217C  A5                movsw
0000217D  0021              add [bx+di],ah
0000217F  007630            add [bp+0x30],dh
00002182  60                pusha
00002183  93                xchg ax,bx
00002184  004A06            add [bp+si+0x6],cl
00002187  0CD9              or al,0xd9
00002189  CA3030            retf 0x3030
0000218C  90                nop
0000218D  F6980100          neg byte [bx+si+0x1]
00002191  73B4              jnc 0x2147
00002193  06                push es
00002194  0300              add ax,[bx+si]
00002196  D6                salc
00002197  B80618            mov ax,0x1806
0000219A  A0D2C3            mov al,[0xc3d2]
0000219D  0098B106          add [bx+si+0x6b1],bl
000021A1  18A3E030          sbb [bp+di+0x30e0],ah
000021A5  06                push es
000021A6  009F9818          add [bx+0x1898],bl
000021AA  350011            xor ax,0x1100
000021AD  9B9AFE40DFD8      wait call 0xd8df:0x40fe
000021B3  18E0              sbb al,ah
000021B5  02069B89          add al,[0x899b]
000021B9  0C06              or al,0x6
000021BB  8E900306          mov ss,[bx+si+0x603]
000021BF  9AA303988D        call 0x8d98:0x3a3
000021C4  0010              add [bx+si],dl
000021C6  8D01              lea ax,[bx+di]
000021C8  FF4000            inc word [bx+si+0x0]
000021CB  EC                in al,dx
000021CC  003676FC          add [0xfc76],dh
000021D0  000D              add [di],cl
000021D2  9A00299A00        call 0x9a:0x2900
000021D7  369A007C8039      ss call 0x3980:0x7c00
000021DD  001E9A00          add [0x9a],bl
000021E1  3E3660            ss pusha
000021E4  FE40AA            inc byte [bx+si-0x56]
000021E7  AB                stosw
000021E8  C3                ret
000021E9  7030              jo 0x221b
000021EB  9A016C01DE        call 0xde01:0x6c01
000021F0  C0A001429A        shl byte [bx+si+0x4201],byte 0x9a
000021F5  9A0600FDC0        call 0xc0fd:0x6
000021FA  87FF              xchg di,di
000021FC  C00000            rol byte [bx+si],byte 0x0
000021FF  0000              add [bx+si],al
00002201  0000              add [bx+si],al
00002203  00C0              add al,al
00002205  00FC              add ah,bh
00002207  8000F8            add byte [bx+si],0xf8
0000220A  189C898E          sbb [si-0x7177],bl
0000220E  90                nop
0000220F  30068F8C          xor [0x8c8f],al
00002213  CC                int3
00002214  60                pusha
00002215  8DA88A0C          lea bp,[bx+si+0xc8a]
00002219  06                push es
0000221A  AC                lodsb
0000221B  8D6330            lea sp,[bp+di+0x30]
0000221E  97                xchg ax,di
0000221F  91                xchg ax,cx
00002220  B030              mov al,0x30
00002222  188BB218          sbb [bp+di+0x18b2],cl
00002226  18B48D30          sbb [si+0x308d],dh
0000222A  309D9E06          xor [di+0x69e],bl
0000222E  03F8              add di,ax
00002230  9E                sahf
00002231  0383BC8B          add ax,[bp+di-0x7444]
00002235  8181A697C130      add word [bx+di-0x685a],0x30c1
0000223B  A4                movsb
0000223C  0143F0            add [bp+di-0x10],ax
0000223F  18060122          sbb [0x2201],al
00002243  9C                pushf
00002244  3060AA            xor [bx+si-0x56],ah
00002247  E9180C            jmp 0x2e62
0000224A  AA                stosb
0000224B  E00C              loopne 0x2259
0000224D  60                pusha
0000224E  8B9C188C          mov bx,[si-0x73e8]
00002252  AA                stosb
00002253  01BD81E1          add [di-0x1e7f],di
00002257  99                cwd
00002258  018F9CCA          add [bx-0x3564],cx
0000225C  C080E9C1C0        rol byte [bx+si-0x3e17],byte 0xc0
00002261  94                xchg ax,sp
00002262  F4                hlt
00002263  61                popa
00002264  60                pusha
00002265  9B0217            wait add dl,[bx]
00002268  8D                db 0x8d
00002269  DF6000            fbld tword [bx+si+0x0]
0000226C  FFC0              inc ax
0000226E  0000              add [bx+si],al
00002270  0000              add [bx+si],al
00002272  0000              add [bx+si],al
00002274  0000              add [bx+si],al
00002276  0CFE              or al,0xfe
00002278  800080            add byte [bx+si],0x80
0000227B  839D8C8101        sbb word [di-0x7e74],byte +0x1
00002280  95                xchg ax,bp
00002281  93                xchg ax,bx
00002282  366392958C        arpl [ss:bp+si-0x736b],dx
00002287  AE                scasb
00002288  8081A801CC        add byte [bx+di+0x1a8],0xcc
0000228D  99                cwd
0000228E  8CCC              mov sp,cs
00002290  98                cbw
00002291  A9009B            test ax,0x9b00
00002294  005C00            add [si+0x0],bl
00002297  A2CF00            mov [0xcf],al
0000229A  9C                pushf
0000229B  00D5              add ch,dl
0000229D  007794            add [bx-0x6c],dh
000022A0  06                push es
000022A1  18C9              sbb cl,cl
000022A3  CC                int3
000022A4  C0008F            rol byte [bx+si],byte 0x8f
000022A7  FB                sti
000022A8  8000BB            add byte [bx+si],0xbb
000022AB  9D                popf
000022AC  FE40D3            inc byte [bx+si-0x2d]
000022AF  008A1D9C          add [bp+si-0x63e3],cl
000022B3  0015              add [di],dl
000022B5  9D                popf
000022B6  01F9              add cx,di
000022B8  9D                popf
000022B9  004502            add [di+0x2],al
000022BC  039D9C00          add bx,[di+0x9c]
000022C0  67012D630C8902    add [dword 0x2890c63],bp
000022C7  4F                dec di
000022C8  95                xchg ax,bp
000022C9  0C06              or al,0x6
000022CB  90                nop
000022CC  9F                lahf
000022CD  336000            xor sp,[bx+si+0x0]
000022D0  11AC002D          adc [si+0x2d00],bp
000022D4  67639C0044004100  arpl [dword eax+eax+0x410044],bx
000022DC  42                inc dx
000022DD  AD                lodsw
000022DE  60                pusha
000022DF  C0CD00            ror ch,byte 0x0
000022E2  669A017600B1066C  call dword 0x6c06:0xb1007601
000022EA  8C00              mov [bx+si],es
000022EC  54                push sp
000022ED  B8B00F            mov ax,0xfb0
000022F0  0038              add [bx+si],bh
000022F2  9C                pushf
000022F3  00A600A4          add [bp-0x5c00],ah
000022F7  06                push es
000022F8  D8D3              fcom st3
000022FA  FC                cld
000022FB  00A2060A          add [bp+si+0xa06],ah
000022FF  FC                cld
00002300  00B0B09C          add [bx+si-0x6350],dh
00002304  9C                pushf
00002305  C4                db 0xc4
00002306  E060              loopne 0x2368
00002308  9D                popf
00002309  0105              add [di],ax
0000230B  00C0              add al,al
0000230D  06                push es
0000230E  06                push es
0000230F  0089FFC0          add [bx+di-0x3f01],cl
00002313  0000              add [bx+si],al
00002315  0000              add [bx+si],al
00002317  0000              add [bx+si],al
00002319  0000              add [bx+si],al
0000231B  C08003FF40        rol byte [bx+si-0xfd],byte 0x40
00002320  0000              add [bx+si],al
00002322  FD                std
00002323  800019            add byte [bx+si],0x19
00002326  E568              in ax,0x68
00002328  6A6C              push byte +0x6c
0000232A  6C                insb
0000232B  6F                outsw
0000232C  92                xchg ax,dx
0000232D  6768946D          push word 0x6d94
00002331  94                xchg ax,sp
00002332  78C2              js 0x22f6
00002334  6393676A          arpl [bp+di+0x6a67],dx
00002338  6D                insw
00002339  6D                insw
0000233A  9F                lahf
0000233B  37                aaa
0000233C  A864              test al,0x64
0000233E  93                xchg ax,bx
0000233F  94                xchg ax,sp
00002340  B460              mov ah,0x60
00002342  6493              fs xchg ax,bx
00002344  830668C060        add word [0xc068],byte +0x60
00002349  6367CB            arpl [bx-0x35],sp
0000234C  3E386094          cmp [ds:bx+si-0x6c],ah
00002350  00B167DF          add [bx+di-0x2099],dh
00002354  0C03              or al,0x3
00002356  93                xchg ax,bx
00002357  B40C              mov ah,0xc
00002359  E0A7              loopne 0x2302
0000235B  68A706            push word 0x6a7
0000235E  33ACF5AC          xor bp,[si-0x530b]
00002362  C02893            shr byte [bx+si],byte 0x93
00002365  60                pusha
00002366  67FE40F1          inc byte [eax-0xf]
0000236A  F8                clc
0000236B  7469              jz 0x23d6
0000236D  019A01CD          add [bp+si-0x32ff],bx
00002371  686969            push word 0x6969
00002374  8D6C6D            lea bp,[si+0x6d]
00002377  3F                aas
00002378  D7                xlatb
00002379  6E                outsb
0000237A  8D6600            lea sp,[bp+0x0]
0000237D  FC                cld
0000237E  696B6A6C6E        imul bp,[bp+di+0x6a],word 0x6e6c
00002383  94                xchg ax,sp
00002384  666693            xchg eax,ebx
00002387  6E                outsb
00002388  8AA16A94          mov ah,[bx+di-0x6b96]
0000238C  9F                lahf
0000238D  6567B8D726        gs mov ax,0x26d7
00002392  6B020D            imul ax,[bp+si],byte +0xd
00002395  65658DACB960      lea bp,[gs:si+0x60b9]
0000239B  626363            bound sp,[bp+di+0x63]
0000239E  61                popa
0000239F  19B89460          sbb [bx+si+0x6094],di
000023A3  60                pusha
000023A4  61                popa
000023A5  6364B8            arpl [si-0x48],sp
000023A8  B3ED              mov bl,0xed
000023AA  9F                lahf
000023AB  94                xchg ax,sp
000023AC  8DB86802          lea di,[bx+si+0x268]
000023B0  2336A302          and si,[0x2a3]
000023B4  86B80000          xchg bh,[bx+si+0x0]
000023B8  6E                outsb
000023B9  6D                insw
000023BA  C08A91C46C        ror byte [bp+si-0x3b6f],byte 0x6c
000023BF  6D                insw
000023C0  0104              add [si],ax
000023C2  0D6C02            or ax,0x26c
000023C5  B894D0            mov ax,0xd094
000023C8  96                xchg ax,si
000023C9  63DB              arpl bx,bx
000023CB  02D0              add dl,al
000023CD  F5                cmc
000023CE  D0DC              rcr ah,1
000023D0  B1CD              mov cl,0xcd
000023D2  6B94D093B8        imul dx,[si-0x6c30],byte -0x48
000023D7  E0B3              loopne 0x238c
000023D9  A166E7            mov ax,[0xe766]
000023DC  0318              add bx,[bx+si]
000023DE  F4                hlt
000023DF  1BCA              sbb cx,dx
000023E1  61                popa
000023E2  00EE              add dh,ch
000023E4  F5                cmc
000023E5  61                popa
000023E6  62B84001          bound di,[bx+si+0x140]
000023EA  E262              loop 0x244e
000023EC  6201              bound ax,[bx+di]
000023EE  E16E              loope 0x245e
000023F0  E667              out 0x67,al
000023F2  03C1              add ax,cx
000023F4  ED                in ax,dx
000023F5  BA6B94            mov dx,0x946b
000023F8  F6D9              neg cl
000023FA  F8                clc
000023FB  6D                insw
000023FC  BEEAE9            mov si,0xe9ea
000023FF  C6                db 0xc6
00002400  7603              jna 0x2405
00002402  F8                clc
00002403  CA9300            retf 0x93
00002406  F4                hlt
00002407  6AB7              push byte -0x49
00002409  60                pusha
0000240A  03F6              add si,si
0000240C  92                xchg ax,dx
0000240D  0CE8              or al,0xe8
0000240F  DF6565            fbld tword [di+0x65]
00002412  66AA              o32 stosb
00002414  61                popa
00002415  36CF              ss iret
00002417  F4                hlt
00002418  0453              add al,0x53
0000241A  CF                iret
0000241B  8D6F61            lea bp,[bx+0x61]
0000241E  61                popa
0000241F  63C3              arpl bx,ax
00002421  67CF              a32 iret
00002423  01F5              add bp,si
00002425  94                xchg ax,sp
00002426  0CD8              or al,0xd8
00002428  0371E7            add si,[bx+di-0x19]
0000242B  31C0              xor ax,ax
0000242D  6F                outsw
0000242E  03DC              add bx,sp
00002430  94                xchg ax,sp
00002431  9C                pushf
00002432  0DF56A            or ax,0x6af5
00002435  0210              add dl,[bx+si]
00002437  D104              rol word [si],1
00002439  B6DB              mov dh,0xdb
0000243B  6700D8            a32 add al,bl
0000243E  EA6601B3B8        jmp 0xb8b3:0x166
00002443  F5                cmc
00002444  3F                aas
00002445  DB                db 0xdb
00002446  6401E4            fs add sp,sp
00002449  68ACF5            push word 0xf5ac
0000244C  93                xchg ax,bx
0000244D  182B              sbb [bp+di],ch
0000244F  B8F003            mov ax,0x3f0
00002452  006365            add [bp+di+0x65],ah
00002455  B8D866            mov ax,0x66d8
00002458  94                xchg ax,sp
00002459  95                xchg ax,bp
0000245A  AC                lodsb
0000245B  052CD8            add ax,0xd82c
0000245E  3000              xor [bx+si],al
00002460  0004              add [si],al
00002462  FFE4              jmp sp
00002464  030692FE          add ax,[0xfe92]
00002468  C25B63            ret 0x635b
0000246B  4C                dec sp
0000246C  8903              mov [bp+di],ax
0000246E  B289              mov dl,0x89
00002470  6B6C5338          imul bp,[si+0x53],byte +0x38
00002474  6C                insb
00002475  04E7              add al,0xe7
00002477  696A05F169        imul bp,[bp+si+0x5],word 0x69f1
0000247C  93                xchg ax,bx
0000247D  C0                db 0xc0
0000247E  7001              jo 0x2481
00002480  1A6593            sbb ah,[di-0x6d]
00002483  800263            add byte [bp+si],0x63
00002486  6593              gs xchg ax,bx
00002488  1C0A              sbb al,0xa
0000248A  60                pusha
0000248B  0488              add al,0x88
0000248D  60                pusha
0000248E  6200              bound ax,[bx+si]
00002490  17                pop ss
00002491  8C02              mov [bp+si],es
00002493  00EB              add bl,ch
00002495  6F                outsw
00002496  6F                outsw
00002497  00160718          add [0x1807],dl
0000249B  6C                insb
0000249C  94                xchg ax,sp
0000249D  031B              add bx,[bp+di]
0000249F  76C0              jna 0x2461
000024A1  05006D            add ax,0x6d00
000024A4  93                xchg ax,bx
000024A5  708C              jo 0x2433
000024A7  0302              add ax,[bp+si]
000024A9  0007              add [bx],al
000024AB  BB0591            mov bx,0x9105
000024AE  0D1F03            or ax,0x31f
000024B1  E101              loope 0x24b4
000024B3  06                push es
000024B4  60                pusha
000024B5  FC                cld
000024B6  025CEB            add bl,[si-0x15]
000024B9  C7                db 0xc7
000024BA  CE                into
000024BB  6C                insb
000024BC  03B1936D          add si,[bx+di+0x6d93]
000024C0  07                pop es
000024C1  A4                movsb
000024C2  8719              xchg bx,[bx+di]
000024C4  6901FAED          imul ax,[bx+di],word 0xedfa
000024C8  06                push es
000024C9  B4AB              mov ah,0xab
000024CB  65F66265          mul byte [gs:bp+si+0x65]
000024CF  06                push es
000024D0  B595              mov ch,0x95
000024D2  037E66            add di,[bp+0x66]
000024D5  05C5D9            add ax,0xd9c5
000024D8  C6                db 0xc6
000024D9  B88906            mov ax,0x689
000024DC  8402              test [bp+si],al
000024DE  12C6              adc al,dh
000024E0  D8F4              fdiv st4
000024E2  94                xchg ax,sp
000024E3  03B00683          add si,[bx+si-0x7cfa]
000024E7  D80C              fmul dword [si]
000024E9  0371A0            add si,[bx+di-0x60]
000024EC  FD                std
000024ED  817F01CB1B        cmp word [bx+0x1],0x1bcb
000024F2  3305              xor ax,[di]
000024F4  6402A70565        add ah,[fs:bx+0x6505]
000024F9  02A73386          add ah,[bx-0x79cd]
000024FD  056404            add ax,0x464
00002500  D404              aam 0x4
00002502  6F                outsw
00002503  02066064          add al,[0x6460]
00002507  FD                std
00002508  0582FC            add ax,0xfc82
0000250B  02A83518          add ch,[bx+si+0x1835]
0000250F  60                pusha
00002510  640B5704          or dx,[fs:bx+0x4]
00002514  0E                push cs
00002515  FD                std
00002516  0000              add [bx+si],al
00002518  C0E00C            shl al,byte 0xc
0000251B  3467              xor al,0x67
0000251D  FD                std
0000251E  00F2              add dl,dh
00002520  C3                ret
00002521  7001              jo 0x2524
00002523  8D06B76C          lea ax,[0x6cb7]
00002527  06                push es
00002528  B614              mov dh,0x14
0000252A  B068              mov al,0x68
0000252C  6A92              push byte -0x6e
0000252E  FC                cld
0000252F  04B9              add al,0xb9
00002531  0D6C08            or ax,0x86c
00002534  98                cbw
00002535  92                xchg ax,dx
00002536  089989D0          or [bx+di-0x2f77],bl
0000253A  186061            sbb [bx+si+0x61],ah
0000253D  630D              arpl [di],cx
0000253F  7700              ja 0x2541
00002541  E298              loop 0x24db
00002543  61                popa
00002544  054AF5            add ax,0xf54a
00002547  0470              add al,0x70
00002549  DB                db 0xdb
0000254A  E60E              out 0xe,al
0000254C  45                inc bp
0000254D  0E                push cs
0000254E  3105              xor [di],ax
00002550  4A                dec dx
00002551  07                pop es
00002552  AB                stosw
00002553  6E                outsb
00002554  06                push es
00002555  3CAC              cmp al,0xac
00002557  66AC              o32 lodsb
00002559  6B6D054A          imul bp,[di+0x5],byte +0x4a
0000255D  E996B3            jmp 0xd8f6
00002560  99                cwd
00002561  05AA0A            add ax,0xaaa
00002564  37                aaa
00002565  0121              add [bx+di],sp
00002567  F5                cmc
00002568  BBD965            mov bx,0x65d9
0000256B  09C0              or ax,ax
0000256D  6A09              push byte +0x9
0000256F  7301              jnc 0x2572
00002571  3909              cmp [bx+di],cx
00002573  72CD              jc 0x2542
00002575  360009            add [ss:bx+di],cl
00002578  72C6              jc 0x2540
0000257A  05C109            add ax,0x9c1
0000257D  D308              ror word [bx+si],cl
0000257F  7F40              jg 0x25c1
00002581  61                popa
00002582  6E                outsb
00002583  6F                outsw
00002584  07                pop es
00002585  60                pusha
00002586  01DE              add si,bx
00002588  D830              fdiv dword [bx+si]
0000258A  0107              add [bx],ax
0000258C  07                pop es
0000258D  64F4              fs hlt
0000258F  86630D            xchg ah,[bp+di+0xd]
00002592  98                cbw
00002593  6B089B            imul cx,[bx+si],byte -0x65
00002596  07                pop es
00002597  90                nop
00002598  180C              sbb [si],cl
0000259A  0A1E0C35          or bl,[0x350c]
0000259E  838D079200        or word [di-0x6df9],byte +0x0
000025A3  F9                stc
000025A4  0000              add [bx+si],al
000025A6  2BB36701          sub si,[bp+di+0x167]
000025AA  CA6E6F            retf 0x6f6e
000025AD  07                pop es
000025AE  5F                pop di
000025AF  EA010D51D8        jmp 0xd851:0xd01
000025B4  028C6D6D          add cl,[si+0x6d6d]
000025B8  00F4              add ah,dh
000025BA  9F                lahf
000025BB  BE3900            mov si,0x39
000025BE  F4                hlt
000025BF  6507              gs pop es
000025C1  5F                pop di
000025C2  B8078F            mov ax,0x8f07
000025C5  67B8ECB8          mov ax,0xb8ec
000025C9  93                xchg ax,bx
000025CA  6202              bound ax,[bp+si]
000025CC  A862              test al,0x62
000025CE  08516F            or [bx+di+0x6f],dl
000025D1  B36A              mov bl,0x6a
000025D3  01780D            add [bx+si+0xd],di
000025D6  3800              cmp [bx+si],al
000025D8  EF                out dx,ax
000025D9  034694            add ax,[bp-0x6c]
000025DC  1D1802            sbb ax,0x218
000025DF  01660B            add [bp+0xb],sp
000025E2  54                push sp
000025E3  C537              lds si,[bx]
000025E5  366B01E6          imul ax,[ss:bx+di],byte -0x1a
000025E9  0838              or [bx+si],bh
000025EB  01E7              add di,sp
000025ED  08FC              or ah,bh
000025EF  F66101            mul byte [bx+di+0x1]
000025F2  E762              out 0x62,ax
000025F4  C59301E6          lds dx,[bp+di-0x19ff]
000025F8  0C06              or al,0x6
000025FA  F5                cmc
000025FB  93                xchg ax,bx
000025FC  66D8B809AC        o32 fdivr dword [bx+si-0x53f7]
00002601  0AAFD8B6          or ch,[bx-0x4928]
00002605  09AC0138          or [si+0x3801],bp
00002609  F209ACF6BB        repne or [si-0x440a],bp
0000260E  C3                ret
0000260F  6508986097        or [gs:bx+si-0x68a0],bl
00002614  60                pusha
00002615  0AAC181B          or ch,[si+0x1b18]
00002619  03C7              add ax,di
0000261B  0E                push cs
0000261C  2A03              sub al,[bp+di]
0000261E  C7                db 0xc7
0000261F  EB36              jmp short 0x2657
00002621  B000              mov al,0x0
00002623  F1                int1
00002624  93                xchg ax,bx
00002625  03C6              add ax,si
00002627  F1                int1
00002628  B301              mov bl,0x1
0000262A  52                push dx
0000262B  6B0107            imul ax,[bx+di],byte +0x7
0000262E  64097293          or [fs:bp+si-0x6d],si
00002632  CDDC              int 0xdc
00002634  DC0F              fmul qword [bx]
00002636  3801              cmp [bx+di],al
00002638  A1620F            mov ax,[0xf62]
0000263B  38E1              cmp cl,ah
0000263D  03680A            add bp,[bx+si+0xa]
00002640  8069FC45          sub byte [bx+di-0x4],0x45
00002644  4B                dec bx
00002645  11F2              adc dx,si
00002647  C68604A0F6        mov byte [bp-0x5ffc],0xf6
0000264C  C50F              lds cx,[bx]
0000264E  186C04            sbb [si+0x4],ch
00002651  A10C00            mov ax,[0xc]
00002654  0A4C1B            or cl,[si+0x1b]
00002657  0C0C              or al,0xc
00002659  01F5              add bp,si
0000265B  03CB              add cx,bx
0000265D  1B9BA00F          sbb bx,[bp+di+0xfa0]
00002661  1202              adc al,[bp+si]
00002663  73CA              jnc 0x262f
00002665  61                popa
00002666  C6                db 0xc6
00002667  A2B8D5            mov [0xd5b8],al
0000266A  C014B8            rcl byte [si],byte 0xb8
0000266D  128C6060          adc cl,[si+0x6060]
00002671  027283            add dh,[bp+si-0x7d]
00002674  3B02              cmp ax,[bp+si]
00002676  D56B              aad 0x6b
00002678  03AF0011          add bp,[bx+0x1100]
0000267C  DC362B05          fdiv qword [0x52b]
00002680  AA                stosb
00002681  03C7              add ax,di
00002683  94                xchg ax,sp
00002684  6D                insw
00002685  0005              add [di],al
00002687  1AB8D965          sbb bh,[bx+si+0x65d9]
0000268B  0B26B80B          or sp,[0xbb8]
0000268F  3D296B            cmp ax,0x6b29
00002692  64123C            adc bh,[fs:si]
00002695  006205            add [bp+si+0x5],ah
00002698  95                xchg ax,bp
00002699  02ED              add ch,ch
0000269B  626162            bound sp,[bx+di+0x62]
0000269E  02EB              add ch,bl
000026A0  363011            xor [ss:bx+di],dl
000026A3  18B803C6          sbb [bx+si-0x39fd],bh
000026A7  C3                ret
000026A8  00B803C6          add [bx+si-0x39fd],bh
000026AC  C3                ret
000026AD  7604              jna 0x26b3
000026AF  A212E8            mov [0xe812],al
000026B2  05976E            add ax,0x6e97
000026B5  03C6              add ax,si
000026B7  0C3B              or al,0x3b
000026B9  0599F6            add ax,0xf699
000026BC  6B05AC            imul ax,[di],byte -0x54
000026BF  86E3              xchg ah,bl
000026C1  0E                push cs
000026C2  5F                pop di
000026C3  6907A868          imul ax,[bx],word 0x68a8
000026C7  DF800365          fild word [bx+si+0x6503]
000026CB  93                xchg ax,bx
000026CC  361C04            ss sbb al,0x4
000026CF  A005A9            mov al,[0xa905]
000026D2  6407              fs pop es
000026D4  8E6063            mov fs,[bx+si+0x63]
000026D7  01CA              add dx,cx
000026D9  03C6              add ax,si
000026DB  04B9              add al,0xb9
000026DD  9C                pushf
000026DE  C6                db 0xc6
000026DF  6603DD            add ebx,ebp
000026E2  6E                outsb
000026E3  006413            add [si+0x13],ah
000026E6  F08C8DDC13        lock mov [di+0x13dc],cs
000026EB  F00301            lock add ax,[bx+di]
000026EE  0D3ADF            or ax,0xdf3a
000026F1  CC                int3
000026F2  6B0778            imul ax,[bx],byte +0x78
000026F5  6500F5            gs add ch,dh
000026F8  93                xchg ax,bx
000026F9  05C1DC            add ax,0xdcc1
000026FC  1807              sbb [bx],al
000026FE  8F                db 0x8f
000026FF  6211              bound dx,[bx+di]
00002701  4A                dec dx
00002702  07                pop es
00002703  8F                db 0x8f
00002704  B80336            mov ax,0x3603
00002707  15BD07            adc ax,0x7bd
0000270A  7816              js 0x2722
0000270C  9A333303C7        call 0xc703:0x3333
00002711  06                push es
00002712  B4F5              mov ah,0xf5
00002714  00F1              add cl,dh
00002716  0C35              or al,0x35
00002718  93                xchg ax,bx
00002719  6B6D04B9          imul bp,[di+0x4],byte -0x47
0000271D  03C6              add ax,si
0000271F  6E                outsb
00002720  306D07            xor [di+0x7],ch
00002723  44                inc sp
00002724  B80272            mov ax,0x7202
00002727  18B603DC          sbb [bp-0x23fd],dh
0000272B  02D5              add dl,ch
0000272D  010EC1CC          add [0xccc1],cx
00002731  B80C42            mov ax,0x420c
00002734  05001C            add ax,0x1c00
00002737  66FD              o32 std
00002739  0BE8              or bp,ax
0000273B  670015FE0020FD    add [dword 0xfd2000fe],dl
00002742  05E130            add ax,0x30e1
00002745  8EFF              mov segr7,di
00002747  C6                db 0xc6
00002748  FF6C0C            jmp far [si+0xc]
0000274B  2F                das
0000274C  61                popa
0000274D  3804              cmp [si],al
0000274F  9C                pushf
00002750  0A35              or dh,[di]
00002752  6712E4            a32 adc ah,ah
00002755  8E0D              mov cs,[di]
00002757  6307              arpl [bx],ax
00002759  2B10              sub dx,[bx+si]
0000275B  0E                push cs
0000275C  0E                push cs
0000275D  5A                pop dx
0000275E  360C00            ss or al,0x0
00002761  17                pop ss
00002762  00F3              add bl,dh
00002764  19C8              sbb ax,cx
00002766  6636005EFD        o32 add [ss:bp-0x3],bl
0000276B  0000              add [bx+si],al
0000276D  1A7711            sbb dh,[bx+0x11]
00002770  1CE6              sbb al,0xe6
00002772  AC                lodsb
00002773  1A766C            sbb dh,[bp+0x6c]
00002776  004107            add [bx+di+0x7],al
00002779  5C                pop sp
0000277A  6A6D              push byte +0x6d
0000277C  C0                db 0xc0
0000277D  30A994FC          xor [bx+di-0x36c],ch
00002781  80578339          adc byte [bx-0x7d],0x39
00002785  13920017          adc dx,[bp+si+0x1700]
00002789  6D                insw
0000278A  00163080          add [0x8030],dl
0000278E  AC                lodsb
0000278F  61                popa
00002790  1804              sbb [si],al
00002792  B714              mov bh,0x14
00002794  FB                sti
00002795  07                pop es
00002796  5F                pop di
00002797  8E6A61            mov gs,[bp+si+0x61]
0000279A  13D9              adc bx,cx
0000279C  61                popa
0000279D  61                popa
0000279E  FC                cld
0000279F  0222              add ah,[bp+si]
000027A1  696C6BE0CC        imul bp,[si+0x6b],word 0xcce0
000027A6  60                pusha
000027A7  1C2A              sbb al,0x2a
000027A9  94                xchg ax,sp
000027AA  02619A            add ah,[bx+di-0x66]
000027AD  B16B              mov cl,0x6b
000027AF  6B6E0E9A          imul bp,[bp+0xe],byte -0x66
000027B3  197100            sbb [bx+di+0x0],si
000027B6  C3                ret
000027B7  C1                db 0xc1
000027B8  7602              jna 0x27bc
000027BA  C0ACFC0968        shr byte [si+0x9fc],byte 0x68
000027BF  6701431C          add [ebx+0x1c],ax
000027C3  306002            xor [bx+si+0x2],ah
000027C6  4D                dec bp
000027C7  D933              fnstenv [bp+di]
000027C9  DB07              fild dword [bx]
000027CB  84930392          test [bp+di-0x6dfd],dl
000027CF  F1                int1
000027D0  CC                int3
000027D1  6C                insb
000027D2  95                xchg ax,bp
000027D3  8B97B2B4          mov dx,[bx-0x4b4e]
000027D7  B68D              mov dh,0x8d
000027D9  98                cbw
000027DA  0E                push cs
000027DB  EB19              jmp short 0x27f6
000027DD  98                cbw
000027DE  98                cbw
000027DF  9D                popf
000027E0  99                cwd
000027E1  07                pop es
000027E2  8D6998            lea bp,[bx+di-0x68]
000027E5  96                xchg ax,si
000027E6  F1                int1
000027E7  1DE7AC            sbb ax,0xace7
000027EA  65B163            gs mov cl,0x63
000027ED  AC                lodsb
000027EE  629398D5          bound dx,[bp+di-0x2a68]
000027F2  8E9C6000          mov ds,[si+0x60]
000027F6  06                push es
000027F7  7171              jno 0x286a
000027F9  7060              jo 0x285b
000027FB  AC                lodsb
000027FC  60                pusha
000027FD  1B5467            sbb dx,[si+0x67]
00002800  16                push ss
00002801  B3C0              mov bl,0xc0
00002803  300EEF94          xor [0x94ef],cl
00002807  C08E01C86E        ror byte [bp-0x37ff],byte 0x6e
0000280C  01C8              add ax,cx
0000280E  33C7              xor ax,di
00002810  690F3419          imul cx,[bx],word 0x1934
00002814  9C                pushf
00002815  6C                insb
00002816  17                pop ss
00002817  866DC6            xchg ch,[di-0x3a]
0000281A  680500            push word 0x5
0000281D  1A6117            sbb ah,[bx+di+0x17]
00002820  E90880            jmp 0xa82b
00002823  CC                int3
00002824  CC                int3
00002825  B81102            mov ax,0x211
00002828  0E                push cs
00002829  7508              jnz 0x2833
0000282B  800D30            or byte [di],0x30
0000282E  62940D3A          bound dx,[si+0x3a0d]
00002832  0B3D              or di,[di]
00002834  63E6              arpl si,sp
00002836  097209            or [bp+si+0x9],si
00002839  8909              mov [bx+di],cx
0000283B  736C              jnc 0x28a9
0000283D  0F1DB3810A        hint_nop46 word [bp+di+0xa81]
00002842  7B0D              jpo 0x2851
00002844  39F5              cmp bp,si
00002846  190618C2          sbb [0xc218],ax
0000284A  F5                cmc
0000284B  94                xchg ax,sp
0000284C  633B              arpl [bp+di],di
0000284E  0B56F5            or dx,[bp-0xb]
00002851  09896311          or [bx+di+0x1163],cx
00002855  0318              add bx,[bx+si]
00002857  660972B8          or [bp+si-0x48],esi
0000285B  1103              adc [bp+di],ax
0000285D  80636B10          and byte [bp+di+0x6b],0x10
00002861  EC                in al,dx
00002862  11F3              adc bx,si
00002864  8C19              mov [bx+di],ds
00002866  11920D50          adc [bp+si+0x500d],dx
0000286A  1F                pop ds
0000286B  9B1C70            wait sbb al,0x70
0000286E  6693              xchg eax,ebx
00002870  6312              arpl [bp+si],dx
00002872  CC                int3
00002873  EC                in al,dx
00002874  3810              cmp [bx+si],dl
00002876  266410E3          fs adc bl,ah
0000287A  6310              arpl [bx+si],dx
0000287C  10366694          adc [0x9466],dh
00002880  F605C4            test byte [di],0xc4
00002883  1011              adc [bx+di],dl
00002885  06                push es
00002886  98                cbw
00002887  0D3AAF            or ax,0xaf3a
0000288A  33606F            xor sp,[bx+si+0x6f]
0000288D  205F94            and [bx-0x6c],bl
00002890  1102              adc [bp+si],ax
00002892  668619            o32 xchg bl,[bx+di]
00002895  8701              xchg ax,[bx+di]
00002897  53                push bx
00002898  94                xchg ax,sp
00002899  199B13A9          sbb [bp+di-0x56ed],bx
0000289D  DF930379          fist word [bp+di+0x7903]
000028A1  7198              jno 0x283b
000028A3  94                xchg ax,sp
000028A4  63F6              arpl si,si
000028A6  12FC              adc bh,ah
000028A8  B199              mov cl,0x99
000028AA  02D4              add dl,ah
000028AC  94                xchg ax,sp
000028AD  1102              adc [bp+si],ax
000028AF  B83103            mov ax,0x331
000028B2  0D3BB8            or ax,0xb83b
000028B5  1C59              sbb al,0x59
000028B7  36B3AD            ss mov bl,0xad
000028BA  1102              adc [bp+si],ax
000028BC  0E                push cs
000028BD  16                push ss
000028BE  0BFE              or di,si
000028C0  DDEE              fucomp st6
000028C2  12EB              adc ch,bl
000028C4  6E                outsb
000028C5  F6FC              idiv ah
000028C7  094200            or [bp+si+0x0],ax
000028CA  1010              adc [bx+si],dl
000028CC  6A01              push byte +0x1
000028CE  E5DC              in ax,0xdc
000028D0  7166              jno 0x2938
000028D2  0FDF610C          pandn mm4,[bx+di+0xc]
000028D6  F1                int1
000028D7  61                popa
000028D8  120B              adc cl,[bp+di]
000028DA  CC                int3
000028DB  CD11              int 0x11
000028DD  F4                hlt
000028DE  651DEF01          gs sbb ax,0x1ef
000028E2  E261              loop 0x2945
000028E4  0C65              or al,0x65
000028E6  0BAE1C2B          or bp,[bp+0x2b1c]
000028EA  F5                cmc
000028EB  9B1B0C            wait sbb cx,[si]
000028EE  33946B02          xor dx,[si+0x26b]
000028F2  D6                salc
000028F3  013C              add [si],di
000028F5  0C86              or al,0x86
000028F7  0337              add si,[bx]
000028F9  F5                cmc
000028FA  C3                ret
000028FB  E669              out 0x69,al
000028FD  93                xchg ax,bx
000028FE  89B80003          mov [bx+si+0x300],di
00002902  DC18              fcomp qword [bx+si]
00002904  1B07              sbb ax,[bx]
00002906  72FD              jc 0x2905
00002908  00830000          add [bp+di+0x0],al
0000290C  187C03            sbb [si+0x3],bh
0000290F  C6                db 0xc6
00002910  69FF81E3          imul di,di,word 0xe381
00002914  05F166            add ax,0x66f1
00002917  6715D305          adc ax,0x5d3
0000291B  F06F              lock outsw
0000291D  03C7              add ax,di
0000291F  05F163            add ax,0x63f1
00002922  B303              mov bl,0x3
00002924  C605F1            mov byte [di],0xf1
00002927  03C6              add ax,si
00002929  1B83B301          sbb ax,[bp+di+0x1b3]
0000292D  6A03              push byte +0x3
0000292F  C7                db 0xc7
00002930  94                xchg ax,sp
00002931  087E67            or [bp+0x67],bh
00002934  60                pusha
00002935  6815C3            push word 0xc315
00002938  EA0E1763E7        jmp 0xe763:0x170e
0000293D  14CA              adc al,0xca
0000293F  17                pop ss
00002940  A3660E            mov [0xe66],ax
00002943  2C6C              sub al,0x6c
00002945  14CA              adc al,0xca
00002947  60                pusha
00002948  B622              mov dh,0x22
0000294A  1E                push ds
0000294B  13F1              adc si,cx
0000294D  E073              loopne 0x29c2
0000294F  B664              mov dh,0x64
00002951  1103              adc [bp+di],ax
00002953  6900F1AD          imul ax,[bx+si],word 0xadf1
00002957  DCB13906          fdiv qword [bx+di+0x639]
0000295B  B311              mov bl,0x11
0000295D  ED                in ax,dx
0000295E  01E3              add bx,sp
00002960  670D8460          or ax,0x6084
00002964  701E              jo 0x2984
00002966  286C07            sub [si+0x7],ch
00002969  A4                movsb
0000296A  301C              xor [si],bl
0000296C  06                push es
0000296D  E36B              jcxz 0x29da
0000296F  09CE              or si,cx
00002971  06                push es
00002972  3025              xor [di],ah
00002974  7605              jna 0x297b
00002976  DBEC              fucomi st4
00002978  05FD0B            add ax,0xbfd
0000297B  55                push bp
0000297C  61                popa
0000297D  FD                std
0000297E  0E                push cs
0000297F  A6                cmpsb
00002980  6C                insb
00002981  6E                outsb
00002982  FA                cli
00002983  180C              sbb [si],cl
00002985  17                pop ss
00002986  8E20              mov fs,[bx+si]
00002988  3F                aas
00002989  85C1              test cx,ax
0000298B  006912            add [bx+di+0x12],ch
0000298E  0B15              or dx,[di]
00002990  A8CC              test al,0xcc
00002992  C6                db 0xc6
00002993  086C0C            or [si+0xc],ch
00002996  2B01              sub ax,[bx+di]
00002998  B715              mov bh,0x15
0000299A  8476B3            test [bp-0x4d],dh
0000299D  108D2003          adc [di+0x320],cl
000029A1  621E8A07          bound bx,[0x78a]
000029A5  8E00              mov es,[bx+si]
000029A7  F201D3            repne add bx,dx
000029AA  24DF              and al,0xdf
000029AC  01856E6F          add [di+0x6f6e],ax
000029B0  6F                outsw
000029B1  1514CC            adc ax,0xcc14
000029B4  CC                int3
000029B5  086A18            or [bp+si+0x18],ch
000029B8  3014              xor [si],dl
000029BA  9B                wait
000029BB  C6                db 0xc6
000029BC  1805              sbb [di],al
000029BE  C10594            rol word [di],byte 0x94
000029C1  0913              or [bp+di],dx
000029C3  94                xchg ax,sp
000029C4  188607A6          sbb [bp-0x59f9],al
000029C8  1A76CF            sbb dh,[bp-0x31]
000029CB  06                push es
000029CC  61                popa
000029CD  199D08F9          sbb [di-0x6f8],bx
000029D1  25E309            and ax,0x9e3
000029D4  7233              jc 0x2a09
000029D6  60                pusha
000029D7  D009              ror byte [bx+di],1
000029D9  7301              jnc 0x29dc
000029DB  D568              aad 0x68
000029DD  1C6B              sbb al,0x6b
000029DF  6D                insw
000029E0  6E                outsb
000029E1  0D036D            or ax,0x6d03
000029E4  158306            adc ax,0x683
000029E7  C3                ret
000029E8  11BA13A2          adc [bp+si-0x5ded],di
000029EC  3028              xor [bx+si],ch
000029EE  02E4              add ah,ah
000029F0  184462            sbb [si+0x62],al
000029F3  6413BA30DC        adc di,[fs:bp+si-0x23d0]
000029F8  06                push es
000029F9  9C                pushf
000029FA  620E5D80          bound cx,[0x805d]
000029FE  730A              jnc 0x2a0a
00002A00  626903            bound bp,[bx+di+0x3]
00002A03  CF                iret
00002A04  67027065          add dh,[eax+0x65]
00002A08  B76B              mov bh,0x6b
00002A0A  6C                insb
00002A0B  15BD13            adc ax,0x13bd
00002A0E  A96B07            test ax,0x76b
00002A11  A4                movsb
00002A12  06                push es
00002A13  856D66            test [di+0x66],bp
00002A16  06                push es
00002A17  E506              in ax,0x6
00002A19  85B81A90          test [bx+si-0x6fe6],di
00002A1D  27                daa
00002A1E  B0A6              mov al,0xa6
00002A20  3010              xor [bx+si],dl
00002A22  5B                pop bx
00002A23  636415            arpl [si+0x15],sp
00002A26  BD05AA            mov bp,0xaa05
00002A29  E6CE              out 0xce,al
00002A2B  DC6119            fsub qword [bx+di+0x19]
00002A2E  9B6615D2C03822    wait adc eax,0x2238c0d2
00002A35  3823              cmp [bp+di],ah
00002A37  A36A02            mov [0x26a],ax
00002A3A  D576              aad 0x76
00002A3C  3314              xor dx,[si]
00002A3E  816D288F28        sub word [di+0x28],0x288f
00002A43  BDF666            mov bp,0x66f6
00002A46  DBC5              fcmovnb st5
00002A48  94                xchg ax,sp
00002A49  03DD              add bx,bp
00002A4B  00F0              add al,dh
00002A4D  EC                in al,dx
00002A4E  B614              mov dh,0x14
00002A50  B3F6              mov bl,0xf6
00002A52  641483            fs adc al,0x83
00002A55  B8B9CD            mov ax,0xcdb9
00002A58  6C                insb
00002A59  06                push es
00002A5A  9D                popf
00002A5B  0139              add [bx+di],di
00002A5D  097394            or [bp+di-0x6c],si
00002A60  B86C63            mov ax,0x636c
00002A63  F5                cmc
00002A64  0D55B8            or ax,0xb855
00002A67  28B966C7          sub [bx+di-0x389a],bh
00002A6B  1542FF            adc ax,0xff42
00002A6E  8D3B              lea di,[bp+di]
00002A70  661A77B8          o32 sbb dh,[bx-0x48]
00002A74  61                popa
00002A75  09886C1D          or [bx+si+0x1d6c],cx
00002A79  36C3              ss ret
00002A7B  B8CE0C            mov ax,0xcce
00002A7E  0004              add [si],al
00002A80  54                push sp
00002A81  B817A0            mov ax,0xa017
00002A84  9B191D            wait sbb [di],bx
00002A87  4D                dec bp
00002A88  09891A76          or [bx+di+0x761a],cx
00002A8C  0D3BF8            or ax,0xf83b
00002A8F  EE                out dx,al
00002A90  63FC              arpl sp,di
00002A92  46                inc si
00002A93  9D                popf
00002A94  FFCF              dec di
00002A96  1F                pop ds
00002A97  001E3F67          add [0x673f],bl
00002A9B  1D67DC            sbb ax,0xdc67
00002A9E  186328            sbb [bp+di+0x28],ah
00002AA1  771E              ja 0x2ac1
00002AA3  3EB86370          ds mov ax,0x7063
00002AA7  AF                scasw
00002AA8  097260            or [bp+si+0x60],si
00002AAB  09730C            or [bp+di+0xc],si
00002AAE  60                pusha
00002AAF  1D4416            sbb ax,0x1644
00002AB2  AF                scasw
00002AB3  1C66              sbb al,0x66
00002AB5  6C                insb
00002AB6  16                push ss
00002AB7  AE                scasb
00002AB8  03C6              add ax,si
00002ABA  07                pop es
00002ABB  D8CC              fmul st4
00002ABD  1903              sbb [bp+di],ax
00002ABF  C7                db 0xc7
00002AC0  671B6905          sbb bp,[ecx+0x5]
00002AC4  7ABB              jpe 0x2a81
00002AC6  D9                db 0xd9
00002AC7  09BC001F          or [si+0x1f00],di
00002ACB  190C              sbb [si],cx
00002ACD  32F5              xor dh,ch
00002ACF  DCCC              fmul to st4
00002AD1  EB68              jmp short 0x2b3b
00002AD3  04F2              add al,0xf2
00002AD5  03C7              add ax,di
00002AD7  2B7A98            sub di,[bp+si-0x68]
00002ADA  2917              sub [bx],dx
00002ADC  A105C3            mov ax,[0xc305]
00002ADF  0334              add si,[si]
00002AE1  00681E            add [bx+si+0x1e],ch
00002AE4  3E                ds
00002AE5  C0                db 0xc0
00002AE6  30F5              xor ch,dh
00002AE8  1E                push ds
00002AE9  3E0E              ds push cs
00002AEB  736B              jnc 0x2b58
00002AED  1E                push ds
00002AEE  3E03C6            ds add ax,si
00002AF1  6609888C99        or [bx+si-0x6674],ecx
00002AF6  00F0              add al,dh
00002AF8  B8095C            mov ax,0x5c09
00002AFB  31C7              xor di,ax
00002AFD  1E                push ds
00002AFE  3F                aas
00002AFF  F667F5            mul byte [bx-0xb]
00002B02  70C6              jo 0x2aca
00002B04  0D3B68            or ax,0x683b
00002B07  095D0D            or [di+0xd],bx
00002B0A  3B30              cmp si,[bx+si]
00002B0C  60                pusha
00002B0D  F1                int1
00002B0E  0D3BF4            or ax,0xf43b
00002B11  3333              xor si,[bp+di]
00002B13  1013              adc [bp+di],dl
00002B15  0D3A0D            or ax,0xd3a
00002B18  51                push cx
00002B19  136236            adc sp,[bp+si+0x36]
00002B1C  B80A7B            mov ax,0x7b0a
00002B1F  0AC6              or al,dh
00002B21  61                popa
00002B22  26AA              es stosb
00002B24  1BC6              sbb ax,si
00002B26  6A1A              push byte +0x1a
00002B28  8A94B860          mov dl,[si+0x60b8]
00002B2C  47                inc di
00002B2D  0CD8              or al,0xd8
00002B2F  E46B              in al,0x6b
00002B31  1E                push ds
00002B32  54                push sp
00002B33  60                pusha
00002B34  6783196C          sbb word [ecx],byte +0x6c
00002B38  B81E3F            mov ax,0x3f1e
00002B3B  94                xchg ax,sp
00002B3C  03462E            add ax,[bp+0x2e]
00002B3F  4F                dec di
00002B40  04B6              add al,0xb6
00002B42  006701            add [bx+0x1],ah
00002B45  8C03              mov [bp+di],es
00002B47  DC02              fadd qword [bp+si]
00002B49  290D              sub [di],cx
00002B4B  30FF              xor bh,bh
00002B4D  0E                push cs
00002B4E  FA                cli
00002B4F  93                xchg ax,bx
00002B50  1D1A18            sbb ax,0x181a
00002B53  EC                in al,dx
00002B54  297CFC            sub [si-0x4],di
00002B57  183B              sbb [bp+di],bh
00002B59  6E                outsb
00002B5A  2D5DCC            sub ax,0xcc5d
00002B5D  CC                int3
00002B5E  09670A            or [bx+0xa],sp
00002B61  7B2D              jpo 0x2b90
00002B63  53                push bx
00002B64  8CCD              mov bp,cs
00002B66  03C6              add ax,si
00002B68  17                pop ss
00002B69  B007              mov al,0x7
00002B6B  8F06F38C          pop word [0x8cf3]
00002B6F  8D03              lea ax,[bp+di]
00002B71  B004              mov al,0x4
00002B73  FA                cli
00002B74  03B11AB8          add si,[bx+di-0x47e6]
00002B78  8D                db 0x8d
00002B79  CD07              int 0x7
00002B7B  630E4201          arpl [0x142],cx
00002B7F  0F                db 0x0f
00002B80  0D3B31            or ax,0x313b
00002B83  07                pop es
00002B84  63A50D3A          arpl [di+0x3a0d],sp
00002B88  620A              bound cx,[bp+si]
00002B8A  640C63            fs or al,0x63
00002B8D  CA03C6            retf 0xc603
00002B90  0D51DC            or ax,0xdc51
00002B93  316501            xor [di+0x1],sp
00002B96  9C                pushf
00002B97  6B12E9            imul dx,[bp+si],byte -0x17
00002B9A  0A7D33            or bh,[di+0x33]
00002B9D  E601              out 0x1,al
00002B9F  9C                pushf
00002BA0  0FA0              push fs
00002BA2  20CC              and ah,cl
00002BA4  69178A18          imul dx,[bx],word 0x188a
00002BA8  8301E7            add word [bx+di],byte -0x19
00002BAB  20E4              and ah,ah
00002BAD  836F6001          sub word [bx+0x60],byte +0x1
00002BB1  E400              in al,0x0
00002BB3  FC                cld
00002BB4  8A620D            mov ah,[bp+si+0xd]
00002BB7  41                inc cx
00002BB8  0E                push cs
00002BB9  FD                std
00002BBA  666C              o32 insb
00002BBC  09880D34          or [bx+si+0x340d],cx
00002BC0  05D9F0            add ax,0xf0d9
00002BC3  60                pusha
00002BC4  8C9A02E4          mov [bp+si-0x1bfe],ds
00002BC8  ED                in ax,dx
00002BC9  C7                db 0xc7
00002BCA  0D59E6            or ax,0xe659
00002BCD  692A4768          imul bp,[bp+si],word 0x6847
00002BD1  8F                db 0x8f
00002BD2  67B768            mov bh,0x68
00002BD5  01B6016C          add [bp+0x6c01],si
00002BD9  1E                push ds
00002BDA  216021            and [bx+si+0x21],sp
00002BDD  60                pusha
00002BDE  8F                db 0x8f
00002BDF  3233              xor dh,[bp+di]
00002BE1  61                popa
00002BE2  64F630            div byte [fs:bx+si]
00002BE5  3B069C06          cmp ax,[0x69c]
00002BE9  BF18E0            mov di,0xe018
00002BEC  01E3              add bx,sp
00002BEE  6902BCAE          imul ax,[bp+si],word 0xaebc
00002BF2  98                cbw
00002BF3  6F                outsw
00002BF4  054B6A            add ax,0x6a4b
00002BF7  6B0C61            imul cx,[si],byte +0x61
00002BFA  03E0              add sp,ax
00002BFC  196602            sbb [bp+0x2],sp
00002BFF  9F                lahf
00002C00  21D6              and si,dx
00002C02  0F1F13            hint_nop58 word [bp+di]
00002C05  DB0A              fisttp dword [bp+si]
00002C07  336566            xor sp,[di+0x66]
00002C0A  05AA06            add ax,0x6aa
00002C0D  8405              test [di],al
00002C0F  AB                stosw
00002C10  878D64B8          xchg cx,[di-0x479c]
00002C14  FD                std
00002C15  82                db 0x82
00002C16  D503              aad 0x3
00002C18  D1C1              rol cx,1
00002C1A  18D0              sbb al,dl
00002C1C  098915BC          or [bx+di-0x43eb],cx
00002C20  6C                insb
00002C21  06                push es
00002C22  2C9B              sub al,0x9b
00002C24  00F0              add al,dh
00002C26  1E                push ds
00002C27  25C3C0            and ax,0xc0c3
00002C2A  02D3              add dl,bl
00002C2C  0CF2              or al,0xf2
00002C2E  60                pusha
00002C2F  382E6713          cmp [0x1367],ch
00002C33  196008            sbb [bx+si+0x8],sp
00002C36  86C0              xchg al,al
00002C38  3801              cmp [bx+di],al
00002C3A  B26E              mov dl,0x6e
00002C3C  097360            or [bp+di+0x60],si
00002C3F  8C23              mov [bp+di],fs
00002C41  100A              adc [bp+si],cl
00002C43  AD                lodsw
00002C44  C18C24C50A        ror word [si-0x3adc],byte 0xa
00002C49  F720              mul word [bx+si]
00002C4B  E619              out 0x19,al
00002C4D  1B0E1412          sbb cx,[0x1214]
00002C51  E704              out 0x4,ax
00002C53  8516AEC7          test [0xc7ae],dx
00002C57  27                daa
00002C58  6327              arpl [bx],sp
00002C5A  B362              mov bl,0x62
00002C5C  FC                cld
00002C5D  93                xchg ax,bx
00002C5E  D9FD              fscale
00002C60  40                inc ax
00002C61  004452            add [si+0x52],al
00002C64  45                inc bp
00002C65  41                inc cx
00002C66  000A              add [bp+si],cl
00002C68  4D                dec bp
00002C69  45                inc bp
00002C6A  52                push dx
00002C6B  53                push bx
00002C6C  204242            and [bp+si+0x42],al
00002C6F  53                push bx
00002C70  2C20              sub al,0x20
00002C72  4F                dec di
00002C73  50                push ax
00002C74  45                inc bp
00002C75  4E                dec si
00002C76  2032              and [bp+si],dh
00002C78  3448              xor al,0x48
00002C7A  92                xchg ax,dx
00002C7B  41                inc cx
00002C7C  4E                dec si
00002C7D  44                inc sp
00002C7E  205448            and [si+0x48],dl
00002C81  45                inc bp
00002C82  205401            and [si+0x1],dl
00002C85  4E                dec si
00002C86  55                push bp
00002C87  4D                dec bp
00002C88  42                inc dx
00002C89  A7                cmpsw
00002C8A  2049A9            and [bx+di-0x57],cl
00002C8D  4F                dec di
00002C8E  46                inc si
00002C8F  2027              and [bx],ah
00002C91  43                inc bx
00002C92  4F                dec di
00002C93  5A                pop dx
00002C94  2020              and [bx+si],ah
00002C96  2B33              sub si,[bp+di]
00002C98  35382D            xor ax,0x2d38
00002C9B  40                inc ax
00002C9C  D128              shr word [bx+si],1
00002C9E  3929              cmp [bx+di],bp
00002CA0  302D              xor [di],ch
00002CA2  3334              xor si,[si]
00002CA4  3132              xor [bp+si],si
00002CA6  353936            xor ax,0x3639
00002CA9  B64C              mov dh,0x4c
00002CAB  4F                dec di
00002CAC  54                push sp
00002CAD  53                push bx
00002CAE  41                inc cx
00002CAF  20D0              and al,dl
00002CB1  BF7553            mov di,0x5375
00002CB4  8E478D            mov es,[bx-0x73]
00002CB7  B0CD              mov al,0xcd
00002CB9  46                inc si
00002CBA  49                dec cx
00002CBB  4C                dec sp
00002CBC  91                xchg ax,cx
00002CBD  2E20D4            cs and ah,dl
00002CC0  A34341            mov [0x4143],ax
00002CC3  4C                dec sp
00002CC4  4C                dec sp
00002CC5  CC                int3
00002CC6  4F                dec di
00002CC7  57                push di
00002CC8  21BF892D          and [bx+0x2d89],di
00002CCC  2000              and [bx+si],al
00002CCE  1BF8              sbb di,ax
00002CD0  93                xchg ax,bx
00002CD1  89B8DBFF          mov [bx+si-0x25],di
00002CD5  010E2A8A          add [0x8a2a],cx
00002CD9  8B86E289          mov ax,[bp-0x761e]
00002CDD  92                xchg ax,dx
00002CDE  2A15              sub dl,[di]
00002CE0  93                xchg ax,bx
00002CE1  1589DC            adc ax,0xdc89
00002CE4  363F              ss aas
00002CE6  8A8B8992          mov cl,[bp+di-0x6d77]
00002CEA  CC                int3
00002CEB  FC                cld
00002CEC  8F                db 0x8f
00002CED  8C3B              mov [bp+di],segr7
00002CEF  8937              mov [bx],si
00002CF1  89DF              mov di,bx
00002CF3  E734              out 0x34,ax
00002CF5  896E74            mov [bp+0x74],bp
00002CF8  2D89B2            sub ax,0xb289
00002CFB  2689FF            es mov di,di
00002CFE  3F                aas
00002CFF  23891F89          and cx,[bx+di-0x76e1]
00002D03  1C89              sbb al,0x89
00002D05  1989BFFB          sbb [bx+di-0x441],cx
00002D09  FF                db 0xff
00002D0A  7DD4              jnl 0x2ce0
00002D0C  0E                push cs
00002D0D  890B              mov [bp+di],cx
00002D0F  8908              mov [bx+si],cx
00002D11  893F              mov [bx],di
00002D13  DCFF              fdiv to st7
00002D15  FF                db 0xff
00002D16  3B8B388B          cmp cx,[bp+di-0x74c8]
00002D1A  358B32            xor ax,0x328b
00002D1D  8B2F              mov bp,[bx]
00002D1F  8BFF              mov di,di
00002D21  FF2C              jmp far [si]
00002D23  8B29              mov bp,[bx+di]
00002D25  8B268B22          mov sp,[0x228b]
00002D29  8B1F              mov bx,[bx]
00002D2B  8B1C              mov bx,[si]
00002D2D  8BFF              mov di,di
00002D2F  1F                pop ds
00002D30  198B168B          sbb [bp+di-0x74ea],cx
00002D34  138B108B          adc cx,[bp+di-0x74f0]
00002D38  3F                aas
00002D39  36363F            ss aas
00002D3C  2E2E14A3          cs adc al,0xa3
00002D40  3F                aas
00002D41  27                daa
00002D42  27                daa
00002D43  3F                aas
00002D44  D93F              fnstcw [bx]
00002D46  17                pop ss
00002D47  17                pop ss
00002D48  3F                aas
00002D49  1010              adc [bx+si],dl
00002D4B  3F                aas
00002D4C  CD3F              int 0x3f
00002D4E  2AFE              sub bh,dh
00002D50  40                inc ax
00002D51  94                xchg ax,sp
00002D52  2694              es xchg ax,sp
00002D54  22941E00          and dl,[si+0x1e]
00002D58  391B              cmp [bp+di],bx
00002D5A  0033              add [bp+di],dh
00002D5C  1800              sbb [bx+si],al
00002D5E  2D1500            sub ax,0x15
00002D61  27                daa
00002D62  BCDFB6            mov sp,0xb6df
00002D65  3F                aas
00002D66  B98BB8            mov cx,0xb88b
00002D69  B98BFD            mov cx,0xfd8b
00002D6C  FF                db 0xff
00002D6D  B83EAC            mov ax,0xac3e
00002D70  3DAC3D            cmp ax,0x3dac
00002D73  AC                lodsb
00002D74  3DACFF            cmp ax,0xffac
00002D77  B436              mov ah,0x36
00002D79  AC                lodsb
00002D7A  31AC2BAC          xor [si-0x53d5],bp
00002D7E  27                daa
00002D7F  0021              add [bx+di],ah
00002D81  21EE              and si,bp
00002D83  BBAFFE            mov bx,0xfeaf
00002D86  16                push ss
00002D87  B8D500            mov ax,0xd5
00002D8A  34DD              xor al,0xdd
00002D8C  31DD              xor bp,bx
00002D8E  2DDD07            sub ax,0x7dd
00002D91  AD                lodsw
00002D92  28DD              sub ch,bl
00002D94  2439              and al,0x39
00002D96  0020              add [bx+si],ah
00002D98  3300              xor ax,[bx+si]
00002D9A  1D2D00            sbb ax,0x2d
00002D9D  18ACCE36          sbb [si+0x36ce],ch
00002DA1  2F                das
00002DA2  56                push si
00002DA3  DF                db 0xdf
00002DA4  D0CE              ror dh,1
00002DA6  27                daa
00002DA7  20D0              and al,dl
00002DA9  18ACCE7F          sbb [si+0x7fce],ch
00002DAD  46                inc si
00002DAE  10CE              adc dh,cl
00002DB0  08E6              or dh,ah
00002DB2  008B0181          add [bp+di-0x7eff],cl
00002DB6  0132              add [bp+si],si
00002DB8  FD                std
00002DB9  FF8B2F8B          dec word [bp+di-0x74d1]
00002DBD  2C8B              sub al,0x8b
00002DBF  298B268B          sub [bp+di-0x74da],cx
00002DC3  FF                db 0xff
00002DC4  FF22              jmp [bp+si]
00002DC6  8B1F              mov bx,[bx]
00002DC8  8B1C              mov bx,[si]
00002DCA  8B19              mov bx,[bx+di]
00002DCC  8B168B13          mov dx,[0x138b]
00002DD0  8B1B              mov bx,[bp+di]
00002DD2  D8E8              fsubr st0
00002DD4  011B              add [bp+di],bx
00002DD6  CE                into
00002DD7  B6F9              mov dh,0xf9
00002DD9  8BD0              mov dx,ax
00002DDB  CB                retf
00002DDC  8B39              mov di,[bx+di]
00002DDE  F5                cmc
00002DDF  3F                aas
00002DE0  F633              div byte [bp+di]
00002DE2  F5                cmc
00002DE3  2DF501            sub ax,0x1f5
00002DE6  20BF16BC          and [bx-0x43ea],bh
00002DEA  F4                hlt
00002DEB  AF                scasw
00002DEC  1010              adc [bx+si],dl
00002DEE  17                pop ss
00002DEF  2F                das
00002DF0  AC                lodsb
00002DF1  2CAC              sub al,0xac
00002DF3  2AA9BC00          sub ch,[bx+di+0xbc]
00002DF7  23FE              and di,si
00002DF9  DAAC1FAC          fisubr dword [si-0x53e1]
00002DFD  1BAC1727          sbb bp,[si+0x2717]
00002E01  020D              add cl,[di]
00002E03  A3921F            mov [0x1f92],ax
00002E06  020D              add cl,[di]
00002E08  203F              and [bx],bh
00002E0A  17                pop ss
00002E0B  1802              sbb [bp+si],al
00002E0D  0C09              or al,0x9
00002E0F  A90101            test ax,0x101
00002E12  21EC              and sp,bp
00002E14  29FF              sub di,di
00002E16  C1513CD0          rcl word [bx+di+0x3c],byte 0xd0
00002E1A  392E3F36          cmp [0x363f],bp
00002E1E  D0                db 0xd0
00002E1F  341F              xor al,0x1f
00002E21  3F                aas
00002E22  324E0B            xor cl,[bp+0xb]
00002E25  17                pop ss
00002E26  3F                aas
00002E27  2F                das
00002E28  D02D              shr byte [di],1
00002E2A  083F              or [bx],bh
00002E2C  2ACD              sub cl,ch
00002E2E  B639              mov dh,0x39
00002E30  2000              and [bx+si],al
00002E32  331D              xor bx,[di]
00002E34  002D              add [di],ch
00002E36  18E8              sbb al,ch
00002E38  1F                pop ds
00002E39  0027              add [bx],ah
00002E3B  1400              adc al,0x0
00002E3D  2111              and [bx+di],dx
00002E3F  BE0DBB            mov si,0xbb0d
00002E42  0AB8029D          or bh,[bx+si-0x62fe]
00002E46  1CF6              sbb al,0xf6
00002E48  3F                aas
00002E49  0180F839          add [bx+si+0x39f8],ax
00002E4D  F5                cmc
00002E4E  FA                cli
00002E4F  BF332D            mov di,0x2d33
00002E52  B827B8            mov ax,0xb827
00002E55  21B81BB8          and [bx+si-0x47e5],di
00002E59  E9520F            jmp 0x3dae
00002E5C  16                push ss
00002E5D  10B83A37          adc [bx+si+0x373a],bh
00002E61  A4                movsb
00002E62  34BE              xor al,0xbe
00002E64  313F              xor [bx],di
00002E66  352F3F            xor ax,0x3f2f
00002E69  332C              xor bp,[si]
00002E6B  3F                aas
00002E6C  5A                pop dx
00002E6D  2831              sub [bx+di],dh
00002E6F  29EC              sub sp,bp
00002E71  C52E243F          lds bp,[0x3f24]
00002E75  2C20              sub al,0x20
00002E77  3F                aas
00002E78  291C              sub [si],bx
00002E7A  D018              rcr byte [bx+si],1
00002E7C  3C25              cmp al,0x25
00002E7E  17                pop ss
00002E7F  00503A            add [bx+si+0x3a],dl
00002E82  23163722          and dx,[0x2237]
00002E86  153420            adc ax,0x2034
00002E89  1432              adc al,0x32
00002E8B  1F                pop ds
00002E8C  132F              adc bp,[bx]
00002E8E  1E                push ds
00002E8F  122D              adc ch,[di]
00002E91  1C11              sbb al,0x11
00002E93  2A1A              sub bl,[bp+si]
00002E95  1028              adc [bx+si],ch
00002E97  190F              sbb [bx],cx
00002E99  A5                movsw
00002E9A  0E                push cs
00002E9B  241C              and al,0x1c
00002E9D  0017              add [bx],dl
00002E9F  0D2216            or ax,0x1622
00002EA2  0CA2              or al,0xa2
00002EA4  0B1D              or bx,[di]
00002EA6  130A              adc cx,[bp+si]
00002EA8  1B12              sbb dx,[bp+si]
00002EAA  0917              or [bx],dx
00002EAC  1008              adc [bx+si],cl
00002EAE  150F07            adc ax,0x70f
00002EB1  120E0610          adc cl,[0x1006]
00002EB5  0C06              or al,0x6
00002EB7  0E                push cs
00002EB8  0B05              or ax,[di]
00002EBA  4E                dec si
00002EBB  F5                cmc
00002EBC  0A08              or cl,[bx+si]
00002EBE  03FD              add di,bp
00002EC0  033A              add di,[bp+si]
00002EC2  310A              xor [bp+si],cx
00002EC4  0A31              or dh,[bx+di]
00002EC6  BB311D            mov bx,0x1d31
00002EC9  8B27              mov sp,[bx]
00002ECB  8BFD              mov di,bp
00002ECD  E795              out 0x95,ax
00002ECF  27                daa
00002ED0  8B1D              mov bx,[di]
00002ED2  8B13              mov dx,[bp+di]
00002ED4  9E                sahf
00002ED5  0C8B              or al,0x8b
00002ED7  7FBF              jg 0x2e98
00002ED9  17                pop ss
00002EDA  8B22              mov sp,[bp+si]
00002EDC  8B2D              mov bp,[di]
00002EDE  0A2A              or ch,[bp+si]
00002EE0  98                cbw
00002EE1  1F                pop ds
00002EE2  8B14              mov dx,[si]
00002EE4  31FF              xor di,di
00002EE6  F30B95168B        rep or dx,[di-0x74ea]
00002EEB  218B2CB4          and [bp+di-0x4bd4],cx
00002EEF  2B8BDF02          sub cx,[bp+di+0x2df]
00002EF3  208B15B4          and [bp+di-0x4beb],cl
00002EF7  059EB4            add ax,0xb49e
00002EFA  0332              add si,[bp+si]
00002EFC  FFCD              dec bp
00002EFE  102E8916          adc [0x1689],ch
00002F02  40                inc ax
00002F03  E9E850            jmp 0x7fee
00002F06  3D3400            cmp ax,0x34
00002F09  E82401            call 0x3030
00002F0C  B81300            mov ax,0x13
00002F0F  98                cbw
00002F10  BEC996            mov si,0x96c9
00002F13  EB96              jmp short 0x2eab
00002F15  55                push bp
00002F16  01E8              add ax,bp
00002F18  48                dec ax
00002F19  60                pusha
00002F1A  15002E            adc ax,0x2e00
00002F1D  803E3FE900        cmp byte [0xe93f],0x0
00002F22  74F5              jz 0x2f19
00002F24  B803A1            mov ax,0xa103
00002F27  E8259B            call 0xca4f
00002F2A  2100              and [bx+si],ax
00002F2C  B402              mov ah,0x2
00002F2E  33DB              xor bx,bx
00002F30  B200              mov dl,0x0
00002F32  2E8BBB99CD        mov di,[cs:bp+di-0x3267]
00002F37  20B800B8          and [bx+si-0x4800],bh
00002F3B  8ED8              mov ds,ax
00002F3D  0E                push cs
00002F3E  07                pop es
00002F3F  B9D007            mov cx,0x7d0
00002F42  BF0301            mov di,0x103
00002F45  338868F6          xor cx,[bx+si-0x998]
00002F49  AD                lodsw
00002F4A  AB                stosw
00002F4B  E2FC              loop 0x2f49
00002F4D  C3                ret
00002F4E  9C                pushf
00002F4F  C00E1F33FF        ror byte [0x331f],byte 0xff
00002F54  BE9BA1            mov si,0xa19b
00002F57  862D              xchg ch,[di]
00002F59  9C                pushf
00002F5A  97                xchg ax,di
00002F5B  BB1E39            mov bx,0x391e
00002F5E  E9BE80            jmp 0xb01f
00002F61  BE46E9            mov si,0xe946
00002F64  03F3              add si,bx
00002F66  AC                lodsb
00002F67  3CFF              cmp al,0xff
00002F69  7510              jnz 0x2f7b
00002F6B  B020              mov al,0x20
00002F6D  2EC7069900EA8F    mov word [cs:0x99],0x8fea
00002F74  0B5044            or dx,[bx+si+0x44]
00002F77  8F                db 0x8f
00002F78  2C20              sub al,0x20
00002F7A  32E4              xor ah,ah
00002F7C  B379              mov bl,0x79
00002F7E  F6E3              mul bl
00002F80  BE36CD            mov si,0xcd36
00002F83  03F0              add si,ax
00002F85  2E03369C2E        add si,[cs:0x2e9c]
00002F8A  FF                db 0xff
00002F8B  E906A1            jmp 0xd094
00002F8E  2E833E8D0B75      cmp word [cs:0xb8d],byte +0x75
00002F94  0CAE              or al,0xae
00002F96  B37E              mov bl,0x7e
00002F98  9C                pushf
00002F99  BCBFC0            mov sp,0xc0bf
00002F9C  E9EBA0            jmp 0xd08a
00002F9F  EBB9              jmp short 0x2f5a
00002FA1  0B00              or ax,[bx+si]
00002FA3  0100              add [bx+si],ax
00002FA5  56                push si
00002FA6  AC                lodsb
00002FA7  AA                stosb
00002FA8  83C60A            add si,byte +0xa
00002FAB  81C73F01          add di,0x13f
00002FAF  E2F5              loop 0x2fa6
00002FB1  5E                pop si
00002FB2  BFC1A0            mov di,0xa0c1
00002FB5  D6                salc
00002FB6  0800              or [bx+si],al
00002FB8  2CB9              sub al,0xb9
00002FBA  1C07              sbb al,0x7
00002FBC  9E                sahf
00002FBD  8ED8              mov ds,ax
00002FBF  BF80E8            mov di,0xe880
00002FC2  BE82E8            mov si,0xe882
00002FC5  000A              add [bp+si],cl
00002FC7  F3A5              rep movsw
00002FC9  E80100            call 0x2fcd
00002FCC  C3                ret
00002FCD  50                push ax
00002FCE  52                push dx
00002FCF  BADA03            mov dx,0x3da
00002FD2  EC                in al,dx
00002FD3  A808              test al,0x8
00002FD5  74FB              jz 0x2fd2
00002FD7  5A                pop dx
00002FD8  58                pop ax
00002FD9  0138              add [bx+si],di
00002FDB  B90003            mov cx,0x300
00002FDE  BAC803            mov dx,0x3c8
00002FE1  B000              mov al,0x0
00002FE3  1480              adc al,0x80
00002FE5  EE                out dx,al
00002FE6  42                inc dx
00002FE7  AC                lodsb
00002FE8  EE                out dx,al
00002FE9  015A50            add [bp+si+0x50],bx
00002FEC  E460              in al,0x60
00002FEE  3C01              cmp al,0x1
00002FF0  7506              jnz 0x2ff8
00002FF2  2EC6063FE901      mov byte [cs:0xe93f],0x1
00002FF8  8AE0              mov ah,al
00002FFA  0C80              or al,0x80
00002FFC  E661              out 0x61,al
00002FFE  8603              xchg al,[bp+di]
00003000  E8E08C            call 0xbce3
00003003  B020              mov al,0x20
00003005  E620              out 0x20,al
00003007  58                pop ax
00003008  CF                iret
00003009  FA                cli
0000300A  E83600            call 0x3043
0000300D  26A12400          mov ax,[es:0x24]
00003011  2EA33BE9          mov [cs:0xe93b],ax
00003015  90                nop
00003016  2690              es nop
00003018  E2AE              loop 0x2fc8
0000301A  3DE9B8            cmp ax,0xb8e9
0000301D  E1ED              loope 0x300c
0000301F  26A39B26          mov [es:0x269b],ax
00003023  8C0E98FB          mov [0xfb98],cs
00003027  C3                ret
00003028  AA                stosb
00003029  7F1B              jg 0x3046
0000302B  149E              adc al,0x9e
0000302D  A1A601            mov ax,[0x1a6]
00003030  E4A3              in al,0xa3
00003032  A08AA4            mov al,[0xa48a]
00003035  891EA033          mov [0x33a0],bx
00003039  C05007F5          rcl byte [bx+si+0x7],byte 0xf5
0000303D  BEA345            mov si,0x45a3
00003040  06                push es
00003041  1001              adc [bx+di],al
00003043  22BF0000          and bh,[bx+0x0]
00003047  B9C05D            mov cx,0x5dc0
0000304A  023C              add bh,[si]
0000304C  FC                cld
0000304D  3F                aas
0000304E  FF00              inc word [bx+si]
00003050  AD                lodsw
00003051  92                xchg ax,dx
00003052  D1DA              rcr dx,1
00003054  7337              jnc 0x308d
00003056  EB34              jmp short 0x308c
00003058  92                xchg ax,dx
00003059  AD                lodsw
0000305A  92                xchg ax,dx
0000305B  D1DA              rcr dx,1
0000305D  7217              jc 0x3076
0000305F  EB0D              jmp short 0x306e
00003061  3CFC              cmp al,0xfc
00003063  7341              jnc 0x30a6
00003065  2C89              sub al,0x89
00003067  BB0100            mov bx,0x1
0000306A  8AE5              mov ah,ch
0000306C  4E                dec si
0000306D  41                inc cx
0000306E  03CB              add cx,bx
00003070  D1EA              shr dx,1
00003072  73FA              jnc 0x306e
00003074  74E2              jz 0x3058
00003076  96                xchg ax,si
00003077  F7D6              not si
00003079  03F7              add si,di
0000307B  F3A4              rep movsb
0000307D  96                xchg ax,si
0000307E  B0A5              mov al,0xa5
00003080  D1EA              shr dx,1
00003082  73FB              jnc 0x307f
00003084  7442              jz 0x30c8
00003086  D1EA              shr dx,1
00003088  7303              jnc 0x308d
0000308A  74C4              jz 0x3050
0000308C  A4                movsb
0000308D  AD                lodsw
0000308E  3C89              cmp al,0x89
00003090  73CF              jnc 0x3061
00003092  86E0              xchg ah,al
00003094  D1E8              shr ax,1
00003096  83D103            adc cx,byte +0x3
00003099  BB0200            mov bx,0x2
0000309C  3D7300            cmp ax,0x73
0000309F  73CF              jnc 0x3070
000030A1  83C108            add cx,byte +0x8
000030A4  EBCA              jmp short 0x3070
000030A6  2CFC              sub al,0xfc
000030A8  8AF8              mov bh,al
000030AA  8ADC              mov bl,ah
000030AC  D1E3              shl bx,1
000030AE  D1E3              shl bx,1
000030B0  86CF              xchg cl,bh
000030B2  AC                lodsb
000030B3  25FF3F            and ax,0x3fff
000030B6  B310              mov bl,0x10
000030B8  83C114            add cx,byte +0x14
000030BB  3DFF3F            cmp ax,0x3fff
000030BE  75B0              jnz 0x3070
000030C0  5F                pop di
000030C1  5A                pop dx
000030C2  59                pop cx
000030C3  5B                pop bx
000030C4  58                pop ax
000030C5  FFE7              jmp di
000030C7  57                push di
000030C8  AD                lodsw
000030C9  92                xchg ax,dx
000030CA  D1DA              rcr dx,1
000030CC  72B8              jc 0x3086
000030CE  EBAF              jmp short 0x307f
000030D0  EBF5              jmp short 0x30c7
