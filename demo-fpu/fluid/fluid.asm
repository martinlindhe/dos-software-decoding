00000100  4D                dec bp
00000101  4F                dec di
00000102  4E                dec si
00000103  53                push bx
00000104  54                push sp
00000105  45                inc bp
00000106  52                push dx
00000107  B81300            mov ax,0x13
0000010A  CD10              int 0x10
0000010C  BA2202            mov dx,0x222
0000010F  B409              mov ah,0x9
00000111  CD21              int 0x21
00000113  8CC8              mov ax,cs
00000115  050020            add ax,0x2000
00000118  50                push ax
00000119  8EC0              mov es,ax
0000011B  6800A0            push word 0xa000
0000011E  1F                pop ds
0000011F  33FF              xor di,di
00000121  33F6              xor si,si
00000123  B9007D            mov cx,0x7d00
00000126  F3A5              rep movsw
00000128  0E                push cs
00000129  1F                pop ds
0000012A  DBE3              fninit
0000012C  D9EE              fldz
0000012E  BB0503            mov bx,0x305
00000131  B90001            mov cx,0x100
00000134  D9C0              fld st0
00000136  D9FE              fsin
00000138  DE0E1802          fimul word [0x218]
0000013C  DF1F              fistp word [bx]
0000013E  DE061602          fiadd word [0x216]
00000142  43                inc bx
00000143  E2EF              loop 0x134
00000145  B90003            mov cx,0x300
00000148  D9EE              fldz
0000014A  BAC803            mov dx,0x3c8
0000014D  32C0              xor al,al
0000014F  EE                out dx,al
00000150  42                inc dx
00000151  D9C0              fld st0
00000153  D9FE              fsin
00000155  D8C8              fmul st0
00000157  D9C2              fld st2
00000159  D9FF              fcos
0000015B  D8C8              fmul st0
0000015D  DEC9              fmulp st1
0000015F  DE0E1802          fimul word [0x218]
00000163  DF1E0103          fistp word [0x301]
00000167  A10103            mov ax,[0x301]
0000016A  EE                out dx,al
0000016B  DE062002          fiadd word [0x220]
0000016F  E2E0              loop 0x151
00000171  DDD8              fstp st0
00000173  8CC8              mov ax,cs
00000175  050010            add ax,0x1000
00000178  8EC0              mov es,ax
0000017A  33FF              xor di,di
0000017C  B9007D            mov cx,0x7d00
0000017F  33C0              xor ax,ax
00000181  F3AB              rep stosw
00000183  C606000305        mov byte [0x300],0x5
00000188  D9C0              fld st0
0000018A  D9FB              fsincos
0000018C  DE0E1A02          fimul word [0x21a]
00000190  DF1E0103          fistp word [0x301]
00000194  DE0E1C02          fimul word [0x21c]
00000198  DF1E0303          fistp word [0x303]
0000019C  DE061E02          fiadd word [0x21e]
000001A0  8BDD              mov bx,bp
000001A2  B860FF            mov ax,0xff60
000001A5  F72E0103          imul word [0x301]
000001A9  03D8              add bx,ax
000001AB  B89CFF            mov ax,0xff9c
000001AE  F72E0303          imul word [0x303]
000001B2  03C3              add ax,bx
000001B4  33F6              xor si,si
000001B6  8B3E0103          mov di,[0x301]
000001BA  B9C800            mov cx,0xc8
000001BD  50                push ax
000001BE  51                push cx
000001BF  B94001            mov cx,0x140
000001C2  0FB6DC            movzx bx,ah
000001C5  8A9F0503          mov bl,[bx+0x305]
000001C9  26001C            add [es:si],bl
000001CC  03C7              add ax,di
000001CE  46                inc si
000001CF  E2F1              loop 0x1c2
000001D1  59                pop cx
000001D2  58                pop ax
000001D3  03060303          add ax,[0x303]
000001D7  E2E4              loop 0x1bd
000001D9  FE0E0003          dec byte [0x300]
000001DD  75A9              jnz 0x188
000001DF  1F                pop ds
000001E0  1E                push ds
000001E1  33F6              xor si,si
000001E3  33C9              xor cx,cx
000001E5  AC                lodsb
000001E6  C0E007            shl al,byte 0x7
000001E9  26D01C            rcr byte [es:si],1
000001EC  E2F7              loop 0x1e5
000001EE  06                push es
000001EF  6800A0            push word 0xa000
000001F2  07                pop es
000001F3  1F                pop ds
000001F4  33FF              xor di,di
000001F6  33F6              xor si,si
000001F8  B9803E            mov cx,0x3e80
000001FB  F366A5            rep movsd
000001FE  0E                push cs
000001FF  1F                pop ds
00000200  81C50004          add bp,0x400
00000204  B98001            mov cx,0x180
00000207  E460              in al,0x60
00000209  02C0              add al,al
0000020B  0F8239FF          jc near 0x148
0000020F  B80300            mov ax,0x3
00000212  CD10              int 0x10
00000214  CD20              int 0x20
00000216  59                pop cx
00000217  A33F00            mov [0x3f],ax
0000021A  D007              rol byte [bx],1
0000021C  60                pusha
0000021D  0994387A          or [si+0x7a38],dx
00000221  97                xchg ax,di
00000222  0A20              or ah,[bx+si]
00000224  4D                dec bp
00000225  6F                outsw
00000226  4E                dec si
00000227  7354              jnc 0x27d
00000229  6552              gs push dx
0000022B  0909              or [bx+di],cx
0000022D  094D6F            or [di+0x6f],cx
00000230  4E                dec si
00000231  7354              jnc 0x287
00000233  6552              gs push dx
00000235  0A0A              or cl,[bp+si]
00000237  0A0A              or cl,[bp+si]
00000239  0D0909            or ax,0x909
0000023C  46                inc si
0000023D  204C20            and [si+0x20],cl
00000240  55                push bp
00000241  204920            and [bx+di+0x20],cl
00000244  44                inc sp
00000245  0A0D              or cl,[di]
00000247  0909              or [bx+di],cx
00000249  C4                db 0xc4
0000024A  C4                db 0xc4
0000024B  C4                db 0xc4
0000024C  C4                db 0xc4
0000024D  C4                db 0xc4
0000024E  C4                db 0xc4
0000024F  C4                db 0xc4
00000250  C4                db 0xc4
00000251  C40A              les cx,[bp+si]
00000253  0A0A              or cl,[bp+si]
00000255  0A0A              or cl,[bp+si]
00000257  0A0A              or cl,[bp+si]
00000259  0D0908            or ax,0x809
0000025C  084772            or [bx+0x72],al
0000025F  65657469          gs jz 0x2cc
00000263  6E                outsb
00000264  677320            jnc 0x287
00000267  746F              jz 0x2d8
00000269  20616C            and [bx+di+0x6c],ah
0000026C  6C                insb
0000026D  207669            and [bp+0x69],dh
00000270  7369              jnc 0x2db
00000272  746F              jz 0x2e3
00000274  7273              jc 0x2e9
00000276  206F66            and [bx+0x66],ch
00000279  0A0D              or cl,[di]
0000027B  0A20              or ah,[bx+si]
0000027D  2020              and [bx+si],ah
0000027F  DBDF              fcmovnu st7
00000281  DC20              fsub qword [bx+si]
00000283  DB                db 0xdb
00000284  20DB              and bl,bl
00000286  20DF              and bh,bl
00000288  DBDF              fcmovnu st7
0000028A  20DB              and bl,bl
0000028C  DF                db 0xdf
0000028D  DF20              fbld tword [bx+si]
0000028F  DBDF              fcmovnu st7
00000291  DF20              fbld tword [bx+si]
00000293  DC                db 0xdc
00000294  DBDC              fcmovnu st4
00000296  20DB              and bl,bl
00000298  2020              and [bx+si],ah
0000029A  20DB              and bl,bl
0000029C  2020              and [bx+si],ah
0000029E  3937              cmp [bx],si
000002A0  0D0A20            or ax,0x200a
000002A3  2020              and [bx+si],ah
000002A5  DBDF              fcmovnu st7
000002A7  DC20              fsub qword [bx+si]
000002A9  DF                db 0xdf
000002AA  DBDF              fcmovnu st7
000002AC  2020              and [bx+si],ah
000002AE  DB                db 0xdb
000002AF  2020              and [bx+si],ah
000002B1  DBDF              fcmovnu st7
000002B3  DF20              fbld tword [bx+si]
000002B5  DBDF              fcmovnu st7
000002B7  DF20              fbld tword [bx+si]
000002B9  DBDC              fcmovnu st4
000002BB  DB                db 0xdb
000002BC  20DB              and bl,bl
000002BE  2020              and [bx+si],ah
000002C0  20DB              and bl,bl
000002C2  0D0A20            or ax,0x200a
000002C5  2020              and [bx+si],ah
000002C7  DF                db 0xdf
000002C8  DF20              fbld tword [bx+si]
000002CA  2020              and [bx+si],ah
000002CC  DF20              fbld tword [bx+si]
000002CE  2020              and [bx+si],ah
000002D0  DF20              fbld tword [bx+si]
000002D2  20DF              and bh,bl
000002D4  DF                db 0xdf
000002D5  DF20              fbld tword [bx+si]
000002D7  DF20              fbld tword [bx+si]
000002D9  2020              and [bx+si],ah
000002DB  DF20              fbld tword [bx+si]
000002DD  DF20              fbld tword [bx+si]
000002DF  DF                db 0xdf
000002E0  DF                db 0xdf
000002E1  DF20              fbld tword [bx+si]
000002E3  DF                db 0xdf
000002E4  DF                db 0xdf
000002E5  DF0A              fisttp word [bp+si]
000002E7  0A0A              or cl,[bp+si]
000002E9  0A0A              or cl,[bp+si]
000002EB  0A0D              or cl,[di]
000002ED  204D6F            and [di+0x6f],cl
000002F0  4E                dec si
000002F1  7354              jnc 0x347
000002F3  6552              gs push dx
000002F5  0909              or [bx+di],cx
000002F7  094D6F            or [di+0x6f],cx
000002FA  4E                dec si
000002FB  7354              jnc 0x351
000002FD  6552              gs push dx
000002FF  24                db 0x24
