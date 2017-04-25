00000100  BF0004            mov di,0x400
00000103  B57D              mov ch,0x7d
00000105  F3AB              rep stosw
00000107  B702              mov bh,0x2
00000109  D9EE              fldz
0000010B  D9C0              fld st0
0000010D  D9FE              fsin
0000010F  DE0EF701          fimul word [0x1f7]
00000113  DF1F              fistp word [bx]
00000115  D806FB01          fadd dword [0x1fb]
00000119  FEC3              inc bl
0000011B  75EE              jnz 0x10b
0000011D  B013              mov al,0x13
0000011F  CD10              int 0x10
00000121  B800A0            mov ax,0xa000
00000124  8EC0              mov es,ax
00000126  BAC803            mov dx,0x3c8
00000129  EE                out dx,al
0000012A  42                inc dx
0000012B  8A07              mov al,[bx]
0000012D  EE                out dx,al
0000012E  8A470A            mov al,[bx+0xa]
00000131  EE                out dx,al
00000132  8A07              mov al,[bx]
00000134  EE                out dx,al
00000135  FEC3              inc bl
00000137  75F2              jnz 0x12b
00000139  BADA03            mov dx,0x3da
0000013C  EC                in al,dx
0000013D  2408              and al,0x8
0000013F  74FB              jz 0x13c
00000141  D9C0              fld st0
00000143  D9FB              fsincos
00000145  DF06F901          fild word [0x1f9]
00000149  DCC9              fmul to st1
0000014B  DECA              fmulp st2
0000014D  DF1ED201          fistp word [0x1d2]
00000151  DF1EC001          fistp word [0x1c0]
00000155  D806FB01          fadd dword [0x1fb]
00000159  B938FF            mov cx,0xff38
0000015C  33FF              xor di,di
0000015E  33F6              xor si,si
00000160  33D2              xor dx,dx
00000162  8A27              mov ah,[bx]
00000164  FECB              dec bl
00000166  BDC0FE            mov bp,0xfec0
00000169  2BFD              sub di,bp
0000016B  60                pushaw
0000016C  8BDE              mov bx,si
0000016E  FEC5              inc ch
00000170  023EC001          add bh,[0x1c0]
00000174  B03F              mov al,0x3f
00000176  22FE              and bh,dh
00000178  7440              jz 0x1ba
0000017A  90                nop
0000017B  90                nop
0000017C  B702              mov bh,0x2
0000017E  8ADD              mov bl,ch
00000180  02DC              add bl,ah
00000182  8A07              mov al,[bx]
00000184  02C1              add al,cl
00000186  8AD8              mov bl,al
00000188  2AC4              sub al,ah
0000018A  02C5              add al,ch
0000018C  02D9              add bl,cl
0000018E  80E37F            and bl,0x7f
00000191  247F              and al,0x7f
00000193  8A1F              mov bl,[bx]
00000195  86C3              xchg al,bl
00000197  0207              add al,[bx]
00000199  D0E8              shr al,1
0000019B  51                push cx
0000019C  8BDC              mov bx,sp
0000019E  8B4F04            mov cx,[bx+0x4]
000001A1  8B5F0C            mov bx,[bx+0xc]
000001A4  03C9              add cx,cx
000001A6  03DB              add bx,bx
000001A8  2BCE              sub cx,si
000001AA  2BDA              sub bx,dx
000001AC  023ED201          add bh,[0x1d2]
000001B0  32EF              xor ch,bh
000001B2  80E520            and ch,0x20
000001B5  02C5              add al,ch
000001B7  D0E8              shr al,1
000001B9  59                pop cx
000001BA  8A9B0004          mov bl,[bp+di+0x400]
000001BE  81C63412          add si,0x1234
000001C2  2AC3              sub al,bl
000001C4  C0F802            sar al,byte 0x2
000001C7  02C3              add al,bl
000001C9  88830004          mov [bp+di+0x400],al
000001CD  268803            mov [es:bp+di],al
000001D0  81C23412          add dx,0x1234
000001D4  45                inc bp
000001D5  7595              jnz 0x16c
000001D7  61                popaw
000001D8  2B16C001          sub dx,[0x1c0]
000001DC  0336D201          add si,[0x1d2]
000001E0  FEC1              inc cl
000001E2  0F857CFF          jnz word 0x162
000001E6  80EB39            sub bl,0x39
000001E9  E460              in al,0x60
000001EB  3C01              cmp al,0x1
000001ED  0F8548FF          jnz word 0x139
000001F1  B80300            mov ax,0x3
000001F4  CD10              int 0x10
000001F6  C3                ret
000001F7  3F                aas
000001F8  008000DB          add [bx+si-0x2500],al
000001FC  0F                db 0x0f
000001FD  C9                leave
000001FE  3C                db 0x3c
