00000100  FA                cli
00000101  2450              and al,0x50
00000103  52                push dx
00000104  695445FA00        imul dx,[si+0x45],word 0xfa
00000109  B81200            mov ax,0x12
0000010C  CD10              int 0x10
0000010E  32E4              xor ah,ah
00000110  CD1A              int 0x1a
00000112  89160503          mov [0x305],dx
00000116  680090            push word 0x9000
00000119  1F                pop ds
0000011A  BEB202            mov si,0x2b2
0000011D  B83412            mov ax,0x1234
00000120  33DB              xor bx,bx
00000122  3B07              cmp ax,[bx]
00000124  7504              jnz 0x12a
00000126  48                dec ax
00000127  BEC202            mov si,0x2c2
0000012A  8907              mov [bx],ax
0000012C  0E                push cs
0000012D  1F                pop ds
0000012E  BFD702            mov di,0x2d7
00000131  6A16              push byte +0x16
00000133  6633C0            xor eax,eax
00000136  6650              push eax
00000138  6650              push eax
0000013A  E81700            call 0x154
0000013D  B80300            mov ax,0x3
00000140  CD10              int 0x10
00000142  CD20              int 0x20
00000144  0000              add [bx+si],al
00000146  40                inc ax
00000147  C00000            rol byte [bx+si],byte 0x0
0000014A  3B4300            cmp ax,[bp+di+0x0]
0000014D  00DC              add ah,bl
0000014F  43                inc bx
00000150  0080E243          add [bx+si+0x43e2],al
00000154  55                push bp
00000155  8BEC              mov bp,sp
00000157  807E0C00          cmp byte [bp+0xc],0x0
0000015B  0F861901          jna near 0x278
0000015F  803ED602FF        cmp byte [0x2d6],0xff
00000164  0F841001          jz near 0x278
00000168  32E4              xor ah,ah
0000016A  CD1A              int 0x1a
0000016C  2B160503          sub dx,[0x305]
00000170  A1B002            mov ax,[0x2b0]
00000173  3BD0              cmp dx,ax
00000175  722C              jc 0x1a3
00000177  052400            add ax,0x24
0000017A  3D3804            cmp ax,0x438
0000017D  0F838000          jnc near 0x201
00000181  A3B002            mov [0x2b0],ax
00000184  FE06E902          inc byte [0x2e9]
00000188  0FB61EE902        movzx bx,[0x2e9]
0000018D  8A87EA02          mov al,[bx+0x2ea]
00000191  3C05              cmp al,0x5
00000193  7504              jnz 0x199
00000195  FE0EE902          dec byte [0x2e9]
00000199  B403              mov ah,0x3
0000019B  F6E4              mul ah
0000019D  8BF8              mov di,ax
0000019F  81C7D702          add di,0x2d7
000001A3  0FB61ED602        movzx bx,[0x2d6]
000001A8  8A19              mov bl,[bx+di]
000001AA  881E0403          mov [0x304],bl
000001AE  D9064401          fld dword [0x144]
000001B2  D84E08            fmul dword [bp+0x8]
000001B5  D82E4801          fsubr dword [0x148]
000001B9  E8D000            call 0x28c
000001BC  A30003            mov [0x300],ax
000001BF  D9064401          fld dword [0x144]
000001C3  D84E04            fmul dword [bp+0x4]
000001C6  D8064C01          fadd dword [0x14c]
000001CA  E8BF00            call 0x28c
000001CD  A30203            mov [0x302],ax
000001D0  E8A700            call 0x27a
000001D3  D9064401          fld dword [0x144]
000001D7  D84E08            fmul dword [bp+0x8]
000001DA  D8065001          fadd dword [0x150]
000001DE  E8AB00            call 0x28c
000001E1  A30003            mov [0x300],ax
000001E4  E89300            call 0x27a
000001E7  FE06D602          inc byte [0x2d6]
000001EB  803ED60202        cmp byte [0x2d6],0x2
000001F0  7605              jna 0x1f7
000001F2  C606D60200        mov byte [0x2d6],0x0
000001F7  B401              mov ah,0x1
000001F9  CD16              int 0x16
000001FB  7409              jz 0x206
000001FD  32E4              xor ah,ah
000001FF  CD16              int 0x16
00000201  C606D602FF        mov byte [0x2d6],0xff
00000206  0FB6460C          movzx ax,[bp+0xc]
0000020A  48                dec ax
0000020B  50                push ax
0000020C  D94404            fld dword [si+0x4]
0000020F  D84E04            fmul dword [bp+0x4]
00000212  D904              fld dword [si]
00000214  D84E08            fmul dword [bp+0x8]
00000217  DEE9              fsubp st1
00000219  83EC04            sub sp,byte +0x4
0000021C  D95EFA            fstp dword [bp-0x6]
0000021F  D904              fld dword [si]
00000221  D84E04            fmul dword [bp+0x4]
00000224  D94404            fld dword [si+0x4]
00000227  D84E08            fmul dword [bp+0x8]
0000022A  DEC1              faddp st1
0000022C  83EC04            sub sp,byte +0x4
0000022F  D95EF6            fstp dword [bp-0xa]
00000232  E81FFF            call 0x154
00000235  83C40A            add sp,byte +0xa
00000238  0FB6460C          movzx ax,[bp+0xc]
0000023C  48                dec ax
0000023D  50                push ax
0000023E  D94604            fld dword [bp+0x4]
00000241  D826D202          fsub dword [0x2d2]
00000245  D84C0C            fmul dword [si+0xc]
00000248  D94408            fld dword [si+0x8]
0000024B  D84E08            fmul dword [bp+0x8]
0000024E  DEC1              faddp st1
00000250  83EC04            sub sp,byte +0x4
00000253  D95EFA            fstp dword [bp-0x6]
00000256  D94604            fld dword [bp+0x4]
00000259  D826D202          fsub dword [0x2d2]
0000025D  D84C08            fmul dword [si+0x8]
00000260  D9440C            fld dword [si+0xc]
00000263  D84E08            fmul dword [bp+0x8]
00000266  DEE9              fsubp st1
00000268  D806D202          fadd dword [0x2d2]
0000026C  83EC04            sub sp,byte +0x4
0000026F  D95EF6            fstp dword [bp-0xa]
00000272  E8DFFE            call 0x154
00000275  83C40A            add sp,byte +0xa
00000278  5D                pop bp
00000279  C3                ret
0000027A  BB0003            mov bx,0x300
0000027D  8B0F              mov cx,[bx]
0000027F  8B5702            mov dx,[bx+0x2]
00000282  8A4704            mov al,[bx+0x4]
00000285  B40C              mov ah,0xc
00000287  32FF              xor bh,bh
00000289  CD10              int 0x10
0000028B  C3                ret
0000028C  55                push bp
0000028D  8BEC              mov bp,sp
0000028F  83EC0A            sub sp,byte +0xa
00000292  9BD97EFE          fstcw [bp-0x2]
00000296  8A46FF            mov al,[bp-0x1]
00000299  804EFF0C          or byte [bp-0x1],0xc
0000029D  D96EFE            fldcw [bp-0x2]
000002A0  DF7EF6            fistp qword [bp-0xa]
000002A3  8846FF            mov [bp-0x1],al
000002A6  D96EFE            fldcw [bp-0x2]
000002A9  8B46F6            mov ax,[bp-0xa]
000002AC  8BE5              mov sp,bp
000002AE  5D                pop bp
000002AF  C3                ret
000002B0  2400              and al,0x0
000002B2  3333              xor si,[bp+di]
000002B4  333F              xor di,[bx]
000002B6  CDCC              int 0xcc
000002B8  4C                dec sp
000002B9  3E0000            add [ds:bx+si],al
000002BC  003F              add [bx],bh
000002BE  9A99993EAE        call 0xae3e:0x9999
000002C3  47                inc di
000002C4  213F              and [bx],di
000002C6  CDCC              int 0xcc
000002C8  CC                int3
000002C9  3DCDCC            cmp ax,0xcccd
000002CC  0C3F              or al,0x3f
000002CE  CDCC              int 0xcc
000002D0  CC                int3
000002D1  3E0000            add [ds:bx+si],al
000002D4  E042              loopne 0x318
000002D6  0000              add [bx+si],al
000002D8  0008              add [bx+si],cl
000002DA  0000              add [bx+si],al
000002DC  0300              add ax,[bx+si]
000002DE  0002              add [bp+si],al
000002E0  0000              add [bx+si],al
000002E2  07                pop es
000002E3  0F0E              femms
000002E5  0000              add [bx+si],al
000002E7  020A              add cl,[bp+si]
000002E9  0000              add [bx+si],al
000002EB  0000              add [bx+si],al
000002ED  0100              add [bx+si],ax
000002EF  0000              add [bx+si],al
000002F1  0200              add al,[bx+si]
000002F3  0000              add [bx+si],al
000002F5  0302              add ax,[bp+si]
000002F7  0000              add [bx+si],al
000002F9  0000              add [bx+si],al
000002FB  0102              add [bp+si],ax
000002FD  0304              add ax,[si]
000002FF  05                db 0x05
