00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  BAC803            mov dx,0x3c8
00000107  EE                out dx,al
00000108  42                inc dx
00000109  50                push ax
0000010A  B000              mov al,0x0
0000010C  EE                out dx,al
0000010D  58                pop ax
0000010E  EE                out dx,al
0000010F  EE                out dx,al
00000110  40                inc ax
00000111  75F6              jnz 0x109
00000113  FEC5              inc ch
00000115  BF0202            mov di,0x202
00000118  D9EB              fldpi
0000011A  DE0EFE01          fimul word [0x1fe]
0000011E  DE36FA01          fidiv word [0x1fa]
00000122  D9FE              fsin
00000124  DE0EFC01          fimul word [0x1fc]
00000128  DF1E0002          fistp word [0x200]
0000012C  A10002            mov ax,[0x200]
0000012F  AA                stosb
00000130  FF06FE01          inc word [0x1fe]
00000134  E2E2              loop 0x118
00000136  BF4203            mov di,0x342
00000139  D1EE              shr si,1
0000013B  B380              mov bl,0x80
0000013D  8D47C0            lea ax,[bx-0x40]
00000140  F6E8              imul al
00000142  92                xchg ax,dx
00000143  8D44C0            lea ax,[si-0x40]
00000146  F6E8              imul al
00000148  03C2              add ax,dx
0000014A  3DC904            cmp ax,0x4c9
0000014D  730C              jnc 0x15b
0000014F  C1E805            shr ax,byte 0x5
00000152  8BE8              mov bp,ax
00000154  8A864202          mov al,[bp+0x242]
00000158  D0E0              shl al,1
0000015A  A9B000            test ax,0xb0
0000015D  AA                stosb
0000015E  4B                dec bx
0000015F  75DC              jnz 0x13d
00000161  4E                dec si
00000162  75D7              jnz 0x13b
00000164  6800A0            push word 0xa000
00000167  07                pop es
00000168  FEC3              inc bl
0000016A  BF00FA            mov di,0xfa00
0000016D  B17F              mov cl,0x7f
0000016F  8AC1              mov al,cl
00000171  F6AF0202          imul byte [bx+0x202]
00000175  03C0              add ax,ax
00000177  8AEC              mov ch,ah
00000179  8AC1              mov al,cl
0000017B  F6AF4202          imul byte [bx+0x242]
0000017F  03C0              add ax,ax
00000181  8AC5              mov al,ch
00000183  AB                stosw
00000184  FEC9              dec cl
00000186  71E7              jno 0x16f
00000188  BF2100            mov di,0x21
0000018B  B564              mov ch,0x64
0000018D  B17F              mov cl,0x7f
0000018F  33D2              xor dx,dx
00000191  BE00FA            mov si,0xfa00
00000194  8AC5              mov al,ch
00000196  F6AF0202          imul byte [bx+0x202]
0000019A  03C0              add ax,ax
0000019C  02F4              add dh,ah
0000019E  8AC5              mov al,ch
000001A0  F6AF4202          imul byte [bx+0x242]
000001A4  03C0              add ax,ax
000001A6  2AD4              sub dl,ah
000001A8  53                push bx
000001A9  51                push cx
000001AA  52                push dx
000001AB  26AD              es lodsw
000001AD  03D0              add dx,ax
000001AF  B84000            mov ax,0x40
000001B2  8BCD              mov cx,bp
000001B4  2D0800            sub ax,0x8
000001B7  7415              jz 0x1ce
000001B9  2BCA              sub cx,dx
000001BB  81C23F3D          add dx,0x3d3f
000001BF  8BD9              mov bx,cx
000001C1  D0EB              shr bl,1
000001C3  C0EF02            shr bh,byte 0x2
000001C6  8A9F4203          mov bl,[bx+0x342]
000001CA  0ADB              or bl,bl
000001CC  74E6              jz 0x1b4
000001CE  F6E3              mul bl
000001D0  C1E808            shr ax,byte 0x8
000001D3  5A                pop dx
000001D4  59                pop cx
000001D5  5B                pop bx
000001D6  AA                stosb
000001D7  FEC9              dec cl
000001D9  71CD              jno 0x1a8
000001DB  83C740            add di,byte +0x40
000001DE  FECD              dec ch
000001E0  80FD9C            cmp ch,0x9c
000001E3  75A8              jnz 0x18d
000001E5  81C5050B          add bp,0xb05
000001E9  E460              in al,0x60
000001EB  FEC8              dec al
000001ED  0F8573FF          jnz word 0x164
000001F1  CD16              int 0x16
000001F3  B80300            mov ax,0x3
000001F6  CD10              int 0x10
000001F8  C3                ret
000001F9  FE80007F          inc byte [bx+si+0x7f00]
000001FD  0014              add [si],dl
000001FF  00                db 0x00
