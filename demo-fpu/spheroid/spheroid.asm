00000100  EB06              jmp short 0x108
00000102  44                inc sp
00000103  2D4172            sub ax,0x7241
00000106  7421              jz 0x129
00000108  B013              mov al,0x13
0000010A  CD10              int 0x10
0000010C  8AC1              mov al,cl
0000010E  BAC803            mov dx,0x3c8
00000111  EE                out dx,al
00000112  42                inc dx
00000113  D0E8              shr al,1
00000115  B703              mov bh,0x3
00000117  EE                out dx,al
00000118  F6E0              mul al
0000011A  C1E804            shr ax,byte 0x4
0000011D  FECF              dec bh
0000011F  75F6              jnz 0x117
00000121  E2E9              loop 0x10c
00000123  FC                cld
00000124  8CC8              mov ax,cs
00000126  BF0C03            mov di,0x30c
00000129  B110              mov cl,0x10
0000012B  02E1              add ah,cl
0000012D  AB                stosw
0000012E  02E1              add ah,cl
00000130  AB                stosw
00000131  02E1              add ah,cl
00000133  AB                stosw
00000134  02E1              add ah,cl
00000136  AB                stosw
00000137  BD9A01            mov bp,0x19a
0000013A  B018              mov al,0x18
0000013C  FFD5              call bp
0000013E  C606810201        mov byte [0x281],0x1
00000143  C606CF022A        mov byte [0x2cf],0x2a
00000148  C6064102C1        mov byte [0x241],0xc1
0000014D  B0C0              mov al,0xc0
0000014F  FFD5              call bp
00000151  C6065502F2        mov byte [0x255],0xf2
00000156  B020              mov al,0x20
00000158  FFD5              call bp
0000015A  C606810278        mov byte [0x281],0x78
0000015F  C6063B0200        mov byte [0x23b],0x0
00000164  C706CF0232C5      mov word [0x2cf],0xc532
0000016A  C6064102C2        mov byte [0x241],0xc2
0000016F  C6067F0250        mov byte [0x27f],0x50
00000174  B060              mov al,0x60
00000176  FFD5              call bp
00000178  C6065302C8        mov byte [0x253],0xc8
0000017D  C6064102C2        mov byte [0x241],0xc2
00000182  C606CF022A        mov byte [0x2cf],0x2a
00000187  B018              mov al,0x18
00000189  FFD5              call bp
0000018B  C60681029B        mov byte [0x281],0x9b
00000190  B060              mov al,0x60
00000192  FFD5              call bp
00000194  B80300            mov ax,0x3
00000197  CD10              int 0x10
00000199  C3                ret
0000019A  A2D702            mov [0x2d7],al
0000019D  E8EB00            call 0x28b
000001A0  E85F00            call 0x202
000001A3  C7060A032002      mov word [0x30a],0x220
000001A9  BADA03            mov dx,0x3da
000001AC  EC                in al,dx
000001AD  A808              test al,0x8
000001AF  74FB              jz 0x1ac
000001B1  EC                in al,dx
000001B2  A808              test al,0x8
000001B4  75FB              jnz 0x1b1
000001B6  6800A0            push word 0xa000
000001B9  07                pop es
000001BA  2BFF              sub di,di
000001BC  8E2E1203          mov gs,[0x312]
000001C0  8E260E03          mov fs,[0x30e]
000001C4  2BF6              sub si,si
000001C6  BA0000            mov dx,0x0
000001C9  B900FA            mov cx,0xfa00
000001CC  648B1C            mov bx,[fs:si]
000001CF  02FE              add bh,dh
000001D1  02DA              add bl,dl
000001D3  658A07            mov al,[gs:bx]
000001D6  AA                stosb
000001D7  83C602            add si,byte +0x2
000001DA  7304              jnc 0x1e0
000001DC  8E261003          mov fs,[0x310]
000001E0  E2EA              loop 0x1cc
000001E2  FF0E0A03          dec word [0x30a]
000001E6  7501              jnz 0x1e9
000001E8  C3                ret
000001E9  BB1803            mov bx,0x318
000001EC  A10A03            mov ax,[0x30a]
000001EF  50                push ax
000001F0  D7                xlatb
000001F1  A2C701            mov [0x1c7],al
000001F4  58                pop ax
000001F5  2C40              sub al,0x40
000001F7  D7                xlatb
000001F8  A2C801            mov [0x1c8],al
000001FB  E460              in al,0x60
000001FD  FEC8              dec al
000001FF  75A8              jnz 0x1a9
00000201  C3                ret
00000202  8E060E03          mov es,[0x30e]
00000206  33FF              xor di,di
00000208  C70604039CFF      mov word [0x304],0xff9c
0000020E  C706020360FF      mov word [0x302],0xff60
00000214  DBE3              fninit
00000216  DF060203          fild word [0x302]
0000021A  D8C8              fmul st0
0000021C  DF060403          fild word [0x304]
00000220  D8C8              fmul st0
00000222  D80E8302          fmul dword [0x283]
00000226  DF068102          fild word [0x281]
0000022A  D8C8              fmul st0
0000022C  D8E1              fsub st1
0000022E  D8E2              fsub st2
00000230  D9E1              fabs
00000232  D9FA              fsqrt
00000234  DF067F02          fild word [0x27f]
00000238  D9C0              fld st0
0000023A  EB04              jmp short 0x240
0000023C  D8C0              fadd st0
0000023E  DCEA              fsub to st2
00000240  D8C0              fadd st0
00000242  DF060403          fild word [0x304]
00000246  D8C9              fmul st1
00000248  D8F3              fdiv st3
0000024A  26DF1D            fistp word [es:di]
0000024D  47                inc di
0000024E  DF060203          fild word [0x302]
00000252  D8C9              fmul st1
00000254  D8F3              fdiv st3
00000256  DF1E0803          fistp word [0x308]
0000025A  A10803            mov ax,[0x308]
0000025D  268805            mov [es:di],al
00000260  47                inc di
00000261  7504              jnz 0x267
00000263  8E061003          mov es,[0x310]
00000267  FF060203          inc word [0x302]
0000026B  813E0203A000      cmp word [0x302],0xa0
00000271  75A1              jnz 0x214
00000273  FF060403          inc word [0x304]
00000277  833E040364        cmp word [0x304],byte +0x64
0000027C  7590              jnz 0x20e
0000027E  C3                ret
0000027F  64006400          add [fs:si+0x0],ah
00000283  9A99993F80        call 0x803f:0x9999
00000288  006000            add [bx+si+0x0],ah
0000028B  8E261203          mov fs,[0x312]
0000028F  8E060C03          mov es,[0x30c]
00000293  33FF              xor di,di
00000295  33C9              xor cx,cx
00000297  BA318E            mov dx,0x8e31
0000029A  BBC73F            mov bx,0x3fc7
0000029D  60                pusha
0000029E  03D3              add dx,bx
000002A0  86F3              xchg dh,bl
000002A2  8AC2              mov al,dl
000002A4  2403              and al,0x3
000002A6  AA                stosb
000002A7  E2F5              loop 0x29e
000002A9  61                popa
000002AA  49                dec cx
000002AB  06                push es
000002AC  1F                pop ds
000002AD  0FA0              push fs
000002AF  07                pop es
000002B0  8B05              mov ax,[di]
000002B2  2AC4              sub al,ah
000002B4  8AD0              mov dl,al
000002B6  8A4502            mov al,[di+0x2]
000002B9  2AC4              sub al,ah
000002BB  2AD0              sub dl,al
000002BD  8A8501FF          mov al,[di-0xff]
000002C1  2AC4              sub al,ah
000002C3  02D0              add dl,al
000002C5  8A850101          mov al,[di+0x101]
000002C9  2AD0              sub dl,al
000002CB  8AC2              mov al,dl
000002CD  02C1              add al,cl
000002CF  32C5              xor al,ch
000002D1  C0E803            shr al,byte 0x3
000002D4  241F              and al,0x1f
000002D6  0418              add al,0x18
000002D8  AA                stosb
000002D9  E2D5              loop 0x2b0
000002DB  0E                push cs
000002DC  1F                pop ds
000002DD  DBE3              fninit
000002DF  D9EE              fldz
000002E1  D9EB              fldpi
000002E3  DE368702          fidiv word [0x287]
000002E7  B501              mov ch,0x1
000002E9  BF1803            mov di,0x318
000002EC  D9C0              fld st0
000002EE  D8CA              fmul st2
000002F0  D9FE              fsin
000002F2  DE0E8902          fimul word [0x289]
000002F6  DF1D              fistp word [di]
000002F8  D9E8              fld1
000002FA  DEC2              faddp st2
000002FC  47                inc di
000002FD  E2ED              loop 0x2ec
000002FF  C3                ret
