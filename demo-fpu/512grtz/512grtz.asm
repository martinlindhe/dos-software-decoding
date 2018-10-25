00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  33C0              xor ax,ax
00000106  BAC903            mov dx,0x3c9
00000109  EE                out dx,al
0000010A  EE                out dx,al
0000010B  EE                out dx,al
0000010C  2C41              sub al,0x41
0000010E  E2F9              loop 0x109
00000110  BD0803            mov bp,0x308
00000113  0E                push cs
00000114  07                pop es
00000115  33C0              xor ax,ax
00000117  8BFD              mov di,bp
00000119  B5FA              mov ch,0xfa
0000011B  F3AA              rep stosb
0000011D  D906FC02          fld dword [0x2fc]
00000121  D806F402          fadd dword [0x2f4]
00000125  D916FC02          fst dword [0x2fc]
00000129  D91E0003          fstp dword [0x300]
0000012D  6800A0            push word 0xa000
00000130  07                pop es
00000131  BB3200            mov bx,0x32
00000134  B103              mov cl,0x3
00000136  D9060003          fld dword [0x300]
0000013A  D8060003          fadd dword [0x300]
0000013E  D9FE              fsin
00000140  DE0EE702          fimul word [0x2e7]
00000144  DF1E0403          fistp word [0x304]
00000148  D9060003          fld dword [0x300]
0000014C  D9FE              fsin
0000014E  DE0EE902          fimul word [0x2e9]
00000152  DE06E902          fiadd word [0x2e9]
00000156  DE06E902          fiadd word [0x2e9]
0000015A  DF1E0603          fistp word [0x306]
0000015E  8B160603          mov dx,[0x306]
00000162  8BFB              mov di,bx
00000164  033E0403          add di,[0x304]
00000168  B531              mov ch,0x31
0000016A  3A93A000          cmp dl,[bp+di+0xa0]
0000016E  7610              jna 0x180
00000170  8AC5              mov al,ch
00000172  02C7              add al,bh
00000174  2408              and al,0x8
00000176  02C4              add al,ah
00000178  03C2              add ax,dx
0000017A  8803              mov [bp+di],al
0000017C  8893A000          mov [bp+di+0xa0],dl
00000180  80FD19            cmp ch,0x19
00000183  7604              jna 0x189
00000185  FEC4              inc ah
00000187  EB02              jmp short 0x18b
00000189  FECC              dec ah
0000018B  47                inc di
0000018C  FECD              dec ch
0000018E  75DA              jnz 0x16a
00000190  D9060003          fld dword [0x300]
00000194  D806F802          fadd dword [0x2f8]
00000198  80F901            cmp cl,0x1
0000019B  7704              ja 0x1a1
0000019D  D806F002          fadd dword [0x2f0]
000001A1  D91E0003          fstp dword [0x300]
000001A5  E28F              loop 0x136
000001A7  81C34001          add bx,0x140
000001AB  81FB72FB          cmp bx,0xfb72
000001AF  7283              jc 0x134
000001B1  A1E702            mov ax,[0x2e7]
000001B4  8A1EEE02          mov bl,[0x2ee]
000001B8  80FB00            cmp bl,0x0
000001BB  7420              jz 0x1dd
000001BD  80FB01            cmp bl,0x1
000001C0  750A              jnz 0x1cc
000001C2  3D2D00            cmp ax,0x2d
000001C5  7F03              jg 0x1ca
000001C7  40                inc ax
000001C8  EB0C              jmp short 0x1d6
000001CA  FEC3              inc bl
000001CC  3D1C00            cmp ax,0x1c
000001CF  7C03              jl 0x1d4
000001D1  48                dec ax
000001D2  EB02              jmp short 0x1d6
000001D4  FECB              dec bl
000001D6  A3E702            mov [0x2e7],ax
000001D9  881EEE02          mov [0x2ee],bl
000001DD  BADA03            mov dx,0x3da
000001E0  EC                in al,dx
000001E1  A808              test al,0x8
000001E3  74FB              jz 0x1e0
000001E5  8BF5              mov si,bp
000001E7  8B3EEC02          mov di,[0x2ec]
000001EB  8A16EB02          mov dl,[0x2eb]
000001EF  80FAC9            cmp dl,0xc9
000001F2  7532              jnz 0x226
000001F4  81FF9600          cmp di,0x96
000001F8  7525              jnz 0x21f
000001FA  A0EE02            mov al,[0x2ee]
000001FD  3C00              cmp al,0x0
000001FF  7508              jnz 0x209
00000201  C606EE0202        mov byte [0x2ee],0x2
00000206  90                nop
00000207  EB23              jmp short 0x22c
00000209  A0EF02            mov al,[0x2ef]
0000020C  3C00              cmp al,0x0
0000020E  751C              jnz 0x22c
00000210  BA4902            mov dx,0x249
00000213  B409              mov ah,0x9
00000215  CD21              int 0x21
00000217  C606EF0201        mov byte [0x2ef],0x1
0000021C  90                nop
0000021D  EB0D              jmp short 0x22c
0000021F  47                inc di
00000220  893EEC02          mov [0x2ec],di
00000224  EB06              jmp short 0x22c
00000226  FEC2              inc dl
00000228  8816EB02          mov [0x2eb],dl
0000022C  B8A000            mov ax,0xa0
0000022F  8BC8              mov cx,ax
00000231  F3A4              rep movsb
00000233  03F8              add di,ax
00000235  03F0              add si,ax
00000237  FECA              dec dl
00000239  75F4              jnz 0x22f
0000023B  B401              mov ah,0x1
0000023D  CD16              int 0x16
0000023F  0F84D0FE          jz near 0x113
00000243  B80300            mov ax,0x3
00000246  CD10              int 0x10
00000248  C3                ret
00000249  0A0A              or cl,[bp+si]
0000024B  0A35              or dh,[di]
0000024D  3132              xor [bp+si],si
0000024F  627974            bound di,[bx+di+0x74]
00000252  657320            gs jnc 0x275
00000255  6F                outsw
00000256  66204752          o32 and [bx+0x52],al
0000025A  656554            gs push sp
0000025D  7A3A              jpe 0x299
0000025F  0A0D              or cl,[di]
00000261  0A0A              or cl,[bp+si]
00000263  0A0A              or cl,[bp+si]
00000265  44                inc sp
00000266  656C              gs insb
00000268  7461              jz 0x2cb
0000026A  2020              and [bx+si],ah
0000026C  58                pop ax
0000026D  58                pop ax
0000026E  4C                dec sp
0000026F  2020              and [bx+si],ah
00000271  45                inc bp
00000272  6E                outsb
00000273  657267            gs jc 0x2dd
00000276  790A              jns 0x282
00000278  0D0A43            or ax,0x430a
0000027B  7269              jc 0x2e6
0000027D  7469              jz 0x2e8
0000027F  63616C            arpl [bx+di+0x6c],sp
00000282  204D61            and [di+0x61],cl
00000285  7373              jnc 0x2fa
00000287  2020              and [bx+si],ah
00000289  50                push ax
0000028A  43                inc bx
0000028B  42                inc dx
0000028C  0A0D              or cl,[di]
0000028E  0A4163            or al,[bx+di+0x63]
00000291  636570            arpl [di+0x70],sp
00000294  7420              jz 0x2b6
00000296  20542D            and [si+0x2d],dl
00000299  52                push dx
0000029A  657820            gs js 0x2bd
0000029D  204174            and [bx+di+0x74],al
000002A0  44                inc sp
000002A1  0A0D              or cl,[di]
000002A3  0A5073            or dl,[bx+si+0x73]
000002A6  7963              jns 0x30b
000002A8  686F20            push word 0x206f
000002AB  205468            and [si+0x68],dl
000002AE  726F              jc 0x31f
000002B0  6220              bound sp,[bx+si]
000002B2  204350            and [bp+di+0x50],al
000002B5  55                push bp
000002B6  0A0D              or cl,[di]
000002B8  0A5072            or dl,[bx+si+0x72]
000002BB  6F                outsw
000002BC  7869              js 0x327
000002BE  756D              jnz 0x32d
000002C0  2020              and [bx+si],ah
000002C2  44                inc sp
000002C3  4B                dec bx
000002C4  47                inc di
000002C5  2020              and [bx+si],ah
000002C7  20414E            and [bx+di+0x4e],al
000002CA  44                inc sp
000002CB  0A0D              or cl,[di]
000002CD  0A5465            or dl,[si+0x65]
000002D0  63684C            arpl [bx+si+0x4c],bp
000002D3  61                popa
000002D4  6220              bound sp,[bx+si]
000002D6  204341            and [bp+di+0x41],al
000002D9  2020              and [bx+si],ah
000002DB  2620596F          and [es:bx+di+0x6f],bl
000002DF  7524              jnz 0x305
000002E1  53                push bx
000002E2  696C656E74        imul bp,[si+0x65],word 0x746e
000002E7  2D0007            sub ax,0x700
000002EA  0001              add [bx+di],al
000002EC  50                push ax
000002ED  0000              add [bx+si],al
000002EF  00A799E4          add [bx-0x1b67],ah
000002F3  3C0D              cmp al,0xd
000002F5  D7                xlatb
000002F6  A33C7C            mov [0x7c3c],ax
000002F9  0A064000          or al,[0x40]
000002FD  0000              add [bx+si],al
000002FF  00                db 0x00
