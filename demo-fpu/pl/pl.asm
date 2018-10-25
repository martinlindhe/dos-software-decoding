00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  BAC403            mov dx,0x3c4
00000107  B80406            mov ax,0x604
0000010A  EF                out dx,ax
0000010B  B2D4              mov dl,0xd4
0000010D  B81400            mov ax,0x14
00000110  EF                out dx,ax
00000111  B817E3            mov ax,0xe317
00000114  EF                out dx,ax
00000115  B813A0            mov ax,0xa013
00000118  EF                out dx,ax
00000119  52                push dx
0000011A  B009              mov al,0x9
0000011C  EE                out dx,al
0000011D  42                inc dx
0000011E  EC                in al,dx
0000011F  24E0              and al,0xe0
00000121  0C06              or al,0x6
00000123  EE                out dx,al
00000124  6800A0            push word 0xa000
00000127  07                pop es
00000128  33FF              xor di,di
0000012A  B9FF7F            mov cx,0x7fff
0000012D  33C0              xor ax,ax
0000012F  F3AB              rep stosw
00000131  0E                push cs
00000132  07                pop es
00000133  BADE01            mov dx,0x1de
00000136  B409              mov ah,0x9
00000138  CD21              int 0x21
0000013A  B99000            mov cx,0x90
0000013D  F4                hlt
0000013E  E2FD              loop 0x13d
00000140  5A                pop dx
00000141  B81328            mov ax,0x2813
00000144  EF                out dx,ax
00000145  B2C8              mov dl,0xc8
00000147  32C0              xor al,al
00000149  EE                out dx,al
0000014A  42                inc dx
0000014B  B501              mov ch,0x1
0000014D  BEF000            mov si,0xf0
00000150  66810481004701    add dword [si],0x1470081
00000157  46                inc si
00000158  6E                outsb
00000159  46                inc si
0000015A  6E                outsb
0000015B  46                inc si
0000015C  6E                outsb
0000015D  83046A            add word [si],byte +0x6a
00000160  E2EB              loop 0x14d
00000162  9BDBE3            finit
00000165  D9EB              fldpi
00000167  BEDC01            mov si,0x1dc
0000016A  DE34              fidiv word [si]
0000016C  D9EE              fldz
0000016E  BF0402            mov di,0x204
00000171  B501              mov ch,0x1
00000173  D9C0              fld st0
00000175  D9FF              fcos
00000177  DE0E0E01          fimul word [0x10e]
0000017B  DF1C              fistp word [si]
0000017D  A4                movsb
0000017E  4E                dec si
0000017F  D8C1              fadd st1
00000181  E2F0              loop 0x173
00000183  6800A0            push word 0xa000
00000186  07                pop es
00000187  BB0402            mov bx,0x204
0000018A  BADA03            mov dx,0x3da
0000018D  EC                in al,dx
0000018E  A808              test al,0x8
00000190  74FB              jz 0x18d
00000192  668106000201FE03  add dword [0x200],0xff03fe01
         -FF
0000019B  8B0E0002          mov cx,[0x200]
0000019F  8B160202          mov dx,[0x202]
000001A3  33FF              xor di,di
000001A5  BE5000            mov si,0x50
000001A8  51                push cx
000001A9  8AC1              mov al,cl
000001AB  D7                xlatb
000001AC  8AE0              mov ah,al
000001AE  8AC5              mov al,ch
000001B0  D7                xlatb
000001B1  02E0              add ah,al
000001B3  8AC2              mov al,dl
000001B5  D7                xlatb
000001B6  02E0              add ah,al
000001B8  8AC6              mov al,dh
000001BA  D7                xlatb
000001BB  02C4              add al,ah
000001BD  AA                stosb
000001BE  81C102FD          add cx,0xfd02
000001C2  4E                dec si
000001C3  75E4              jnz 0x1a9
000001C5  59                pop cx
000001C6  81C2FF02          add dx,0x2ff
000001CA  81FFA014          cmp di,0x14a0
000001CE  72D5              jc 0x1a5
000001D0  B401              mov ah,0x1
000001D2  CD16              int 0x16
000001D4  74B4              jz 0x18a
000001D6  B80300            mov ax,0x3
000001D9  CD10              int 0x10
000001DB  C3                ret
000001DC  80000D            add byte [bx+si],0xd
000001DF  0A0D              or cl,[di]
000001E1  0A20              or ah,[bx+si]
000001E3  205A42            and [bp+si+0x42],bl
000001E6  30525A            xor [bp+si+0x5a],dl
000001E9  45                inc bp
000001EA  0D0A20            or ax,0x200a
000001ED  205255            and [bp+si+0x55],dl
000001F0  4C                dec sp
000001F1  45                inc bp
000001F2  5A                pop dx
000001F3  0D0A6A            or ax,0x6a0a
000001F6  6F                outsw
000001F7  677572            jnz 0x26c
000001FA  7420              jz 0x21c
000001FC  7375              jnc 0x273
000001FE  7824              js 0x224
