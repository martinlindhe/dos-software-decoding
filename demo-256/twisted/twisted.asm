00000100  BF0002            mov di,0x200
00000103  B104              mov cl,0x4
00000105  8CC0              mov ax,es
00000107  80C410            add ah,0x10
0000010A  AB                stosw
0000010B  E2FA              loop 0x107
0000010D  8E1E0402          mov ds,[0x204]
00000111  55                push bp
00000112  33ED              xor bp,bp
00000114  33F6              xor si,si
00000116  33D2              xor dx,dx
00000118  BF40FC            mov di,0xfc40
0000011B  03F1              add si,cx
0000011D  D3C6              rol si,cl
0000011F  D1C9              ror cx,1
00000121  81C13412          add cx,0x1234
00000125  8D02              lea ax,[bp+si]
00000127  C1F80C            sar ax,byte 0xc
0000012A  40                inc ax
0000012B  8A15              mov dl,[di]
0000012D  47                inc di
0000012E  8A1D              mov bl,[di]
00000130  03DA              add bx,dx
00000132  D1EB              shr bx,1
00000134  03C3              add ax,bx
00000136  8885FF00          mov [di+0xff],al
0000013A  4D                dec bp
0000013B  75DE              jnz 0x11b
0000013D  5D                pop bp
0000013E  33FF              xor di,di
00000140  C02D02            shr byte [di],byte 0x2
00000143  47                inc di
00000144  75FA              jnz 0x140
00000146  33F6              xor si,si
00000148  0E                push cs
00000149  1F                pop ds
0000014A  8E260202          mov fs,[0x202]
0000014E  B280              mov dl,0x80
00000150  C746024000        mov word [bp+0x2],0x40
00000155  B90001            mov cx,0x100
00000158  8932              mov [bp+si],si
0000015A  D9EB              fldpi
0000015C  DE0A              fimul word [bp+si]
0000015E  DE36FE01          fidiv word [0x1fe]
00000162  D9FE              fsin
00000164  DE4E02            fimul word [bp+0x2]
00000167  64DF1D            fistp word [fs:di]
0000016A  64FE05            inc byte [fs:di]
0000016D  81C78000          add di,0x80
00000171  FF02              inc word [bp+si]
00000173  E2E5              loop 0x15a
00000175  81C70180          add di,0x8001
00000179  FF4602            inc word [bp+0x2]
0000017C  4A                dec dx
0000017D  75D6              jnz 0x155
0000017F  B013              mov al,0x13
00000181  CD10              int 0x10
00000183  8E2E0402          mov gs,[0x204]
00000187  2E8E060002        mov es,[cs:0x200]
0000018C  91                xchg ax,cx
0000018D  B540              mov ch,0x40
0000018F  F366AB            rep stosd
00000192  B502              mov ch,0x2
00000194  BFA000            mov di,0xa0
00000197  33F6              xor si,si
00000199  53                push bx
0000019A  99                cwd
0000019B  57                push di
0000019C  658A07            mov al,[gs:bx]
0000019F  8BE8              mov bp,ax
000001A1  648A0A            mov cl,[fs:bp+si]
000001A4  FEC3              inc bl
000001A6  80FD01            cmp ch,0x1
000001A9  7503              jnz 0x1ae
000001AB  80EB02            sub bl,0x2
000001AE  81C68000          add si,0x80
000001B2  2ACE              sub cl,dh
000001B4  7613              jna 0x1c9
000001B6  02F1              add dh,cl
000001B8  C0E802            shr al,byte 0x2
000001BB  0410              add al,0x10
000001BD  AA                stosb
000001BE  80FD01            cmp ch,0x1
000001C1  7502              jnz 0x1c5
000001C3  4F                dec di
000001C4  4F                dec di
000001C5  FEC9              dec cl
000001C7  75F4              jnz 0x1bd
000001C9  FECA              dec dl
000001CB  75CF              jnz 0x19c
000001CD  5F                pop di
000001CE  FEC7              inc bh
000001D0  81C74001          add di,0x140
000001D4  81C60080          add si,0x8000
000001D8  81FFA0FA          cmp di,0xfaa0
000001DC  72BC              jc 0x19a
000001DE  5B                pop bx
000001DF  FECD              dec ch
000001E1  75B1              jnz 0x194
000001E3  06                push es
000001E4  1F                pop ds
000001E5  6800A0            push word 0xa000
000001E8  07                pop es
000001E9  33FF              xor di,di
000001EB  B540              mov ch,0x40
000001ED  F366A5            rep movsd
000001F0  FEC3              inc bl
000001F2  B401              mov ah,0x1
000001F4  CD16              int 0x16
000001F6  748F              jz 0x187
000001F8  B80300            mov ax,0x3
000001FB  CD10              int 0x10
000001FD  C3                ret
000001FE  0001              add [bx+di],al
