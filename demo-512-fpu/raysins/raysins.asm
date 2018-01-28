00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  B800A0            mov ax,0xa000
00000107  8EE8              mov gs,ax
00000109  8CC8              mov ax,cs
0000010B  80C410            add ah,0x10
0000010E  8EC0              mov es,ax
00000110  BEBD02            mov si,0x2bd
00000113  8036380108        xor byte [0x138],0x8
00000118  29C0              sub ax,ax
0000011A  29C9              sub cx,cx
0000011C  88C8              mov al,cl
0000011E  BAC803            mov dx,0x3c8
00000121  EE                out dx,al
00000122  FEC2              inc dl
00000124  D0E8              shr al,1
00000126  88C5              mov ch,al
00000128  80F980            cmp cl,0x80
0000012B  7204              jc 0x131
0000012D  88EC              mov ah,ch
0000012F  B53F              mov ch,0x3f
00000131  88E8              mov al,ch
00000133  EE                out dx,al
00000134  88E8              mov al,ch
00000136  EE                out dx,al
00000137  88E8              mov al,ch
00000139  EE                out dx,al
0000013A  FEC1              inc cl
0000013C  75DE              jnz 0x11c
0000013E  BD3802            mov bp,0x238
00000141  B98000            mov cx,0x80
00000144  60                pusha
00000145  DBE3              fninit
00000147  E82E00            call 0x178
0000014A  E81D01            call 0x26a
0000014D  E8BD00            call 0x20d
00000150  E84D01            call 0x2a0
00000153  61                popa
00000154  E460              in al,0x60
00000156  FEC8              dec al
00000158  7418              jz 0x172
0000015A  E2E8              loop 0x144
0000015C  AC                lodsb
0000015D  8846B5            mov [bp-0x4b],al
00000160  AC                lodsb
00000161  8846B9            mov [bp-0x47],al
00000164  AC                lodsb
00000165  8846BD            mov [bp-0x43],al
00000168  AC                lodsb
00000169  A21501            mov [0x115],al
0000016C  807EB580          cmp byte [bp-0x4b],0x80
00000170  75A1              jnz 0x113
00000172  B80300            mov ax,0x3
00000175  CD10              int 0x10
00000177  C3                ret
00000178  BE0003            mov si,0x300
0000017B  D9EB              fldpi
0000017D  DE74F6            fidiv word [si-0xa]
00000180  DF841000          fild word [si+0x10]
00000184  D8C9              fmul st1
00000186  D9FE              fsin
00000188  DE74F4            fidiv word [si-0xc]
0000018B  D844EE            fadd dword [si-0x12]
0000018E  D95C04            fstp dword [si+0x4]
00000191  66FF740C          push dword [si+0xc]
00000195  66FF7410          push dword [si+0x10]
00000199  B501              mov ch,0x1
0000019B  DF840C00          fild word [si+0xc]
0000019F  D8C9              fmul st1
000001A1  D9FB              fsincos
000001A3  DF840E00          fild word [si+0xe]
000001A7  D8CB              fmul st3
000001A9  D9FE              fsin
000001AB  DF841200          fild word [si+0x12]
000001AF  D8CC              fmul st4
000001B1  D9FF              fcos
000001B3  DE0EF802          fimul word [0x2f8]
000001B7  DEC9              fmulp st1
000001B9  DCC9              fmul to st1
000001BB  DECA              fmulp st2
000001BD  DF1C              fistp word [si]
000001BF  DF5C02            fistp word [si+0x2]
000001C2  8B1C              mov bx,[si]
000001C4  81C36400          add bx,0x64
000001C8  0FAF5CF2          imul bx,[si-0xe]
000001CC  035C02            add bx,[si+0x2]
000001CF  6629C0            sub eax,eax
000001D2  6648              dec eax
000001D4  268987A100        mov [es:bx+0xa1],ax
000001D9  26668987E001      mov [es:bx+0x1e0],eax
000001DF  266689872003      mov [es:bx+0x320],eax
000001E5  2689876104        mov [es:bx+0x461],ax
000001EA  80440C02          add byte [si+0xc],0x2
000001EE  80440E00          add byte [si+0xe],0x0
000001F2  80441203          add byte [si+0x12],0x3
000001F6  E2A3              loop 0x19b
000001F8  668F4410          pop dword [si+0x10]
000001FC  668F440C          pop dword [si+0xc]
00000200  80441002          add byte [si+0x10],0x2
00000204  80441205          add byte [si+0x12],0x5
00000208  80440E03          add byte [si+0xe],0x3
0000020C  C3                ret
0000020D  BA9F64            mov dx,0x649f
00000210  B110              mov cl,0x10
00000212  BF0012            mov di,0x1200
00000215  BE0008            mov si,0x800
00000218  C74609F7DB        mov word [bp+0x9],0xdbf7
0000021D  FFD5              call bp
0000021F  C6460B03          mov byte [bp+0xb],0x3
00000223  01CE              add si,cx
00000225  FFD5              call bp
00000227  01CF              add di,cx
00000229  29CE              sub si,cx
0000022B  C746099090        mov word [bp+0x9],0x9090
00000230  FFD5              call bp
00000232  01CE              add si,cx
00000234  C6460B2B          mov byte [bp+0xb],0x2b
00000238  60                pusha
00000239  60                pusha
0000023A  57                push di
0000023B  B108              mov cl,0x8
0000023D  31C0              xor ax,ax
0000023F  8B1D              mov bx,[di]
00000241  F7DB              neg bx
00000243  2B1C              sub bx,[si]
00000245  46                inc si
00000246  46                inc si
00000247  47                inc di
00000248  47                inc di
00000249  260287A07D        add al,[es:bx+0x7da0]
0000024E  10EC              adc ah,ch
00000250  E2ED              loop 0x23f
00000252  C1E803            shr ax,byte 0x3
00000255  260087A07D        add [es:bx+0x7da0],al
0000025A  5F                pop di
0000025B  FECA              dec dl
0000025D  75DB              jnz 0x23a
0000025F  61                popa
00000260  81C71000          add di,0x10
00000264  FECE              dec dh
00000266  75D1              jnz 0x239
00000268  61                popa
00000269  C3                ret
0000026A  BF0E08            mov di,0x80e
0000026D  C7440A0000        mov word [si+0xa],0x0
00000272  DBE3              fninit
00000274  D94404            fld dword [si+0x4]
00000277  B90800            mov cx,0x8
0000027A  D9E8              fld1
0000027C  DF440A            fild word [si+0xa]
0000027F  D8C9              fmul st1
00000281  DF15              fist word [di]
00000283  D9FC              frndint
00000285  DE4CF2            fimul word [si-0xe]
00000288  DF9D000A          fistp word [di+0xa00]
0000028C  4F                dec di
0000028D  4F                dec di
0000028E  D8C9              fmul st1
00000290  E2EA              loop 0x27c
00000292  81C72000          add di,0x20
00000296  FF440A            inc word [si+0xa]
00000299  807C0AA0          cmp byte [si+0xa],0xa0
0000029D  75D3              jnz 0x272
0000029F  C3                ret
000002A0  BADA03            mov dx,0x3da
000002A3  EC                in al,dx
000002A4  A808              test al,0x8
000002A6  74F8              jz 0x2a0
000002A8  EC                in al,dx
000002A9  A808              test al,0x8
000002AB  75FB              jnz 0x2a8
000002AD  31FF              xor di,di
000002AF  30C0              xor al,al
000002B1  B5FA              mov ch,0xfa
000002B3  268A25            mov ah,[es:di]
000002B6  658825            mov [gs:di],ah
000002B9  AA                stosb
000002BA  E2F7              loop 0x2b3
000002BC  C3                ret
000002BD  0101              add [bx+di],ax
000002BF  0132              add [bp+si],si
000002C1  0102              add [bp+si],ax
000002C3  0238              add bh,[bx+si]
000002C5  0102              add [bp+si],ax
000002C7  0135              add [di],si
000002C9  0203              add al,[bp+di]
000002CB  0132              add [bp+si],si
000002CD  0301              add ax,[bx+di]
000002CF  0138              add [bx+si],di
000002D1  0201              add al,[bx+di]
000002D3  0335              add si,[di]
000002D5  0103              add [bp+di],ax
000002D7  0132              add [bp+si],si
000002D9  0302              add ax,[bp+si]
000002DB  0238              add bh,[bx+si]
000002DD  0302              add ax,[bp+si]
000002DF  0335              add si,[di]
000002E1  0303              add ax,[bp+di]
000002E3  0132              add [bp+si],si
000002E5  0203              add al,[bp+di]
000002E7  0238              add bh,[bx+si]
000002E9  0102              add [bp+si],ax
000002EB  0335              add si,[di]
000002ED  8008AC            or byte [bx+si],0xac
000002F0  7C3F              jl 0x331
000002F2  40                inc ax
000002F3  016400            add [si+0x0],sp
000002F6  800050            add byte [bx+si],0x50
000002F9  00442D            add [si+0x2d],al
000002FC  41                inc cx
000002FD  7274              jc 0x373
000002FF  21                db 0x21
