00000100  BDFF02            mov bp,0x2ff
00000103  B013              mov al,0x13
00000105  CD10              int 0x10
00000107  BF8306            mov di,0x683
0000010A  D40D              aam 0xd
0000010C  8801              mov [bx+di],al
0000010E  03C3              add ax,bx
00000110  D54F              aad 0x4f
00000112  43                inc bx
00000113  80FF97            cmp bh,0x97
00000116  75F2              jnz 0x10a
00000118  B106              mov cl,0x6
0000011A  60                pusha
0000011B  B597              mov ch,0x97
0000011D  B701              mov bh,0x1
0000011F  8B05              mov ax,[di]
00000121  1301              adc ax,[bx+di]
00000123  12C4              adc al,ah
00000125  C0E802            shr al,byte 0x2
00000128  AA                stosb
00000129  E2F4              loop 0x11f
0000012B  61                popa
0000012C  E2EC              loop 0x11a
0000012E  B72D              mov bh,0x2d
00000130  B603              mov dh,0x3
00000132  8A01              mov al,[bx+di]
00000134  2403              and al,0x3
00000136  8BF0              mov si,ax
00000138  F6E6              mul dh
0000013A  80FF10            cmp bh,0x10
0000013D  7609              jna 0x148
0000013F  D1EE              shr si,1
00000141  7205              jc 0x148
00000143  8AE0              mov ah,al
00000145  80C441            add ah,0x41
00000148  F6C301            test bl,0x1
0000014B  7502              jnz 0x14f
0000014D  B001              mov al,0x1
0000014F  88A7839D          mov [bx-0x627d],ah
00000153  888783CA          mov [bx-0x357d],al
00000157  4B                dec bx
00000158  79D6              jns 0x130
0000015A  B231              mov dl,0x31
0000015C  B0FF              mov al,0xff
0000015E  EE                out dx,al
0000015F  B03F              mov al,0x3f
00000161  EE                out dx,al
00000162  BA3003            mov dx,0x330
00000165  B090              mov al,0x90
00000167  EE                out dx,al
00000168  8AC4              mov al,ah
0000016A  EE                out dx,al
0000016B  B07F              mov al,0x7f
0000016D  EE                out dx,al
0000016E  B2DA              mov dl,0xda
00000170  EC                in al,dx
00000171  A808              test al,0x8
00000173  75FB              jnz 0x170
00000175  EC                in al,dx
00000176  A808              test al,0x8
00000178  74FB              jz 0x175
0000017A  1E                push ds
0000017B  6A40              push byte +0x40
0000017D  1F                pop ds
0000017E  C6064A0050        mov byte [0x4a],0x50
00000183  C60650000D        mov byte [0x50],0xd
00000188  8CC8              mov ax,cs
0000018A  80C410            add ah,0x10
0000018D  8EC0              mov es,ax
0000018F  6800A0            push word 0xa000
00000192  1F                pop ds
00000193  33FF              xor di,di
00000195  B010              mov al,0x10
00000197  268605            xchg al,[es:di]
0000019A  8805              mov [di],al
0000019C  4F                dec di
0000019D  75F6              jnz 0x195
0000019F  1F                pop ds
000001A0  E307              jcxz 0x1a9
000001A2  BAE802            mov dx,0x2e8
000001A5  B409              mov ah,0x9
000001A7  CD21              int 0x21
000001A9  DF46FE            fild word [bp-0x2]
000001AC  BEF602            mov si,0x2f6
000001AF  E88300            call 0x235
000001B2  BFFFF9            mov di,0xf9ff
000001B5  C746026400        mov word [bp+0x2],0x64
000001BA  D9C0              fld st0
000001BC  DE7602            fidiv word [bp+0x2]
000001BF  D9C0              fld st0
000001C1  BB0703            mov bx,0x307
000001C4  DE4EFC            fimul word [bp-0x4]
000001C7  DF1F              fistp word [bx]
000001C9  DE4EFB            fimul word [bp-0x5]
000001CC  BEF802            mov si,0x2f8
000001CF  E86300            call 0x235
000001D2  4B                dec bx
000001D3  4B                dec bx
000001D4  DF1F              fistp word [bx]
000001D6  DDD9              fstp st1
000001D8  8B07              mov ax,[bx]
000001DA  2A47FA            sub al,[bx-0x6]
000001DD  86C4              xchg al,ah
000001DF  8947FE            mov [bx-0x2],ax
000001E2  C70681054001      mov word [0x581],0x140
000001E8  BB0100            mov bx,0x1
000001EB  BE8312            mov si,0x1283
000001EE  BAFF7F            mov dx,0x7fff
000001F1  E85000            call 0x244
000001F4  FE4E02            dec byte [bp+0x2]
000001F7  75C1              jnz 0x1ba
000001F9  DDD9              fstp st1
000001FB  E460              in al,0x60
000001FD  FEC8              dec al
000001FF  742E              jz 0x22f
00000201  FE4600            inc byte [bp+0x0]
00000204  0F855AFF          jnz near 0x162
00000208  B720              mov bh,0x20
0000020A  8A879612          mov al,[bx+0x1296]
0000020E  F6C7F8            test bh,0xf8
00000211  750E              jnz 0x221
00000213  B008              mov al,0x8
00000215  80FB03            cmp bl,0x3
00000218  7407              jz 0x221
0000021A  80FF03            cmp bh,0x3
0000021D  7402              jz 0x221
0000021F  B000              mov al,0x0
00000221  888783D7          mov [bx-0x287d],al
00000225  4B                dec bx
00000226  79E2              jns 0x20a
00000228  80C180            add cl,0x80
0000022B  0F8533FF          jnz near 0x162
0000022F  B80300            mov ax,0x3
00000232  CD10              int 0x10
00000234  C3                ret
00000235  E301              jcxz 0x238
00000237  C3                ret
00000238  DF4600            fild word [bp+0x0]
0000023B  DE34              fidiv word [si]
0000023D  D9FE              fsin
0000023F  DE0C              fimul word [si]
00000241  DEC1              faddp st1
00000243  C3                ret
00000244  60                pusha
00000245  26803D10          cmp byte [es:di],0x10
00000249  8B870303          mov ax,[bx+0x303]
0000024D  50                push ax
0000024E  752E              jnz 0x27e
00000250  23C2              and ax,dx
00000252  03F0              add si,ax
00000254  8A14              mov dl,[si]
00000256  80C210            add dl,0x10
00000259  53                push bx
0000025A  4B                dec bx
0000025B  741D              jz 0x27a
0000025D  B80F0D            mov ax,0xd0f
00000260  F9                stc
00000261  E310              jcxz 0x273
00000263  2D0F07            sub ax,0x70f
00000266  E86100            call 0x2ca
00000269  7512              jnz 0x27d
0000026B  B410              mov ah,0x10
0000026D  3AD4              cmp dl,ah
0000026F  7409              jz 0x27a
00000271  FECF              dec bh
00000273  E85400            call 0x2ca
00000276  7402              jz 0x27a
00000278  42                inc dx
00000279  42                inc dx
0000027A  268815            mov [es:di],dl
0000027D  5B                pop bx
0000027E  4B                dec bx
0000027F  5B                pop bx
00000280  7531              jnz 0x2b3
00000282  53                push bx
00000283  C1EB04            shr bx,byte 0x4
00000286  80E30F            and bl,0xf
00000289  8DB783AA          lea si,[bx-0x557d]
0000028D  32C0              xor al,al
0000028F  0204              add al,[si]
00000291  5B                pop bx
00000292  741F              jz 0x2b3
00000294  8AE3              mov ah,bl
00000296  BA071F            mov dx,0x1f07
00000299  E304              jcxz 0x29f
0000029B  B009              mov al,0x9
0000029D  EB04              jmp short 0x2a3
0000029F  02E7              add ah,bh
000002A1  B2FF              mov dl,0xff
000002A3  A34304            mov [0x443],ax
000002A6  882E4204          mov [0x442],ch
000002AA  BE83D7            mov si,0xd783
000002AD  BB4001            mov bx,0x140
000002B0  E891FF            call 0x244
000002B3  61                popa
000002B4  2BFB              sub di,bx
000002B6  A10703            mov ax,[0x307]
000002B9  29870203          sub [bx+0x302],ax
000002BD  53                push bx
000002BE  F7DB              neg bx
000002C0  FF8F8205          dec word [bx+0x582]
000002C4  5B                pop bx
000002C5  0F8F7BFF          jg near 0x244
000002C9  C3                ret
000002CA  9C                pushf
000002CB  024605            add al,[bp+0x5]
000002CE  240F              and al,0xf
000002D0  3AC4              cmp al,ah
000002D2  0F9FC6            setg dh
000002D5  A00503            mov al,[0x305]
000002D8  240F              and al,0xf
000002DA  3AC7              cmp al,bh
000002DC  0F9FC0            setg al
000002DF  9D                popf
000002E0  7303              jnc 0x2e5
000002E2  22C6              and al,dh
000002E4  C3                ret
000002E5  0AC6              or al,dh
000002E7  C3                ret
000002E8  4F                dec di
000002E9  53                push bx
000002EA  41                inc cx
000002EB  4D                dec bp
000002EC  41                inc cx
000002ED  27                daa
000002EE  7320              jnc 0x310
000002F0  44                inc sp
000002F1  52                push dx
000002F2  45                inc bp
000002F3  41                inc cx
000002F4  4D                dec bp
000002F5  2404              and al,0x4
000002F7  0002              add [bp+si],al
000002F9  00A20001          add [bp+si+0x100],ah
000002FD  1900              sbb [bx+si],ax
000002FF  00                db 0x00
