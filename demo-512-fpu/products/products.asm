00000100  8CC8              mov ax,cs
00000102  80C410            add ah,0x10
00000105  8EE8              mov gs,ax
00000107  B81300            mov ax,0x13
0000010A  CD10              int 0x10
0000010C  6800A0            push word 0xa000
0000010F  07                pop es
00000110  BAFB02            mov dx,0x2fb
00000113  B409              mov ah,0x9
00000115  CD21              int 0x21
00000117  BEFF13            mov si,0x13ff
0000011A  268A04            mov al,[es:si]
0000011D  C0E003            shl al,byte 0x3
00000120  8884D0D6          mov [si-0x2930],al
00000124  4E                dec si
00000125  75F3              jnz 0x11a
00000127  BAC803            mov dx,0x3c8
0000012A  32C0              xor al,al
0000012C  EE                out dx,al
0000012D  42                inc dx
0000012E  B93F00            mov cx,0x3f
00000131  EE                out dx,al
00000132  EE                out dx,al
00000133  EE                out dx,al
00000134  FEC0              inc al
00000136  E2F9              loop 0x131
00000138  B94002            mov cx,0x240
0000013B  FEC8              dec al
0000013D  EE                out dx,al
0000013E  E2FD              loop 0x13d
00000140  E9BF00            jmp 0x202
00000143  06                push es
00000144  0FA8              push gs
00000146  07                pop es
00000147  33FF              xor di,di
00000149  B90040            mov cx,0x4000
0000014C  6633C0            xor eax,eax
0000014F  F366AB            rep stosd
00000152  BED8D6            mov si,0xd6d8
00000155  B93813            mov cx,0x1338
00000158  F3A4              rep movsb
0000015A  07                pop es
0000015B  BBFE02            mov bx,0x2fe
0000015E  83C304            add bx,byte +0x4
00000161  81FBCE05          cmp bx,0x5ce
00000165  7203              jc 0x16a
00000167  BBFE02            mov bx,0x2fe
0000016A  891E5C01          mov [0x15c],bx
0000016E  8B37              mov si,[bx]
00000170  8BBFB400          mov di,[bx+0xb4]
00000174  BDB60E            mov bp,0xeb6
00000177  B92204            mov cx,0x422
0000017A  51                push cx
0000017B  8B4602            mov ax,[bp+0x2]
0000017E  50                push ax
0000017F  E8C700            call 0x249
00000182  8B4600            mov ax,[bp+0x0]
00000185  50                push ax
00000186  E8C800            call 0x251
00000189  2BC1              sub ax,cx
0000018B  8BD8              mov bx,ax
0000018D  58                pop ax
0000018E  E8B800            call 0x249
00000191  58                pop ax
00000192  E8BC00            call 0x251
00000195  03C1              add ax,cx
00000197  8BC8              mov cx,ax
00000199  51                push cx
0000019A  8BC1              mov ax,cx
0000019C  E8AA00            call 0x249
0000019F  8B4604            mov ax,[bp+0x4]
000001A2  50                push ax
000001A3  E8AB00            call 0x251
000001A6  03C1              add ax,cx
000001A8  A3C501            mov [0x1c5],ax
000001AB  58                pop ax
000001AC  E89A00            call 0x249
000001AF  58                pop ax
000001B0  E89E00            call 0x251
000001B3  2BC1              sub ax,cx
000001B5  8BC8              mov cx,ax
000001B7  8BC3              mov ax,bx
000001B9  05DF01            add ax,0x1df
000001BC  50                push ax
000001BD  3D4001            cmp ax,0x140
000001C0  7320              jnc 0x1e2
000001C2  8BC1              mov ax,cx
000001C4  B95555            mov cx,0x5555
000001C7  83C064            add ax,byte +0x64
000001CA  3DC800            cmp ax,0xc8
000001CD  7313              jnc 0x1e2
000001CF  F726BE01          mul word [0x1be]
000001D3  5B                pop bx
000001D4  03D8              add bx,ax
000001D6  83C10C            add cx,byte +0xc
000001D9  80E580            and ch,0x80
000001DC  7503              jnz 0x1e1
000001DE  65880F            mov [gs:bx],cl
000001E1  53                push bx
000001E2  5B                pop bx
000001E3  83C506            add bp,byte +0x6
000001E6  59                pop cx
000001E7  49                dec cx
000001E8  7590              jnz 0x17a
000001EA  BADA03            mov dx,0x3da
000001ED  EC                in al,dx
000001EE  A808              test al,0x8
000001F0  74FB              jz 0x1ed
000001F2  EC                in al,dx
000001F3  A808              test al,0x8
000001F5  75FB              jnz 0x1f2
000001F7  33F6              xor si,si
000001F9  33FF              xor di,di
000001FB  B90040            mov cx,0x4000
000001FE  F36566A5          gs rep movsd
00000202  B8FF03            mov ax,0x3ff
00000205  40                inc ax
00000206  25FF03            and ax,0x3ff
00000209  8B1EBA01          mov bx,[0x1ba]
0000020D  7514              jnz 0x223
0000020F  43                inc bx
00000210  81FBE001          cmp bx,0x1e0
00000214  7517              jnz 0x22d
00000216  F7D3              not bx
00000218  81C3A000          add bx,0xa0
0000021C  53                push bx
0000021D  E83500            call 0x255
00000220  5B                pop bx
00000221  33C0              xor ax,ax
00000223  A30302            mov [0x203],ax
00000226  81FBA000          cmp bx,0xa0
0000022A  7405              jz 0x231
0000022C  43                inc bx
0000022D  891EBA01          mov [0x1ba],bx
00000231  E460              in al,0x60
00000233  FEC8              dec al
00000235  0F850AFF          jnz near 0x143
00000239  B80300            mov ax,0x3
0000023C  CD10              int 0x10
0000023E  C3                ret
0000023F  B85555            mov ax,0x5555
00000242  F7E9              imul cx
00000244  F73EF802          idiv word [0x2f8]
00000248  C3                ret
00000249  F7EE              imul si
0000024B  E8F6FF            call 0x244
0000024E  8BC8              mov cx,ax
00000250  C3                ret
00000251  F7EF              imul di
00000253  EBEF              jmp short 0x244
00000255  33C0              xor ax,ax
00000257  A3FC02            mov [0x2fc],ax
0000025A  BFFE02            mov di,0x2fe
0000025D  B9A005            mov cx,0x5a0
00000260  DBE3              fninit
00000262  DF06FC02          fild word [0x2fc]
00000266  D9EB              fldpi
00000268  DEC9              fmulp st1
0000026A  DE36FA02          fidiv word [0x2fa]
0000026E  D9FE              fsin
00000270  DE0EF802          fimul word [0x2f8]
00000274  DF1D              fistp word [di]
00000276  83C702            add di,byte +0x2
00000279  FF06FC02          inc word [0x2fc]
0000027D  E2E3              loop 0x262
0000027F  B304              mov bl,0x4
00000281  FECB              dec bl
00000283  7505              jnz 0x28a
00000285  FECB              dec bl
00000287  80E303            and bl,0x3
0000028A  881E8002          mov [0x280],bl
0000028E  BDB60E            mov bp,0xeb6
00000291  BEFE02            mov si,0x2fe
00000294  B96801            mov cx,0x168
00000297  51                push cx
00000298  BFFE02            mov di,0x2fe
0000029B  B9B400            mov cx,0xb4
0000029E  51                push cx
0000029F  8AC3              mov al,bl
000002A1  B1A0              mov cl,0xa0
000002A3  FEC8              dec al
000002A5  7408              jz 0x2af
000002A7  8B0C              mov cx,[si]
000002A9  FEC8              dec al
000002AB  7402              jz 0x2af
000002AD  8B0D              mov cx,[di]
000002AF  B86E00            mov ax,0x6e
000002B2  E88DFF            call 0x242
000002B5  A34002            mov [0x240],ax
000002B8  8B8CB400          mov cx,[si+0xb4]
000002BC  E880FF            call 0x23f
000002BF  8B0D              mov cx,[di]
000002C1  E87EFF            call 0x242
000002C4  894600            mov [bp+0x0],ax
000002C7  8B8DB400          mov cx,[di+0xb4]
000002CB  E871FF            call 0x23f
000002CE  894602            mov [bp+0x2],ax
000002D1  8B0C              mov cx,[si]
000002D3  E869FF            call 0x23f
000002D6  8B0D              mov cx,[di]
000002D8  E867FF            call 0x242
000002DB  894604            mov [bp+0x4],ax
000002DE  83C506            add bp,byte +0x6
000002E1  83C710            add di,byte +0x10
000002E4  59                pop cx
000002E5  83E908            sub cx,byte +0x8
000002E8  73B4              jnc 0x29e
000002EA  59                pop cx
000002EB  83C610            add si,byte +0x10
000002EE  83E908            sub cx,byte +0x8
000002F1  73A4              jnc 0x297
000002F3  C3                ret
000002F4  80006F            add byte [bx+si],0x6f
000002F7  00A000B4          add [bx+si-0x4c00],ah
000002FB  0033              add [bp+di],dh
000002FD  44                inc sp
000002FE  2124              and [si],sp
