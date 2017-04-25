00000100  EB41              jmp short 0x143
00000102  90                nop
00000103  0200              add al,[bx+si]
00000105  00800000          add [bx+si+0x0],al
00000109  40                inc ax
0000010A  011E0000          add [0x0],bx
0000010E  0081FF00          add [bx+di+0xff],al
00000112  005000            add [bx+si+0x0],dl
00000115  2EDF060301        fild word [cs:0x103]
0000011A  D9E0              fchs
0000011C  2EDF1E0301        fistp word [cs:0x103]
00000121  2E8B0E0301        mov cx,[cs:0x103]
00000126  2E010E0701        add [cs:0x107],cx
0000012B  2EDF060701        fild word [cs:0x107]
00000130  D9E1              fabs
00000132  2EDF1E0501        fistp word [cs:0x105]
00000137  2E813E05018400    cmp word [cs:0x105],0x84
0000013E  74D5              jz 0x115
00000140  EB43              jmp short 0x185
00000142  90                nop
00000143  B81300            mov ax,0x13
00000146  CD10              int 0x10
00000148  32C0              xor al,al
0000014A  B90001            mov cx,0x100
0000014D  BAC803            mov dx,0x3c8
00000150  EE                out dx,al
00000151  50                push ax
00000152  42                inc dx
00000153  32C0              xor al,al
00000155  EE                out dx,al
00000156  EE                out dx,al
00000157  2E890E1101        mov [cs:0x111],cx
0000015C  2EDF061101        fild word [cs:0x111]
00000161  2EDE060F01        fiadd word [cs:0x10f]
00000166  D9E1              fabs
00000168  2EDE060F01        fiadd word [cs:0x10f]
0000016D  D9E1              fabs
0000016F  2EDF1E1101        fistp word [cs:0x111]
00000174  2EA11101          mov ax,[cs:0x111]
00000178  D0E8              shr al,1
0000017A  EE                out dx,al
0000017B  58                pop ax
0000017C  FEC0              inc al
0000017E  E2CD              loop 0x14d
00000180  BA00A0            mov dx,0xa000
00000183  8EC2              mov es,dx
00000185  B411              mov ah,0x11
00000187  CD16              int 0x16
00000189  7571              jnz 0x1fc
0000018B  90                nop
0000018C  90                nop
0000018D  33FF              xor di,di
0000018F  47                inc di
00000190  33D2              xor dx,dx
00000192  57                push di
00000193  58                pop ax
00000194  2EF7360901        div word [cs:0x109]
00000199  2EA31101          mov [cs:0x111],ax
0000019D  2E832E110164      sub word [cs:0x111],byte +0x64
000001A3  2EF7260901        mul word [cs:0x109]
000001A8  2E893E0F01        mov [cs:0x10f],di
000001AD  2E29060F01        sub [cs:0x10f],ax
000001B2  2E812E0F01A000    sub word [cs:0x10f],0xa0
000001B9  2EDF060F01        fild word [cs:0x10f]
000001BE  D8C8              fmul st0
000001C0  2EDF061101        fild word [cs:0x111]
000001C5  2EDF060F01        fild word [cs:0x10f]
000001CA  2EDF060701        fild word [cs:0x107]
000001CF  2EDE361301        fidiv word [cs:0x113]
000001D4  DEC9              fmulp st1
000001D6  DEC1              faddp st1
000001D8  D8C8              fmul st0
000001DA  DEC1              faddp st1
000001DC  2EDE360B01        fidiv word [cs:0x10b]
000001E1  2EDF1E0D01        fistp word [cs:0x10d]
000001E6  2EA10D01          mov ax,[cs:0x10d]
000001EA  2E03060701        add ax,[cs:0x107]
000001EF  268805            mov [es:di],al
000001F2  81FF00FA          cmp di,0xfa00
000001F6  0F8427FF          jz word 0x121
000001FA  EB93              jmp short 0x18f
000001FC  B44C              mov ah,0x4c
000001FE  CD21              int 0x21
