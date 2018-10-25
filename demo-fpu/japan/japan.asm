00000100  B81300            mov ax,0x13
00000103  CD10              int 0x10
00000105  6800A0            push word 0xa000
00000108  07                pop es
00000109  B80D00            mov ax,0xd
0000010C  E89600            call 0x1a5
0000010F  40                inc ax
00000110  3D0C00            cmp ax,0xc
00000113  7439              jz 0x14e
00000115  7744              ja 0x15b
00000117  8BC8              mov cx,ax
00000119  51                push cx
0000011A  BE5802            mov si,0x258
0000011D  B90400            mov cx,0x4
00000120  B80A00            mov ax,0xa
00000123  E87F00            call 0x1a5
00000126  8904              mov [si],ax
00000128  B80A00            mov ax,0xa
0000012B  E87700            call 0x1a5
0000012E  894402            mov [si+0x2],ax
00000131  83C604            add si,byte +0x4
00000134  E2EA              loop 0x120
00000136  8B0E4E02          mov cx,[0x24e]
0000013A  890E8802          mov [0x288],cx
0000013E  DF068802          fild word [0x288]
00000142  DE364E02          fidiv word [0x24e]
00000146  E87300            call 0x1bc
00000149  E2EF              loop 0x13a
0000014B  59                pop cx
0000014C  E2CB              loop 0x119
0000014E  830680020A        add word [0x280],byte +0xa
00000153  813E80024001      cmp word [0x280],0x140
00000159  720B              jc 0x166
0000015B  C70680020000      mov word [0x280],0x0
00000161  830682020A        add word [0x282],byte +0xa
00000166  813E8202C800      cmp word [0x282],0xc8
0000016C  7221              jc 0x18f
0000016E  C70680020000      mov word [0x280],0x0
00000174  C7068202BE00      mov word [0x282],0xbe
0000017A  1E                push ds
0000017B  06                push es
0000017C  1F                pop ds
0000017D  33FF              xor di,di
0000017F  BE800C            mov si,0xc80
00000182  B980ED            mov cx,0xed80
00000185  F3A4              rep movsb
00000187  33C0              xor ax,ax
00000189  B9800C            mov cx,0xc80
0000018C  F3AA              rep stosb
0000018E  1F                pop ds
0000018F  BADA03            mov dx,0x3da
00000192  EC                in al,dx
00000193  A808              test al,0x8
00000195  75FB              jnz 0x192
00000197  B401              mov ah,0x1
00000199  CD16              int 0x16
0000019B  0F846AFF          jz near 0x109
0000019F  B80300            mov ax,0x3
000001A2  CD10              int 0x10
000001A4  C3                ret
000001A5  50                push ax
000001A6  B823A1            mov ax,0xa123
000001A9  BA6F4D            mov dx,0x4d6f
000001AC  F7EA              imul dx
000001AE  050100            add ax,0x1
000001B1  C1C802            ror ax,byte 0x2
000001B4  A3A701            mov [0x1a7],ax
000001B7  5A                pop dx
000001B8  F7E2              mul dx
000001BA  92                xchg ax,dx
000001BB  C3                ret
000001BC  60                pusha
000001BD  D9165002          fst dword [0x250]
000001C1  D9E8              fld1
000001C3  D8E1              fsub st1
000001C5  D9165402          fst dword [0x254]
000001C9  D9C0              fld st0
000001CB  D8C8              fmul st0
000001CD  DEC9              fmulp st1
000001CF  D91E6802          fstp dword [0x268]
000001D3  D9C0              fld st0
000001D5  D8C8              fmul st0
000001D7  DEC9              fmulp st1
000001D9  D91E7402          fstp dword [0x274]
000001DD  D9065402          fld dword [0x254]
000001E1  D8C8              fmul st0
000001E3  DE0E4C02          fimul word [0x24c]
000001E7  D80E5002          fmul dword [0x250]
000001EB  D91E6C02          fstp dword [0x26c]
000001EF  D9065002          fld dword [0x250]
000001F3  D8C8              fmul st0
000001F5  D80E5402          fmul dword [0x254]
000001F9  DE0E4C02          fimul word [0x24c]
000001FD  D91E7002          fstp dword [0x270]
00000201  D9EE              fldz
00000203  D9EE              fldz
00000205  BE5802            mov si,0x258
00000208  BD6802            mov bp,0x268
0000020B  B90400            mov cx,0x4
0000020E  DF04              fild word [si]
00000210  D84E00            fmul dword [bp+0x0]
00000213  DEC1              faddp st1
00000215  D9C9              fxch st1
00000217  DF4402            fild word [si+0x2]
0000021A  D84E00            fmul dword [bp+0x0]
0000021D  DEC1              faddp st1
0000021F  D9C9              fxch st1
00000221  83C504            add bp,byte +0x4
00000224  83C604            add si,byte +0x4
00000227  E2E5              loop 0x20e
00000229  DF1E7802          fistp word [0x278]
0000022D  DF1E7C02          fistp word [0x27c]
00000231  8B1E7C02          mov bx,[0x27c]
00000235  031E8202          add bx,[0x282]
00000239  69DB4001          imul bx,bx,word 0x140
0000023D  031E7802          add bx,[0x278]
00000241  031E8002          add bx,[0x280]
00000245  26C6070F          mov byte [es:bx],0xf
00000249  61                popa
0000024A  C3                ret
0000024B  0003              add [bp+di],al
0000024D  007805            add [bx+si+0x5],bh
00000250  0000              add [bx+si],al
00000252  0000              add [bx+si],al
00000254  0000              add [bx+si],al
00000256  0000              add [bx+si],al
00000258  0000              add [bx+si],al
0000025A  0000              add [bx+si],al
0000025C  0000              add [bx+si],al
0000025E  0000              add [bx+si],al
00000260  0000              add [bx+si],al
00000262  0000              add [bx+si],al
00000264  0000              add [bx+si],al
00000266  0000              add [bx+si],al
00000268  0000              add [bx+si],al
0000026A  0000              add [bx+si],al
0000026C  0000              add [bx+si],al
0000026E  0000              add [bx+si],al
00000270  0000              add [bx+si],al
00000272  0000              add [bx+si],al
00000274  0000              add [bx+si],al
00000276  0000              add [bx+si],al
00000278  0000              add [bx+si],al
0000027A  0000              add [bx+si],al
0000027C  0000              add [bx+si],al
0000027E  0000              add [bx+si],al
00000280  0000              add [bx+si],al
00000282  0000              add [bx+si],al
