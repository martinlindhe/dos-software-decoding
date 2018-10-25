00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  C706FF0190E8      mov word [0x1ff],0xe890
0000010A  E80D00            call word 0x11a
0000010D  FE06FE01          inc byte [0x1fe]
00000111  E80600            call word 0x11a
00000114  B80300            mov ax,0x3
00000117  CD10              int 0x10
00000119  C3                ret
0000011A  33FF              xor di,di
0000011C  BE24FA            mov si,0xfa24
0000011F  BA80F8            mov dx,0xf880
00000122  57                push di
00000123  32C9              xor cl,cl
00000125  8BC6              mov ax,si
00000127  6698              cwde
00000129  668BD8            mov ebx,eax
0000012C  668BE8            mov ebp,eax
0000012F  8BC2              mov ax,dx
00000131  6698              cwde
00000133  668BF8            mov edi,eax
00000136  6656              push esi
00000138  660FAFC0          imul eax,eax
0000013C  6650              push eax
0000013E  660FAFDB          imul ebx,ebx
00000142  6653              push ebx
00000144  6603C3            add eax,ebx
00000147  668BF0            mov esi,eax
0000014A  668BC7            mov eax,edi
0000014D  668BDD            mov ebx,ebp
00000150  660FAFC3          imul eax,ebx
00000154  66C1F809          sar eax,byte 0x9
00000158  660558020000      add eax,0x258
0000015E  668BE8            mov ebp,eax
00000161  665B              pop ebx
00000163  6658              pop eax
00000165  662BC3            sub eax,ebx
00000168  66C1F80A          sar eax,byte 0xa
0000016C  0306FF01          add ax,[0x1ff]
00000170  6698              cwde
00000172  668BF8            mov edi,eax
00000175  668BDD            mov ebx,ebp
00000178  6681FE808D5B00    cmp esi,0x5b8d80
0000017F  665E              pop esi
00000181  7907              jns 0x18a
00000183  FEC1              inc cl
00000185  80F90F            cmp cl,0xf
00000188  75AC              jnz 0x136
0000018A  803EFE0100        cmp byte [0x1fe],0x0
0000018F  7506              jnz 0x197
00000191  8AC1              mov al,cl
00000193  0468              add al,0x68
00000195  EB0C              jmp short 0x1a3
00000197  6683FD00          cmp ebp,byte +0x0
0000019B  7F04              jg 0x1a1
0000019D  B003              mov al,0x3
0000019F  EB02              jmp short 0x1a3
000001A1  32C0              xor al,al
000001A3  5F                pop di
000001A4  88850102          mov [di+0x201],al
000001A8  47                inc di
000001A9  83C20C            add dx,byte +0xc
000001AC  81FA8007          cmp dx,0x780
000001B0  0F856EFF          jnz word 0x122
000001B4  83C60F            add si,byte +0xf
000001B7  81FEDC05          cmp si,0x5dc
000001BB  0F8560FF          jnz word 0x11f
000001BF  E82800            call word 0x1ea
000001C2  803EFE0100        cmp byte [0x1fe],0x0
000001C7  7511              jnz 0x1da
000001C9  8306FF0119        add word [0x1ff],byte +0x19
000001CE  813EFF01A00F      cmp word [0x1ff],0xfa0
000001D4  0F8542FF          jnz word 0x11a
000001D8  EB0F              jmp short 0x1e9
000001DA  832EFF0119        sub word [0x1ff],byte +0x19
000001DF  813EFF01A8E4      cmp word [0x1ff],0xe4a8
000001E5  0F8531FF          jnz word 0x11a
000001E9  C3                ret
000001EA  6800A0            push word 0xa000
000001ED  07                pop es
000001EE  6660              pushad
000001F0  33FF              xor di,di
000001F2  BE0102            mov si,0x201
000001F5  B9803E            mov cx,0x3e80
000001F8  F366A5            rep movsd
000001FB  6661              popad
000001FD  C3                ret
000001FE  00                db 0x00
