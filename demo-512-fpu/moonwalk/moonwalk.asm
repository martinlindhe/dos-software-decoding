00000100  58                pop ax
00000101  BC0E07            mov sp,0x70e
00000104  50                push ax
00000105  89260C03          mov [0x30c],sp
00000109  BB0E07            mov bx,0x70e
0000010C  C1EB04            shr bx,byte 0x4
0000010F  43                inc bx
00000110  B44A              mov ah,0x4a
00000112  CD21              int 0x21
00000114  E8B001            call 0x2c7
00000117  A30403            mov [0x304],ax
0000011A  E8AA01            call 0x2c7
0000011D  A30A03            mov [0x30a],ax
00000120  8EE0              mov fs,ax
00000122  E8A201            call 0x2c7
00000125  A30803            mov [0x308],ax
00000128  8EC0              mov es,ax
0000012A  33FF              xor di,di
0000012C  33DB              xor bx,bx
0000012E  B960FF            mov cx,0xff60
00000131  DBE3              fninit
00000133  890E0003          mov [0x300],cx
00000137  891E0203          mov [0x302],bx
0000013B  DF060003          fild word [0x300]
0000013F  DE0EFA02          fimul word [0x2fa]
00000143  DE360203          fidiv word [0x302]
00000147  DE06FC02          fiadd word [0x2fc]
0000014B  DF1E0003          fistp word [0x300]
0000014F  A10003            mov ax,[0x300]
00000152  268805            mov [es:di],al
00000155  DF06FC02          fild word [0x2fc]
00000159  DF060203          fild word [0x302]
0000015D  D8E1              fsub st1
0000015F  DE0EFA02          fimul word [0x2fa]
00000163  DE360203          fidiv word [0x302]
00000167  D9E1              fabs
00000169  DF1E0003          fistp word [0x300]
0000016D  A10003            mov ax,[0x300]
00000170  648805            mov [fs:di],al
00000173  47                inc di
00000174  41                inc cx
00000175  81F9A000          cmp cx,0xa0
00000179  75B6              jnz 0x131
0000017B  43                inc bx
0000017C  80FBC8            cmp bl,0xc8
0000017F  75AD              jnz 0x12e
00000181  E84301            call 0x2c7
00000184  A30603            mov [0x306],ax
00000187  8EC0              mov es,ax
00000189  33DB              xor bx,bx
0000018B  DBE3              fninit
0000018D  881E0003          mov [0x300],bl
00000191  D906F602          fld dword [0x2f6]
00000195  DE0E0003          fimul word [0x300]
00000199  D9FE              fsin
0000019B  883E0003          mov [0x300],bh
0000019F  D906F602          fld dword [0x2f6]
000001A3  DE0E0003          fimul word [0x300]
000001A7  D9FF              fcos
000001A9  D8C9              fmul st1
000001AB  DE0EFE02          fimul word [0x2fe]
000001AF  DE06FE02          fiadd word [0x2fe]
000001B3  DF1E0003          fistp word [0x300]
000001B7  A10003            mov ax,[0x300]
000001BA  8BFB              mov di,bx
000001BC  268805            mov [es:di],al
000001BF  43                inc bx
000001C0  75C9              jnz 0x18b
000001C2  B013              mov al,0x13
000001C4  CD10              int 0x10
000001C6  BAC803            mov dx,0x3c8
000001C9  32C0              xor al,al
000001CB  EE                out dx,al
000001CC  42                inc dx
000001CD  EE                out dx,al
000001CE  EE                out dx,al
000001CF  EE                out dx,al
000001D0  40                inc ax
000001D1  3C40              cmp al,0x40
000001D3  75F8              jnz 0x1cd
000001D5  BADA03            mov dx,0x3da
000001D8  EC                in al,dx
000001D9  A808              test al,0x8
000001DB  74FB              jz 0x1d8
000001DD  EC                in al,dx
000001DE  A808              test al,0x8
000001E0  75FB              jnz 0x1dd
000001E2  8E060403          mov es,[0x304]
000001E6  B800A0            mov ax,0xa000
000001E9  8EE0              mov fs,ax
000001EB  33FF              xor di,di
000001ED  33F6              xor si,si
000001EF  B9E803            mov cx,0x3e8
000001F2  B740              mov bh,0x40
000001F4  33D2              xor dx,dx
000001F6  8ADF              mov bl,bh
000001F8  33C0              xor ax,ax
000001FA  268A15            mov dl,[es:di]
000001FD  03C2              add ax,dx
000001FF  47                inc di
00000200  FECB              dec bl
00000202  75F6              jnz 0x1fa
00000204  F6F7              div bh
00000206  8ADF              mov bl,bh
00000208  648804            mov [fs:si],al
0000020B  46                inc si
0000020C  FECB              dec bl
0000020E  75F8              jnz 0x208
00000210  E2E4              loop 0x1f6
00000212  B90080            mov cx,0x8000
00000215  33FF              xor di,di
00000217  33C0              xor ax,ax
00000219  F3AB              rep stosw
0000021B  33FF              xor di,di
0000021D  B1FF              mov cl,0xff
0000021F  26C60530          mov byte [es:di],0x30
00000223  03F9              add di,cx
00000225  E2F8              loop 0x21f
00000227  8006480204        add byte [0x248],0x4
0000022C  8E2E0603          mov gs,[0x306]
00000230  BA00A0            mov dx,0xa000
00000233  BF005A            mov di,0x5a00
00000236  33DB              xor bx,bx
00000238  8E260A03          mov fs,[0x30a]
0000023C  648A25            mov ah,[fs:di]
0000023F  8E260803          mov fs,[0x308]
00000243  648A05            mov al,[fs:di]
00000246  80C400            add ah,0x0
00000249  8BF0              mov si,ax
0000024B  658A04            mov al,[gs:si]
0000024E  F6E7              mul bh
00000250  C1C806            ror ax,byte 0x6
00000253  40                inc ax
00000254  8ADF              mov bl,bh
00000256  D0CB              ror bl,1
00000258  80E37F            and bl,0x7f
0000025B  57                push di
0000025C  26881D            mov [es:di],bl
0000025F  81EF4001          sub di,0x140
00000263  FEC8              dec al
00000265  75F5              jnz 0x25c
00000267  5F                pop di
00000268  41                inc cx
00000269  81F94001          cmp cx,0x140
0000026D  7504              jnz 0x273
0000026F  33C9              xor cx,cx
00000271  FEC7              inc bh
00000273  47                inc di
00000274  4A                dec dx
00000275  75C1              jnz 0x238
00000277  B307              mov bl,0x7
00000279  B000              mov al,0x0
0000027B  FEC0              inc al
0000027D  8B0EF001          mov cx,[0x1f0]
00000281  8A16F301          mov dl,[0x1f3]
00000285  3C07              cmp al,0x7
00000287  721A              jc 0x2a3
00000289  3C32              cmp al,0x32
0000028B  721A              jc 0x2a7
0000028D  3C38              cmp al,0x38
0000028F  720C              jc 0x29d
00000291  33C0              xor ax,ax
00000293  FECB              dec bl
00000295  7423              jz 0x2ba
00000297  881E7802          mov [0x278],bl
0000029B  EB0A              jmp short 0x2a7
0000029D  D1C9              ror cx,1
0000029F  D0C2              rol dl,1
000002A1  EB04              jmp short 0x2a7
000002A3  D1C1              rol cx,1
000002A5  D0CA              ror dl,1
000002A7  890EF001          mov [0x1f0],cx
000002AB  8816F301          mov [0x1f3],dl
000002AF  A27A02            mov [0x27a],al
000002B2  E460              in al,0x60
000002B4  FEC8              dec al
000002B6  0F851BFF          jnz near 0x1d5
000002BA  B80300            mov ax,0x3
000002BD  CD10              int 0x10
000002BF  BADC02            mov dx,0x2dc
000002C2  B409              mov ah,0x9
000002C4  CD21              int 0x21
000002C6  C3                ret
000002C7  B448              mov ah,0x48
000002C9  BB0010            mov bx,0x1000
000002CC  CD21              int 0x21
000002CE  730B              jnc 0x2db
000002D0  BAEE02            mov dx,0x2ee
000002D3  B409              mov ah,0x9
000002D5  CD21              int 0x21
000002D7  8B260C03          mov sp,[0x30c]
000002DB  C3                ret
000002DC  286329            sub [bp+di+0x29],ah
000002DF  3139              xor [bx+di],di
000002E1  3939              cmp [bx+di],di
000002E3  20526F            and [bp+si+0x6f],dl
000002E6  7573              jnz 0x35b
000002E8  65722F            gs jc 0x31a
000002EB  2B2B              sub bp,[bp+di]
000002ED  244E              and al,0x4e
000002EF  6F                outsw
000002F0  206D65            and [di+0x65],ch
000002F3  6D                insw
000002F4  2124              and [si],sp
000002F6  DB0F              fisttp dword [bx]
000002F8  49                dec cx
000002F9  3D5000            cmp ax,0x50
000002FC  C8001900          enter 0x1900,0x0
