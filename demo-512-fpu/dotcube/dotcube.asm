00000100  B81300            mov ax,0x13
00000103  CD10              int 0x10
00000105  FA                cli
00000106  0E                push cs
00000107  17                pop ss
00000108  BCFEFF            mov sp,0xfffe
0000010B  FB                sti
0000010C  680090            push word 0x9000
0000010F  07                pop es
00000110  E82201            call 0x235
00000113  BAC803            mov dx,0x3c8
00000116  30C0              xor al,al
00000118  EE                out dx,al
00000119  42                inc dx
0000011A  EE                out dx,al
0000011B  EE                out dx,al
0000011C  EE                out dx,al
0000011D  FEC0              inc al
0000011F  75F9              jnz 0x11a
00000121  68C007            push word 0x7c0
00000124  1F                pop ds
00000125  680090            push word 0x9000
00000128  07                pop es
00000129  E80901            call 0x235
0000012C  BE5001            mov si,0x150
0000012F  B90800            mov cx,0x8
00000132  DF4402            fild word [si+0x2]
00000135  DF4404            fild word [si+0x4]
00000138  D9063C01          fld dword [0x13c]
0000013C  E8CC00            call 0x20b
0000013F  DF1E0200          fistp word [0x2]
00000143  DF04              fild word [si]
00000145  D9064001          fld dword [0x140]
00000149  E8BF00            call 0x20b
0000014C  DF1E0400          fistp word [0x4]
00000150  DF4402            fild word [si+0x2]
00000153  D9064401          fld dword [0x144]
00000157  E8B100            call 0x20b
0000015A  DF1E0000          fistp word [0x0]
0000015E  DF1E0200          fistp word [0x2]
00000162  DF060000          fild word [0x0]
00000166  DF060200          fild word [0x2]
0000016A  DF060400          fild word [0x4]
0000016E  E8B100            call 0x222
00000171  DF1E0600          fistp word [0x6]
00000175  DF1E0800          fistp word [0x8]
00000179  8B3E0800          mov di,[0x8]
0000017D  81C74000          add di,0x40
00000181  8B160600          mov dx,[0x6]
00000185  81C28000          add dx,0x80
00000189  B0FF              mov al,0xff
0000018B  E86B00            call 0x1f9
0000018E  81C60600          add si,0x6
00000192  E29E              loop 0x132
00000194  D9064401          fld dword [0x144]
00000198  D8064801          fadd dword [0x148]
0000019C  D91E4401          fstp dword [0x144]
000001A0  D9063C01          fld dword [0x13c]
000001A4  D8064801          fadd dword [0x148]
000001A8  D91E3C01          fstp dword [0x13c]
000001AC  BADA03            mov dx,0x3da
000001AF  EC                in al,dx
000001B0  A808              test al,0x8
000001B2  74FB              jz 0x1af
000001B4  EC                in al,dx
000001B5  A808              test al,0x8
000001B7  75FB              jnz 0x1b4
000001B9  06                push es
000001BA  1F                pop ds
000001BB  6800A0            push word 0xa000
000001BE  07                pop es
000001BF  31FF              xor di,di
000001C1  31F6              xor si,si
000001C3  B9003C            mov cx,0x3c00
000001C6  F366A5            rep movsd
000001C9  B401              mov ah,0x1
000001CB  CD16              int 0x16
000001CD  0F8450FF          jz near 0x121
000001D1  EA0000FFFF        jmp 0xffff:0x0
000001D6  81C72400          add di,0x24
000001DA  69FF4001          imul di,di,word 0x140
000001DE  01D7              add di,dx
000001E0  81C72000          add di,0x20
000001E4  268A1D            mov bl,[es:di]
000001E7  80FBF0            cmp bl,0xf0
000001EA  7E07              jng 0x1f3
000001EC  28C3              sub bl,al
000001EE  86C3              xchg al,bl
000001F0  E90200            jmp 0x1f5
000001F3  28D8              sub al,bl
000001F5  268805            mov [es:di],al
000001F8  C3                ret
000001F9  81C72400          add di,0x24
000001FD  69FF4001          imul di,di,word 0x140
00000201  01D7              add di,dx
00000203  81C72000          add di,0x20
00000207  268805            mov [es:di],al
0000020A  C3                ret
0000020B  D9C2              fld st2
0000020D  D9C2              fld st2
0000020F  D9CA              fxch st2
00000211  D9FB              fsincos
00000213  DCCB              fmul to st3
00000215  DECD              fmulp st5
00000217  DCC9              fmul to st1
00000219  DECB              fmulp st3
0000021B  DEE9              fsubp st1
0000021D  D9C9              fxch st1
0000021F  DEC2              faddp st2
00000221  C3                ret
00000222  DE264E01          fisub word [0x14e]
00000226  DCFA              fdiv to st2
00000228  DEF9              fdivp st1
0000022A  DE0E4C01          fimul word [0x14c]
0000022E  D9C9              fxch st1
00000230  DE0E4C01          fimul word [0x14c]
00000234  C3                ret
00000235  31C0              xor ax,ax
00000237  B580              mov ch,0x80
00000239  F3AB              rep stosw
0000023B  C3                ret
0000023C  0000              add [bx+si],al
0000023E  0000              add [bx+si],al
00000240  0000              add [bx+si],al
00000242  0000              add [bx+si],al
00000244  0000              add [bx+si],al
00000246  0000              add [bx+si],al
00000248  DB0F              fisttp dword [bx]
0000024A  C9                leave
0000024B  3A20              cmp ah,[bx+si]
0000024D  0000              add [bx+si],al
0000024F  01FF              add di,di
00000251  03FF              add di,di
00000253  03FF              add di,di
00000255  03FF              add di,di
00000257  0301              add ax,[bx+di]
00000259  FC                cld
0000025A  FF03              inc word [bp+di]
0000025C  01FC              add sp,di
0000025E  01FC              add sp,di
00000260  FF03              inc word [bp+di]
00000262  01FC              add sp,di
00000264  FF03              inc word [bp+di]
00000266  FF03              inc word [bp+di]
00000268  FF03              inc word [bp+di]
0000026A  FF03              inc word [bp+di]
0000026C  01FC              add sp,di
0000026E  FF03              inc word [bp+di]
00000270  01FC              add sp,di
00000272  01FC              add sp,di
00000274  01FC              add sp,di
00000276  01FC              add sp,di
00000278  01FC              add sp,di
0000027A  01FC              add sp,di
0000027C  FF03              inc word [bp+di]
0000027E  01FC              add sp,di
00000280  0000              add [bx+si],al
00000282  0000              add [bx+si],al
00000284  0000              add [bx+si],al
00000286  0000              add [bx+si],al
00000288  0000              add [bx+si],al
0000028A  0000              add [bx+si],al
0000028C  0000              add [bx+si],al
0000028E  0000              add [bx+si],al
00000290  0000              add [bx+si],al
00000292  0000              add [bx+si],al
00000294  0000              add [bx+si],al
00000296  0000              add [bx+si],al
00000298  0000              add [bx+si],al
0000029A  0000              add [bx+si],al
0000029C  0000              add [bx+si],al
0000029E  0000              add [bx+si],al
000002A0  0000              add [bx+si],al
000002A2  0000              add [bx+si],al
000002A4  0000              add [bx+si],al
000002A6  0000              add [bx+si],al
000002A8  0000              add [bx+si],al
000002AA  0000              add [bx+si],al
000002AC  0000              add [bx+si],al
000002AE  0000              add [bx+si],al
000002B0  0000              add [bx+si],al
000002B2  0000              add [bx+si],al
000002B4  0000              add [bx+si],al
000002B6  0000              add [bx+si],al
000002B8  0000              add [bx+si],al
000002BA  0000              add [bx+si],al
000002BC  0000              add [bx+si],al
000002BE  0000              add [bx+si],al
000002C0  0000              add [bx+si],al
000002C2  0000              add [bx+si],al
000002C4  0000              add [bx+si],al
000002C6  0000              add [bx+si],al
000002C8  0000              add [bx+si],al
000002CA  0000              add [bx+si],al
000002CC  0000              add [bx+si],al
000002CE  0000              add [bx+si],al
000002D0  0000              add [bx+si],al
000002D2  0000              add [bx+si],al
000002D4  0000              add [bx+si],al
000002D6  0000              add [bx+si],al
000002D8  0000              add [bx+si],al
000002DA  0000              add [bx+si],al
000002DC  0000              add [bx+si],al
000002DE  0000              add [bx+si],al
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
000002F4  0000              add [bx+si],al
000002F6  0000              add [bx+si],al
000002F8  0000              add [bx+si],al
000002FA  0000              add [bx+si],al
000002FC  0000              add [bx+si],al
000002FE  55                push bp
000002FF  AA                stosb
