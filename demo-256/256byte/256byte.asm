00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  B409              mov ah,0x9
00000106  BAF101            mov dx,0x1f1
00000109  CD21              int 0x21
0000010B  B120              mov cl,0x20
0000010D  F4                hlt
0000010E  E2FD              loop 0x10d
00000110  BAC803            mov dx,0x3c8
00000113  32C0              xor al,al
00000115  B470              mov ah,0x70
00000117  8EE0              mov fs,ax
00000119  B480              mov ah,0x80
0000011B  8EE8              mov gs,ax
0000011D  EE                out dx,al
0000011E  42                inc dx
0000011F  B1C0              mov cl,0xc0
00000121  8AC7              mov al,bh
00000123  EE                out dx,al
00000124  83C33C            add bx,byte +0x3c
00000127  E2F8              loop 0x121
00000129  B1C0              mov cl,0xc0
0000012B  8AC7              mov al,bh
0000012D  EE                out dx,al
0000012E  83C3C4            add bx,byte -0x3c
00000131  E2F8              loop 0x12b
00000133  BFFC01            mov di,0x1fc
00000136  BE0003            mov si,0x300
00000139  B501              mov ch,0x1
0000013B  51                push cx
0000013C  D9EB              fldpi
0000013E  DE4D04            fimul word [di+0x4]
00000141  DE35              fidiv word [di]
00000143  D9FE              fsin
00000145  DE4D02            fimul word [di+0x2]
00000148  DF1C              fistp word [si]
0000014A  46                inc si
0000014B  FF4504            inc word [di+0x4]
0000014E  E2EC              loop 0x13c
00000150  680060            push word 0x6000
00000153  07                pop es
00000154  59                pop cx
00000155  06                push es
00000156  2BF1              sub si,cx
00000158  51                push cx
00000159  0405              add al,0x5
0000015B  80C406            add ah,0x6
0000015E  8BD8              mov bx,ax
00000160  32FF              xor bh,bh
00000162  8A10              mov dl,[bx+si]
00000164  8ADC              mov bl,ah
00000166  0210              add dl,[bx+si]
00000168  8AD9              mov bl,cl
0000016A  88970002          mov [bx+0x200],dl
0000016E  E2E9              loop 0x159
00000170  5D                pop bp
00000171  2BF5              sub si,bp
00000173  8A52FF            mov dl,[bp+si-0x1]
00000176  B701              mov bh,0x1
00000178  8A40FF            mov al,[bx+si-0x1]
0000017B  03C2              add ax,dx
0000017D  D0E8              shr al,1
0000017F  AA                stosb
00000180  4B                dec bx
00000181  75F5              jnz 0x178
00000183  4D                dec bp
00000184  75ED              jnz 0x173
00000186  6800A0            push word 0xa000
00000189  07                pop es
0000018A  33FF              xor di,di
0000018C  BEFC01            mov si,0x1fc
0000018F  B99CFF            mov cx,0xff9c
00000192  BB60FF            mov bx,0xff60
00000195  891C              mov [si],bx
00000197  DF04              fild word [si]
00000199  890C              mov [si],cx
0000019B  DF04              fild word [si]
0000019D  D9F3              fpatan
0000019F  C7040001          mov word [si],0x100
000001A3  DE0C              fimul word [si]
000001A5  D9EB              fldpi
000001A7  DEF9              fdivp st1
000001A9  64DF1D            fistp word [fs:di]
000001AC  DF4401            fild word [si+0x1]
000001AF  891C              mov [si],bx
000001B1  DF04              fild word [si]
000001B3  D8C8              fmul st0
000001B5  890C              mov [si],cx
000001B7  DF04              fild word [si]
000001B9  D8C8              fmul st0
000001BB  DEC1              faddp st1
000001BD  D9FA              fsqrt
000001BF  DEF9              fdivp st1
000001C1  65DF1D            fistp word [gs:di]
000001C4  47                inc di
000001C5  43                inc bx
000001C6  81FBA000          cmp bx,0xa0
000001CA  75C9              jnz 0x195
000001CC  41                inc cx
000001CD  83F964            cmp cx,byte +0x64
000001D0  75C0              jnz 0x192
000001D2  1F                pop ds
000001D3  648A25            mov ah,[fs:di]
000001D6  658A05            mov al,[gs:di]
000001D9  8BF0              mov si,ax
000001DB  03F2              add si,dx
000001DD  A4                movsb
000001DE  E2F3              loop 0x1d3
000001E0  42                inc dx
000001E1  80FE08            cmp dh,0x8
000001E4  7406              jz 0x1ec
000001E6  E460              in al,0x60
000001E8  3C01              cmp al,0x1
000001EA  75E7              jnz 0x1d3
000001EC  B003              mov al,0x3
000001EE  CD10              int 0x10
000001F0  C3                ret
000001F1  627920            bound di,[bx+di+0x20]
000001F4  6E                outsb
000001F5  61                popaw
000001F6  702F              jo 0x227
000001F8  646D              fs insw
000001FA  61                popaw
000001FB  2480              and al,0x80
000001FD  0020              add [bx+si],ah
000001FF  00                db 0x00
