00000100  B480              mov ah,0x80
00000102  8EC0              mov es,ax
00000104  B490              mov ah,0x90
00000106  8EE0              mov fs,ax
00000108  B81300            mov ax,0x13
0000010B  CD10              int 0x10
0000010D  33C9              xor cx,cx
0000010F  BAC903            mov dx,0x3c9
00000112  B88000            mov ax,0x80
00000115  E83901            call 0x251
00000118  B84000            mov ax,0x40
0000011B  E83301            call 0x251
0000011E  B82000            mov ax,0x20
00000121  E82D01            call 0x251
00000124  41                inc cx
00000125  81F90001          cmp cx,0x100
00000129  75E7              jnz 0x112
0000012B  FF06F502          inc word [0x2f5]
0000012F  8B1EF502          mov bx,[0x2f5]
00000133  D9EB              fldpi
00000135  891E0303          mov [0x303],bx
00000139  DE0E0303          fimul word [0x303]
0000013D  DE36D902          fidiv word [0x2d9]
00000141  D9FF              fcos
00000143  DE0EDB02          fimul word [0x2db]
00000147  DF1E0503          fistp word [0x305]
0000014B  A10503            mov ax,[0x305]
0000014E  05A000            add ax,0xa0
00000151  A3E102            mov [0x2e1],ax
00000154  D9EB              fldpi
00000156  891E0303          mov [0x303],bx
0000015A  DE0E0303          fimul word [0x303]
0000015E  DE36D902          fidiv word [0x2d9]
00000162  D9FE              fsin
00000164  DE0EDD02          fimul word [0x2dd]
00000168  DF1E0503          fistp word [0x305]
0000016C  A10503            mov ax,[0x305]
0000016F  056400            add ax,0x64
00000172  A3E902            mov [0x2e9],ax
00000175  33FF              xor di,di
00000177  6633C9            xor ecx,ecx
0000017A  6651              push ecx
0000017C  66890EFB02        mov [0x2fb],ecx
00000181  662B0EE902        sub ecx,[0x2e9]
00000186  668BC1            mov eax,ecx
00000189  66F7E9            imul ecx
0000018C  66C1F802          sar eax,byte 0x2
00000190  6640              inc eax
00000192  668BE8            mov ebp,eax
00000195  6633C9            xor ecx,ecx
00000198  6651              push ecx
0000019A  668BC1            mov eax,ecx
0000019D  66F7D8            neg eax
000001A0  660306E102        add eax,[0x2e1]
000001A5  66F7E8            imul eax
000001A8  66C1F802          sar eax,byte 0x2
000001AC  6603C5            add eax,ebp
000001AF  66A3FF02          mov [0x2ff],eax
000001B3  6655              push ebp
000001B5  668BF0            mov esi,eax
000001B8  668BE8            mov ebp,eax
000001BB  6681C652030000    add esi,0x352
000001C2  66A1E902          mov eax,[0x2e9]
000001C6  662B06FB02        sub eax,[0x2fb]
000001CB  66F7ED            imul ebp
000001CE  66F7FE            idiv esi
000001D1  660306FB02        add eax,[0x2fb]
000001D6  8BD8              mov bx,ax
000001D8  66A1E102          mov eax,[0x2e1]
000001DC  662BC1            sub eax,ecx
000001DF  66F7ED            imul ebp
000001E2  66F7FE            idiv esi
000001E5  6603C1            add eax,ecx
000001E8  665D              pop ebp
000001EA  83E302            and bx,byte +0x2
000001ED  250200            and ax,0x2
000001F0  03C3              add ax,bx
000001F2  C1E004            shl ax,byte 0x4
000001F5  AA                stosb
000001F6  6659              pop ecx
000001F8  41                inc cx
000001F9  81F94001          cmp cx,0x140
000001FD  7599              jnz 0x198
000001FF  6659              pop ecx
00000201  41                inc cx
00000202  81F9C800          cmp cx,0xc8
00000206  0F8570FF          jnz near 0x17a
0000020A  B90400            mov cx,0x4
0000020D  51                push cx
0000020E  E86500            call 0x276
00000211  06                push es
00000212  0FA0              push fs
00000214  06                push es
00000215  0FA0              push fs
00000217  07                pop es
00000218  0FA1              pop fs
0000021A  E85900            call 0x276
0000021D  0FA1              pop fs
0000021F  07                pop es
00000220  59                pop cx
00000221  E2EA              loop 0x20d
00000223  06                push es
00000224  6800A0            push word 0xa000
00000227  07                pop es
00000228  BF4006            mov di,0x640
0000022B  B980ED            mov cx,0xed80
0000022E  8A26F502          mov ah,[0x2f5]
00000232  648A05            mov al,[fs:di]
00000235  02C4              add al,ah
00000237  AA                stosb
00000238  E2F8              loop 0x232
0000023A  07                pop es
0000023B  BADA03            mov dx,0x3da
0000023E  EC                in al,dx
0000023F  2408              and al,0x8
00000241  74FB              jz 0x23e
00000243  B401              mov ah,0x1
00000245  CD16              int 0x16
00000247  0F84E0FE          jz near 0x12b
0000024B  B80300            mov ax,0x3
0000024E  CD10              int 0x10
00000250  C3                ret
00000251  D9EB              fldpi
00000253  A30703            mov [0x307],ax
00000256  890E0303          mov [0x303],cx
0000025A  DE0E0303          fimul word [0x303]
0000025E  DE360703          fidiv word [0x307]
00000262  D9FF              fcos
00000264  DE0EDF02          fimul word [0x2df]
00000268  DF1E0503          fistp word [0x305]
0000026C  A10503            mov ax,[0x305]
0000026F  F7D8              neg ax
00000271  052000            add ax,0x20
00000274  EE                out dx,al
00000275  C3                ret
00000276  B980F7            mov cx,0xf780
00000279  BE4001            mov si,0x140
0000027C  8BFE              mov di,si
0000027E  66268B44FF        mov eax,[es:si-0x1]
00000283  66268B5401        mov edx,[es:si+0x1]
00000288  6625FCFCFCFC      and eax,0xfcfcfcfc
0000028E  6681E2FCFCFCFC    and edx,0xfcfcfcfc
00000295  66C1E802          shr eax,byte 0x2
00000299  66C1EA02          shr edx,byte 0x2
0000029D  6603C2            add eax,edx
000002A0  66268B9CC0FE      mov ebx,[es:si-0x140]
000002A6  6681E3FCFCFCFC    and ebx,0xfcfcfcfc
000002AD  66268B944001      mov edx,[es:si+0x140]
000002B3  66C1EB02          shr ebx,byte 0x2
000002B7  6681E2FCFCFCFC    and edx,0xfcfcfcfc
000002BE  66C1EA02          shr edx,byte 0x2
000002C2  83C604            add si,byte +0x4
000002C5  6603C2            add eax,edx
000002C8  83C704            add di,byte +0x4
000002CB  6603C3            add eax,ebx
000002CE  83E904            sub cx,byte +0x4
000002D1  66648945FC        mov [fs:di-0x4],eax
000002D6  75A6              jnz 0x27e
000002D8  C3                ret
000002D9  0001              add [bx+di],al
000002DB  800040            add byte [bx+si],0x40
000002DE  001F              add [bx],bl
000002E0  0000              add [bx+si],al
000002E2  0000              add [bx+si],al
000002E4  0000              add [bx+si],al
000002E6  0000              add [bx+si],al
000002E8  0000              add [bx+si],al
000002EA  0000              add [bx+si],al
000002EC  0000              add [bx+si],al
000002EE  0000              add [bx+si],al
000002F0  0000              add [bx+si],al
000002F2  0000              add [bx+si],al
000002F4  00                db 0x00
