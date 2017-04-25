00000100  DBE3              fninit
00000102  B013              mov al,0x13
00000104  CD10              int 0x10
00000106  BF0002            mov di,0x200
00000109  B5FD              mov ch,0xfd
0000010B  B8003F            mov ax,0x3f00
0000010E  F3AA              rep stosb
00000110  BAC803            mov dx,0x3c8
00000113  EE                out dx,al
00000114  42                inc dx
00000115  BF4003            mov di,0x340
00000118  8BF7              mov si,di
0000011A  B120              mov cl,0x20
0000011C  47                inc di
0000011D  AA                stosb
0000011E  89455E            mov [di+0x5e],ax
00000121  884560            mov [di+0x60],al
00000124  47                inc di
00000125  0402              add al,0x2
00000127  E2F3              loop 0x11c
00000129  B1C0              mov cl,0xc0
0000012B  F36E              rep outsb
0000012D  DF06FC01          fild word [0x1fc]
00000131  D9EE              fldz
00000133  FEC5              inc ch
00000135  D9EE              fldz
00000137  D9C1              fld st1
00000139  D8F3              fdiv st3
0000013B  D9FE              fsin
0000013D  D8CB              fmul st3
0000013F  D8C1              fadd st1
00000141  D9FB              fsincos
00000143  D9C3              fld st3
00000145  D9FE              fsin
00000147  DE0EFE01          fimul word [0x1fe]
0000014B  DF16AA01          fist word [0x1aa]
0000014F  D9C3              fld st3
00000151  D8CE              fmul st6
00000153  D9FE              fsin
00000155  DEC9              fmulp st1
00000157  DE06FE01          fiadd word [0x1fe]
0000015B  DCC9              fmul to st1
0000015D  DECA              fmulp st2
0000015F  DF1E6F01          fistp word [0x16f]
00000163  DF1E6C01          fistp word [0x16c]
00000167  D806F801          fadd dword [0x1f8]
0000016B  BE3412            mov si,0x1234
0000016E  BB3412            mov bx,0x1234
00000171  69F64001          imul si,si,word 0x140
00000175  C780E0803737      mov word [bx+si-0x7f20],0x3737
0000017B  E2BA              loop 0x137
0000017D  DDD8              fstp st0
0000017F  D806F401          fadd dword [0x1f4]
00000183  B2DA              mov dl,0xda
00000185  EC                in al,dx
00000186  2408              and al,0x8
00000188  74FB              jz 0x185
0000018A  BFFFF9            mov di,0xf9ff
0000018D  8A854103          mov al,[di+0x341]
00000191  02853F03          add al,[di+0x33f]
00000195  02858004          add al,[di+0x480]
00000199  02850002          add al,[di+0x200]
0000019D  C0E802            shr al,byte 0x2
000001A0  88854003          mov [di+0x340],al
000001A4  4F                dec di
000001A5  75E6              jnz 0x18d
000001A7  1E                push ds
000001A8  07                pop es
000001A9  BF3412            mov di,0x1234
000001AC  03FF              add di,di
000001AE  81C7B899          add di,0x99b8
000001B2  BE4003            mov si,0x340
000001B5  B132              mov cl,0x32
000001B7  B050              mov al,0x50
000001B9  A4                movsb
000001BA  83C603            add si,byte +0x3
000001BD  FEC8              dec al
000001BF  75F8              jnz 0x1b9
000001C1  81C6C003          add si,0x3c0
000001C5  81C7F000          add di,0xf0
000001C9  E2EC              loop 0x1b7
000001CB  6800A0            push word 0xa000
000001CE  07                pop es
000001CF  33FF              xor di,di
000001D1  B5FA              mov ch,0xfa
000001D3  8A854003          mov al,[di+0x340]
000001D7  80E307            and bl,0x7
000001DA  02C3              add al,bl
000001DC  03DD              add bx,bp
000001DE  C1CD03            ror bp,byte 0x3
000001E1  03EB              add bp,bx
000001E3  AA                stosb
000001E4  49                dec cx
000001E5  75EC              jnz 0x1d3
000001E7  E460              in al,0x60
000001E9  2F                das
000001EA  0F8245FF          jc word 0x133
000001EE  B80300            mov ax,0x3
000001F1  CD10              int 0x10
000001F3  C3                ret
000001F4  CDCC              int 0xcc
000001F6  4C                dec sp
000001F7  3DDB0F            cmp ax,0xfdb
000001FA  C9                leave
000001FB  3C06              cmp al,0x6
000001FD  002D              add [di],ch
000001FF  00                db 0x00
