00000100  8CC8              mov ax,cs
00000102  050010            add ax,0x1000
00000105  A33005            mov [0x530],ax
00000108  8EC0              mov es,ax
0000010A  050010            add ax,0x1000
0000010D  8EE8              mov gs,ax
0000010F  B81300            mov ax,0x13
00000112  CD10              int 0x10
00000114  BAC803            mov dx,0x3c8
00000117  33C0              xor ax,ax
00000119  EE                out dx,al
0000011A  42                inc dx
0000011B  8AC4              mov al,ah
0000011D  C0E802            shr al,byte 0x2
00000120  EE                out dx,al
00000121  EE                out dx,al
00000122  8AD8              mov bl,al
00000124  D0E8              shr al,1
00000126  F6D8              neg al
00000128  02C3              add al,bl
0000012A  EE                out dx,al
0000012B  FEC4              inc ah
0000012D  75EC              jnz 0x11b
0000012F  9BDBE3            finit
00000132  E8F702            call 0x42c
00000135  33FF              xor di,di
00000137  658A4501          mov al,[gs:di+0x1]
0000013B  650245FF          add al,[gs:di-0x1]
0000013F  D0D8              rcr al,1
00000141  658A9D0001        mov bl,[gs:di+0x100]
00000146  65029D00FF        add bl,[gs:di-0x100]
0000014B  D0DB              rcr bl,1
0000014D  02C3              add al,bl
0000014F  D0D8              rcr al,1
00000151  658805            mov [gs:di],al
00000154  47                inc di
00000155  75E0              jnz 0x137
00000157  D906EC04          fld dword [0x4ec]
0000015B  D806F004          fadd dword [0x4f0]
0000015F  D916EC04          fst dword [0x4ec]
00000163  D9FE              fsin
00000165  D80E9904          fmul dword [0x499]
00000169  D91E401E          fstp dword [0x1e40]
0000016D  E8B300            call 0x223
00000170  E89601            call 0x309
00000173  1E                push ds
00000174  06                push es
00000175  8E1E3005          mov ds,[0x530]
00000179  B800A0            mov ax,0xa000
0000017C  8EC0              mov es,ax
0000017E  B9803E            mov cx,0x3e80
00000181  33F6              xor si,si
00000183  33FF              xor di,di
00000185  F366A5            rep movsd
00000188  07                pop es
00000189  1F                pop ds
0000018A  BADA03            mov dx,0x3da
0000018D  B408              mov ah,0x8
0000018F  EC                in al,dx
00000190  84C4              test ah,al
00000192  74FB              jz 0x18f
00000194  EC                in al,dx
00000195  84C4              test ah,al
00000197  75FB              jnz 0x194
00000199  E85C02            call 0x3f8
0000019C  8106A9040001      add word [0x4a9],0x100
000001A2  8106AB040003      add word [0x4ab],0x300
000001A8  B401              mov ah,0x1
000001AA  CD16              int 0x16
000001AC  74A9              jz 0x157
000001AE  32E4              xor ah,ah
000001B0  CD16              int 0x16
000001B2  B80300            mov ax,0x3
000001B5  CD10              int 0x10
000001B7  BAD504            mov dx,0x4d5
000001BA  B409              mov ah,0x9
000001BC  CD21              int 0x21
000001BE  B8004C            mov ax,0x4c00
000001C1  CD21              int 0x21
000001C3  D904              fld dword [si]
000001C5  D805              fadd dword [di]
000001C7  D91D              fstp dword [di]
000001C9  D94404            fld dword [si+0x4]
000001CC  D84504            fadd dword [di+0x4]
000001CF  D95D04            fstp dword [di+0x4]
000001D2  D94408            fld dword [si+0x8]
000001D5  D84508            fadd dword [di+0x8]
000001D8  D95D08            fstp dword [di+0x8]
000001DB  C3                ret
000001DC  D904              fld dword [si]
000001DE  D825              fsub dword [di]
000001E0  D91F              fstp dword [bx]
000001E2  D94404            fld dword [si+0x4]
000001E5  D86504            fsub dword [di+0x4]
000001E8  D95F04            fstp dword [bx+0x4]
000001EB  D94408            fld dword [si+0x8]
000001EE  D86508            fsub dword [di+0x8]
000001F1  D95F08            fstp dword [bx+0x8]
000001F4  C3                ret
000001F5  D904              fld dword [si]
000001F7  D8C9              fmul st1
000001F9  D91D              fstp dword [di]
000001FB  D94404            fld dword [si+0x4]
000001FE  D8C9              fmul st1
00000200  D95D04            fstp dword [di+0x4]
00000203  D94408            fld dword [si+0x8]
00000206  D8C9              fmul st1
00000208  D95D08            fstp dword [di+0x8]
0000020B  C3                ret
0000020C  668B04            mov eax,[si]
0000020F  668B5C04          mov ebx,[si+0x4]
00000213  668B4C08          mov ecx,[si+0x8]
00000217  668905            mov [di],eax
0000021A  66895D04          mov [di+0x4],ebx
0000021E  66894D08          mov [di+0x8],ecx
00000222  C3                ret
00000223  BEB904            mov si,0x4b9
00000226  BFAD04            mov di,0x4ad
00000229  BB0005            mov bx,0x500
0000022C  E8ADFF            call 0x1dc
0000022F  D906F404          fld dword [0x4f4]
00000233  BE0005            mov si,0x500
00000236  8BFE              mov di,si
00000238  E8BAFF            call 0x1f5
0000023B  DDC0              ffree st0
0000023D  BEC504            mov si,0x4c5
00000240  BFAD04            mov di,0x4ad
00000243  BB0C05            mov bx,0x50c
00000246  E893FF            call 0x1dc
00000249  D906F804          fld dword [0x4f8]
0000024D  BE0C05            mov si,0x50c
00000250  8BFE              mov di,si
00000252  E8A0FF            call 0x1f5
00000255  DDC0              ffree st0
00000257  BEAD04            mov si,0x4ad
0000025A  BF1805            mov di,0x518
0000025D  E8ACFF            call 0x20c
00000260  BD3805            mov bp,0x538
00000263  B91A00            mov cx,0x1a
00000266  51                push cx
00000267  BE1805            mov si,0x518
0000026A  BF2405            mov di,0x524
0000026D  E89CFF            call 0x20c
00000270  B92900            mov cx,0x29
00000273  51                push cx
00000274  D905              fld dword [di]
00000276  D9062805          fld dword [0x528]
0000027A  D9F3              fpatan
0000027C  D9C0              fld st0
0000027E  D80EFC04          fmul dword [0x4fc]
00000282  DB1E3205          fistp dword [0x532]
00000286  66A13205          mov eax,[0x532]
0000028A  0306A904          add ax,[0x4a9]
0000028E  3E894602          mov [ds:bp+0x2],ax
00000292  D80E9D04          fmul dword [0x49d]
00000296  D9FE              fsin
00000298  D80E401E          fmul dword [0x1e40]
0000029C  D8069504          fadd dword [0x495]
000002A0  D905              fld dword [di]
000002A2  D8C8              fmul st0
000002A4  D9062805          fld dword [0x528]
000002A8  D8C8              fmul st0
000002AA  DEC1              faddp st1
000002AC  D9FA              fsqrt
000002AE  D83ED104          fdivr dword [0x4d1]
000002B2  D80E2C05          fmul dword [0x52c]
000002B6  DEC9              fmulp st1
000002B8  D80EA104          fmul dword [0x4a1]
000002BC  DB1E3205          fistp dword [0x532]
000002C0  66A13205          mov eax,[0x532]
000002C4  668BD8            mov ebx,eax
000002C7  0306AB04          add ax,[0x4ab]
000002CB  3E894600          mov [ds:bp+0x0],ax
000002CF  6685DB            test ebx,ebx
000002D2  7903              jns 0x2d7
000002D4  66F7DB            neg ebx
000002D7  66D1EB            shr ebx,1
000002DA  6681FB007F0000    cmp ebx,0x7f00
000002E1  7203              jc 0x2e6
000002E3  BB007F            mov bx,0x7f00
000002E6  3E895E04          mov [ds:bp+0x4],bx
000002EA  83C506            add bp,byte +0x6
000002ED  BE0005            mov si,0x500
000002F0  E8D0FE            call 0x1c3
000002F3  59                pop cx
000002F4  49                dec cx
000002F5  0F857AFF          jnz near 0x273
000002F9  BE0C05            mov si,0x50c
000002FC  BF1805            mov di,0x518
000002FF  E8C1FE            call 0x1c3
00000302  59                pop cx
00000303  49                dec cx
00000304  0F855EFF          jnz near 0x266
00000308  C3                ret
00000309  BE3805            mov si,0x538
0000030C  33FF              xor di,di
0000030E  B91900            mov cx,0x19
00000311  51                push cx
00000312  B92800            mov cx,0x28
00000315  51                push cx
00000316  66AD              lodsd
00000318  668BACF200        mov ebp,[si+0xf2]
0000031D  668B5C02          mov ebx,[si+0x2]
00000321  668B94F800        mov edx,[si+0xf8]
00000326  662BE8            sub ebp,eax
00000329  662BD3            sub edx,ebx
0000032C  66C1C510          rol ebp,byte 0x10
00000330  66C1C210          rol edx,byte 0x10
00000334  C1FD03            sar bp,byte 0x3
00000337  C1FA03            sar dx,byte 0x3
0000033A  66C1C510          rol ebp,byte 0x10
0000033E  66C1C210          rol edx,byte 0x10
00000342  C1FD03            sar bp,byte 0x3
00000345  C1FA03            sar dx,byte 0x3
00000348  66892E341E        mov [0x1e34],ebp
0000034D  668916381E        mov [0x1e38],edx
00000352  8B0C              mov cx,[si]
00000354  8B94F600          mov dx,[si+0xf6]
00000358  2BD1              sub dx,cx
0000035A  C1FA03            sar dx,byte 0x3
0000035D  89163C1E          mov [0x1e3c],dx
00000361  8B4C06            mov cx,[si+0x6]
00000364  8B94FC00          mov dx,[si+0xfc]
00000368  2BD1              sub dx,cx
0000036A  C1FA03            sar dx,byte 0x3
0000036D  89163E1E          mov [0x1e3e],dx
00000371  56                push si
00000372  8B14              mov dx,[si]
00000374  8BF1              mov si,cx
00000376  B508              mov ch,0x8
00000378  6650              push eax
0000037A  6653              push ebx
0000037C  662BD8            sub ebx,eax
0000037F  66C1C310          rol ebx,byte 0x10
00000383  C1FB03            sar bx,byte 0x3
00000386  66C1C310          rol ebx,byte 0x10
0000038A  C1FB03            sar bx,byte 0x3
0000038D  668BEB            mov ebp,ebx
00000390  52                push dx
00000391  56                push si
00000392  2BF2              sub si,dx
00000394  C1FE03            sar si,byte 0x3
00000397  B108              mov cl,0x8
00000399  8ADC              mov bl,ah
0000039B  66C1C010          rol eax,byte 0x10
0000039F  8AFC              mov bh,ah
000003A1  66C1C010          rol eax,byte 0x10
000003A5  658A1F            mov bl,[gs:bx]
000003A8  2ADE              sub bl,dh
000003AA  1AFF              sbb bh,bh
000003AC  F6D7              not bh
000003AE  22DF              and bl,bh
000003B0  26881D            mov [es:di],bl
000003B3  47                inc di
000003B4  6603C5            add eax,ebp
000003B7  03D6              add dx,si
000003B9  FEC9              dec cl
000003BB  75DC              jnz 0x399
000003BD  5E                pop si
000003BE  5A                pop dx
000003BF  665B              pop ebx
000003C1  6658              pop eax
000003C3  81C73801          add di,0x138
000003C7  660306341E        add eax,[0x1e34]
000003CC  66031E381E        add ebx,[0x1e38]
000003D1  03163C1E          add dx,[0x1e3c]
000003D5  03363E1E          add si,[0x1e3e]
000003D9  FECD              dec ch
000003DB  759B              jnz 0x378
000003DD  5E                pop si
000003DE  46                inc si
000003DF  46                inc si
000003E0  81EFF809          sub di,0x9f8
000003E4  59                pop cx
000003E5  49                dec cx
000003E6  0F852BFF          jnz near 0x315
000003EA  83C606            add si,byte +0x6
000003ED  81C7C008          add di,0x8c0
000003F1  59                pop cx
000003F2  49                dec cx
000003F3  0F851AFF          jnz near 0x311
000003F7  C3                ret
000003F8  BEAD04            mov si,0x4ad
000003FB  D906A504          fld dword [0x4a5]
000003FF  D9FB              fsincos
00000401  B90300            mov cx,0x3
00000404  D94408            fld dword [si+0x8]
00000407  D94404            fld dword [si+0x4]
0000040A  D9C0              fld st0
0000040C  D8CB              fmul st3
0000040E  D9C2              fld st2
00000410  D8CD              fmul st5
00000412  DEE9              fsubp st1
00000414  D95C04            fstp dword [si+0x4]
00000417  D8CB              fmul st3
00000419  D9C9              fxch st1
0000041B  D8CA              fmul st2
0000041D  DEC1              faddp st1
0000041F  D95C08            fstp dword [si+0x8]
00000422  83C60C            add si,byte +0xc
00000425  E2DD              loop 0x404
00000427  DDC0              ffree st0
00000429  DDC1              ffree st1
0000042B  C3                ret
0000042C  33DB              xor bx,bx
0000042E  B98000            mov cx,0x80
00000431  65880F            mov [gs:bx],cl
00000434  51                push cx
00000435  E82500            call 0x45d
00000438  C1E108            shl cx,byte 0x8
0000043B  E81F00            call 0x45d
0000043E  53                push bx
0000043F  02DD              add bl,ch
00000441  02DD              add bl,ch
00000443  8ACD              mov cl,ch
00000445  F6D9              neg cl
00000447  E81300            call 0x45d
0000044A  5B                pop bx
0000044B  59                pop cx
0000044C  02D9              add bl,cl
0000044E  02D9              add bl,cl
00000450  73E2              jnc 0x434
00000452  02F9              add bh,cl
00000454  02F9              add bh,cl
00000456  73DC              jnc 0x434
00000458  D0E9              shr cl,1
0000045A  75D8              jnz 0x434
0000045C  C3                ret
0000045D  33C0              xor ax,ax
0000045F  658A07            mov al,[gs:bx]
00000462  02FD              add bh,ch
00000464  02FD              add bh,ch
00000466  02D9              add bl,cl
00000468  02D9              add bl,cl
0000046A  33D2              xor dx,dx
0000046C  658A17            mov dl,[gs:bx]
0000046F  03D0              add dx,ax
00000471  D1EA              shr dx,1
00000473  32E4              xor ah,ah
00000475  E440              in al,0x40
00000477  98                cbw
00000478  D2E0              shl al,cl
0000047A  C1F803            sar ax,byte 0x3
0000047D  03D0              add dx,ax
0000047F  7902              jns 0x483
00000481  33D2              xor dx,dx
00000483  84F6              test dh,dh
00000485  7402              jz 0x489
00000487  B2FF              mov dl,0xff
00000489  2AFD              sub bh,ch
0000048B  2AD9              sub bl,cl
0000048D  658817            mov [gs:bx],dl
00000490  2AFD              sub bh,ch
00000492  2AD9              sub bl,cl
00000494  C3                ret
00000495  0000              add [bx+si],al
00000497  803F00            cmp byte [bx],0x0
0000049A  00403F            add [bx+si+0x3f],al
0000049D  0000              add [bx+si],al
0000049F  40                inc ax
000004A0  40                inc ax
000004A1  0000              add [bx+si],al
000004A3  80438FC2          add byte [bp+di-0x71],0xc2
000004A7  F5                cmc
000004A8  3C00              cmp al,0x0
000004AA  0000              add [bx+si],al
000004AC  0000              add [bx+si],al
000004AE  0080BF33          add [bx+si+0x33bf],al
000004B2  3333              xor si,[bp+di]
000004B4  3F                aas
000004B5  9A99593F00        call 0x3f:0x5999
000004BA  00803F33          add [bx+si+0x333f],al
000004BE  3333              xor si,[bp+di]
000004C0  3F                aas
000004C1  9A99593F00        call 0x3f:0x5999
000004C6  0080BF33          add [bx+si+0x33bf],al
000004CA  3333              xor si,[bp+di]
000004CC  BF9A99            mov di,0x999a
000004CF  59                pop cx
000004D0  3F                aas
000004D1  0000              add [bx+si],al
000004D3  48                dec ax
000004D4  42                inc dx
000004D5  54                push sp
000004D6  42                inc dx
000004D7  4C                dec sp
000004D8  6973682069        imul si,[bp+di+0x68],word 0x6920
000004DD  6E                outsb
000004DE  646565642C6E      fs sub al,0x6e
000004E4  6F                outsw
000004E5  3F                aas
000004E6  203A              and [bp+si],bh
000004E8  290D              sub [di],cx
000004EA  0A24              or ah,[si]
000004EC  0000              add [bx+si],al
000004EE  0000              add [bx+si],al
000004F0  0AD7              or dl,bh
000004F2  A33CCD            mov [0xcd3c],ax
000004F5  CC                int3
000004F6  CC                int3
000004F7  3C0A              cmp al,0xa
000004F9  D7                xlatb
000004FA  233D              and di,[di]
000004FC  83F922            cmp cx,byte +0x22
000004FF  46                inc si
