00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  8CC8              mov ax,cs
00000106  80C410            add ah,0x10
00000109  8EC0              mov es,ax
0000010B  BE2502            mov si,0x225
0000010E  33FF              xor di,di
00000110  B380              mov bl,0x80
00000112  B98000            mov cx,0x80
00000115  D0C3              rol bl,1
00000117  7305              jnc 0x11e
00000119  90                nop
0000011A  90                nop
0000011B  AC                lodsb
0000011C  8AE0              mov ah,al
0000011E  32C0              xor al,al
00000120  D0EC              shr ah,1
00000122  0F92C0            setc al
00000125  C0E005            shl al,byte 0x5
00000128  AA                stosb
00000129  E2EA              loop 0x115
0000012B  06                push es
0000012C  6800A0            push word 0xa000
0000012F  07                pop es
00000130  0FA1              pop fs
00000132  B305              mov bl,0x5
00000134  C7063102E803      mov word [0x231],0x3e8
0000013A  C606250201        mov byte [0x225],0x1
0000013F  E88100            call 0x1c3
00000142  810633028000      add word [0x233],0x80
00000148  FE062502          inc byte [0x225]
0000014C  011E3102          add [0x231],bx
00000150  813E31024C04      cmp word [0x231],0x44c
00000156  7D09              jnl 0x161
00000158  833E310202        cmp word [0x231],byte +0x2
0000015D  7C02              jl 0x161
0000015F  EB02              jmp short 0x163
00000161  F7DB              neg bx
00000163  BADA03            mov dx,0x3da
00000166  ED                in ax,dx
00000167  2408              and al,0x8
00000169  75FB              jnz 0x166
0000016B  ED                in ax,dx
0000016C  2408              and al,0x8
0000016E  74FB              jz 0x16b
00000170  E460              in al,0x60
00000172  FEC8              dec al
00000174  75C9              jnz 0x13f
00000176  B003              mov al,0x3
00000178  CD10              int 0x10
0000017A  B44C              mov ah,0x4c
0000017C  CD21              int 0x21
0000017E  33DB              xor bx,bx
00000180  33F6              xor si,si
00000182  33FF              xor di,di
00000184  B9C800            mov cx,0xc8
00000187  51                push cx
00000188  A12702            mov ax,[0x227]
0000018B  B94001            mov cx,0x140
0000018E  55                push bp
0000018F  03062902          add ax,[0x229]
00000193  032E2B02          add bp,[0x22b]
00000197  8ADC              mov bl,ah
00000199  8BD5              mov dx,bp
0000019B  C1EA08            shr dx,byte 0x8
0000019E  80E270            and dl,0x70
000001A1  C0EB03            shr bl,byte 0x3
000001A4  80E30F            and bl,0xf
000001A7  0ADA              or bl,dl
000001A9  648A18            mov bl,[fs:bx+si]
000001AC  26881D            mov [es:di],bl
000001AF  47                inc di
000001B0  E2DD              loop 0x18f
000001B2  A12D02            mov ax,[0x22d]
000001B5  5D                pop bp
000001B6  01062702          add [0x227],ax
000001BA  032E2F02          add bp,[0x22f]
000001BE  59                pop cx
000001BF  E2C6              loop 0x187
000001C1  61                popa
000001C2  C3                ret
000001C3  60                pusha
000001C4  BE2502            mov si,0x225
000001C7  DF440C            fild word [si+0xc]
000001CA  D95C2C            fstp dword [si+0x2c]
000001CD  DF04              fild word [si]
000001CF  D84C10            fmul dword [si+0x10]
000001D2  D9C0              fld st0
000001D4  D9FB              fsincos
000001D6  D84C2C            fmul dword [si+0x2c]
000001D9  DF5C04            fistp word [si+0x4]
000001DC  D84C2C            fmul dword [si+0x2c]
000001DF  DF5C06            fistp word [si+0x6]
000001E2  D84414            fadd dword [si+0x14]
000001E5  D9FB              fsincos
000001E7  D84C2C            fmul dword [si+0x2c]
000001EA  DF5C08            fistp word [si+0x8]
000001ED  D84C2C            fmul dword [si+0x2c]
000001F0  DF5C0A            fistp word [si+0xa]
000001F3  BB6400            mov bx,0x64
000001F6  B9A000            mov cx,0xa0
000001F9  8B4408            mov ax,[si+0x8]
000001FC  F7E3              mul bx
000001FE  8BE8              mov bp,ax
00000200  8B4404            mov ax,[si+0x4]
00000203  F7E1              mul cx
00000205  03C5              add ax,bp
00000207  BD0080            mov bp,0x8000
0000020A  2BE8              sub bp,ax
0000020C  896C02            mov [si+0x2],bp
0000020F  8B440A            mov ax,[si+0xa]
00000212  F7E3              mul bx
00000214  8BE8              mov bp,ax
00000216  8B4406            mov ax,[si+0x6]
00000219  F7E1              mul cx
0000021B  03C5              add ax,bp
0000021D  8B6C0E            mov bp,[si+0xe]
00000220  2BE8              sub bp,ax
00000222  E959FF            jmp 0x17e
00000225  800000            add byte [bx+si],0x0
00000228  00CB              add bl,cl
0000022A  38950495          cmp [di-0x6afc],dl
0000022E  0495              add al,0x95
00000230  44                inc sp
00000231  D539              aad 0x39
00000233  0000              add [bx+si],al
00000235  1C08              sbb al,0x8
00000237  C9                leave
00000238  3CA6              cmp al,0xa6
0000023A  0F                db 0x0f
0000023B  C9                leave
0000023C  3F                aas
