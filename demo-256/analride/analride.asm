00000100  F9                stc
00000101  6E                outsb
00000102  EC                in al,dx
00000103  6E                outsb
00000104  F9                stc
00000105  8CC8              mov ax,cs
00000107  050010            add ax,0x1000
0000010A  8EE8              mov gs,ax
0000010C  050010            add ax,0x1000
0000010F  8EE0              mov fs,ax
00000111  050010            add ax,0x1000
00000114  8BE8              mov bp,ax
00000116  8EC5              mov es,bp
00000118  33F6              xor si,si
0000011A  B90080            mov cx,0x8000
0000011D  A1F401            mov ax,[0x1f4]
00000120  054892            add ax,0x9248
00000123  C1C803            ror ax,byte 0x3
00000126  A3F401            mov [0x1f4],ax
00000129  251F1F            and ax,0x1f1f
0000012C  268904            mov [es:si],ax
0000012F  46                inc si
00000130  46                inc si
00000131  E2EA              loop 0x11d
00000133  9BDBE3            finit
00000136  66C706FC019CFFFF  mov dword [0x1fc],0xffffff9c
         -FF
0000013F  B9C800            mov cx,0xc8
00000142  51                push cx
00000143  66C706000260FFFF  mov dword [0x200],0xffffff60
         -FF
0000014C  B94001            mov cx,0x140
0000014F  66A10002          mov eax,[0x200]
00000153  660FAFC0          imul eax,eax
00000157  668B1EFC01        mov ebx,[0x1fc]
0000015C  660FAFDB          imul ebx,ebx
00000160  6603C3            add eax,ebx
00000163  66A3F801          mov [0x1f8],eax
00000167  DB06F801          fild dword [0x1f8]
0000016B  D9FA              fsqrt
0000016D  DF06EE01          fild word [0x1ee]
00000171  D8F1              fdiv st1
00000173  64DF1C            fistp word [fs:si]
00000176  DDC0              ffree st0
00000178  DB060002          fild dword [0x200]
0000017C  DB06FC01          fild dword [0x1fc]
00000180  D9F3              fpatan
00000182  D80EF001          fmul dword [0x1f0]
00000186  65DF1C            fistp word [gs:si]
00000189  DDC0              ffree st0
0000018B  66FF060002        inc dword [0x200]
00000190  46                inc si
00000191  E2BC              loop 0x14f
00000193  66FF06FC01        inc dword [0x1fc]
00000198  59                pop cx
00000199  E2A7              loop 0x142
0000019B  6800A0            push word 0xa000
0000019E  07                pop es
0000019F  B81300            mov ax,0x13
000001A2  CD10              int 0x10
000001A4  33C0              xor ax,ax
000001A6  BAC803            mov dx,0x3c8
000001A9  EE                out dx,al
000001AA  42                inc dx
000001AB  B94000            mov cx,0x40
000001AE  EE                out dx,al
000001AF  EE                out dx,al
000001B0  EE                out dx,al
000001B1  FEC0              inc al
000001B3  E2F9              loop 0x1ae
000001B5  BADA03            mov dx,0x3da
000001B8  EC                in al,dx
000001B9  A808              test al,0x8
000001BB  75F9              jnz 0x1b6
000001BD  EC                in al,dx
000001BE  A808              test al,0x8
000001C0  74F9              jz 0x1bb
000001C2  1E                push ds
000001C3  8EDD              mov ds,bp
000001C5  33F6              xor si,si
000001C7  B900FA            mov cx,0xfa00
000001CA  648A1C            mov bl,[fs:si]
000001CD  658A3C            mov bh,[gs:si]
000001D0  2E031E0402        add bx,[cs:0x204]
000001D5  8A07              mov al,[bx]
000001D7  268804            mov [es:si],al
000001DA  46                inc si
000001DB  E2ED              loop 0x1ca
000001DD  1F                pop ds
000001DE  810604020201      add word [0x204],0x102
000001E4  E460              in al,0x60
000001E6  48                dec ax
000001E7  75CC              jnz 0x1b5
000001E9  B003              mov al,0x3
000001EB  CD10              int 0x10
000001ED  C3                ret
000001EE  AC                lodsb
000001EF  0D83F9            or ax,0xf983
000001F2  22                db 0x22
000001F3  42                inc dx
