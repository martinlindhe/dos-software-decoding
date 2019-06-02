00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  B80005            mov ax,0x500
00000107  B128              mov cl,0x28
00000109  B305              mov bl,0x5
0000010B  E88700            call 0x195
0000010E  FEC4              inc ah
00000110  E2F9              loop 0x10b
00000112  B128              mov cl,0x28
00000114  BB1414            mov bx,0x1414
00000117  B402              mov ah,0x2
00000119  E87900            call 0x195
0000011C  FEC7              inc bh
0000011E  FEC3              inc bl
00000120  E2F7              loop 0x119
00000122  BDA801            mov bp,0x1a8
00000125  B90800            mov cx,0x8
00000128  B80013            mov ax,0x1300
0000012B  51                push cx
0000012C  8A4E00            mov cl,[bp+0x0]
0000012F  8B5601            mov dx,[bp+0x1]
00000132  BB2800            mov bx,0x28
00000135  83C503            add bp,byte +0x3
00000138  CD10              int 0x10
0000013A  03E9              add bp,cx
0000013C  59                pop cx
0000013D  E2E9              loop 0x128
0000013F  6800A0            push word 0xa000
00000142  07                pop es
00000143  B204              mov dl,0x4
00000145  BB0100            mov bx,0x1
00000148  B619              mov dh,0x19
0000014A  33C9              xor cx,cx
0000014C  FEC6              inc dh
0000014E  E440              in al,0x40
00000150  D0D8              rcr al,1
00000152  D0D8              rcr al,1
00000154  83D300            adc bx,byte +0x0
00000157  80FEAF            cmp dh,0xaf
0000015A  7602              jna 0x15e
0000015C  B619              mov dh,0x19
0000015E  81FB3E01          cmp bx,0x13e
00000162  7603              jna 0x167
00000164  BB0100            mov bx,0x1
00000167  33C0              xor ax,ax
00000169  8AC6              mov al,dh
0000016B  51                push cx
0000016C  52                push dx
0000016D  B94001            mov cx,0x140
00000170  F7E1              mul cx
00000172  5A                pop dx
00000173  59                pop cx
00000174  03C3              add ax,bx
00000176  8BF8              mov di,ax
00000178  26FE05            inc byte [es:di]
0000017B  26FE45FF          inc byte [es:di-0x1]
0000017F  26FE4501          inc byte [es:di+0x1]
00000183  E2C7              loop 0x14c
00000185  FECA              dec dl
00000187  75C1              jnz 0x14a
00000189  E460              in al,0x60
0000018B  3C01              cmp al,0x1
0000018D  75FA              jnz 0x189
0000018F  B80300            mov ax,0x3
00000192  CD10              int 0x10
00000194  C3                ret
00000195  50                push ax
00000196  BAC803            mov dx,0x3c8
00000199  EE                out dx,al
0000019A  42                inc dx
0000019B  8AC3              mov al,bl
0000019D  EE                out dx,al
0000019E  8AC7              mov al,bh
000001A0  EE                out dx,al
000001A1  8AC4              mov al,ah
000001A3  EE                out dx,al
000001A4  58                pop ax
000001A5  FEC0              inc al
000001A7  C3                ret
000001A8  0B0E052D          or cx,[0x2d05]
000001AC  206D4F            and [di+0x4f],ch
000001AF  52                push dx
000001B0  41                inc cx
000001B1  4C                dec sp
000001B2  45                inc bp
000001B3  53                push bx
000001B4  202D              and [di],ch
000001B6  1907              sbb [bx],ax
000001B8  07                pop es
000001B9  2B6F50            sub bp,[bx+0x50]
000001BC  20734F            and [bp+di+0x4f],dh
000001BF  694E472020        imul cx,[bp+0x47],word 0x2020
000001C4  2B634F            sub sp,[bp+di+0x4f]
000001C7  50                push ax
000001C8  206469            and [si+0x69],ah
000001CB  50                push ax
000001CC  53                push bx
000001CD  57                push di
000001CE  6954434821        imul dx,[si+0x43],word 0x2148
000001D3  0309              add cx,[bx+di]
000001D5  2E6764692E6563    imul bp,[fs:esi],word 0x6365
000001DC  762E              jna 0x20c
000001DE  666C              o32 insb
000001E0  7578              jnz 0x25a
000001E2  2E7778            cs ja 0x25d
000001E5  2E6464622E626C    bound bp,[fs:0x6c62]
000001EC  7A2E              jpe 0x21c
000001EE  637263            arpl [bp+si+0x63],si
000001F1  2E646B622E1C      imul sp,[fs:bp+si+0x2e],byte +0x1c
000001F7  06                push es
000001F8  0B2E7379          or bp,[0x7973]
000001FC  6E                outsb
000001FD  2E6D              cs insw
000001FF  61                popa
00000200  6964656E2E        imul sp,[si+0x65],word 0x2e6e
00000205  7477              jz 0x27e
00000207  6973746564        imul si,[bp+di+0x74],word 0x6465
0000020C  2E7372            cs jnc 0x281
0000020F  3F                aas
00000210  2E2020            and [cs:bx+si],ah
00000213  2020              and [bx+si],ah
00000215  140A              adc al,0xa
00000217  0D2B34            or ax,0x342b
0000021A  392D              cmp [di],bp
0000021C  3232              xor dh,[bp+si]
0000021E  3333              xor si,[bp+di]
00000220  2D3933            sub ax,0x3339
00000223  356F6F            xor ax,0x6f6f
00000226  3120              xor [bx+si],sp
00000228  3333              xor si,[bp+di]
0000022A  6B36130A0F        imul si,[0xa13],byte +0xf
0000022F  2B34              sub si,[si]
00000231  392D              cmp [di],bp
00000233  3232              xor dh,[bp+si]
00000235  3333              xor si,[bp+di]
00000237  2D3933            sub ax,0x3339
0000023A  356F6F            xor ax,0x6f6f
0000023D  6F                outsw
0000023E  2036346B          and [0x6b34],dh
00000242  130A              adc cx,[bp+si]
00000244  112B              adc [bp+di],bp
00000246  3439              xor al,0x39
00000248  2D3232            sub ax,0x3232
0000024B  3333              xor si,[bp+di]
0000024D  2D3933            sub ax,0x3339
00000250  356F6F            xor ax,0x6f6f
00000253  3220              xor ah,[bx+si]
00000255  36346B            ss xor al,0x6b
00000258  17                pop ss
00000259  0813              or [bp+di],dl
0000025B  7465              jz 0x2c2
0000025D  6C                insb
0000025E  6E                outsb
0000025F  657420            gs jz 0x282
00000262  6F                outsw
00000263  6E                outsb
00000264  2023              and [bp+di],ah
00000266  666C              o32 insb
00000268  7578              jnz 0x2e2
0000026A  2028              and [bx+si],ch
0000026C  65666E            gs o32 outsb
0000026F  657429            gs jz 0x29b
