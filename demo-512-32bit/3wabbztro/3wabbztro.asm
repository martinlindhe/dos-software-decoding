00000100  B81300            mov ax,0x13
00000103  CD10              int 0x10
00000105  BE5502            mov si,0x255
00000108  BF0135            mov di,0x3501
0000010B  57                push di
0000010C  B90700            mov cx,0x7
0000010F  51                push cx
00000110  B118              mov cl,0x18
00000112  B201              mov dl,0x1
00000114  D0CA              ror dl,1
00000116  7301              jnc 0x119
00000118  AC                lodsb
00000119  84C2              test dl,al
0000011B  50                push ax
0000011C  0F95C0            setnz al
0000011F  51                push cx
00000120  B10A              mov cl,0xa
00000122  F3AA              rep stosb
00000124  59                pop cx
00000125  58                pop ax
00000126  E2EC              loop 0x114
00000128  32C0              xor al,al
0000012A  B150              mov cl,0x50
0000012C  F3AA              rep stosb
0000012E  59                pop cx
0000012F  E2DE              loop 0x10f
00000131  BA6A02            mov dx,0x26a
00000134  B409              mov ah,0x9
00000136  CD21              int 0x21
00000138  6800A0            push word 0xa000
0000013B  1F                pop ds
0000013C  33F6              xor si,si
0000013E  BF0103            mov di,0x301
00000141  B90032            mov cx,0x3200
00000144  F3A4              rep movsb
00000146  0E                push cs
00000147  1F                pop ds
00000148  B13F              mov cl,0x3f
0000014A  BAC803            mov dx,0x3c8
0000014D  B80100            mov ax,0x1
00000150  EE                out dx,al
00000151  42                inc dx
00000152  8AC1              mov al,cl
00000154  EE                out dx,al
00000155  32C0              xor al,al
00000157  EE                out dx,al
00000158  EE                out dx,al
00000159  E2F7              loop 0x152
0000015B  6800A0            push word 0xa000
0000015E  07                pop es
0000015F  33FF              xor di,di
00000161  B001              mov al,0x1
00000163  49                dec cx
00000164  F3AA              rep stosb
00000166  47                inc di
00000167  66BD0040F2FF      mov ebp,0xfff24000
0000016D  B9C800            mov cx,0xc8
00000170  51                push cx
00000171  66BE0060FFFF      mov esi,0xffff6000
00000177  B94001            mov cx,0x140
0000017A  51                push cx
0000017B  6656              push esi
0000017D  6655              push ebp
0000017F  C606000300        mov byte [0x300],0x0
00000184  668BC6            mov eax,esi
00000187  66F7EE            imul esi
0000018A  660FACD014        shrd eax,edx,0x14
0000018F  668BC8            mov ecx,eax
00000192  6693              xchg eax,ebx
00000194  668BC5            mov eax,ebp
00000197  66F7ED            imul ebp
0000019A  660FACD014        shrd eax,edx,0x14
0000019F  6603C8            add ecx,eax
000001A2  662BD8            sub ebx,eax
000001A5  668BC6            mov eax,esi
000001A8  66F7ED            imul ebp
000001AB  660FACD013        shrd eax,edx,0x13
000001B0  6667030424        add eax,[dword esp]
000001B5  668BE8            mov ebp,eax
000001B8  6667035C2404      add ebx,[dword esp+0x4]
000001BE  668BF3            mov esi,ebx
000001C1  FE060003          inc byte [0x300]
000001C5  803E00033E        cmp byte [0x300],0x3e
000001CA  7709              ja 0x1d5
000001CC  6681F900004000    cmp ecx,0x400000
000001D3  72AF              jc 0x184
000001D5  A00003            mov al,[0x300]
000001D8  AA                stosb
000001D9  665D              pop ebp
000001DB  665E              pop esi
000001DD  59                pop cx
000001DE  6681C633010000    add esi,0x133
000001E5  E293              loop 0x17a
000001E7  59                pop cx
000001E8  6681C547010000    add ebp,0x147
000001EF  E202              loop 0x1f3
000001F1  EB03              jmp short 0x1f6
000001F3  E97AFF            jmp 0x170
000001F6  B107              mov cl,0x7
000001F8  5D                pop bp
000001F9  BF080F            mov di,0xf08
000001FC  51                push cx
000001FD  B119              mov cl,0x19
000001FF  8BF5              mov si,bp
00000201  51                push cx
00000202  B94001            mov cx,0x140
00000205  AC                lodsb
00000206  0AC0              or al,al
00000208  7408              jz 0x212
0000020A  B040              mov al,0x40
0000020C  262A05            sub al,[es:di]
0000020F  268805            mov [es:di],al
00000212  47                inc di
00000213  E2F0              loop 0x205
00000215  59                pop cx
00000216  E2E7              loop 0x1ff
00000218  59                pop cx
00000219  81C54001          add bp,0x140
0000021D  E2DD              loop 0x1fc
0000021F  BE0103            mov si,0x301
00000222  BF2B0B            mov di,0xb2b
00000225  B128              mov cl,0x28
00000227  51                push cx
00000228  B1B8              mov cl,0xb8
0000022A  AC                lodsb
0000022B  0AC0              or al,al
0000022D  7404              jz 0x233
0000022F  2680353F          xor byte [es:di],0x3f
00000233  81C74001          add di,0x140
00000237  E2F1              loop 0x22a
00000239  81C68800          add si,0x88
0000023D  81EF01E6          sub di,0xe601
00000241  59                pop cx
00000242  E2E3              loop 0x227
00000244  33C0              xor ax,ax
00000246  CD16              int 0x16
00000248  B80300            mov ax,0x3
0000024B  CD10              int 0x10
0000024D  BAAF02            mov dx,0x2af
00000250  B409              mov ah,0x9
00000252  CD21              int 0x21
00000254  C3                ret
00000255  7F63              jg 0x2ba
00000257  7F03              jg 0x25c
00000259  636303            arpl [bp+di+0x3],sp
0000025C  63631F            arpl [bp+di+0x1f],sp
0000025F  6B7F036B          imul di,[bx+0x3],byte +0x6b
00000263  6303              arpl [bp+di],ax
00000265  6B637F7F          imul sp,[bp+di+0x7f],byte +0x7f
00000269  630D              arpl [di],cx
0000026B  63929C9C          arpl [bp+si-0x6364],dx
0000026F  205468            and [si+0x68],dl
00000272  E420              in al,0x20
00000274  48                dec ax
00000275  6F                outsw
00000276  C254F0            ret 0xf054
00000279  53                push bx
0000027A  7420              jz 0x29c
0000027C  42                inc dx
0000027D  59                pop cx
0000027E  54                push sp
0000027F  45                inc bp
00000280  41                inc cx
00000281  4D                dec bp
00000282  0D0A0A            or ax,0xa0a
00000285  2020              and [bx+si],ah
00000287  EB69              jmp short 0x2f2
00000289  53                push bx
0000028A  C252ED            ret 0xed52
0000028D  2C20              sub al,0x20
0000028F  44                inc sp
00000290  E020              loopne 0x2b2
00000292  335741            xor dx,[bx+0x41]
00000295  205748            and [bx+0x48],dl
00000298  51                push cx
00000299  210D              and [di],cx
0000029B  0A0A              or cl,[bp+si]
0000029D  2020              and [bx+si],ah
0000029F  2020              and [bx+si],ah
000002A1  2020              and [bx+si],ah
000002A3  333631F9          xor si,[0xf931]
000002A7  3138              xor [bx+si],di
000002A9  353435            xor ax,0x3534
000002AC  3231              xor dh,[bx+di]
000002AE  2444              and al,0x44
000002B0  6F                outsw
000002B1  20EF              and bh,ch
000002B3  E95420            jmp 0x230a
000002B6  9F                lahf
000002B7  6F                outsw
000002B8  E767              out 0x67,ax
000002BA  E454              in al,0x54
000002BC  202D              and [di],ch
000002BE  2033              and [bp+di],dh
000002C0  57                push di
000002C1  41                inc cx
000002C2  0D0A5A            or ax,0x5a0a
000002C5  9D                popf
000002C6  7A47              jpe 0x30f
000002C8  01443A            add [si+0x3a],ax
000002CB  204269            and [bp+si+0x69],al
000002CE  6C                insb
000002CF  6C                insb
000002D0  7920              jns 0x2f2
000002D2  47                inc di
000002D3  61                popa
000002D4  6C                insb
000002D5  65740D            gs jz 0x2e5
000002D8  0A28              or ch,[bx+si]
000002DA  43                inc bx
000002DB  29ED              sub bp,bp
000002DD  EBEE              jmp short 0x2cd
000002DF  52                push dx
000002E0  6967685420        imul sp,[bx+0x68],word 0x2054
000002E5  42                inc dx
000002E6  59                pop cx
000002E7  54                push sp
000002E8  45                inc bp
000002E9  41                inc cx
000002EA  4D                dec bp
000002EB  210D              and [di],cx
000002ED  0A20              or ah,[bx+si]
000002EF  2020              and [bx+si],ah
000002F1  2033              and [bp+di],dh
000002F3  3631F9            ss xor cx,di
000002F6  3138              xor [bx+si],di
000002F8  353435            xor ax,0x3534
000002FB  3231              xor dh,[bx+di]
000002FD  0D0A24            or ax,0x240a
