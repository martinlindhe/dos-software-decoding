00000100  B81300            mov ax,0x13
00000103  CD10              int 0x10
00000105  6800A0            push word 0xa000
00000108  07                pop es
00000109  66A13202          mov eax,[0x232]
0000010D  66A32A02          mov [0x22a],eax
00000111  66A13602          mov eax,[0x236]
00000115  66A32E02          mov [0x22e],eax
00000119  B94000            mov cx,0x40
0000011C  BE3A02            mov si,0x23a
0000011F  D9062A02          fld dword [0x22a]
00000123  D8262E02          fsub dword [0x22e]
00000127  D80ED001          fmul dword [0x1d0]
0000012B  D9FF              fcos
0000012D  D80ED801          fmul dword [0x1d8]
00000131  D806D401          fadd dword [0x1d4]
00000135  DB1E2602          fistp dword [0x226]
00000139  668B3E2602        mov edi,[0x226]
0000013E  D9062A02          fld dword [0x22a]
00000142  D8062E02          fadd dword [0x22e]
00000146  D80ED001          fmul dword [0x1d0]
0000014A  D9FE              fsin
0000014C  D80EE001          fmul dword [0x1e0]
00000150  D806DC01          fadd dword [0x1dc]
00000154  DB1E2602          fistp dword [0x226]
00000158  66A12602          mov eax,[0x226]
0000015C  66678D0480        lea eax,[dword eax+eax*4]
00000161  66C1E006          shl eax,byte 0x6
00000165  6603F8            add edi,eax
00000168  B8000F            mov ax,0xf00
0000016B  8B1C              mov bx,[si]
0000016D  268807            mov [es:bx],al
00000170  268825            mov [es:di],ah
00000173  893C              mov [si],di
00000175  83C602            add si,byte +0x2
00000178  D9062A02          fld dword [0x22a]
0000017C  D806E401          fadd dword [0x1e4]
00000180  D91E2A02          fstp dword [0x22a]
00000184  D9062E02          fld dword [0x22e]
00000188  D806E801          fadd dword [0x1e8]
0000018C  D91E2E02          fstp dword [0x22e]
00000190  49                dec cx
00000191  758C              jnz 0x11f
00000193  BADA03            mov dx,0x3da
00000196  EC                in al,dx
00000197  A808              test al,0x8
00000199  75FB              jnz 0x196
0000019B  EC                in al,dx
0000019C  A808              test al,0x8
0000019E  74FB              jz 0x19b
000001A0  D9063202          fld dword [0x232]
000001A4  D806EC01          fadd dword [0x1ec]
000001A8  D91E3202          fstp dword [0x232]
000001AC  D9063602          fld dword [0x236]
000001B0  D806F001          fadd dword [0x1f0]
000001B4  D91E3602          fstp dword [0x236]
000001B8  B401              mov ah,0x1
000001BA  CD16              int 0x16
000001BC  0F8449FF          jz near 0x109
000001C0  B80300            mov ax,0x3
000001C3  CD10              int 0x10
000001C5  B409              mov ah,0x9
000001C7  BAF401            mov dx,0x1f4
000001CA  CD21              int 0x21
000001CC  C3                ret
000001CD  87DB              xchg bx,bx
000001CF  90                nop
000001D0  DB0F              fisttp dword [bx]
000001D2  C9                leave
000001D3  3C00              cmp al,0x0
000001D5  0020              add [bx+si],ah
000001D7  43                inc bx
000001D8  0000              add [bx+si],al
000001DA  1B4300            sbb ax,[bp+di+0x0]
000001DD  00C8              add al,cl
000001DF  42                inc dx
000001E0  0000              add [bx+si],al
000001E2  BE4200            mov si,0x42
000001E5  00804000          add [bx+si+0x40],al
000001E9  00803F00          add [bx+si+0x3f],al
000001ED  00803F00          add [bx+si+0x3f],al
000001F1  0000              add [bx+si],al
000001F3  40                inc ax
000001F4  0D0A5B            or ax,0x5b0a
000001F7  636F64            arpl [bx+0x64],bp
000001FA  655D              gs pop bp
000001FC  205B62            and [bp+di+0x62],bl
000001FF  7269              jc 0x26a
00000201  6F                outsw
00000202  636865            arpl [bx+si+0x65],bp
00000205  5D                pop bp
00000206  205B67            and [bp+di+0x67],bl
00000209  7265              jc 0x270
0000020B  657473            gs jz 0x281
0000020E  5D                pop bp
0000020F  205B61            and [bp+di+0x61],bl
00000212  6C                insb
00000213  7068              jo 0x27d
00000215  61                popa
00000216  7472              jz 0x28a
00000218  696F6E5D20        imul bp,[bx+0x6e],word 0x205d
0000021D  5B                pop bx
0000021E  7472              jz 0x292
00000220  61                popa
00000221  785D              js 0x280
00000223  0D0A24            or ax,0x240a
00000226  0000              add [bx+si],al
00000228  0000              add [bx+si],al
0000022A  0000              add [bx+si],al
0000022C  0000              add [bx+si],al
0000022E  0000              add [bx+si],al
00000230  0000              add [bx+si],al
00000232  0000              add [bx+si],al
00000234  0000              add [bx+si],al
00000236  0000              add [bx+si],al
00000238  0000              add [bx+si],al
0000023A  00                db 0x00
