00000100  50                push ax
00000101  53                push bx
00000102  51                push cx
00000103  52                push dx
00000104  E97B0F            jmp 0x1082
00000107  0808              or [bx+si],cl
00000109  0808              or [bx+si],cl
0000010B  0808              or [bx+si],cl
0000010D  08426C            or [bp+si+0x6c],al
00000110  6F                outsw
00000111  7274              jc 0x187
00000113  2120              and [bx+si],sp
00000115  56                push si
00000116  657273            gs jc 0x18c
00000119  696F6E2032        imul bp,[bx+0x6e],word 0x3220
0000011E  3A20              cmp ah,[bx+si]
00000120  3139              xor [bx+di],di
00000122  3837              cmp [bx],dh
00000124  204865            and [bx+si+0x65],cl
00000127  6E                outsb
00000128  6E                outsb
00000129  53                push bx
0000012A  6F                outsw
0000012B  66740D            o32 jz 0x13b
0000012E  0A1A              or bl,[bp+si]
00000130  FF                db 0xFF
00000131  FF                db 0xFF
00000132  FF                db 0xFF
00000133  FF                db 0xFF
00000134  FF                db 0xFF
00000135  FF                db 0xFF
00000136  FF                db 0xFF
00000137  FF                db 0xFF
00000138  FF                db 0xFF
00000139  FF                db 0xFF
0000013A  FF                db 0xFF
0000013B  FF                db 0xFF
0000013C  FF                db 0xFF
0000013D  FF                db 0xFF
0000013E  FF                db 0xFF
0000013F  FF                db 0xFF
00000140  FF                db 0xFF
00000141  FF                db 0xFF
00000142  FF                db 0xFF
00000143  FF                db 0xFF
00000144  FF                db 0xFF
00000145  FF800000          inc word [bx+si+0x0]
00000149  0000              add [bx+si],al
0000014B  0000              add [bx+si],al
0000014D  0000              add [bx+si],al
0000014F  0000              add [bx+si],al
00000151  0000              add [bx+si],al
00000153  0000              add [bx+si],al
00000155  0000              add [bx+si],al
00000157  0000              add [bx+si],al
00000159  0000              add [bx+si],al
0000015B  01800000          add [bx+si+0x0],ax
0000015F  0000              add [bx+si],al
00000161  0000              add [bx+si],al
00000163  0000              add [bx+si],al
00000165  0000              add [bx+si],al
00000167  0000              add [bx+si],al
00000169  0000              add [bx+si],al
0000016B  0000              add [bx+si],al
0000016D  0000              add [bx+si],al
0000016F  0000              add [bx+si],al
00000171  019FFFFF          add [bx+0xffff],bx
00000175  FF                db 0xFF
00000176  FF                db 0xFF
00000177  FF                db 0xFF
00000178  FF                db 0xFF
00000179  FF                db 0xFF
0000017A  FF                db 0xFF
0000017B  FF                db 0xFF
0000017C  FF                db 0xFF
0000017D  FF                db 0xFF
0000017E  FF                db 0xFF
0000017F  FF                db 0xFF
00000180  FF                db 0xFF
00000181  FF                db 0xFF
00000182  FF                db 0xFF
00000183  FF                db 0xFF
00000184  FF                db 0xFF
00000185  FF                db 0xFF
00000186  FF                db 0xFF
00000187  F9                stc
00000188  9F                lahf
00000189  FF                db 0xFF
0000018A  FF                db 0xFF
0000018B  FF                db 0xFF
0000018C  FF                db 0xFF
0000018D  FF                db 0xFF
0000018E  FF                db 0xFF
0000018F  FF                db 0xFF
00000190  FF                db 0xFF
00000191  FF                db 0xFF
00000192  FF                db 0xFF
00000193  FF                db 0xFF
00000194  FF                db 0xFF
00000195  FF                db 0xFF
00000196  FF                db 0xFF
00000197  FF                db 0xFF
00000198  FF                db 0xFF
00000199  FF                db 0xFF
0000019A  FF                db 0xFF
0000019B  FF                db 0xFF
0000019C  FF                db 0xFF
0000019D  F9                stc
0000019E  9F                lahf
0000019F  FF                db 0xFF
000001A0  FF                db 0xFF
000001A1  FF                db 0xFF
000001A2  FF                db 0xFF
000001A3  FF                db 0xFF
000001A4  FF                db 0xFF
000001A5  FF                db 0xFF
000001A6  FF                db 0xFF
000001A7  FF                db 0xFF
000001A8  FF                db 0xFF
000001A9  FF                db 0xFF
000001AA  FF                db 0xFF
000001AB  FF                db 0xFF
000001AC  FF                db 0xFF
000001AD  FF                db 0xFF
000001AE  FF                db 0xFF
000001AF  FF                db 0xFF
000001B0  FF                db 0xFF
000001B1  FF                db 0xFF
000001B2  FF                db 0xFF
000001B3  F9                stc
000001B4  9C                pushf
000001B5  0000              add [bx+si],al
000001B7  07                pop es
000001B8  E000              loopne 0x1ba
000001BA  07                pop es
000001BB  FF                db 0xFF
000001BC  FF                db 0xFF
000001BD  F8                clc
000001BE  007FE0            add [bx-0x20],bh
000001C1  0000              add [bx+si],al
000001C3  1E                push ds
000001C4  0000              add [bx+si],al
000001C6  0000              add [bx+si],al
000001C8  0019              add [bx+di],bl
000001CA  9C                pushf
000001CB  0000              add [bx+si],al
000001CD  03E0              add sp,ax
000001CF  0007              add [bx],al
000001D1  FF                db 0xFF
000001D2  FF80000F          inc word [bx+si+0xf00]
000001D6  E000              loopne 0x1d8
000001D8  000E0000          add [0x0],cl
000001DC  0000              add [bx+si],al
000001DE  0019              add [bx+di],bl
000001E0  98                cbw
000001E1  FF                db 0xFF
000001E2  FFF1              push cx
000001E4  E7FF              out 0xff,ax
000001E6  E7FF              out 0xff,ax
000001E8  FE07              inc byte [bx]
000001EA  FF03              inc word [bp+di]
000001EC  E7FF              out 0xff,ax
000001EE  FFC6              inc si
000001F0  7FFF              jg 0x1f1
000001F2  FF                db 0xFF
000001F3  FE                db 0xFE
000001F4  7F99              jg 0x18f
000001F6  99                cwd
000001F7  FF                db 0xFF
000001F8  FF                db 0xFF
000001F9  F8                clc
000001FA  E3FF              jcxz 0x1fb
000001FC  C7                db 0xC7
000001FD  FF                db 0xFF
000001FE  F8                clc
000001FF  7FFF              jg 0x200
00000201  D0E3              shl bl,1
00000203  FF                db 0xFF
00000204  FFE2              jmp dx
00000206  7FFF              jg 0x207
00000208  FF                db 0xFF
00000209  FE                db 0xFE
0000020A  7F99              jg 0x1a5
0000020C  99                cwd
0000020D  FF                db 0xFF
0000020E  FF                db 0xFF
0000020F  FC                cld
00000210  61                popa
00000211  FF8FFFF1          dec word [bx+0xf1ff]
00000215  FFC7              inc di
00000217  F8                clc
00000218  71FF              jno 0x219
0000021A  FFF0              push ax
0000021C  7FFF              jg 0x21d
0000021E  FF                db 0xFF
0000021F  FE                db 0xFE
00000220  7F99              jg 0x1bb
00000222  9C                pushf
00000223  7FE7              jg 0x20c
00000225  FE                db 0xFE
00000226  38FF              cmp bh,bh
00000228  1F                pop ds
00000229  FFC3              inc bx
0000022B  FF03              inc word [bp+di]
0000022D  FE                db 0xFE
0000022E  38FF              cmp bh,bh
00000230  9F                lahf
00000231  F8                clc
00000232  7C0F              jl 0x243
00000234  F03E7F99          ds lock jg 0x1d1
00000238  9C                pushf
00000239  3F                aas
0000023A  C3                ret
0000023B  FF                db 0xFF
0000023C  3CFF              cmp al,0xff
0000023E  3F                aas
0000023F  FFCF              dec di
00000241  FC                cld
00000242  11FF              adc di,di
00000244  1CFF              sbb al,0xff
00000246  0FFC780F          paddb mm7,[bx+si+0xf]
0000024A  F01E              lock push ds
0000024C  7F99              jg 0x1e7
0000024E  9F                lahf
0000024F  3F                aas
00000250  C1FF1C            sar di,0x1c
00000253  FF                db 0xFF
00000254  3F                aas
00000255  FF9FF878          call far [bx+0x78f8]
00000259  FF8CFF07          dec word [si+0x7ff]
0000025D  FC                cld
0000025E  71CF              jno 0x22f
00000260  F38E7F99          rep mov segr7,[bx-0x67]
00000264  9F                lahf
00000265  3F                aas
00000266  C8FF9CFF          enter 0x9cff,0xff
0000026A  3F                aas
0000026B  FF1F              call far [bx]
0000026D  F1                int1
0000026E  FC                cld
0000026F  7FCC              jg 0x23d
00000271  FF23              jmp near [bp+di]
00000273  FE                db 0xFE
00000274  63CF              arpl di,cx
00000276  F3                db 0xF3
00000277  C6                db 0xC6
00000278  7F99              jg 0x213
0000027A  9F                lahf
0000027B  3F                aas
0000027C  CC                int3
0000027D  FF9CFF3F          call far [si+0x3fff]
00000281  FE                db 0xFE
00000282  7FE3              jg 0x267
00000284  FE                db 0xFE
00000285  3F                aas
00000286  C4                db 0xC4
00000287  FF33              push word [bp+di]
00000289  FE47CF            inc byte [bx-0x31]
0000028C  F3E27F            rep loop 0x30e
0000028F  99                cwd
00000290  9F                lahf
00000291  3F                aas
00000292  CC                int3
00000293  7F9C              jg 0x231
00000295  FF                db 0xFF
00000296  3F                aas
00000297  FE                db 0xFE
00000298  7FE7              jg 0x281
0000029A  FF                db 0xFF
0000029B  3F                aas
0000029C  E0FF              loopne 0x29d
0000029E  31FE              xor si,di
000002A0  0F                db 0x0F
000002A1  CF                iret
000002A2  F3F07F99          lock rep jg 0x23f
000002A6  9F                lahf
000002A7  3F                aas
000002A8  CE                into
000002A9  7F9C              jg 0x247
000002AB  FF                db 0xFF
000002AC  3F                aas
000002AD  FC                cld
000002AE  FFC7              inc di
000002B0  FF1F              call far [bx]
000002B2  F0                db 0xF0
000002B3  FF                db 0xFF
000002B4  39FE              cmp si,di
000002B6  1F                pop ds
000002B7  CF                iret
000002B8  F3F8              rep clc
000002BA  7F99              jg 0x255
000002BC  9F                lahf
000002BD  3F                aas
000002BE  CC                int3
000002BF  7F9C              jg 0x25d
000002C1  FF                db 0xFF
000002C2  3F                aas
000002C3  FC                cld
000002C4  FF8FFF9F          dec word [bx+0x9fff]
000002C8  F0FF31            lock push word [bx+di]
000002CB  FE                db 0xFE
000002CC  7FCF              jg 0x29d
000002CE  F3                db 0xF3
000002CF  FE                db 0xFE
000002D0  7F99              jg 0x26b
000002D2  9F                lahf
000002D3  3F                aas
000002D4  CC                int3
000002D5  FF9CFF3F          call far [si+0x3fff]
000002D9  F9                stc
000002DA  FF9FFF8F          call far [bx+0x8fff]
000002DE  F8                clc
000002DF  FF33              push word [bp+di]
000002E1  FE                db 0xFE
000002E2  7FCF              jg 0x2b3
000002E4  F3                db 0xF3
000002E5  FE                db 0xFE
000002E6  7F99              jg 0x281
000002E8  9F                lahf
000002E9  3F                aas
000002EA  CC                int3
000002EB  FF1C              call far [si]
000002ED  FF                db 0xFF
000002EE  3F                aas
000002EF  F9                stc
000002F0  FF                db 0xFF
000002F1  3F                aas
000002F2  FFCF              dec di
000002F4  F8                clc
000002F5  FF33              push word [bp+di]
000002F7  FC                cld
000002F8  7FCF              jg 0x2c9
000002FA  F3                db 0xF3
000002FB  FE                db 0xFE
000002FC  7F99              jg 0x297
000002FE  9F                lahf
000002FF  3F                aas
00000300  C8FF3CFF          enter 0x3cff,0xff
00000304  3F                aas
00000305  F9                stc
00000306  FF                db 0xFF
00000307  3F                aas
00000308  FFC7              inc di
0000030A  F8                clc
0000030B  FF23              jmp near [bp+di]
0000030D  FC                cld
0000030E  FFCF              dec di
00000310  F3                db 0xF3
00000311  FE                db 0xFE
00000312  7F99              jg 0x2ad
00000314  9F                lahf
00000315  3F                aas
00000316  C1FE3C            sar si,0x3c
00000319  FF                db 0xFF
0000031A  3F                aas
0000031B  F3                db 0xF3
0000031C  FF                db 0xFF
0000031D  3F                aas
0000031E  FFE7              jmp di
00000320  FC                cld
00000321  FF07              inc word [bx]
00000323  F8                clc
00000324  FFCF              dec di
00000326  F3                db 0xF3
00000327  FE                db 0xFE
00000328  7F99              jg 0x2c3
0000032A  9F                lahf
0000032B  3F                aas
0000032C  C3                ret
0000032D  FE                db 0xFE
0000032E  7CFF              jl 0x32f
00000330  3F                aas
00000331  F3                db 0xF3
00000332  FF                db 0xFF
00000333  3F                aas
00000334  FFE7              jmp di
00000336  FC                cld
00000337  FF0F              dec word [bx]
00000339  F9                stc
0000033A  FFCF              dec di
0000033C  F3                db 0xF3
0000033D  FE                db 0xFE
0000033E  7F99              jg 0x2d9
00000340  9F                lahf
00000341  3F                aas
00000342  FF                db 0xFF
00000343  F8                clc
00000344  7CFF              jl 0x345
00000346  3F                aas
00000347  F3                db 0xF3
00000348  FE                db 0xFE
00000349  7FFF              jg 0x34a
0000034B  E7FC              out 0xfc,ax
0000034D  FF                db 0xFF
0000034E  FFE1              jmp cx
00000350  FFCF              dec di
00000352  F3                db 0xF3
00000353  FE                db 0xFE
00000354  7F99              jg 0x2ef
00000356  9F                lahf
00000357  3F                aas
00000358  FFE0              jmp ax
0000035A  FC                cld
0000035B  FF                db 0xFF
0000035C  3F                aas
0000035D  F3                db 0xF3
0000035E  FE                db 0xFE
0000035F  7FFF              jg 0x360
00000361  E7FE              out 0xfe,ax
00000363  FF                db 0xFF
00000364  FF83FFCF          inc word [bp+di+0xcfff]
00000368  F3                db 0xF3
00000369  FE                db 0xFE
0000036A  7F99              jg 0x305
0000036C  9F                lahf
0000036D  3F                aas
0000036E  FF                db 0xFF
0000036F  F8                clc
00000370  7CFF              jl 0x371
00000372  3F                aas
00000373  F3                db 0xF3
00000374  FE                db 0xFE
00000375  7FFF              jg 0x376
00000377  E7FE              out 0xfe,ax
00000379  FF                db 0xFF
0000037A  FFE3              jmp bx
0000037C  FFCF              dec di
0000037E  F3                db 0xF3
0000037F  FE                db 0xFE
00000380  7F99              jg 0x31b
00000382  9F                lahf
00000383  3F                aas
00000384  C7                db 0xC7
00000385  FE                db 0xFE
00000386  3CFF              cmp al,0xff
00000388  3F                aas
00000389  F3                db 0xF3
0000038A  FE                db 0xFE
0000038B  7FFF              jg 0x38c
0000038D  E7FE              out 0xfe,ax
0000038F  FF1F              call far [bx]
00000391  F1                int1
00000392  FFCF              dec di
00000394  F3                db 0xF3
00000395  FE                db 0xFE
00000396  7F99              jg 0x331
00000398  9F                lahf
00000399  3F                aas
0000039A  C1FF0C            sar di,0xc
0000039D  FF                db 0xFF
0000039E  3F                aas
0000039F  F3                db 0xF3
000003A0  FE                db 0xFE
000003A1  7FFF              jg 0x3a2
000003A3  E7FE              out 0xfe,ax
000003A5  FF0F              dec word [bx]
000003A7  F8                clc
000003A8  FFCF              dec di
000003AA  F3                db 0xF3
000003AB  FE                db 0xFE
000003AC  7F99              jg 0x347
000003AE  9F                lahf
000003AF  3F                aas
000003B0  C8FF84FF          enter 0x84ff,0xff
000003B4  3F                aas
000003B5  F3                db 0xF3
000003B6  FE                db 0xFE
000003B7  7FFF              jg 0x3b8
000003B9  E7FE              out 0xfe,ax
000003BB  FF0F              dec word [bx]
000003BD  FC                cld
000003BE  FFCF              dec di
000003C0  F3                db 0xF3
000003C1  FE                db 0xFE
000003C2  7F99              jg 0x35d
000003C4  9F                lahf
000003C5  3F                aas
000003C6  CC                int3
000003C7  7FE4              jg 0x3ad
000003C9  FF                db 0xFF
000003CA  3F                aas
000003CB  F3                db 0xF3
000003CC  FF                db 0xFF
000003CD  3F                aas
000003CE  FFE7              jmp di
000003D0  FC                cld
000003D1  FF07              inc word [bx]
000003D3  FC                cld
000003D4  FFCF              dec di
000003D6  F3                db 0xF3
000003D7  FE                db 0xFE
000003D8  7F99              jg 0x373
000003DA  9F                lahf
000003DB  3F                aas
000003DC  CE                into
000003DD  7FE0              jg 0x3bf
000003DF  FF                db 0xFF
000003E0  3F                aas
000003E1  F3                db 0xF3
000003E2  FF                db 0xFF
000003E3  3F                aas
000003E4  FFE7              jmp di
000003E6  FC                cld
000003E7  FF23              jmp near [bp+di]
000003E9  FC                cld
000003EA  FFCF              dec di
000003EC  F3                db 0xF3
000003ED  FE                db 0xFE
000003EE  7F99              jg 0x389
000003F0  9F                lahf
000003F1  3F                aas
000003F2  CE                into
000003F3  3F                aas
000003F4  F0                db 0xF0
000003F5  FF                db 0xFF
000003F6  3F                aas
000003F7  F3                db 0xF3
000003F8  FF                db 0xFF
000003F9  3F                aas
000003FA  FFE7              jmp di
000003FC  FC                cld
000003FD  FF33              push word [bp+di]
000003FF  FC                cld
00000400  7FCF              jg 0x3d1
00000402  F3                db 0xF3
00000403  FE                db 0xFE
00000404  7F99              jg 0x39f
00000406  9F                lahf
00000407  3F                aas
00000408  CF                iret
00000409  3F                aas
0000040A  F0                db 0xF0
0000040B  FF                db 0xFF
0000040C  3F                aas
0000040D  F3                db 0xF3
0000040E  FF                db 0xFF
0000040F  3F                aas
00000410  FFC7              inc di
00000412  FC                cld
00000413  FF33              push word [bp+di]
00000415  FE                db 0xFE
00000416  7FCF              jg 0x3e7
00000418  F3                db 0xF3
00000419  FE                db 0xFE
0000041A  7F99              jg 0x3b5
0000041C  9F                lahf
0000041D  3F                aas
0000041E  CF                iret
0000041F  1F                pop ds
00000420  F0                db 0xF0
00000421  FF                db 0xFF
00000422  3F                aas
00000423  F1                int1
00000424  FF1F              call far [bx]
00000426  FFCF              dec di
00000428  F8                clc
00000429  FF31              push word [bx+di]
0000042B  FE                db 0xFE
0000042C  7FCF              jg 0x3fd
0000042E  F3                db 0xF3
0000042F  FE                db 0xFE
00000430  7F99              jg 0x3cb
00000432  9F                lahf
00000433  3F                aas
00000434  CF                iret
00000435  9F                lahf
00000436  F8                clc
00000437  FF                db 0xFF
00000438  3F                aas
00000439  F9                stc
0000043A  FF8FFFCF          dec word [bx+0xcfff]
0000043E  F8                clc
0000043F  FF                db 0xFF
00000440  39FE              cmp si,di
00000442  7FCF              jg 0x413
00000444  F3                db 0xF3
00000445  FE                db 0xFE
00000446  7F99              jg 0x3e1
00000448  9F                lahf
00000449  3F                aas
0000044A  CF                iret
0000044B  1F                pop ds
0000044C  F8                clc
0000044D  FF                db 0xFF
0000044E  3F                aas
0000044F  F9                stc
00000450  FFCF              dec di
00000452  FF8FF8FF          dec word [bx+0xfff8]
00000456  38FE              cmp dh,bh
00000458  7FCF              jg 0x429
0000045A  F3                db 0xF3
0000045B  FE                db 0xFE
0000045C  7F99              jg 0x3f7
0000045E  9F                lahf
0000045F  3F                aas
00000460  CF                iret
00000461  3F                aas
00000462  F8                clc
00000463  FF                db 0xFF
00000464  3F                aas
00000465  FC                cld
00000466  FFC7              inc di
00000468  FF9FF0FF          call far [bx+0xfff0]
0000046C  3CFE              cmp al,0xfe
0000046E  7FCF              jg 0x43f
00000470  F3FE00            rep inc byte [bx+si]
00000473  199F3FCF          sbb [bx+0xcf3f],bx
00000477  3F                aas
00000478  F8                clc
00000479  FF                db 0xFF
0000047A  3F                aas
0000047B  FC                cld
0000047C  7FE7              jg 0x465
0000047E  FF1F              call far [bx]
00000480  F0                db 0xF0
00000481  FF                db 0xFF
00000482  3CFE              cmp al,0xfe
00000484  7FCF              jg 0x455
00000486  F3FE0C            rep dec byte [si]
00000489  399F3FCE          cmp [bx+0xce3f],bx
0000048D  3F                aas
0000048E  F0                db 0xF0
0000048F  FF                db 0xFF
00000490  3F                aas
00000491  FC                cld
00000492  FFE3              jmp bx
00000494  FE                db 0xFE
00000495  3F                aas
00000496  E0FF              loopne 0x497
00000498  3CFE              cmp al,0xfe
0000049A  7FCF              jg 0x46b
0000049C  F3FC              rep cld
0000049E  3F                aas
0000049F  099F3FCC          or [bx+0xcc3f],bx
000004A3  7FF0              jg 0x495
000004A5  FF                db 0xFF
000004A6  3F                aas
000004A7  F9                stc
000004A8  FFF1              push cx
000004AA  FE                db 0xFE
000004AB  7FC4              jg 0x471
000004AD  FF                db 0xFF
000004AE  3CFE              cmp al,0xfe
000004B0  7FCF              jg 0x481
000004B2  F3F8              rep clc
000004B4  FFC9              dec cx
000004B6  9F                lahf
000004B7  3F                aas
000004B8  C8FFE0FF          enter 0xe0ff,0xff
000004BC  1F                pop ds
000004BD  F1                int1
000004BE  DF                db 0xDF
000004BF  F8                clc
000004C0  7C7F              jl 0x541
000004C2  CC                int3
000004C3  FF                db 0xFF
000004C4  3C7E              cmp al,0x7e
000004C6  7FCF              jg 0x497
000004C8  F3F9              rep stc
000004CA  FFE1              jmp cx
000004CC  9F                lahf
000004CD  3F                aas
000004CE  C1FFE4            sar di,0xe4
000004D1  FF87C3CF          inc word [bx+0xcfc3]
000004D5  FC                cld
000004D6  10FF              adc bh,bh
000004D8  0CFF              or al,0xff
000004DA  3E7E7F            ds jng 0x55c
000004DD  CF                iret
000004DE  F3F9              rep stc
000004E0  FFE1              jmp cx
000004E2  9E                sahf
000004E3  3F                aas
000004E4  C3                ret
000004E5  FFC4              inc sp
000004E7  FFC0              inc ax
000004E9  07                pop es
000004EA  C7                db 0xC7
000004EB  FF01              inc word [bx+di]
000004ED  FE                db 0xFE
000004EE  1CFF              sbb al,0xff
000004F0  3E7E7F            ds jng 0x572
000004F3  CF                iret
000004F4  F3F9              rep stc
000004F6  FFE1              jmp cx
000004F8  9C                pushf
000004F9  7FFF              jg 0x4fa
000004FB  FF88FFF0          dec word [bx+si+0xf0ff]
000004FF  1F                pop ds
00000500  C3                ret
00000501  FFC7              inc di
00000503  FC                cld
00000504  78FF              js 0x505
00000506  1E                push ds
00000507  7E7F              jng 0x588
00000509  8F                db 0x8F
0000050A  F1                int1
0000050B  F9                stc
0000050C  FFE1              jmp cx
0000050E  98                cbw
0000050F  FF                db 0xFF
00000510  FF                db 0xFF
00000511  FF11              call near [bx+di]
00000513  FF                db 0xFF
00000514  FF                db 0xFF
00000515  FFC8              dec ax
00000517  FF                db 0xFF
00000518  FFF0              push ax
0000051A  F1                int1
0000051B  FF8E3E3F          dec word [bp+0x3f3e]
0000051F  1F                pop ds
00000520  F8                clc
00000521  F9                stc
00000522  FFE1              jmp cx
00000524  91                xchg ax,cx
00000525  FF                db 0xFF
00000526  FF                db 0xFF
00000527  FC                cld
00000528  23FF              and di,di
0000052A  FF                db 0xFF
0000052B  FFCC              dec sp
0000052D  3F                aas
0000052E  FFC1              inc cx
00000530  F3FFC7            rep inc di
00000533  3F                aas
00000534  3E3F              ds aas
00000536  FC                cld
00000537  78FF              js 0x538
00000539  C9                leave
0000053A  93                xchg ax,bx
0000053B  FF                db 0xFF
0000053C  FFC0              inc ax
0000053E  67                db 0x67
0000053F  FF                db 0xFF
00000540  FF                db 0xFF
00000541  FFCE              dec si
00000543  07                pop es
00000544  FF07              inc word [bx]
00000546  E7FF              out 0xff,ax
00000548  E71F              out 0x1f,ax
0000054A  1E                push ds
0000054B  7FFE              jg 0x54b
0000054D  7C7F              jl 0x5ce
0000054F  89900000          mov [bx+si+0x0],dx
00000553  00E0              add al,ah
00000555  0000              add [bx+si],al
00000557  000F              add [bx],cl
00000559  80001F            add byte [bx+si],0x1f
0000055C  E000              loopne 0x55e
0000055E  07                pop es
0000055F  9F                lahf
00000560  9E                sahf
00000561  0000              add [bx+si],al
00000563  7E0C              jng 0x571
00000565  19900000          sbb [bx+si+0x0],dx
00000569  1F                pop ds
0000056A  E000              loopne 0x56c
0000056C  0000              add [bx+si],al
0000056E  0F                db 0x0F
0000056F  F0007FE0          lock add [bx-0x20],bh
00000573  0007              add [bx],al
00000575  9F                lahf
00000576  8E00              mov es,[bx+si]
00000578  007E00            add [bp+0x0],bh
0000057B  199FFFFF          sbb [bx+0xffff],bx
0000057F  FF                db 0xFF
00000580  FF                db 0xFF
00000581  FF                db 0xFF
00000582  FF                db 0xFF
00000583  FF                db 0xFF
00000584  FF                db 0xFF
00000585  FF                db 0xFF
00000586  FF                db 0xFF
00000587  FF                db 0xFF
00000588  FF                db 0xFF
00000589  FF                db 0xFF
0000058A  FF8FC7FF          dec word [bx+0xffc7]
0000058E  FF                db 0xFF
0000058F  FFE1              jmp cx
00000591  F9                stc
00000592  9F                lahf
00000593  FF                db 0xFF
00000594  FF                db 0xFF
00000595  FF                db 0xFF
00000596  FF                db 0xFF
00000597  FF                db 0xFF
00000598  FF                db 0xFF
00000599  FF                db 0xFF
0000059A  FF                db 0xFF
0000059B  FF                db 0xFF
0000059C  FF                db 0xFF
0000059D  FF                db 0xFF
0000059E  FF                db 0xFF
0000059F  FF                db 0xFF
000005A0  FFC7              inc di
000005A2  E3FF              jcxz 0x5a3
000005A4  FF                db 0xFF
000005A5  FF                db 0xFF
000005A6  FF                db 0xFF
000005A7  F9                stc
000005A8  9F                lahf
000005A9  FF                db 0xFF
000005AA  FF                db 0xFF
000005AB  FF                db 0xFF
000005AC  FF                db 0xFF
000005AD  FF                db 0xFF
000005AE  FF                db 0xFF
000005AF  FF                db 0xFF
000005B0  FF                db 0xFF
000005B1  FF                db 0xFF
000005B2  FF                db 0xFF
000005B3  FF                db 0xFF
000005B4  FF                db 0xFF
000005B5  FF                db 0xFF
000005B6  FFE3              jmp bx
000005B8  F1                int1
000005B9  FF                db 0xFF
000005BA  FF                db 0xFF
000005BB  FF                db 0xFF
000005BC  FF                db 0xFF
000005BD  F9                stc
000005BE  800000            add byte [bx+si],0x0
000005C1  0000              add [bx+si],al
000005C3  0000              add [bx+si],al
000005C5  0000              add [bx+si],al
000005C7  0000              add [bx+si],al
000005C9  0000              add [bx+si],al
000005CB  0000              add [bx+si],al
000005CD  007800            add [bx+si+0x0],bh
000005D0  0000              add [bx+si],al
000005D2  0001              add [bx+di],al
000005D4  800000            add byte [bx+si],0x0
000005D7  0000              add [bx+si],al
000005D9  0000              add [bx+si],al
000005DB  0000              add [bx+si],al
000005DD  0000              add [bx+si],al
000005DF  0000              add [bx+si],al
000005E1  0000              add [bx+si],al
000005E3  0000              add [bx+si],al
000005E5  0000              add [bx+si],al
000005E7  0000              add [bx+si],al
000005E9  01FF              add di,di
000005EB  FF                db 0xFF
000005EC  FF                db 0xFF
000005ED  FF                db 0xFF
000005EE  FF                db 0xFF
000005EF  FF                db 0xFF
000005F0  FF                db 0xFF
000005F1  FF                db 0xFF
000005F2  FF                db 0xFF
000005F3  FF                db 0xFF
000005F4  FF                db 0xFF
000005F5  FF                db 0xFF
000005F6  FF                db 0xFF
000005F7  FF                db 0xFF
000005F8  FF                db 0xFF
000005F9  FF01              inc word [bx+di]
000005FB  FF                db 0xFF
000005FC  FF                db 0xFF
000005FD  FF                db 0xFF
000005FE  FF                db 0xFF
000005FF  FF426C            inc word [bp+si+0x6c]
00000602  6F                outsw
00000603  7274              jc 0x679
00000605  2120              and [bx+si],sp
00000607  56                push si
00000608  657273            gs jc 0x67e
0000060B  696F6E2032        imul bp,[bx+0x6e],word 0x3220
00000610  0D0A0A            or ax,0xa0a
00000613  0A5479            or dl,[si+0x79]
00000616  7069              jo 0x681
00000618  63616C            arpl [bx+di+0x6c],sp
0000061B  2E20596F          and [cs:bx+di+0x6f],bl
0000061F  7520              jnz 0x641
00000621  7765              ja 0x688
00000623  7265              jc 0x68a
00000625  206A75            and [bp+si+0x75],ch
00000628  7374              jnc 0x69e
0000062A  206772            and [bx+0x72],ah
0000062D  61                popa
0000062E  626269            bound sp,[bp+si+0x69]
00000631  6E                outsb
00000632  67206120          and [ecx+0x20],ah
00000636  66657720          gs o32 ja 0x65a
0000063A  7769              ja 0x6a5
0000063C  6E                outsb
0000063D  6B732062          imul si,[bp+di+0x20],byte +0x62
00000641  6568696E          gs push word 0x6e69
00000645  64207468          and [fs:si+0x68],dh
00000649  6520636F          and [gs:bp+di+0x6f],ah
0000064D  6E                outsb
0000064E  736F              jnc 0x6bf
00000650  6C                insb
00000651  65206174          and [gs:bx+di+0x74],ah
00000655  204E41            and [bp+0x41],cl
00000658  53                push bx
00000659  41                inc cx
0000065A  207768            and [bx+0x68],dh
0000065D  696C650D0A        imul bp,[si+0x65],word 0xa0d
00000662  7468              jz 0x6cc
00000664  65207368          and [gs:bp+di+0x68],dh
00000668  7574              jnz 0x6de
0000066A  746C              jz 0x6d8
0000066C  65207761          and [gs:bx+0x61],dh
00000670  7320              jnc 0x692
00000672  646F              fs outsw
00000674  696E672073        imul bp,[bp+0x67],word 0x7320
00000679  6F                outsw
0000067A  6D                insw
0000067B  657468            gs jz 0x6e6
0000067E  696E672062        imul bp,[bp+0x67],word 0x6220
00000683  6F                outsw
00000684  7269              jc 0x6ef
00000686  6E                outsb
00000687  67207570          and [ebp+0x70],dh
0000068B  207468            and [si+0x68],dh
0000068E  657265            gs jc 0x6f6
00000691  2C20              sub al,0x20
00000693  61                popa
00000694  6E                outsb
00000695  6420536C          and [fs:bp+di+0x6c],dl
00000699  7564              jnz 0x6ff
0000069B  6765206861        and [gs:eax+0x61],ch
000006A0  7320              jnc 0x6c2
000006A2  646F              fs outsw
000006A4  6E                outsb
000006A5  65206974          and [gs:bx+di+0x74],ch
000006A9  206167            and [bx+di+0x67],ah
000006AC  61                popa
000006AD  696E2E0D0A        imul bp,[bp+0x2e],word 0xa0d
000006B2  53                push bx
000006B3  6C                insb
000006B4  7564              jnz 0x71a
000006B6  676520616C        and [gs:ecx+0x6c],ah
000006BB  7761              ja 0x71e
000006BD  7973              jns 0x732
000006BF  207761            and [bx+0x61],dh
000006C2  6E                outsb
000006C3  7465              jz 0x72a
000006C5  6420746F          and [fs:si+0x6f],dh
000006C9  207069            and [bx+si+0x69],dh
000006CC  6C                insb
000006CD  6F                outsw
000006CE  7420              jz 0x6f0
000006D0  61                popa
000006D1  207368            and [bp+di+0x68],dh
000006D4  7574              jnz 0x74a
000006D6  746C              jz 0x744
000006D8  652C20            gs sub al,0x20
000006DB  61                popa
000006DC  6E                outsb
000006DD  64207468          and [fs:si+0x68],dh
000006E1  65207261          and [gs:bp+si+0x61],dh
000006E5  64696174696F      imul sp,[fs:bx+di+0x74],word 0x6f69
000006EB  6E                outsb
000006EC  206672            and [bp+0x72],ah
000006EF  6F                outsw
000006F0  6D                insw
000006F1  206869            and [bx+si+0x69],ch
000006F4  7320              jnc 0x716
000006F6  6D                insw
000006F7  6F                outsw
000006F8  6E                outsb
000006F9  69746F7220        imul si,[si+0x6f],word 0x2072
000006FE  686173            push word 0x7361
00000701  0D0A52            or ax,0x520a
00000704  45                inc bp
00000705  41                inc cx
00000706  4C                dec sp
00000707  4C                dec sp
00000708  59                pop cx
00000709  20646F            and [si+0x6f],ah
0000070C  6E                outsb
0000070D  65206974          and [gs:bx+di+0x74],ch
00000711  207468            and [si+0x68],dh
00000714  6973207469        imul si,[bp+di+0x20],word 0x6974
00000719  6D                insw
0000071A  652E0D0A0A        cs or ax,0xa0a
0000071F  54                push sp
00000720  686520            push word 0x2065
00000723  6C                insb
00000724  61                popa
00000725  756E              jnz 0x795
00000727  636820            arpl [bx+si+0x20],bp
0000072A  7061              jo 0x78d
0000072C  64206861          and [fs:bx+si+0x61],ch
00000730  7320              jnc 0x752
00000732  6A75              push byte +0x75
00000734  7374              jnc 0x7aa
00000736  206265            and [bp+si+0x65],ah
00000739  656E              gs outsb
0000073B  206F69            and [bx+0x69],ch
0000073E  6C                insb
0000073F  6564207072        and [fs:bx+si+0x72],dh
00000744  696F722074        imul bp,[bx+0x72],word 0x7420
00000749  6F                outsw
0000074A  207363            and [bp+di+0x63],dh
0000074D  7275              jc 0x7c4
0000074F  62646F            bound sp,[si+0x6f]
00000752  776E              ja 0x7c2
00000754  2C20              sub al,0x20
00000756  61                popa
00000757  6E                outsb
00000758  6420536C          and [fs:bp+di+0x6c],dl
0000075C  7564              jnz 0x7c2
0000075E  6765206D61        and [gs:ebp+0x61],ch
00000763  6E                outsb
00000764  61                popa
00000765  67656420746F0D    and [fs:edi+ebp*2+0xd],dh
0000076C  0A6372            or ah,[bp+di+0x72]
0000076F  61                popa
00000770  776C              ja 0x7de
00000772  20696E            and [bx+di+0x6e],ch
00000775  746F              jz 0x7e6
00000777  20616E            and [bx+di+0x6e],ah
0000077A  20756E            and [di+0x6e],dh
0000077D  7072              jo 0x7f1
0000077F  657061            gs jo 0x7e3
00000782  7265              jc 0x7e9
00000784  64207368          and [fs:bp+di+0x68],dh
00000788  7574              jnz 0x7fe
0000078A  746C              jz 0x7f8
0000078C  65207769          and [gs:bx+0x69],dh
00000790  7468              jz 0x7fa
00000792  206661            and [bp+0x61],ah
00000795  756C              jnz 0x803
00000797  7479              jz 0x812
00000799  206C61            and [si+0x61],ch
0000079C  756E              jnz 0x80c
0000079E  636820            arpl [bx+si+0x20],bp
000007A1  6D                insw
000007A2  65636861          arpl [gs:bx+si+0x61],bp
000007A6  6E                outsb
000007A7  6963732E20        imul sp,[bp+di+0x73],word 0x202e
000007AC  53                push bx
000007AD  6F                outsw
000007AE  2C20              sub al,0x20
000007B0  53                push bx
000007B1  6C                insb
000007B2  7564              jnz 0x818
000007B4  6765206973        and [gs:ecx+0x73],ch
000007B9  0D0A73            or ax,0x730a
000007BC  6C                insb
000007BD  697070696E        imul si,[bx+si+0x70],word 0x6e69
000007C2  6720756E          and [ebp+0x6e],dh
000007C6  636F6E            arpl [bx+0x6e],bp
000007C9  7472              jz 0x83d
000007CB  6F                outsw
000007CC  6C                insb
000007CD  6C                insb
000007CE  61                popa
000007CF  626C79            bound bp,[si+0x79]
000007D2  206F75            and [bx+0x75],ch
000007D5  7420              jz 0x7f7
000007D7  7468              jz 0x841
000007D9  657265            gs jc 0x841
000007DC  2E20576F          and [cs:bx+0x6f],dl
000007E0  7273              jc 0x855
000007E2  652C20            gs sub al,0x20
000007E5  686520            push word 0x2065
000007E8  7368              jnc 0x852
000007EA  6F                outsw
000007EB  7420              jz 0x80d
000007ED  646F              fs outsw
000007EF  776E              ja 0x85f
000007F1  206120            and [bx+di+0x20],ah
000007F4  636F6E            arpl [bx+0x6e],bp
000007F7  636572            arpl [di+0x72],sp
000007FA  6E                outsb
000007FB  6564207370        and [fs:bp+di+0x70],dh
00000800  61                popa
00000801  636563            arpl [di+0x63],sp
00000804  7261              jc 0x867
00000806  66740D            o32 jz 0x816
00000809  0A696E            or ch,[bx+di+0x6e]
0000080C  206869            and [bx+si+0x69],ch
0000080F  7320              jnc 0x831
00000811  7061              jo 0x874
00000813  6E                outsb
00000814  69632C2061        imul sp,[bp+di+0x2c],word 0x6120
00000819  6E                outsb
0000081A  64206E6F          and [fs:bp+0x6f],ch
0000081E  7720              ja 0x840
00000820  6974732066        imul si,[si+0x73],word 0x6620
00000825  7269              jc 0x890
00000827  656E              gs outsb
00000829  647320            fs jnc 0x84c
0000082C  61                popa
0000082D  7265              jc 0x894
0000082F  20736F            and [bp+di+0x6f],dh
00000832  6D                insw
00000833  657768            gs ja 0x89e
00000836  61                popa
00000837  7420              jz 0x859
00000839  6D                insw
0000083A  6F                outsw
0000083B  7265              jc 0x8a2
0000083D  20636F            and [bp+di+0x6f],ah
00000840  6E                outsb
00000841  636572            arpl [di+0x72],sp
00000844  6E                outsb
00000845  65642E0D0A0A      cs or ax,0xa0a
0000084B  54                push sp
0000084C  6F                outsw
0000084D  206865            and [bx+si+0x65],ch
00000850  6C                insb
00000851  7020              jo 0x873
00000853  53                push bx
00000854  6C                insb
00000855  7564              jnz 0x8bb
00000857  6765206F75        and [gs:edi+0x75],ch
0000085C  7420              jz 0x87e
0000085E  66726F            o32 jc 0x8d0
00000861  6D                insw
00000862  20796F            and [bx+di+0x6f],bh
00000865  7572              jnz 0x8d9
00000867  20636F            and [bp+di+0x6f],ah
0000086A  6E                outsb
0000086B  736F              jnc 0x8dc
0000086D  6C                insb
0000086E  652C20            gs sub al,0x20
00000871  7573              jnz 0x8e6
00000873  65207468          and [gs:si+0x68],dh
00000877  6520605A          and [gs:bx+si+0x5a],ah
0000087B  60                pusha
0000087C  206B65            and [bp+di+0x65],ch
0000087F  7920              jns 0x8a1
00000881  286C65            sub [si+0x65],ch
00000884  667429            o32 jz 0x8b0
00000887  20616E            and [bx+di+0x6e],ah
0000088A  64206058          and [fs:bx+si+0x58],ah
0000088E  60                pusha
0000088F  206B65            and [bp+di+0x65],ch
00000892  790D              jns 0x8a1
00000894  0A28              or ch,[bx+si]
00000896  7269              jc 0x901
00000898  67687429          a32 push word 0x2974
0000089C  20746F            and [si+0x6f],dh
0000089F  207061            and [bx+si+0x61],dh
000008A2  7274              jc 0x918
000008A4  69616C6C79        imul sp,[bx+di+0x6c],word 0x796c
000008A9  20636F            and [bp+di+0x6f],ah
000008AC  6E                outsb
000008AD  7472              jz 0x921
000008AF  6F                outsw
000008B0  6C                insb
000008B1  207468            and [si+0x68],dh
000008B4  65207368          and [gs:bp+di+0x68],dh
000008B8  7574              jnz 0x92e
000008BA  746C              jz 0x928
000008BC  652E205468        and [cs:si+0x68],dl
000008C1  65206361          and [gs:bp+di+0x61],ah
000008C5  7573              jnz 0x93a
000008C7  65206973          and [gs:bx+di+0x73],ch
000008CB  20686F            and [bx+si+0x6f],ch
000008CE  7065              jo 0x935
000008D0  6C                insb
000008D1  657373            gs jnc 0x947
000008D4  2C20              sub al,0x20
000008D6  7468              jz 0x940
000008D8  6F                outsw
000008D9  7567              jnz 0x942
000008DB  682C20            push word 0x202c
000008DE  736F              jnc 0x94f
000008E0  20796F            and [bx+di+0x6f],bh
000008E3  750D              jnz 0x8f2
000008E5  0A6D61            or ch,[di+0x61]
000008E8  7920              jns 0x90a
000008EA  61                popa
000008EB  7320              jnc 0x90d
000008ED  7765              ja 0x954
000008EF  6C                insb
000008F0  6C                insb
000008F1  20626C            and [bp+si+0x6c],ah
000008F4  6F                outsw
000008F5  7720              ja 0x917
000008F7  61                popa
000008F8  7761              ja 0x95b
000008FA  7920              jns 0x91c
000008FC  7468              jz 0x966
000008FE  6520616C          and [gs:bx+di+0x6c],ah
00000902  69656E7320        imul sp,[di+0x6e],word 0x2073
00000907  7769              ja 0x972
00000909  7468              jz 0x973
0000090B  207468            and [si+0x68],dh
0000090E  65207370          and [gs:bp+di+0x70],dh
00000912  61                popa
00000913  636562            arpl [di+0x62],sp
00000916  61                popa
00000917  722E              jc 0x947
00000919  205468            and [si+0x68],dl
0000091C  657265            gs jc 0x984
0000091F  206172            and [bx+di+0x72],ah
00000922  652032            and [gs:bp+si],dh
00000925  206C65            and [si+0x65],ch
00000928  7665              jna 0x98f
0000092A  6C                insb
0000092B  732C              jnc 0x959
0000092D  207769            and [bx+0x69],dh
00000930  7468              jz 0x99a
00000932  2032              and [bp+si],dh
00000934  0D0A61            or ax,0x610a
00000937  6C                insb
00000938  69656E7320        imul sp,[di+0x6e],word 0x2073
0000093D  7065              jo 0x9a4
0000093F  7220              jc 0x961
00000941  6C                insb
00000942  657665            gs jna 0x9aa
00000945  6C                insb
00000946  2E205761          and [cs:bx+0x61],dl
0000094A  726E              jc 0x9ba
0000094C  696E673A20        imul bp,[bp+0x67],word 0x203a
00000951  7468              jz 0x9bb
00000953  6520616C          and [gs:bx+di+0x6c],ah
00000957  69656E7320        imul sp,[di+0x6e],word 0x2073
0000095C  61                popa
0000095D  637469            arpl [si+0x69],si
00000960  7661              jna 0x9c3
00000962  7465              jz 0x9c9
00000964  206C61            and [si+0x61],ch
00000967  6E                outsb
00000968  646D              fs insw
0000096A  696E657320        imul bp,[bp+0x65],word 0x2073
0000096F  696E206C65        imul bp,[bp+0x20],word 0x656c
00000974  7665              jna 0x9db
00000976  6C                insb
00000977  2032              and [bp+si],dh
00000979  2E0D0A0A          cs or ax,0xa0a
0000097D  59                pop cx
0000097E  6F                outsw
0000097F  7520              jnz 0x9a1
00000981  686176            push word 0x7661
00000984  65206F6E          and [gs:bx+0x6e],ch
00000988  6C                insb
00000989  7920              jns 0x9ab
0000098B  7468              jz 0x9f5
0000098D  7265              jc 0x9f4
0000098F  65207368          and [gs:bp+di+0x68],dh
00000993  7574              jnz 0xa09
00000995  746C              jz 0xa03
00000997  65733A            gs jnc 0x9d4
0000099A  204E41            and [bp+0x41],cl
0000099D  53                push bx
0000099E  41                inc cx
0000099F  206275            and [bp+si+0x75],ah
000009A2  6467657420        gs a32 jz 0x9c7
000009A7  636F6E            arpl [bx+0x6e],bp
000009AA  7374              jnc 0xa20
000009AC  7261              jc 0xa0f
000009AE  696E74732C        imul bp,[bp+0x74],word 0x2c73
000009B3  207960            and [bx+di+0x60],bh
000009B6  6B6E6F77          imul bp,[bp+0x6f],byte +0x77
000009BA  2E205573          and [cs:di+0x73],dl
000009BE  65207468          and [gs:si+0x68],dh
000009C2  6520604C          and [gs:bx+si+0x4c],ah
000009C6  60                pusha
000009C7  0D0A6B            or ax,0x6b0a
000009CA  657920            gs jns 0x9ed
000009CD  746F              jz 0xa3e
000009CF  207072            and [bx+si+0x72],dh
000009D2  6F                outsw
000009D3  7465              jz 0xa3a
000009D5  637420            arpl [si+0x20],si
000009D8  4E                dec si
000009D9  41                inc cx
000009DA  53                push bx
000009DB  41                inc cx
000009DC  60                pusha
000009DD  7320              jnc 0x9ff
000009DF  696E766573        imul bp,[bp+0x76],word 0x7365
000009E4  746D              jz 0xa53
000009E6  656E              gs outsb
000009E8  7420              jz 0xa0a
000009EA  627920            bound di,[bx+di+0x20]
000009ED  64697361726D      imul si,[fs:bp+di+0x61],word 0x6d72
000009F3  696E67206C        imul bp,[bp+0x67],word 0x6c20
000009F8  657665            gs jna 0xa60
000009FB  6C                insb
000009FC  2032              and [bp+si],dh
000009FE  60                pusha
000009FF  7320              jnc 0xa21
00000A01  6C                insb
00000A02  61                popa
00000A03  6E                outsb
00000A04  646D              fs insw
00000A06  696E657320        imul bp,[bp+0x65],word 0x2073
00000A0B  626566            bound sp,[di+0x66]
00000A0E  6F                outsw
00000A0F  7265              jc 0xa76
00000A11  202E2E2E          and [0x2e2e],ch
00000A15  0D0A62            or ax,0x620a
00000A18  6C                insb
00000A19  6F                outsw
00000A1A  7274              jc 0xa90
00000A1C  210D              and [di],cx
00000A1E  0A0A              or cl,[bp+si]
00000A20  57                push di
00000A21  68696C            push word 0x6c69
00000A24  6520706C          and [gs:bx+si+0x6c],dh
00000A28  61                popa
00000A29  7969              jns 0xa94
00000A2B  6E                outsb
00000A2C  673A20            cmp ah,[eax]
00000A2F  60                pusha
00000A30  51                push cx
00000A31  60                pusha
00000A32  207175            and [bx+di+0x75],dh
00000A35  6974732C20        imul si,[si+0x73],word 0x202c
00000A3A  61                popa
00000A3B  6E                outsb
00000A3C  64206045          and [fs:bx+si+0x45],ah
00000A40  7363              jnc 0xaa5
00000A42  60                pusha
00000A43  207061            and [bx+si+0x61],dh
00000A46  7573              jnz 0xabb
00000A48  65732F            gs jnc 0xa7a
00000A4B  756E              jnz 0xabb
00000A4D  7061              jo 0xab0
00000A4F  7573              jnz 0xac4
00000A51  65732E            gs jnc 0xa82
00000A54  0D0A0A            or ax,0xa0a
00000A57  5B                pop bx
00000A58  48                dec ax
00000A59  697420616E        imul si,[si+0x20],word 0x6e61
00000A5E  7920              jns 0xa80
00000A60  6B657920          imul sp,[di+0x79],byte +0x20
00000A64  2E2E2E5D          cs pop bp
00000A68  2442              and al,0x42
00000A6A  6C                insb
00000A6B  6F                outsw
00000A6C  7274              jc 0xae2
00000A6E  49                dec cx
00000A6F  49                dec cx
00000A70  206973            and [bx+di+0x73],ch
00000A73  206120            and [bx+di+0x20],ah
00000A76  7469              jz 0xae1
00000A78  6E                outsb
00000A79  792C              jns 0xaa7
00000A7B  206D69            and [di+0x69],ch
00000A7E  6C                insb
00000A7F  646C              fs insb
00000A81  7920              jns 0xaa3
00000A83  61                popa
00000A84  64646963746976    imul sp,[fs:bp+di+0x74],word 0x7669
00000A8B  65206761          and [gs:bx+0x61],ah
00000A8F  6D                insw
00000A90  6520616E          and [gs:bx+di+0x6e],ah
00000A94  64206973          and [fs:bx+di+0x73],ch
00000A98  206865            and [bx+si+0x65],ch
00000A9B  7265              jc 0xb02
00000A9D  627920            bound di,[bx+di+0x20]
00000AA0  706C              jo 0xb0e
00000AA2  61                popa
00000AA3  636564            arpl [di+0x64],sp
00000AA6  20696E            and [bx+di+0x6e],ch
00000AA9  746F              jz 0xb1a
00000AAB  0D0A74            or ax,0x740a
00000AAE  686520            push word 0x2065
00000AB1  7075              jo 0xb28
00000AB3  626C69            bound bp,[si+0x69]
00000AB6  6320              arpl [bx+si],sp
00000AB8  646F              fs outsw
00000ABA  6D                insw
00000ABB  61                popa
00000ABC  696E2E2049        imul bp,[bp+0x2e],word 0x4920
00000AC1  7420              jz 0xae3
00000AC3  7761              ja 0xb26
00000AC5  7320              jnc 0xae7
00000AC7  7772              ja 0xb3b
00000AC9  697474656E        imul si,[si+0x74],word 0x6e65
00000ACE  20696E            and [bx+di+0x6e],ch
00000AD1  2038              and [bx+si],bh
00000AD3  3038              xor [bx+si],bh
00000AD5  3820              cmp [bx+si],ah
00000AD7  61                popa
00000AD8  7373              jnc 0xb4d
00000ADA  656D              gs insw
00000ADC  626C65            bound bp,[si+0x65]
00000ADF  722C              jc 0xb0d
00000AE1  206173            and [bx+di+0x73],ah
00000AE4  207761            and [bx+0x61],dh
00000AE7  7320              jnc 0xb09
00000AE9  42                inc dx
00000AEA  6C                insb
00000AEB  6F                outsw
00000AEC  7274              jc 0xb62
00000AEE  2120              and [bx+si],sp
00000AF0  56                push si
00000AF1  657273            gs jc 0xb67
00000AF4  696F6E2031        imul bp,[bx+0x6e],word 0x3120
00000AF9  2E0D0A49          cs or ax,0x490a
00000AFD  6620796F          o32 and [bx+di+0x6f],bh
00000B01  7520              jnz 0xb23
00000B03  6C                insb
00000B04  696B652069        imul bp,[bp+di+0x65],word 0x6920
00000B09  742C              jz 0xb37
00000B0B  20616E            and [bx+di+0x6e],ah
00000B0E  6420776F          and [fs:bx+0x6f],dh
00000B12  756C              jnz 0xb80
00000B14  64206C69          and [fs:si+0x69],ch
00000B18  6B652074          imul sp,[di+0x20],byte +0x74
00000B1C  6F                outsw
00000B1D  206B65            and [bp+di+0x65],ch
00000B20  657020            gs jo 0xb43
00000B23  48                dec ax
00000B24  656E              gs outsb
00000B26  6E                outsb
00000B27  53                push bx
00000B28  6F                outsw
00000B29  667420            o32 jz 0xb4c
00000B2C  676F              a32 outsw
00000B2E  696E672028        imul bp,[bp+0x67],word 0x2820
00000B33  7769              ja 0xb9e
00000B35  7468              jz 0xb9f
00000B37  207468            and [si+0x68],dh
00000B3A  65206164          and [gs:bx+di+0x64],ah
00000B3E  64656420626F      and [fs:bp+si+0x6f],ah
00000B44  6E                outsb
00000B45  7573              jnz 0xbba
00000B47  206F66            and [bx+0x66],ch
00000B4A  0D0A66            or ax,0x660a
00000B4D  656564696E67206D  imul bp,[fs:bp+0x67],word 0x6d20
00000B55  65292C            sub [gs:si],bp
00000B58  20706C            and [bx+si+0x6c],dh
00000B5B  6561              gs popa
00000B5D  7365              jnc 0xbc4
00000B5F  207365            and [bp+di+0x65],dh
00000B62  6E                outsb
00000B63  64206669          and [fs:bp+0x69],ah
00000B67  7665              jna 0xbce
00000B69  20646F            and [si+0x6f],ah
00000B6C  6C                insb
00000B6D  6C                insb
00000B6E  61                popa
00000B6F  7273              jc 0xbe4
00000B71  20746F            and [si+0x6f],dh
00000B74  3A0D              cmp cl,[di]
00000B76  0A0A              or cl,[bp+si]
00000B78  4A                dec dx
00000B79  6F                outsw
00000B7A  686E20            push word 0x206e
00000B7D  52                push dx
00000B7E  7564              jnz 0xbe4
00000B80  7A69              jpe 0xbeb
00000B82  6E                outsb
00000B83  736B              jnc 0xbf0
00000B85  690D0A63          imul cx,[di],word 0x630a
00000B89  2F                das
00000B8A  6F                outsw
00000B8B  204865            and [bx+si+0x65],cl
00000B8E  6E                outsb
00000B8F  6E                outsb
00000B90  53                push bx
00000B91  6F                outsw
00000B92  66740D            o32 jz 0xba2
00000B95  0A23              or ah,[bp+di]
00000B97  3230              xor dh,[bx+si]
00000B99  3820              cmp [bx+si],ah
00000B9B  2D2032            sub ax,0x3220
00000B9E  353235            xor ax,0x3532
00000BA1  204261            and [bp+si+0x61],al
00000BA4  7468              jz 0xc0e
00000BA6  7572              jnz 0xc1a
00000BA8  7374              jnc 0xc1e
00000BAA  205374            and [bp+di+0x74],dl
00000BAD  7265              jc 0xc14
00000BAF  65742C            gs jz 0xbde
00000BB2  0D0A54            or ax,0x540a
00000BB5  6F                outsw
00000BB6  726F              jc 0xc27
00000BB8  6E                outsb
00000BB9  746F              jz 0xc2a
00000BBB  2C20              sub al,0x20
00000BBD  4F                dec di
00000BBE  6E                outsb
00000BBF  7461              jz 0xc22
00000BC1  7269              jc 0xc2c
00000BC3  6F                outsw
00000BC4  204D36            and [di+0x36],cl
00000BC7  42                inc dx
00000BC8  2032              and [bp+si],dh
00000BCA  59                pop cx
00000BCB  390D              cmp [di],cx
00000BCD  0A4341            or al,[bp+di+0x41]
00000BD0  4E                dec si
00000BD1  41                inc cx
00000BD2  44                inc sp
00000BD3  41                inc cx
00000BD4  0D0A0A            or ax,0xa0a
00000BD7  42                inc dx
00000BD8  6C                insb
00000BD9  6F                outsw
00000BDA  7274              jc 0xc50
00000BDC  49                dec cx
00000BDD  49                dec cx
00000BDE  60                pusha
00000BDF  7320              jnc 0xc01
00000BE1  53                push bx
00000BE2  4F                dec di
00000BE3  55                push bp
00000BE4  52                push dx
00000BE5  43                inc bx
00000BE6  45                inc bp
00000BE7  20434F            and [bp+di+0x4f],al
00000BEA  44                inc sp
00000BEB  45                inc bp
00000BEC  2C20              sub al,0x20
00000BEE  666F              outsd
00000BF0  7220              jc 0xc12
00000BF2  61                popa
00000BF3  6E                outsb
00000BF4  796F              jns 0xc65
00000BF6  6E                outsb
00000BF7  6520696E          and [gs:bx+di+0x6e],ch
00000BFB  7465              jz 0xc62
00000BFD  7265              jc 0xc64
00000BFF  7374              jnc 0xc75
00000C01  656420696E        and [fs:bx+di+0x6e],ch
00000C06  206D69            and [di+0x69],ch
00000C09  6C                insb
00000C0A  6420616E          and [fs:bx+di+0x6e],ah
00000C0E  696D617469        imul bp,[di+0x61],word 0x6974
00000C13  6F                outsw
00000C14  6E                outsb
00000C15  207468            and [si+0x68],dh
00000C18  726F              jc 0xc89
00000C1A  7567              jnz 0xc83
00000C1C  68206D            push word 0x6d20
00000C1F  61                popa
00000C20  636869            arpl [bx+si+0x69],bp
00000C23  6E                outsb
00000C24  650D0A6C          gs or ax,0x6c0a
00000C28  61                popa
00000C29  6E                outsb
00000C2A  677561            a32 jnz 0xc8e
00000C2D  67652C20          gs a32 sub al,0x20
00000C31  6973206176        imul si,[bp+di+0x20],word 0x7661
00000C36  61                popa
00000C37  696C61626C        imul bp,[si+0x61],word 0x6c62
00000C3C  65206F6E          and [gs:bx+0x6e],ch
00000C40  2D6469            sub ax,0x6964
00000C43  736B              jnc 0xcb0
00000C45  20666F            and [bp+0x6f],ah
00000C48  7220              jc 0xc6a
00000C4A  61                popa
00000C4B  6E                outsb
00000C4C  206164            and [bx+di+0x64],ah
00000C4F  646974696F6E      imul si,[fs:si+0x69],word 0x6e6f
00000C55  61                popa
00000C56  6C                insb
00000C57  206669            and [bp+0x69],ah
00000C5A  667465            o32 jz 0xcc2
00000C5D  656E              gs outsb
00000C5F  20646F            and [si+0x6f],ah
00000C62  6C                insb
00000C63  6C                insb
00000C64  61                popa
00000C65  7273              jc 0xcda
00000C67  2E0D0A0A          cs or ax,0xa0a
00000C6B  59                pop cx
00000C6C  6F                outsw
00000C6D  7572              jnz 0xce1
00000C6F  206578            and [di+0x78],ah
00000C72  7472              jz 0xce6
00000C74  61                popa
00000C75  2031              and [bx+di],dh
00000C77  352063            xor ax,0x6320
00000C7A  6C                insb
00000C7B  61                popa
00000C7C  6D                insw
00000C7D  7320              jnc 0xc9f
00000C7F  7769              ja 0xcea
00000C81  6C                insb
00000C82  6C                insb
00000C83  206765            and [bx+0x65],ah
00000C86  7420              jz 0xca8
00000C88  796F              jns 0xcf9
00000C8A  7520              jnz 0xcac
00000C8C  61                popa
00000C8D  206469            and [si+0x69],ah
00000C90  736B              jnc 0xcfd
00000C92  207769            and [bx+0x69],dh
00000C95  7468              jz 0xcff
00000C97  20424C            and [bp+si+0x4c],al
00000C9A  4F                dec di
00000C9B  52                push dx
00000C9C  54                push sp
00000C9D  49                dec cx
00000C9E  49                dec cx
00000C9F  2E41              cs inc cx
00000CA1  53                push bx
00000CA2  4D                dec bp
00000CA3  2C20              sub al,0x20
00000CA5  42                inc dx
00000CA6  4C                dec sp
00000CA7  4F                dec di
00000CA8  52                push dx
00000CA9  54                push sp
00000CAA  49                dec cx
00000CAB  49                dec cx
00000CAC  2E43              cs inc bx
00000CAE  4F                dec di
00000CAF  4D                dec bp
00000CB0  2C20              sub al,0x20
00000CB2  61                popa
00000CB3  6E                outsb
00000CB4  64207468          and [fs:si+0x68],dh
00000CB8  650D0A75          gs or ax,0x750a
00000CBC  7064              jo 0xd22
00000CBE  61                popa
00000CBF  7465              jz 0xd26
00000CC1  64206F72          and [fs:bx+0x72],ch
00000CC5  6967696E61        imul sp,[bx+0x69],word 0x616e
00000CCA  6C                insb
00000CCB  20424C            and [bp+si+0x4c],al
00000CCE  4F                dec di
00000CCF  52                push dx
00000CD0  54                push sp
00000CD1  212E4153          and [0x5341],bp
00000CD5  4D                dec bp
00000CD6  20616E            and [bx+di+0x6e],ah
00000CD9  6420424C          and [fs:bp+si+0x4c],al
00000CDD  4F                dec di
00000CDE  52                push dx
00000CDF  54                push sp
00000CE0  212E434F          and [0x4f43],bp
00000CE4  4D                dec bp
00000CE5  2C20              sub al,0x20
00000CE7  666561            gs popad
00000CEA  7475              jz 0xd61
00000CEC  7269              jc 0xd57
00000CEE  6E                outsb
00000CEF  6720524F          and [edx+0x4f],dl
00000CF3  4D                dec bp
00000CF4  206368            and [bp+di+0x68],ah
00000CF7  61                popa
00000CF8  7261              jc 0xd5b
00000CFA  637465            arpl [si+0x65],si
00000CFD  7220              jc 0xd1f
00000CFF  61                popa
00000D00  6E                outsb
00000D01  696D617469        imul bp,[di+0x61],word 0x6974
00000D06  6F                outsw
00000D07  6E                outsb
00000D08  0D0A69            or ax,0x690a
00000D0B  6E                outsb
00000D0C  7374              jnc 0xd82
00000D0E  6561              gs popa
00000D10  64206F66          and [fs:bx+0x66],ch
00000D14  20426C            and [bp+si+0x6c],al
00000D17  6F                outsw
00000D18  7274              jc 0xd8e
00000D1A  49                dec cx
00000D1B  49                dec cx
00000D1C  60                pusha
00000D1D  7320              jnc 0xd3f
00000D1F  363430            ss xor al,0x30
00000D22  7832              js 0xd56
00000D24  3030              xor [bx+si],dh
00000D26  206772            and [bx+0x72],ah
00000D29  61                popa
00000D2A  7068              jo 0xd94
00000D2C  6963732061        imul sp,[bp+di+0x73],word 0x6120
00000D31  6E                outsb
00000D32  696D617469        imul bp,[di+0x61],word 0x6974
00000D37  6F                outsw
00000D38  6E                outsb
00000D39  2E205468          and [cs:si+0x68],dl
00000D3D  65206F72          and [gs:bx+0x72],ch
00000D41  6967696E61        imul sp,[bx+0x69],word 0x616e
00000D46  6C                insb
00000D47  20426C            and [bp+si+0x6c],al
00000D4A  6F                outsw
00000D4B  7274              jc 0xdc1
00000D4D  2120              and [bx+si],sp
00000D4F  61                popa
00000D50  7070              jo 0xdc2
00000D52  6561              gs popa
00000D54  7265              jc 0xdbb
00000D56  640D0A69          fs or ax,0x690a
00000D5A  6E                outsb
00000D5B  207468            and [si+0x68],dh
00000D5E  65206574          and [gs:di+0x74],ah
00000D62  65726E            gs jc 0xdd3
00000D65  61                popa
00000D66  6C                insb
00000D67  6C                insb
00000D68  7920              jns 0xd8a
00000D6A  66756E            o32 jnz 0xddb
00000D6D  6B792043          imul di,[bx+di+0x20],byte +0x43
00000D71  6F                outsw
00000D72  6D                insw
00000D73  7075              jo 0xdea
00000D75  7469              jz 0xde0
00000D77  6E                outsb
00000D78  67204E6F          and [esi+0x6f],cl
00000D7C  7721              ja 0xd9f
00000D7E  206D61            and [di+0x61],ch
00000D81  6761              a32 popa
00000D83  7A69              jpe 0xdee
00000D85  6E                outsb
00000D86  65206173          and [gs:bx+di+0x73],ah
00000D8A  20616E            and [bx+di+0x6e],ah
00000D8D  202E4558          and [0x5845],ch
00000D91  45                inc bp
00000D92  206669            and [bp+0x69],ah
00000D95  6C                insb
00000D96  65207768          and [gs:bx+0x68],dh
00000D9A  6963682049        imul sp,[bp+di+0x68],word 0x4920
00000D9F  206861            and [bx+si+0x61],ch
00000DA2  7665              jna 0xe09
00000DA4  0D0A73            or ax,0x730a
00000DA7  696E636520        imul bp,[bp+0x63],word 0x2065
00000DAC  7472              jz 0xe20
00000DAE  696D6D6564        imul bp,[di+0x6d],word 0x6465
00000DB3  20636F            and [bp+di+0x6f],ah
00000DB6  6E                outsb
00000DB7  7369              jnc 0xe22
00000DB9  64657261          gs jc 0xe1e
00000DBD  626C79            bound bp,[si+0x79]
00000DC0  2E204D79          and [cs:di+0x79],cl
00000DC4  206170            and [bx+di+0x70],ah
00000DC7  6F                outsw
00000DC8  6C                insb
00000DC9  6F                outsw
00000DCA  676965732074      imul sp,[ebp+0x73],word 0x7420
00000DD0  6F                outsw
00000DD1  20616E            and [bx+di+0x6e],ah
00000DD4  796F              jns 0xe45
00000DD6  6E                outsb
00000DD7  65207768          and [gs:bx+0x68],dh
00000DDB  6F                outsw
00000DDC  207479            and [si+0x79],dh
00000DDF  7065              jo 0xe46
00000DE1  64206974          and [fs:bx+di+0x74],ch
00000DE5  20696E            and [bx+di+0x6e],ch
00000DE8  2E0D0A0A          cs or ax,0xa0a
00000DEC  49                dec cx
00000DED  6E                outsb
00000DEE  636964            arpl [bx+di+0x64],bp
00000DF1  656E              gs outsb
00000DF3  7461              jz 0xe56
00000DF5  6C                insb
00000DF6  6C                insb
00000DF7  792C              jns 0xe25
00000DF9  20426C            and [bp+si+0x6c],al
00000DFC  6F                outsw
00000DFD  7274              jc 0xe73
00000DFF  49                dec cx
00000E00  49                dec cx
00000E01  207761            and [bx+0x61],dh
00000E04  7320              jnc 0xe26
00000E06  61                popa
00000E07  7373              jnc 0xe7c
00000E09  656D              gs insw
00000E0B  626C65            bound bp,[si+0x65]
00000E0E  64207573          and [fs:di+0x73],dh
00000E12  696E672045        imul bp,[bp+0x67],word 0x4520
00000E17  7269              jc 0xe82
00000E19  6320              arpl [bx+si],sp
00000E1B  49                dec cx
00000E1C  7361              jnc 0xe7f
00000E1E  61                popa
00000E1F  63736F            arpl [bp+di+0x6f],si
00000E22  6E                outsb
00000E23  60                pusha
00000E24  7320              jnc 0xe46
00000E26  41                inc cx
00000E27  3836204D          cmp [0x4d20],dh
00000E2B  61                popa
00000E2C  63726F            arpl [bp+si+0x6f],si
00000E2F  204173            and [bx+di+0x73],al
00000E32  7365              jnc 0xe99
00000E34  6D                insw
00000E35  626C65            bound bp,[si+0x65]
00000E38  722C              jc 0xe66
00000E3A  0D0A61            or ax,0x610a
00000E3D  7661              jna 0xea0
00000E3F  696C61626C        imul bp,[si+0x61],word 0x6c62
00000E44  65206174          and [gs:bx+di+0x74],ah
00000E48  20796F            and [bx+di+0x6f],bh
00000E4B  7572              jnz 0xebf
00000E4D  206E65            and [bp+0x65],ch
00000E50  61                popa
00000E51  7265              jc 0xeb8
00000E53  7374              jnc 0xec9
00000E55  207075            and [bx+si+0x75],dh
00000E58  626C69            bound bp,[si+0x69]
00000E5B  6320              arpl [bx+si],sp
00000E5D  646F              fs outsw
00000E5F  6D                insw
00000E60  61                popa
00000E61  696E20736F        imul bp,[bp+0x20],word 0x6f73
00000E66  667477            o32 jz 0xee0
00000E69  61                popa
00000E6A  7265              jc 0xed1
00000E6C  20736F            and [bp+di+0x6f],dh
00000E6F  7572              jnz 0xee3
00000E71  63652E            arpl [di+0x2e],sp
00000E74  205265            and [bp+si+0x65],dl
00000E77  636F6D            arpl [bx+0x6d],bp
00000E7A  6D                insw
00000E7B  656E              gs outsb
00000E7D  6465642E0D0A0A    cs or ax,0xa0a
00000E84  4E                dec si
00000E85  657874            gs js 0xefc
00000E88  206672            and [bp+0x72],ah
00000E8B  6F                outsw
00000E8C  6D                insw
00000E8D  204865            and [bx+si+0x65],cl
00000E90  6E                outsb
00000E91  6E                outsb
00000E92  53                push bx
00000E93  6F                outsw
00000E94  66743A            o32 jz 0xed1
00000E97  205052            and [bx+si+0x52],dl
00000E9A  4F                dec di
00000E9B  54                push sp
00000E9C  45                inc bp
00000E9D  4B                dec bx
00000E9E  2028              and [bx+si],ch
00000EA0  41                inc cx
00000EA1  7661              jna 0xf04
00000EA3  696C61626C        imul bp,[si+0x61],word 0x6c62
00000EA8  65204D61          and [gs:di+0x61],cl
00000EAC  7920              jns 0xece
00000EAE  3139              xor [bx+di],di
00000EB0  3837              cmp [bx],dh
00000EB2  206F72            and [bx+0x72],ch
00000EB5  20736F            and [bp+di+0x6f],dh
00000EB8  6F                outsw
00000EB9  6E                outsb
00000EBA  657229            gs jc 0xee6
00000EBD  2E0D0A5B          cs or ax,0x5b0a
00000EC1  48                dec ax
00000EC2  697420616E        imul si,[si+0x20],word 0x6e61
00000EC7  7920              jns 0xee9
00000EC9  6B657920          imul sp,[di+0x79],byte +0x20
00000ECD  2E2E2E5D          cs pop bp
00000ED1  2407              and al,0x7
00000ED3  FFE0              jmp ax
00000ED5  1F                pop ds
00000ED6  FF                db 0xFF
00000ED7  F8                clc
00000ED8  F9                stc
00000ED9  99                cwd
00000EDA  9F                lahf
00000EDB  1F                pop ds
00000EDC  FF                db 0xFF
00000EDD  F8                clc
00000EDE  07                pop es
00000EDF  E7E0              out 0xe0,ax
00000EE1  03FF              add di,di
00000EE3  C007FF            rol byte [bx],0xff
00000EE6  E01F              loopne 0xf07
00000EE8  FF                db 0xFF
00000EE9  F8                clc
00000EEA  7800              js 0xeec
00000EEC  1E                push ds
00000EED  C7                db 0xC7
00000EEE  FFE3              jmp bx
00000EF0  7E3C              jng 0xf2e
00000EF2  7EFD              jng 0xef1
00000EF4  66FD              o32 std
00000EF6  FC                cld
00000EF7  FF                db 0xFF
00000EF8  7D83              jnl 0xe7d
00000EFA  66837E3C7E        cmp dword [bp+0x3c],byte +0x7e
00000EFF  FF                db 0xFF
00000F00  FF                db 0xFF
00000F01  FF                db 0xFF
00000F02  3C42              cmp al,0x42
00000F04  3C17              cmp al,0x17
00000F06  FFC8              dec ax
00000F08  11FF              adc di,di
00000F0A  8800              mov [bx+si],al
00000F0C  1800              sbb [bx+si],al
00000F0E  3C7A              cmp al,0x7a
00000F10  663CFF            o32 cmp al,0xff
00000F13  E7C7              out 0xc7,ax
00000F15  E7E7              out 0xe7,ax
00000F17  E7C3              out 0xc3,ax
00000F19  FF                db 0xFF
00000F1A  FFE7              jmp di
00000F1C  99                cwd
00000F1D  F9                stc
00000F1E  C7                db 0xC7
00000F1F  BF81FF            mov di,0xff81
00000F22  FF81F9E7          inc word [bx+di+0xe7f9]
00000F26  F1                int1
00000F27  99                cwd
00000F28  C3                ret
00000F29  FF00              inc word [bx+si]
00000F2B  1800              sbb [bx+si],al
00000F2D  003C              add [si],bh
00000F2F  0000              add [bx+si],al
00000F31  3400              xor al,0x0
00000F33  007A00            add [bp+si+0x0],bh
00000F36  007A00            add [bp+si+0x0],bh
00000F39  007E00            add [bp+0x0],bh
00000F3C  207A04            and [bp+si+0x4],bh
00000F3F  70FB              jo 0xf3c
00000F41  0E                push cs
00000F42  57                push di
00000F43  FD                std
00000F44  EE                out dx,al
00000F45  6F                outsw
00000F46  7DFE              jnl 0xf46
00000F48  6F                outsw
00000F49  7DEE              jnl 0xf39
00000F4B  6F                outsw
00000F4C  7DEE              jnl 0xf3c
00000F4E  627C4E            bound di,[si+0x4e]
00000F51  6F                outsw
00000F52  FD                std
00000F53  EE                out dx,al
00000F54  D8AA1B81          fsubr dword [bp+si+0x811b]
00000F58  42                inc dx
00000F59  2418              and al,0x18
00000F5B  3476              xor al,0x76
00000F5D  FB                sti
00000F5E  FD                std
00000F5F  FD                std
00000F60  AE                scasb
00000F61  3DFE1D            cmp ax,0x1dfe
00000F64  FE                db 0xFE
00000F65  3D4E1E            cmp ax,0x1e4e
00000F68  4E                dec si
00000F69  3E9E              ds sahf
00000F6B  1E                push ds
00000F6C  9E                sahf
00000F6D  3EEE              ds out dx,al
00000F6F  1E                push ds
00000F70  EE                out dx,al
00000F71  3E3E1F            ds pop ds
00000F74  3E3F              ds aas
00000F76  8E1F              mov ds,[bx]
00000F78  8E3F              mov segr7,[bx]
00000F7A  DE1F              ficomp word [bx]
00000F7C  DE3F              fidivr word [bx]
00000F7E  C9                leave
00000F7F  3E56              ds push si
00000F81  657273            gs jc 0xff7
00000F84  696F6E2032        imul bp,[bx+0x6e],word 0x3220
00000F89  2462              and al,0x62
00000F8B  7920              jns 0xfad
00000F8D  4A                dec dx
00000F8E  6F                outsw
00000F8F  686E20            push word 0x206e
00000F92  52                push dx
00000F93  7564              jnz 0xff9
00000F95  7A69              jpe 0x1000
00000F97  6E                outsb
00000F98  736B              jnc 0x1005
00000F9A  69243139          imul sp,[si],word 0x3931
00000F9E  3837              cmp [bx],dh
00000FA0  204865            and [bx+si+0x65],cl
00000FA3  6E                outsb
00000FA4  6E                outsb
00000FA5  53                push bx
00000FA6  6F                outsw
00000FA7  667424            o32 jz 0xfce
00000FAA  53                push bx
00000FAB  656C              gs insb
00000FAD  6563743A          arpl [gs:si+0x3a],si
00000FB1  2449              and al,0x49
00000FB3  6E                outsb
00000FB4  7374              jnc 0x102a
00000FB6  7275              jc 0x102d
00000FB8  637469            arpl [si+0x69],si
00000FBB  6F                outsw
00000FBC  6E                outsb
00000FBD  7324              jnc 0xfe3
00000FBF  53                push bx
00000FC0  7461              jz 0x1023
00000FC2  7274              jc 0x1038
00000FC4  204761            and [bx+0x61],al
00000FC7  6D                insw
00000FC8  652451            gs and al,0x51
00000FCB  7569              jnz 0x1036
00000FCD  7420              jz 0xfef
00000FCF  746F              jz 0x1040
00000FD1  20444F            and [si+0x4f],al
00000FD4  53                push bx
00000FD5  2442              and al,0x42
00000FD7  6C                insb
00000FD8  6F                outsw
00000FD9  7274              jc 0x104f
00000FDB  204949            and [bx+di+0x49],cl
00000FDE  2020              and [bx+si],ah
00000FE0  2020              and [bx+si],ah
00000FE2  2020              and [bx+si],ah
00000FE4  3139              xor [bx+di],di
00000FE6  3837              cmp [bx],dh
00000FE8  204865            and [bx+si+0x65],cl
00000FEB  6E                outsb
00000FEC  6E                outsb
00000FED  53                push bx
00000FEE  6F                outsw
00000FEF  667420            o32 jz 0x1012
00000FF2  2020              and [bx+si],ah
00000FF4  2020              and [bx+si],ah
00000FF6  204C65            and [si+0x65],cl
00000FF9  7665              jna 0x1060
00000FFB  6C                insb
00000FFC  3A20              cmp ah,[bx+si]
00000FFE  3120              xor [bx+si],sp
00001000  2020              and [bx+si],ah
00001002  2020              and [bx+si],ah
00001004  205368            and [bp+di+0x68],dl
00001007  7574              jnz 0x107d
00001009  746C              jz 0x1077
0000100B  65733A            gs jnc 0x1048
0000100E  2020              and [bx+si],ah
00001010  2020              and [bx+si],ah
00001012  2020              and [bx+si],ah
00001014  2020              and [bx+si],ah
00001016  2020              and [bx+si],ah
00001018  205363            and [bp+di+0x63],dl
0000101B  6F                outsw
0000101C  7265              jc 0x1083
0000101E  3A20              cmp ah,[bx+si]
00001020  3030              xor [bx+si],dh
00001022  3030              xor [bx+si],dh
00001024  3030              xor [bx+si],dh
00001026  241E              and al,0x1e
00001028  1E                push ds
00001029  24F4              and al,0xf4
0000102B  01910A00          add [bx+di+0xa],dx
0000102F  080F              or [bx],cl
00001031  384DF0            cmp [di-0x10],cl
00001034  3E0000            add [ds:bx+si],al
00001037  0000              add [bx+si],al
00001039  0027              add [bx],ah
0000103B  0000              add [bx+si],al
0000103D  0000              add [bx+si],al
0000103F  0000              add [bx+si],al
00001041  0000              add [bx+si],al
00001043  0000              add [bx+si],al
00001045  0001              add [bx+di],al
00001047  0000              add [bx+si],al
00001049  0100              add [bx+si],ax
0000104B  0001              add [bx+di],al
0000104D  0330              add si,[bx+si]
0000104F  02703C            add dh,[bx+si+0x3c]
00001052  0000              add [bx+si],al
00001054  0000              add [bx+si],al
00001056  0000              add [bx+si],al
00001058  0000              add [bx+si],al
0000105A  0000              add [bx+si],al
0000105C  0000              add [bx+si],al
0000105E  0000              add [bx+si],al
00001060  005363            add [bp+di+0x63],dl
00001063  6F                outsw
00001064  7265              jc 0x10cb
00001066  3A20              cmp ah,[bx+si]
00001068  3030              xor [bx+si],dh
0000106A  3030              xor [bx+si],dh
0000106C  3030              xor [bx+si],dh
0000106E  2448              and al,0x48
00001070  6967682053        imul sp,[bx+0x68],word 0x5320
00001075  636F72            arpl [bx+0x72],bp
00001078  653A20            cmp ah,[gs:bx+si]
0000107B  3030              xor [bx+si],dh
0000107D  3030              xor [bx+si],dh
0000107F  3030              xor [bx+si],dh
00001081  24B8              and al,0xb8
00001083  00B88EC0          add [bx+si+0xc08e],bh
00001087  B400              mov ah,0x0
00001089  B006              mov al,0x6
0000108B  CD10              int 0x10
0000108D  B406              mov ah,0x6
0000108F  B000              mov al,0x0
00001091  31C9              xor cx,cx
00001093  B618              mov dh,0x18
00001095  B24F              mov dl,0x4f
00001097  B700              mov bh,0x0
00001099  CD10              int 0x10
0000109B  B700              mov bh,0x0
0000109D  B402              mov ah,0x2
0000109F  B60A              mov dh,0xa
000010A1  B223              mov dl,0x23
000010A3  CD10              int 0x10
000010A5  B409              mov ah,0x9
000010A7  BA800F            mov dx,0xf80
000010AA  CD21              int 0x21
000010AC  B700              mov bh,0x0
000010AE  B402              mov ah,0x2
000010B0  B60C              mov dh,0xc
000010B2  B21F              mov dl,0x1f
000010B4  CD10              int 0x10
000010B6  B409              mov ah,0x9
000010B8  BA8A0F            mov dx,0xf8a
000010BB  CD21              int 0x21
000010BD  B700              mov bh,0x0
000010BF  B402              mov ah,0x2
000010C1  B60D              mov dh,0xd
000010C3  B221              mov dl,0x21
000010C5  CD10              int 0x10
000010C7  B409              mov ah,0x9
000010C9  BA9C0F            mov dx,0xf9c
000010CC  CD21              int 0x21
000010CE  B700              mov bh,0x0
000010D0  B402              mov ah,0x2
000010D2  B60F              mov dh,0xf
000010D4  B224              mov dl,0x24
000010D6  CD10              int 0x10
000010D8  B409              mov ah,0x9
000010DA  BAAA0F            mov dx,0xfaa
000010DD  CD21              int 0x21
000010DF  B700              mov bh,0x0
000010E1  B402              mov ah,0x2
000010E3  B611              mov dh,0x11
000010E5  B222              mov dl,0x22
000010E7  CD10              int 0x10
000010E9  B409              mov ah,0x9
000010EB  BAB20F            mov dx,0xfb2
000010EE  CD21              int 0x21
000010F0  B700              mov bh,0x0
000010F2  B402              mov ah,0x2
000010F4  B613              mov dh,0x13
000010F6  B222              mov dl,0x22
000010F8  CD10              int 0x10
000010FA  B409              mov ah,0x9
000010FC  BABF0F            mov dx,0xfbf
000010FF  CD21              int 0x21
00001101  B700              mov bh,0x0
00001103  B402              mov ah,0x2
00001105  B615              mov dh,0x15
00001107  B222              mov dl,0x22
00001109  CD10              int 0x10
0000110B  B409              mov ah,0x9
0000110D  BACA0F            mov dx,0xfca
00001110  CD21              int 0x21
00001112  B700              mov bh,0x0
00001114  B402              mov ah,0x2
00001116  B617              mov dh,0x17
00001118  B200              mov dl,0x0
0000111A  CD10              int 0x10
0000111C  B409              mov ah,0x9
0000111E  BA6110            mov dx,0x1061
00001121  CD21              int 0x21
00001123  B700              mov bh,0x0
00001125  B402              mov ah,0x2
00001127  B617              mov dh,0x17
00001129  B23E              mov dl,0x3e
0000112B  CD10              int 0x10
0000112D  B409              mov ah,0x9
0000112F  BA6F10            mov dx,0x106f
00001132  CD21              int 0x21
00001134  BF6015            mov di,0x1560
00001137  BB120F            mov bx,0xf12
0000113A  B90400            mov cx,0x4
0000113D  8A27              mov ah,[bx]
0000113F  268825            mov [es:di],ah
00001142  81C70020          add di,0x2000
00001146  43                inc bx
00001147  8A27              mov ah,[bx]
00001149  268825            mov [es:di],ah
0000114C  81EFB01F          sub di,0x1fb0
00001150  43                inc bx
00001151  E2EA              loop 0x113d
00001153  BFE017            mov di,0x17e0
00001156  BB1A0F            mov bx,0xf1a
00001159  B90400            mov cx,0x4
0000115C  8A27              mov ah,[bx]
0000115E  268825            mov [es:di],ah
00001161  81C70020          add di,0x2000
00001165  43                inc bx
00001166  8A27              mov ah,[bx]
00001168  268825            mov [es:di],ah
0000116B  81EFB01F          sub di,0x1fb0
0000116F  43                inc bx
00001170  E2EA              loop 0x115c
00001172  BF601A            mov di,0x1a60
00001175  BB220F            mov bx,0xf22
00001178  B90400            mov cx,0x4
0000117B  8A27              mov ah,[bx]
0000117D  268825            mov [es:di],ah
00001180  81C70020          add di,0x2000
00001184  43                inc bx
00001185  8A27              mov ah,[bx]
00001187  268825            mov [es:di],ah
0000118A  81EFB01F          sub di,0x1fb0
0000118E  43                inc bx
0000118F  E2EA              loop 0x117b
00001191  C606311038        mov byte [0x1031],0x38
00001196  31FF              xor di,di
00001198  BB3001            mov bx,0x130
0000119B  B91600            mov cx,0x16
0000119E  E8DB18            call 0x2a7c
000011A1  E2FB              loop 0x119e
000011A3  FE0E3110          dec byte [0x1031]
000011A7  803E311000        cmp byte [0x1031],0x0
000011AC  7420              jz 0x11ce
000011AE  81C7EA1F          add di,0x1fea
000011B2  B91600            mov cx,0x16
000011B5  E8C418            call 0x2a7c
000011B8  E2FB              loop 0x11b5
000011BA  FE0E3110          dec byte [0x1031]
000011BE  803E311000        cmp byte [0x1031],0x0
000011C3  7409              jz 0x11ce
000011C5  81EF0020          sub di,0x2000
000011C9  83C73A            add di,byte +0x3a
000011CC  EBCD              jmp short 0x119b
000011CE  C606371038        mov byte [0x1037],0x38
000011D3  C6063E1000        mov byte [0x103e],0x0
000011D8  C6063F1000        mov byte [0x103f],0x0
000011DD  31C0              xor ax,ax
000011DF  A33510            mov [0x1035],ax
000011E2  B91700            mov cx,0x17
000011E5  8B3E3510          mov di,[0x1035]
000011E9  F8                clc
000011EA  268A05            mov al,[es:di]
000011ED  D0D8              rcr al,1
000011EF  268805            mov [es:di],al
000011F2  47                inc di
000011F3  E2F5              loop 0x11ea
000011F5  83EF17            sub di,byte +0x17
000011F8  FE0E3710          dec byte [0x1037]
000011FC  803E371000        cmp byte [0x1037],0x0
00001201  7418              jz 0x121b
00001203  81FF0020          cmp di,0x2000
00001207  7D09              jnl 0x1212
00001209  81C70020          add di,0x2000
0000120D  B91700            mov cx,0x17
00001210  EBD7              jmp short 0x11e9
00001212  81EFB01F          sub di,0x1fb0
00001216  B91700            mov cx,0x17
00001219  EBCE              jmp short 0x11e9
0000121B  C606371038        mov byte [0x1037],0x38
00001220  FE063E10          inc byte [0x103e]
00001224  803E3E1008        cmp byte [0x103e],0x8
00001229  7402              jz 0x122d
0000122B  EBB5              jmp short 0x11e2
0000122D  C6063E1000        mov byte [0x103e],0x0
00001232  FE063F10          inc byte [0x103f]
00001236  803E3F103A        cmp byte [0x103f],0x3a
0000123B  742B              jz 0x1268
0000123D  E85518            call 0x2a95
00001240  3C00              cmp al,0x0
00001242  7506              jnz 0x124a
00001244  FF063510          inc word [0x1035]
00001248  EB98              jmp short 0x11e2
0000124A  3C31              cmp al,0x31
0000124C  7503              jnz 0x1251
0000124E  E9AF00            jmp 0x1300
00001251  3C32              cmp al,0x32
00001253  7503              jnz 0x1258
00001255  E90101            jmp 0x1359
00001258  3C33              cmp al,0x33
0000125A  75E8              jnz 0x1244
0000125C  B400              mov ah,0x0
0000125E  B002              mov al,0x2
00001260  CD10              int 0x10
00001262  5A                pop dx
00001263  59                pop cx
00001264  5B                pop bx
00001265  58                pop ax
00001266  CD20              int 0x20
00001268  C606371038        mov byte [0x1037],0x38
0000126D  C6063E1000        mov byte [0x103e],0x0
00001272  C6063F1000        mov byte [0x103f],0x0
00001277  C70635104F00      mov word [0x1035],0x4f
0000127D  B91700            mov cx,0x17
00001280  8B3E3510          mov di,[0x1035]
00001284  F8                clc
00001285  268A05            mov al,[es:di]
00001288  D0D0              rcl al,1
0000128A  268805            mov [es:di],al
0000128D  4F                dec di
0000128E  E2F5              loop 0x1285
00001290  83C717            add di,byte +0x17
00001293  FE0E3710          dec byte [0x1037]
00001297  803E371000        cmp byte [0x1037],0x0
0000129C  7418              jz 0x12b6
0000129E  81FF0020          cmp di,0x2000
000012A2  7D09              jnl 0x12ad
000012A4  81C70020          add di,0x2000
000012A8  B91700            mov cx,0x17
000012AB  EBD7              jmp short 0x1284
000012AD  81EFB01F          sub di,0x1fb0
000012B1  B91700            mov cx,0x17
000012B4  EBCE              jmp short 0x1284
000012B6  C606371038        mov byte [0x1037],0x38
000012BB  FE063E10          inc byte [0x103e]
000012BF  803E3E1008        cmp byte [0x103e],0x8
000012C4  7402              jz 0x12c8
000012C6  EBB5              jmp short 0x127d
000012C8  C6063E1000        mov byte [0x103e],0x0
000012CD  FE063F10          inc byte [0x103f]
000012D1  803E3F103A        cmp byte [0x103f],0x3a
000012D6  7503              jnz 0x12db
000012D8  E9F3FE            jmp 0x11ce
000012DB  E8B717            call 0x2a95
000012DE  3C00              cmp al,0x0
000012E0  7403              jz 0x12e5
000012E2  E90600            jmp 0x12eb
000012E5  FF0E3510          dec word [0x1035]
000012E9  EB92              jmp short 0x127d
000012EB  3C31              cmp al,0x31
000012ED  7503              jnz 0x12f2
000012EF  E90E00            jmp 0x1300
000012F2  3C32              cmp al,0x32
000012F4  7503              jnz 0x12f9
000012F6  E96000            jmp 0x1359
000012F9  3C33              cmp al,0x33
000012FB  75E8              jnz 0x12e5
000012FD  E95CFF            jmp 0x125c
00001300  B400              mov ah,0x0
00001302  B002              mov al,0x2
00001304  CD10              int 0x10
00001306  B406              mov ah,0x6
00001308  30C0              xor al,al
0000130A  31C9              xor cx,cx
0000130C  B618              mov dh,0x18
0000130E  B24F              mov dl,0x4f
00001310  B707              mov bh,0x7
00001312  CD10              int 0x10
00001314  B402              mov ah,0x2
00001316  B700              mov bh,0x0
00001318  31D2              xor dx,dx
0000131A  CD10              int 0x10
0000131C  B409              mov ah,0x9
0000131E  BA0006            mov dx,0x600
00001321  CD21              int 0x21
00001323  B407              mov ah,0x7
00001325  CD21              int 0x21
00001327  B406              mov ah,0x6
00001329  30C0              xor al,al
0000132B  31C9              xor cx,cx
0000132D  B618              mov dh,0x18
0000132F  B24F              mov dl,0x4f
00001331  B707              mov bh,0x7
00001333  CD10              int 0x10
00001335  B402              mov ah,0x2
00001337  B700              mov bh,0x0
00001339  31D2              xor dx,dx
0000133B  CD10              int 0x10
0000133D  B409              mov ah,0x9
0000133F  BA690A            mov dx,0xa69
00001342  CD21              int 0x21
00001344  B407              mov ah,0x7
00001346  CD21              int 0x21
00001348  B406              mov ah,0x6
0000134A  30C0              xor al,al
0000134C  31C9              xor cx,cx
0000134E  B618              mov dh,0x18
00001350  B24F              mov dl,0x4f
00001352  B707              mov bh,0x7
00001354  CD10              int 0x10
00001356  E92EFD            jmp 0x1087
00001359  B406              mov ah,0x6
0000135B  B000              mov al,0x0
0000135D  31C9              xor cx,cx
0000135F  B618              mov dh,0x18
00001361  B24F              mov dl,0x4f
00001363  B700              mov bh,0x0
00001365  CD10              int 0x10
00001367  C6062F1008        mov byte [0x102f],0x8
0000136C  C60630100F        mov byte [0x1030],0xf
00001371  C60632104D        mov byte [0x1032],0x4d
00001376  8B3E4E10          mov di,[0x104e]
0000137A  803E461001        cmp byte [0x1046],0x1
0000137F  7506              jnz 0x1387
00001381  BBD20E            mov bx,0xed2
00001384  E91D00            jmp 0x13a4
00001387  803E461002        cmp byte [0x1046],0x2
0000138C  7506              jnz 0x1394
0000138E  BBE10E            mov bx,0xee1
00001391  E91000            jmp 0x13a4
00001394  803E461003        cmp byte [0x1046],0x3
00001399  7506              jnz 0x13a1
0000139B  BBF00E            mov bx,0xef0
0000139E  E90300            jmp 0x13a4
000013A1  BBFF0E            mov bx,0xeff
000013A4  B005              mov al,0x5
000013A6  B90300            mov cx,0x3
000013A9  8A27              mov ah,[bx]
000013AB  268825            mov [es:di],ah
000013AE  43                inc bx
000013AF  47                inc di
000013B0  E2F7              loop 0x13a9
000013B2  2C01              sub al,0x1
000013B4  7420              jz 0x13d6
000013B6  83EF03            sub di,byte +0x3
000013B9  81C70020          add di,0x2000
000013BD  B90300            mov cx,0x3
000013C0  8A27              mov ah,[bx]
000013C2  268825            mov [es:di],ah
000013C5  43                inc bx
000013C6  47                inc di
000013C7  E2F7              loop 0x13c0
000013C9  2C01              sub al,0x1
000013CB  7409              jz 0x13d6
000013CD  83EF03            sub di,byte +0x3
000013D0  81EFB01F          sub di,0x1fb0
000013D4  EBD0              jmp short 0x13a6
000013D6  B700              mov bh,0x0
000013D8  B402              mov ah,0x2
000013DA  31D2              xor dx,dx
000013DC  CD10              int 0x10
000013DE  B409              mov ah,0x9
000013E0  BAD60F            mov dx,0xfd6
000013E3  CD21              int 0x21
000013E5  B402              mov ah,0x2
000013E7  BA0000            mov dx,0x0
000013EA  B239              mov dl,0x39
000013EC  CD10              int 0x10
000013EE  B409              mov ah,0x9
000013F0  BA2710            mov dx,0x1027
000013F3  CD21              int 0x21
000013F5  B95000            mov cx,0x50
000013F8  B0FF              mov al,0xff
000013FA  BF4021            mov di,0x2140
000013FD  268805            mov [es:di],al
00001400  47                inc di
00001401  E2FA              loop 0x13fd
00001403  B95000            mov cx,0x50
00001406  8B3E3310          mov di,[0x1033]
0000140A  268805            mov [es:di],al
0000140D  47                inc di
0000140E  E2FA              loop 0x140a
00001410  8B3E7E0F          mov di,[0xf7e]
00001414  BB560F            mov bx,0xf56
00001417  B90300            mov cx,0x3
0000141A  E86716            call 0x2a84
0000141D  E2FB              loop 0x141a
0000141F  FE0E3010          dec byte [0x1030]
00001423  803E301000        cmp byte [0x1030],0x0
00001428  7420              jz 0x144a
0000142A  81EFFD1F          sub di,0x1ffd
0000142E  B90300            mov cx,0x3
00001431  E85016            call 0x2a84
00001434  E2FB              loop 0x1431
00001436  FE0E3010          dec byte [0x1030]
0000143A  803E301000        cmp byte [0x1030],0x0
0000143F  7409              jz 0x144a
00001441  81C70020          add di,0x2000
00001445  83EF4D            sub di,byte +0x4d
00001448  EBCD              jmp short 0x1417
0000144A  E8F601            call 0x1643
0000144D  E81E00            call 0x146e
00001450  E80601            call 0x1559
00001453  E8F302            call 0x1749
00001456  803E4C1002        cmp byte [0x104c],0x2
0000145B  75ED              jnz 0x144a
0000145D  E8A207            call 0x1c02
00001460  EBE8              jmp short 0x144a
00001462  B400              mov ah,0x0
00001464  B002              mov al,0x2
00001466  CD10              int 0x10
00001468  5A                pop dx
00001469  59                pop cx
0000146A  5B                pop bx
0000146B  58                pop ax
0000146C  CD20              int 0x20
0000146E  FE064410          inc byte [0x1044]
00001472  803E481001        cmp byte [0x1048],0x1
00001477  750F              jnz 0x1488
00001479  833E381000        cmp word [0x1038],byte +0x0
0000147E  7517              jnz 0x1497
00001480  C606481000        mov byte [0x1048],0x0
00001485  E97200            jmp 0x14fa
00001488  833E38104D        cmp word [0x1038],byte +0x4d
0000148D  7403              jz 0x1492
0000148F  E96800            jmp 0x14fa
00001492  C606481001        mov byte [0x1048],0x1
00001497  C606401000        mov byte [0x1040],0x0
0000149C  C606371000        mov byte [0x1037],0x0
000014A1  8B3E4E10          mov di,[0x104e]
000014A5  A13810            mov ax,[0x1038]
000014A8  01C7              add di,ax
000014AA  83C702            add di,byte +0x2
000014AD  B90400            mov cx,0x4
000014B0  F8                clc
000014B1  268A05            mov al,[es:di]
000014B4  D0D0              rcl al,1
000014B6  268805            mov [es:di],al
000014B9  4F                dec di
000014BA  E2F5              loop 0x14b1
000014BC  83C704            add di,byte +0x4
000014BF  FE063710          inc byte [0x1037]
000014C3  803E371005        cmp byte [0x1037],0x5
000014C8  7412              jz 0x14dc
000014CA  81FF0020          cmp di,0x2000
000014CE  7D06              jnl 0x14d6
000014D0  81C70020          add di,0x2000
000014D4  EBD7              jmp short 0x14ad
000014D6  81EFB01F          sub di,0x1fb0
000014DA  EBD1              jmp short 0x14ad
000014DC  C606371000        mov byte [0x1037],0x0
000014E1  FE064010          inc byte [0x1040]
000014E5  803E401008        cmp byte [0x1040],0x8
000014EA  75B5              jnz 0x14a1
000014EC  C606401000        mov byte [0x1040],0x0
000014F1  FF0E3810          dec word [0x1038]
000014F5  FE064410          inc byte [0x1044]
000014F9  C3                ret
000014FA  C606401000        mov byte [0x1040],0x0
000014FF  C606371000        mov byte [0x1037],0x0
00001504  8B3E4E10          mov di,[0x104e]
00001508  033E3810          add di,[0x1038]
0000150C  B90400            mov cx,0x4
0000150F  F8                clc
00001510  268A05            mov al,[es:di]
00001513  D0D8              rcr al,1
00001515  268805            mov [es:di],al
00001518  47                inc di
00001519  E2F5              loop 0x1510
0000151B  83EF04            sub di,byte +0x4
0000151E  FE063710          inc byte [0x1037]
00001522  803E371005        cmp byte [0x1037],0x5
00001527  7412              jz 0x153b
00001529  81FF0020          cmp di,0x2000
0000152D  7D06              jnl 0x1535
0000152F  81C70020          add di,0x2000
00001533  EBD7              jmp short 0x150c
00001535  81EFB01F          sub di,0x1fb0
00001539  EBD1              jmp short 0x150c
0000153B  C606371000        mov byte [0x1037],0x0
00001540  FE064010          inc byte [0x1040]
00001544  803E401008        cmp byte [0x1040],0x8
00001549  75B9              jnz 0x1504
0000154B  C606401000        mov byte [0x1040],0x0
00001550  FF063810          inc word [0x1038]
00001554  FE0E4410          dec byte [0x1044]
00001558  C3                ret
00001559  FE064410          inc byte [0x1044]
0000155D  803E491001        cmp byte [0x1049],0x1
00001562  750F              jnz 0x1573
00001564  833E3A1000        cmp word [0x103a],byte +0x0
00001569  7517              jnz 0x1582
0000156B  C606491000        mov byte [0x1049],0x0
00001570  E97100            jmp 0x15e4
00001573  833E3A104D        cmp word [0x103a],byte +0x4d
00001578  7403              jz 0x157d
0000157A  E96700            jmp 0x15e4
0000157D  C606491001        mov byte [0x1049],0x1
00001582  C606401000        mov byte [0x1040],0x0
00001587  C606371000        mov byte [0x1037],0x0
0000158C  8B3E5010          mov di,[0x1050]
00001590  033E3A10          add di,[0x103a]
00001594  83C702            add di,byte +0x2
00001597  B90400            mov cx,0x4
0000159A  F8                clc
0000159B  268A05            mov al,[es:di]
0000159E  D0D0              rcl al,1
000015A0  268805            mov [es:di],al
000015A3  4F                dec di
000015A4  E2F5              loop 0x159b
000015A6  83C704            add di,byte +0x4
000015A9  FE063710          inc byte [0x1037]
000015AD  803E37100F        cmp byte [0x1037],0xf
000015B2  7412              jz 0x15c6
000015B4  81FF0020          cmp di,0x2000
000015B8  7D06              jnl 0x15c0
000015BA  81C70020          add di,0x2000
000015BE  EBD7              jmp short 0x1597
000015C0  81EFB01F          sub di,0x1fb0
000015C4  EBD1              jmp short 0x1597
000015C6  C606371000        mov byte [0x1037],0x0
000015CB  FE064010          inc byte [0x1040]
000015CF  803E401008        cmp byte [0x1040],0x8
000015D4  75B6              jnz 0x158c
000015D6  C606401000        mov byte [0x1040],0x0
000015DB  FF0E3A10          dec word [0x103a]
000015DF  FE064410          inc byte [0x1044]
000015E3  C3                ret
000015E4  C606401000        mov byte [0x1040],0x0
000015E9  C606371000        mov byte [0x1037],0x0
000015EE  8B3E5010          mov di,[0x1050]
000015F2  033E3A10          add di,[0x103a]
000015F6  B90400            mov cx,0x4
000015F9  F8                clc
000015FA  268A05            mov al,[es:di]
000015FD  D0D8              rcr al,1
000015FF  268805            mov [es:di],al
00001602  47                inc di
00001603  E2F5              loop 0x15fa
00001605  83EF04            sub di,byte +0x4
00001608  FE063710          inc byte [0x1037]
0000160C  803E37100F        cmp byte [0x1037],0xf
00001611  7412              jz 0x1625
00001613  81FF0020          cmp di,0x2000
00001617  7D06              jnl 0x161f
00001619  81C70020          add di,0x2000
0000161D  EBD7              jmp short 0x15f6
0000161F  81EFB01F          sub di,0x1fb0
00001623  EBD1              jmp short 0x15f6
00001625  C606371000        mov byte [0x1037],0x0
0000162A  FE064010          inc byte [0x1040]
0000162E  803E401008        cmp byte [0x1040],0x8
00001633  75B9              jnz 0x15ee
00001635  C606401000        mov byte [0x1040],0x0
0000163A  FF063A10          inc word [0x103a]
0000163E  FE064410          inc byte [0x1044]
00001642  C3                ret
00001643  FE064410          inc byte [0x1044]
00001647  B406              mov ah,0x6
00001649  B2FF              mov dl,0xff
0000164B  CD21              int 0x21
0000164D  3C00              cmp al,0x0
0000164F  7501              jnz 0x1652
00001651  C3                ret
00001652  3C1B              cmp al,0x1b
00001654  7505              jnz 0x165b
00001656  B407              mov ah,0x7
00001658  CD21              int 0x21
0000165A  C3                ret
0000165B  3C20              cmp al,0x20
0000165D  7555              jnz 0x16b4
0000165F  803E411001        cmp byte [0x1041],0x1
00001664  74EB              jz 0x1651
00001666  803E2E1001        cmp byte [0x102e],0x1
0000166B  74E4              jz 0x1651
0000166D  C606411001        mov byte [0x1041],0x1
00001672  8B3E5010          mov di,[0x1050]
00001676  A13A10            mov ax,[0x103a]
00001679  A33C10            mov [0x103c],ax
0000167C  01C7              add di,ax
0000167E  47                inc di
0000167F  81EFE101          sub di,0x1e1
00001683  893E5210          mov [0x1052],di
00001687  B90200            mov cx,0x2
0000168A  BB0E0F            mov bx,0xf0e
0000168D  8A27              mov ah,[bx]
0000168F  268825            mov [es:di],ah
00001692  81EFB01F          sub di,0x1fb0
00001696  43                inc bx
00001697  8A27              mov ah,[bx]
00001699  268825            mov [es:di],ah
0000169C  81C70020          add di,0x2000
000016A0  43                inc bx
000016A1  E2EA              loop 0x168d
000016A3  C7062C10910A      mov word [0x102c],0xa91
000016A9  C7062A10F401      mov word [0x102a],0x1f4
000016AF  E8AA13            call 0x2a5c
000016B2  EB9D              jmp short 0x1651
000016B4  3C60              cmp al,0x60
000016B6  7C02              jl 0x16ba
000016B8  2C20              sub al,0x20
000016BA  3C4C              cmp al,0x4c
000016BC  7526              jnz 0x16e4
000016BE  803E421000        cmp byte [0x1042],0x0
000016C3  7501              jnz 0x16c6
000016C5  C3                ret
000016C6  C606421000        mov byte [0x1042],0x0
000016CB  30E4              xor ah,ah
000016CD  B90500            mov cx,0x5
000016D0  BF883D            mov di,0x3d88
000016D3  268825            mov [es:di],ah
000016D6  81EFB01F          sub di,0x1fb0
000016DA  268825            mov [es:di],ah
000016DD  81C70020          add di,0x2000
000016E1  E2F0              loop 0x16d3
000016E3  C3                ret
000016E4  3C5A              cmp al,0x5a
000016E6  7511              jnz 0x16f9
000016E8  803E491001        cmp byte [0x1049],0x1
000016ED  74F4              jz 0x16e3
000016EF  C606491001        mov byte [0x1049],0x1
000016F4  FE0E4410          dec byte [0x1044]
000016F8  C3                ret
000016F9  3C58              cmp al,0x58
000016FB  7511              jnz 0x170e
000016FD  803E491000        cmp byte [0x1049],0x0
00001702  74DF              jz 0x16e3
00001704  C606491000        mov byte [0x1049],0x0
00001709  FE064410          inc byte [0x1044]
0000170D  C3                ret
0000170E  3C51              cmp al,0x51
00001710  75D1              jnz 0x16e3
00001712  31C0              xor ax,ax
00001714  A33810            mov [0x1038],ax
00001717  C7063A102700      mov word [0x103a],0x27
0000171D  A24810            mov [0x1048],al
00001720  C606491001        mov byte [0x1049],0x1
00001725  A24110            mov [0x1041],al
00001728  A24210            mov [0x1042],al
0000172B  C606461001        mov byte [0x1046],0x1
00001730  C6064D1003        mov byte [0x104d],0x3
00001735  C6064C1001        mov byte [0x104c],0x1
0000173A  A25910            mov [0x1059],al
0000173D  A25A10            mov [0x105a],al
00001740  A25B10            mov [0x105b],al
00001743  A25C10            mov [0x105c],al
00001746  E93EF9            jmp 0x1087
00001749  FE064410          inc byte [0x1044]
0000174D  803E411001        cmp byte [0x1041],0x1
00001752  7401              jz 0x1755
00001754  C3                ret
00001755  A15210            mov ax,[0x1052]
00001758  A35410            mov [0x1054],ax
0000175B  2D5000            sub ax,0x50
0000175E  A35210            mov [0x1052],ax
00001761  8BF8              mov di,ax
00001763  B90200            mov cx,0x2
00001766  BB0E0F            mov bx,0xf0e
00001769  8A27              mov ah,[bx]
0000176B  268825            mov [es:di],ah
0000176E  81EFB01F          sub di,0x1fb0
00001772  43                inc bx
00001773  8A27              mov ah,[bx]
00001775  268825            mov [es:di],ah
00001778  81C70020          add di,0x2000
0000177C  43                inc bx
0000177D  E2EA              loop 0x1769
0000177F  8B3E5410          mov di,[0x1054]
00001783  83C750            add di,byte +0x50
00001786  26C7050000        mov word [es:di],0x0
0000178B  81EFB01F          sub di,0x1fb0
0000178F  26C7050000        mov word [es:di],0x0
00001794  813E52101F23      cmp word [0x1052],0x231f
0000179A  7E09              jng 0x17a5
0000179C  813E5210DF21      cmp word [0x1052],0x21df
000017A2  7E27              jng 0x17cb
000017A4  C3                ret
000017A5  A13810            mov ax,[0x1038]
000017A8  8B0E3C10          mov cx,[0x103c]
000017AC  39C8              cmp ax,cx
000017AE  7443              jz 0x17f3
000017B0  40                inc ax
000017B1  39C8              cmp ax,cx
000017B3  743E              jz 0x17f3
000017B5  40                inc ax
000017B6  39C8              cmp ax,cx
000017B8  7439              jz 0x17f3
000017BA  A13810            mov ax,[0x1038]
000017BD  39C8              cmp ax,cx
000017BF  7503              jnz 0x17c4
000017C1  E92F00            jmp 0x17f3
000017C4  48                dec ax
000017C5  39C8              cmp ax,cx
000017C7  742A              jz 0x17f3
000017C9  EBD1              jmp short 0x179c
000017CB  8B3E5210          mov di,[0x1052]
000017CF  B90200            mov cx,0x2
000017D2  B400              mov ah,0x0
000017D4  268825            mov [es:di],ah
000017D7  81EFB01F          sub di,0x1fb0
000017DB  B400              mov ah,0x0
000017DD  268825            mov [es:di],ah
000017E0  81C70020          add di,0x2000
000017E4  E2EC              loop 0x17d2
000017E6  C606411000        mov byte [0x1041],0x0
000017EB  803E4A1001        cmp byte [0x104a],0x1
000017F0  741C              jz 0x180e
000017F2  C3                ret
000017F3  C7062C103101      mov word [0x102c],0x131
000017F9  C7062A101027      mov word [0x102a],0x2710
000017FF  E85A12            call 0x2a5c
00001802  C6064A1001        mov byte [0x104a],0x1
00001807  C6062E1001        mov byte [0x102e],0x1
0000180C  EBBD              jmp short 0x17cb
0000180E  C6064A1000        mov byte [0x104a],0x0
00001813  A14E10            mov ax,[0x104e]
00001816  8B0E3810          mov cx,[0x1038]
0000181A  01C8              add ax,cx
0000181C  A35410            mov [0x1054],ax
0000181F  055000            add ax,0x50
00001822  A35210            mov [0x1052],ax
00001825  B005              mov al,0x5
00001827  803E461001        cmp byte [0x1046],0x1
0000182C  7506              jnz 0x1834
0000182E  BBD20E            mov bx,0xed2
00001831  E91D00            jmp 0x1851
00001834  803E461002        cmp byte [0x1046],0x2
00001839  7506              jnz 0x1841
0000183B  BBE10E            mov bx,0xee1
0000183E  E91000            jmp 0x1851
00001841  803E461003        cmp byte [0x1046],0x3
00001846  7506              jnz 0x184e
00001848  BBF00E            mov bx,0xef0
0000184B  E90300            jmp 0x1851
0000184E  BBFF0E            mov bx,0xeff
00001851  8B3E5410          mov di,[0x1054]
00001855  B90300            mov cx,0x3
00001858  8A27              mov ah,[bx]
0000185A  268825            mov [es:di],ah
0000185D  43                inc bx
0000185E  47                inc di
0000185F  E2F7              loop 0x1858
00001861  2C01              sub al,0x1
00001863  7449              jz 0x18ae
00001865  81C70020          add di,0x2000
00001869  83EF03            sub di,byte +0x3
0000186C  B90300            mov cx,0x3
0000186F  8A27              mov ah,[bx]
00001871  268825            mov [es:di],ah
00001874  47                inc di
00001875  43                inc bx
00001876  E2F7              loop 0x186f
00001878  2C01              sub al,0x1
0000187A  7432              jz 0x18ae
0000187C  3C03              cmp al,0x3
0000187E  7C22              jl 0x18a2
00001880  B90300            mov cx,0x3
00001883  8B365410          mov si,[0x1054]
00001887  83EE50            sub si,byte +0x50
0000188A  B400              mov ah,0x0
0000188C  268824            mov [es:si],ah
0000188F  46                inc si
00001890  E2FA              loop 0x188c
00001892  83EE03            sub si,byte +0x3
00001895  81C60020          add si,0x2000
00001899  B90300            mov cx,0x3
0000189C  268824            mov [es:si],ah
0000189F  46                inc si
000018A0  E2FA              loop 0x189c
000018A2  B90300            mov cx,0x3
000018A5  83EF03            sub di,byte +0x3
000018A8  81EFB01F          sub di,0x1fb0
000018AC  EBAA              jmp short 0x1858
000018AE  A15210            mov ax,[0x1052]
000018B1  3D301B            cmp ax,0x1b30
000018B4  7D0C              jnl 0x18c2
000018B6  E8A0FC            call 0x1559
000018B9  E887FD            call 0x1643
000018BC  A15210            mov ax,[0x1052]
000018BF  E95AFF            jmp 0x181c
000018C2  C6062E1000        mov byte [0x102e],0x0
000018C7  8B3E5210          mov di,[0x1052]
000018CB  83EF50            sub di,byte +0x50
000018CE  B405              mov ah,0x5
000018D0  B90300            mov cx,0x3
000018D3  26C7050000        mov word [es:di],0x0
000018D8  47                inc di
000018D9  E2F8              loop 0x18d3
000018DB  80EC01            sub ah,0x1
000018DE  7422              jz 0x1902
000018E0  83EF03            sub di,byte +0x3
000018E3  81C70020          add di,0x2000
000018E7  B90300            mov cx,0x3
000018EA  26C7050000        mov word [es:di],0x0
000018EF  47                inc di
000018F0  E2F8              loop 0x18ea
000018F2  83EF03            sub di,byte +0x3
000018F5  81EFB01F          sub di,0x1fb0
000018F9  2C01              sub al,0x1
000018FB  7405              jz 0x1902
000018FD  B90300            mov cx,0x3
00001900  EBD1              jmp short 0x18d3
00001902  E81E01            call 0x1a23
00001905  803E461004        cmp byte [0x1046],0x4
0000190A  7403              jz 0x190f
0000190C  E96500            jmp 0x1974
0000190F  C606461001        mov byte [0x1046],0x1
00001914  C6064C1001        mov byte [0x104c],0x1
00001919  BF2800            mov di,0x28
0000191C  B90400            mov cx,0x4
0000191F  30E4              xor ah,ah
00001921  268825            mov [es:di],ah
00001924  81C70020          add di,0x2000
00001928  268825            mov [es:di],ah
0000192B  81EFB01F          sub di,0x1fb0
0000192F  E2F0              loop 0x1921
00001931  B402              mov ah,0x2
00001933  B600              mov dh,0x0
00001935  B228              mov dl,0x28
00001937  B700              mov bh,0x0
00001939  CD10              int 0x10
0000193B  B40A              mov ah,0xa
0000193D  B90100            mov cx,0x1
00001940  B031              mov al,0x31
00001942  CD10              int 0x10
00001944  BF281E            mov di,0x1e28
00001947  268A05            mov al,[es:di]
0000194A  3C24              cmp al,0x24
0000194C  7403              jz 0x1951
0000194E  E91F00            jmp 0x1970
00001951  B009              mov al,0x9
00001953  BFD81D            mov di,0x1dd8
00001956  30E4              xor ah,ah
00001958  268825            mov [es:di],ah
0000195B  2C01              sub al,0x1
0000195D  7411              jz 0x1970
0000195F  81C70020          add di,0x2000
00001963  268825            mov [es:di],ah
00001966  2C01              sub al,0x1
00001968  7406              jz 0x1970
0000196A  81EFB01F          sub di,0x1fb0
0000196E  EBE8              jmp short 0x1958
00001970  E84900            call 0x19bc
00001973  C3                ret
00001974  803E461002        cmp byte [0x1046],0x2
00001979  7539              jnz 0x19b4
0000197B  C606461003        mov byte [0x1046],0x3
00001980  C6064C1002        mov byte [0x104c],0x2
00001985  30E4              xor ah,ah
00001987  BF2800            mov di,0x28
0000198A  B90400            mov cx,0x4
0000198D  268825            mov [es:di],ah
00001990  81C70020          add di,0x2000
00001994  268825            mov [es:di],ah
00001997  81EFB01F          sub di,0x1fb0
0000199B  E2F0              loop 0x198d
0000199D  B402              mov ah,0x2
0000199F  B600              mov dh,0x0
000019A1  B228              mov dl,0x28
000019A3  B700              mov bh,0x0
000019A5  CD10              int 0x10
000019A7  B40A              mov ah,0xa
000019A9  B90100            mov cx,0x1
000019AC  B032              mov al,0x32
000019AE  CD10              int 0x10
000019B0  E80900            call 0x19bc
000019B3  C3                ret
000019B4  FE064610          inc byte [0x1046]
000019B8  E80100            call 0x19bc
000019BB  C3                ret
000019BC  8B3E4E10          mov di,[0x104e]
000019C0  803E461001        cmp byte [0x1046],0x1
000019C5  7506              jnz 0x19cd
000019C7  BBD20E            mov bx,0xed2
000019CA  E91D00            jmp 0x19ea
000019CD  803E461002        cmp byte [0x1046],0x2
000019D2  7506              jnz 0x19da
000019D4  BBE10E            mov bx,0xee1
000019D7  E91000            jmp 0x19ea
000019DA  803E461003        cmp byte [0x1046],0x3
000019DF  7506              jnz 0x19e7
000019E1  BBF00E            mov bx,0xef0
000019E4  E90300            jmp 0x19ea
000019E7  BBFF0E            mov bx,0xeff
000019EA  B005              mov al,0x5
000019EC  B90300            mov cx,0x3
000019EF  8A27              mov ah,[bx]
000019F1  268825            mov [es:di],ah
000019F4  43                inc bx
000019F5  47                inc di
000019F6  E2F7              loop 0x19ef
000019F8  2C01              sub al,0x1
000019FA  7420              jz 0x1a1c
000019FC  83EF03            sub di,byte +0x3
000019FF  81C70020          add di,0x2000
00001A03  B90300            mov cx,0x3
00001A06  8A27              mov ah,[bx]
00001A08  268825            mov [es:di],ah
00001A0B  43                inc bx
00001A0C  47                inc di
00001A0D  E2F7              loop 0x1a06
00001A0F  2C01              sub al,0x1
00001A11  7409              jz 0x1a1c
00001A13  83EF03            sub di,byte +0x3
00001A16  81EFB01F          sub di,0x1fb0
00001A1A  EBD0              jmp short 0x19ec
00001A1C  C70638100000      mov word [0x1038],0x0
00001A22  C3                ret
00001A23  803E461003        cmp byte [0x1046],0x3
00001A28  7D03              jnl 0x1a2d
00001A2A  E92D01            jmp 0x1b5a
00001A2D  8A265A10          mov ah,[0x105a]
00001A31  80FC09            cmp ah,0x9
00001A34  743B              jz 0x1a71
00001A36  FEC4              inc ah
00001A38  88265A10          mov [0x105a],ah
00001A3C  BF4C00            mov di,0x4c
00001A3F  B90400            mov cx,0x4
00001A42  B400              mov ah,0x0
00001A44  268825            mov [es:di],ah
00001A47  81C70020          add di,0x2000
00001A4B  B400              mov ah,0x0
00001A4D  268825            mov [es:di],ah
00001A50  81EFB01F          sub di,0x1fb0
00001A54  E2EC              loop 0x1a42
00001A56  B402              mov ah,0x2
00001A58  B600              mov dh,0x0
00001A5A  B24C              mov dl,0x4c
00001A5C  B700              mov bh,0x0
00001A5E  CD10              int 0x10
00001A60  8A265A10          mov ah,[0x105a]
00001A64  80C430            add ah,0x30
00001A67  88E0              mov al,ah
00001A69  B40A              mov ah,0xa
00001A6B  B90100            mov cx,0x1
00001A6E  CD10              int 0x10
00001A70  C3                ret
00001A71  BF4C00            mov di,0x4c
00001A74  B90400            mov cx,0x4
00001A77  B400              mov ah,0x0
00001A79  268825            mov [es:di],ah
00001A7C  81C70020          add di,0x2000
00001A80  B400              mov ah,0x0
00001A82  268825            mov [es:di],ah
00001A85  81EFB01F          sub di,0x1fb0
00001A89  E2EC              loop 0x1a77
00001A8B  B402              mov ah,0x2
00001A8D  B600              mov dh,0x0
00001A8F  B24C              mov dl,0x4c
00001A91  B700              mov bh,0x0
00001A93  CD10              int 0x10
00001A95  28E4              sub ah,ah
00001A97  88265A10          mov [0x105a],ah
00001A9B  B030              mov al,0x30
00001A9D  B40A              mov ah,0xa
00001A9F  B90100            mov cx,0x1
00001AA2  CD10              int 0x10
00001AA4  8A265B10          mov ah,[0x105b]
00001AA8  80FC09            cmp ah,0x9
00001AAB  7437              jz 0x1ae4
00001AAD  FEC4              inc ah
00001AAF  88265B10          mov [0x105b],ah
00001AB3  BF4B00            mov di,0x4b
00001AB6  B90400            mov cx,0x4
00001AB9  B400              mov ah,0x0
00001ABB  268825            mov [es:di],ah
00001ABE  81C70020          add di,0x2000
00001AC2  B400              mov ah,0x0
00001AC4  268825            mov [es:di],ah
00001AC7  81EFB01F          sub di,0x1fb0
00001ACB  E2EC              loop 0x1ab9
00001ACD  B402              mov ah,0x2
00001ACF  B600              mov dh,0x0
00001AD1  B24B              mov dl,0x4b
00001AD3  B700              mov bh,0x0
00001AD5  CD10              int 0x10
00001AD7  A05B10            mov al,[0x105b]
00001ADA  0430              add al,0x30
00001ADC  B40A              mov ah,0xa
00001ADE  B90100            mov cx,0x1
00001AE1  CD10              int 0x10
00001AE3  C3                ret
00001AE4  BF4B00            mov di,0x4b
00001AE7  B90400            mov cx,0x4
00001AEA  B400              mov ah,0x0
00001AEC  268825            mov [es:di],ah
00001AEF  81C70020          add di,0x2000
00001AF3  B400              mov ah,0x0
00001AF5  268825            mov [es:di],ah
00001AF8  81EFB01F          sub di,0x1fb0
00001AFC  E2EC              loop 0x1aea
00001AFE  B402              mov ah,0x2
00001B00  B600              mov dh,0x0
00001B02  B24B              mov dl,0x4b
00001B04  B700              mov bh,0x0
00001B06  CD10              int 0x10
00001B08  28E4              sub ah,ah
00001B0A  88265B10          mov [0x105b],ah
00001B0E  B030              mov al,0x30
00001B10  B40A              mov ah,0xa
00001B12  B90100            mov cx,0x1
00001B15  CD10              int 0x10
00001B17  8A265C10          mov ah,[0x105c]
00001B1B  80FC09            cmp ah,0x9
00001B1E  7503              jnz 0x1b23
00001B20  E97500            jmp 0x1b98
00001B23  FEC4              inc ah
00001B25  88265C10          mov [0x105c],ah
00001B29  BF4A00            mov di,0x4a
00001B2C  B90400            mov cx,0x4
00001B2F  B400              mov ah,0x0
00001B31  268825            mov [es:di],ah
00001B34  81C70020          add di,0x2000
00001B38  B400              mov ah,0x0
00001B3A  268825            mov [es:di],ah
00001B3D  81EFB01F          sub di,0x1fb0
00001B41  E2EC              loop 0x1b2f
00001B43  B402              mov ah,0x2
00001B45  B600              mov dh,0x0
00001B47  B24A              mov dl,0x4a
00001B49  B700              mov bh,0x0
00001B4B  CD10              int 0x10
00001B4D  A05C10            mov al,[0x105c]
00001B50  0430              add al,0x30
00001B52  B40A              mov ah,0xa
00001B54  B90100            mov cx,0x1
00001B57  CD10              int 0x10
00001B59  C3                ret
00001B5A  8A265910          mov ah,[0x1059]
00001B5E  80FC09            cmp ah,0x9
00001B61  7568              jnz 0x1bcb
00001B63  BF4D00            mov di,0x4d
00001B66  B90400            mov cx,0x4
00001B69  B400              mov ah,0x0
00001B6B  268825            mov [es:di],ah
00001B6E  81C70020          add di,0x2000
00001B72  B400              mov ah,0x0
00001B74  268825            mov [es:di],ah
00001B77  81EFB01F          sub di,0x1fb0
00001B7B  E2EC              loop 0x1b69
00001B7D  B402              mov ah,0x2
00001B7F  B600              mov dh,0x0
00001B81  B24D              mov dl,0x4d
00001B83  B700              mov bh,0x0
00001B85  CD10              int 0x10
00001B87  28C0              sub al,al
00001B89  A25910            mov [0x1059],al
00001B8C  B030              mov al,0x30
00001B8E  B40A              mov ah,0xa
00001B90  B90100            mov cx,0x1
00001B93  CD10              int 0x10
00001B95  E995FE            jmp 0x1a2d
00001B98  28C0              sub al,al
00001B9A  A25C10            mov [0x105c],al
00001B9D  BF4A00            mov di,0x4a
00001BA0  B90400            mov cx,0x4
00001BA3  B400              mov ah,0x0
00001BA5  268825            mov [es:di],ah
00001BA8  81C70020          add di,0x2000
00001BAC  B400              mov ah,0x0
00001BAE  268825            mov [es:di],ah
00001BB1  81EFB01F          sub di,0x1fb0
00001BB5  E2EC              loop 0x1ba3
00001BB7  B402              mov ah,0x2
00001BB9  B600              mov dh,0x0
00001BBB  B24A              mov dl,0x4a
00001BBD  B700              mov bh,0x0
00001BBF  CD10              int 0x10
00001BC1  B030              mov al,0x30
00001BC3  B40A              mov ah,0xa
00001BC5  B90100            mov cx,0x1
00001BC8  CD10              int 0x10
00001BCA  C3                ret
00001BCB  FEC4              inc ah
00001BCD  88265910          mov [0x1059],ah
00001BD1  BF4D00            mov di,0x4d
00001BD4  B90400            mov cx,0x4
00001BD7  B400              mov ah,0x0
00001BD9  268825            mov [es:di],ah
00001BDC  81C70020          add di,0x2000
00001BE0  B400              mov ah,0x0
00001BE2  268825            mov [es:di],ah
00001BE5  81EFB01F          sub di,0x1fb0
00001BE9  E2EC              loop 0x1bd7
00001BEB  B402              mov ah,0x2
00001BED  B600              mov dh,0x0
00001BEF  B24D              mov dl,0x4d
00001BF1  B700              mov bh,0x0
00001BF3  CD10              int 0x10
00001BF5  A05910            mov al,[0x1059]
00001BF8  0430              add al,0x30
00001BFA  B40A              mov ah,0xa
00001BFC  B90100            mov cx,0x1
00001BFF  CD10              int 0x10
00001C01  C3                ret
00001C02  803E421001        cmp byte [0x1042],0x1
00001C07  7503              jnz 0x1c0c
00001C09  E94A00            jmp 0x1c56
00001C0C  803E441027        cmp byte [0x1044],0x27
00001C11  7542              jnz 0x1c55
00001C13  803E44102E        cmp byte [0x1044],0x2e
00001C18  7F3B              jg 0x1c55
00001C1A  C606421001        mov byte [0x1042],0x1
00001C1F  BFC83E            mov di,0x3ec8
00001C22  268A25            mov ah,[es:di]
00001C25  80FC00            cmp ah,0x0
00001C28  7526              jnz 0x1c50
00001C2A  BB570F            mov bx,0xf57
00001C2D  BFD81D            mov di,0x1dd8
00001C30  B009              mov al,0x9
00001C32  8A27              mov ah,[bx]
00001C34  268825            mov [es:di],ah
00001C37  43                inc bx
00001C38  2C01              sub al,0x1
00001C3A  741A              jz 0x1c56
00001C3C  81C70020          add di,0x2000
00001C40  8A27              mov ah,[bx]
00001C42  268825            mov [es:di],ah
00001C45  43                inc bx
00001C46  2C01              sub al,0x1
00001C48  740C              jz 0x1c56
00001C4A  81EFB01F          sub di,0x1fb0
00001C4E  EBE2              jmp short 0x1c32
00001C50  C606421000        mov byte [0x1042],0x0
00001C55  C3                ret
00001C56  BFC73E            mov di,0x3ec7
00001C59  268A25            mov ah,[es:di]
00001C5C  80FC00            cmp ah,0x0
00001C5F  7403              jz 0x1c64
00001C61  E90B00            jmp 0x1c6f
00001C64  BFC93E            mov di,0x3ec9
00001C67  268A25            mov ah,[es:di]
00001C6A  80FC00            cmp ah,0x0
00001C6D  74E6              jz 0x1c55
00001C6F  C7062C103C73      mov word [0x102c],0x733c
00001C75  C7062A103075      mov word [0x102a],0x7530
00001C7B  E8DE0D            call 0x2a5c
00001C7E  B009              mov al,0x9
00001C80  BFD81D            mov di,0x1dd8
00001C83  30E4              xor ah,ah
00001C85  268825            mov [es:di],ah
00001C88  2C01              sub al,0x1
00001C8A  7411              jz 0x1c9d
00001C8C  81C70020          add di,0x2000
00001C90  268825            mov [es:di],ah
00001C93  2C01              sub al,0x1
00001C95  7406              jz 0x1c9d
00001C97  81EFB01F          sub di,0x1fb0
00001C9B  EBE8              jmp short 0x1c85
00001C9D  30C0              xor al,al
00001C9F  A24210            mov [0x1042],al
00001CA2  8B0E3A10          mov cx,[0x103a]
00001CA6  8B3E5010          mov di,[0x1050]
00001CAA  01CF              add di,cx
00001CAC  B00F              mov al,0xf
00001CAE  B90300            mov cx,0x3
00001CB1  30E4              xor ah,ah
00001CB3  268825            mov [es:di],ah
00001CB6  47                inc di
00001CB7  E2FA              loop 0x1cb3
00001CB9  2C01              sub al,0x1
00001CBB  7420              jz 0x1cdd
00001CBD  83EF03            sub di,byte +0x3
00001CC0  81EFB01F          sub di,0x1fb0
00001CC4  B90300            mov cx,0x3
00001CC7  268825            mov [es:di],ah
00001CCA  47                inc di
00001CCB  E2FA              loop 0x1cc7
00001CCD  2C01              sub al,0x1
00001CCF  740C              jz 0x1cdd
00001CD1  83EF03            sub di,byte +0x3
00001CD4  81C70020          add di,0x2000
00001CD8  B90300            mov cx,0x3
00001CDB  EBD6              jmp short 0x1cb3
00001CDD  A04D10            mov al,[0x104d]
00001CE0  3C00              cmp al,0x0
00001CE2  744A              jz 0x1d2e
00001CE4  3C03              cmp al,0x3
00001CE6  751F              jnz 0x1d07
00001CE8  30E4              xor ah,ah
00001CEA  B008              mov al,0x8
00001CEC  BF3A00            mov di,0x3a
00001CEF  268825            mov [es:di],ah
00001CF2  2C01              sub al,0x1
00001CF4  7434              jz 0x1d2a
00001CF6  81C70020          add di,0x2000
00001CFA  268825            mov [es:di],ah
00001CFD  2C01              sub al,0x1
00001CFF  7429              jz 0x1d2a
00001D01  81EFB01F          sub di,0x1fb0
00001D05  EBE8              jmp short 0x1cef
00001D07  3C02              cmp al,0x2
00001D09  751F              jnz 0x1d2a
00001D0B  30E4              xor ah,ah
00001D0D  B008              mov al,0x8
00001D0F  BF3900            mov di,0x39
00001D12  268825            mov [es:di],ah
00001D15  2C01              sub al,0x1
00001D17  7411              jz 0x1d2a
00001D19  81C70020          add di,0x2000
00001D1D  268825            mov [es:di],ah
00001D20  2C01              sub al,0x1
00001D22  7406              jz 0x1d2a
00001D24  81EFB01F          sub di,0x1fb0
00001D28  EBE8              jmp short 0x1d12
00001D2A  FE0E4D10          dec byte [0x104d]
00001D2E  B307              mov bl,0x7
00001D30  B008              mov al,0x8
00001D32  B90300            mov cx,0x3
00001D35  B4FF              mov ah,0xff
00001D37  BFD71D            mov di,0x1dd7
00001D3A  268825            mov [es:di],ah
00001D3D  47                inc di
00001D3E  E2FA              loop 0x1d3a
00001D40  2C01              sub al,0x1
00001D42  7420              jz 0x1d64
00001D44  83EF03            sub di,byte +0x3
00001D47  81C70020          add di,0x2000
00001D4B  B90300            mov cx,0x3
00001D4E  268825            mov [es:di],ah
00001D51  47                inc di
00001D52  E2FA              loop 0x1d4e
00001D54  2C01              sub al,0x1
00001D56  740C              jz 0x1d64
00001D58  83EF03            sub di,byte +0x3
00001D5B  81EFB01F          sub di,0x1fb0
00001D5F  B90300            mov cx,0x3
00001D62  EBD6              jmp short 0x1d3a
00001D64  B82823            mov ax,0x2328
00001D67  2D0100            sub ax,0x1
00001D6A  7402              jz 0x1d6e
00001D6C  EBF9              jmp short 0x1d67
00001D6E  80EB01            sub bl,0x1
00001D71  7446              jz 0x1db9
00001D73  B008              mov al,0x8
00001D75  B90300            mov cx,0x3
00001D78  30E4              xor ah,ah
00001D7A  BFD71D            mov di,0x1dd7
00001D7D  268825            mov [es:di],ah
00001D80  47                inc di
00001D81  E2FA              loop 0x1d7d
00001D83  2C01              sub al,0x1
00001D85  7420              jz 0x1da7
00001D87  83EF03            sub di,byte +0x3
00001D8A  81C70020          add di,0x2000
00001D8E  B90300            mov cx,0x3
00001D91  268825            mov [es:di],ah
00001D94  47                inc di
00001D95  E2FA              loop 0x1d91
00001D97  2C01              sub al,0x1
00001D99  740C              jz 0x1da7
00001D9B  83EF03            sub di,byte +0x3
00001D9E  81EFB01F          sub di,0x1fb0
00001DA2  B90300            mov cx,0x3
00001DA5  EBD6              jmp short 0x1d7d
00001DA7  B82823            mov ax,0x2328
00001DAA  2D0100            sub ax,0x1
00001DAD  7402              jz 0x1db1
00001DAF  EBF9              jmp short 0x1daa
00001DB1  80EB01            sub bl,0x1
00001DB4  7403              jz 0x1db9
00001DB6  E977FF            jmp 0x1d30
00001DB9  B47E              mov ah,0x7e
00001DBB  BF751E            mov di,0x1e75
00001DBE  268825            mov [es:di],ah
00001DC1  81C70020          add di,0x2000
00001DC5  268825            mov [es:di],ah
00001DC8  81EFB01F          sub di,0x1fb0
00001DCC  268825            mov [es:di],ah
00001DCF  81C70020          add di,0x2000
00001DD3  268825            mov [es:di],ah
00001DD6  BF361D            mov di,0x1d36
00001DD9  268825            mov [es:di],ah
00001DDC  81C70020          add di,0x2000
00001DE0  268825            mov [es:di],ah
00001DE3  81EFB01F          sub di,0x1fb0
00001DE7  268825            mov [es:di],ah
00001DEA  81C70020          add di,0x2000
00001DEE  268825            mov [es:di],ah
00001DF1  BFF81B            mov di,0x1bf8
00001DF4  268825            mov [es:di],ah
00001DF7  81C70020          add di,0x2000
00001DFB  268825            mov [es:di],ah
00001DFE  81EFB01F          sub di,0x1fb0
00001E02  268825            mov [es:di],ah
00001E05  81C70020          add di,0x2000
00001E09  268825            mov [es:di],ah
00001E0C  BF3A1D            mov di,0x1d3a
00001E0F  268825            mov [es:di],ah
00001E12  81C70020          add di,0x2000
00001E16  268825            mov [es:di],ah
00001E19  81EFB01F          sub di,0x1fb0
00001E1D  268825            mov [es:di],ah
00001E20  81C70020          add di,0x2000
00001E24  268825            mov [es:di],ah
00001E27  BF7B1E            mov di,0x1e7b
00001E2A  268825            mov [es:di],ah
00001E2D  81C70020          add di,0x2000
00001E31  268825            mov [es:di],ah
00001E34  81EFB01F          sub di,0x1fb0
00001E38  268825            mov [es:di],ah
00001E3B  81C70020          add di,0x2000
00001E3F  268825            mov [es:di],ah
00001E42  B8F82A            mov ax,0x2af8
00001E45  2D0100            sub ax,0x1
00001E48  7402              jz 0x1e4c
00001E4A  EBF9              jmp short 0x1e45
00001E4C  30E4              xor ah,ah
00001E4E  BF751E            mov di,0x1e75
00001E51  268825            mov [es:di],ah
00001E54  81C70020          add di,0x2000
00001E58  268825            mov [es:di],ah
00001E5B  81EFB01F          sub di,0x1fb0
00001E5F  268825            mov [es:di],ah
00001E62  81C70020          add di,0x2000
00001E66  268825            mov [es:di],ah
00001E69  BF361D            mov di,0x1d36
00001E6C  268825            mov [es:di],ah
00001E6F  81C70020          add di,0x2000
00001E73  268825            mov [es:di],ah
00001E76  81EFB01F          sub di,0x1fb0
00001E7A  268825            mov [es:di],ah
00001E7D  81C70020          add di,0x2000
00001E81  268825            mov [es:di],ah
00001E84  BFF81B            mov di,0x1bf8
00001E87  268825            mov [es:di],ah
00001E8A  81C70020          add di,0x2000
00001E8E  268825            mov [es:di],ah
00001E91  81EFB01F          sub di,0x1fb0
00001E95  268825            mov [es:di],ah
00001E98  81C70020          add di,0x2000
00001E9C  268825            mov [es:di],ah
00001E9F  BF3A1D            mov di,0x1d3a
00001EA2  268825            mov [es:di],ah
00001EA5  81C70020          add di,0x2000
00001EA9  268825            mov [es:di],ah
00001EAC  81EFB01F          sub di,0x1fb0
00001EB0  268825            mov [es:di],ah
00001EB3  81C70020          add di,0x2000
00001EB7  268825            mov [es:di],ah
00001EBA  BF7B1E            mov di,0x1e7b
00001EBD  268825            mov [es:di],ah
00001EC0  81C70020          add di,0x2000
00001EC4  268825            mov [es:di],ah
00001EC7  81EFB01F          sub di,0x1fb0
00001ECB  268825            mov [es:di],ah
00001ECE  81C70020          add di,0x2000
00001ED2  268825            mov [es:di],ah
00001ED5  B47E              mov ah,0x7e
00001ED7  BF741E            mov di,0x1e74
00001EDA  268825            mov [es:di],ah
00001EDD  81C70020          add di,0x2000
00001EE1  268825            mov [es:di],ah
00001EE4  81EFB01F          sub di,0x1fb0
00001EE8  268825            mov [es:di],ah
00001EEB  81C70020          add di,0x2000
00001EEF  268825            mov [es:di],ah
00001EF2  BFF51B            mov di,0x1bf5
00001EF5  268825            mov [es:di],ah
00001EF8  81C70020          add di,0x2000
00001EFC  268825            mov [es:di],ah
00001EFF  81EFB01F          sub di,0x1fb0
00001F03  268825            mov [es:di],ah
00001F06  81C70020          add di,0x2000
00001F0A  268825            mov [es:di],ah
00001F0D  BFB81A            mov di,0x1ab8
00001F10  268825            mov [es:di],ah
00001F13  81C70020          add di,0x2000
00001F17  268825            mov [es:di],ah
00001F1A  81EFB01F          sub di,0x1fb0
00001F1E  268825            mov [es:di],ah
00001F21  81C70020          add di,0x2000
00001F25  268825            mov [es:di],ah
00001F28  BFFB1B            mov di,0x1bfb
00001F2B  268825            mov [es:di],ah
00001F2E  81C70020          add di,0x2000
00001F32  268825            mov [es:di],ah
00001F35  81EFB01F          sub di,0x1fb0
00001F39  268825            mov [es:di],ah
00001F3C  81C70020          add di,0x2000
00001F40  268825            mov [es:di],ah
00001F43  BF7C1E            mov di,0x1e7c
00001F46  268825            mov [es:di],ah
00001F49  81C70020          add di,0x2000
00001F4D  268825            mov [es:di],ah
00001F50  81EFB01F          sub di,0x1fb0
00001F54  268825            mov [es:di],ah
00001F57  81C70020          add di,0x2000
00001F5B  268825            mov [es:di],ah
00001F5E  B8F82A            mov ax,0x2af8
00001F61  2D0100            sub ax,0x1
00001F64  7402              jz 0x1f68
00001F66  EBF9              jmp short 0x1f61
00001F68  30E4              xor ah,ah
00001F6A  BF741E            mov di,0x1e74
00001F6D  268825            mov [es:di],ah
00001F70  81C70020          add di,0x2000
00001F74  268825            mov [es:di],ah
00001F77  81EFB01F          sub di,0x1fb0
00001F7B  268825            mov [es:di],ah
00001F7E  81C70020          add di,0x2000
00001F82  268825            mov [es:di],ah
00001F85  BFF51B            mov di,0x1bf5
00001F88  268825            mov [es:di],ah
00001F8B  81C70020          add di,0x2000
00001F8F  268825            mov [es:di],ah
00001F92  81EFB01F          sub di,0x1fb0
00001F96  268825            mov [es:di],ah
00001F99  81C70020          add di,0x2000
00001F9D  268825            mov [es:di],ah
00001FA0  BFB81A            mov di,0x1ab8
00001FA3  268825            mov [es:di],ah
00001FA6  81C70020          add di,0x2000
00001FAA  268825            mov [es:di],ah
00001FAD  81EFB01F          sub di,0x1fb0
00001FB1  268825            mov [es:di],ah
00001FB4  81C70020          add di,0x2000
00001FB8  268825            mov [es:di],ah
00001FBB  BFFB1B            mov di,0x1bfb
00001FBE  268825            mov [es:di],ah
00001FC1  81C70020          add di,0x2000
00001FC5  268825            mov [es:di],ah
00001FC8  81EFB01F          sub di,0x1fb0
00001FCC  268825            mov [es:di],ah
00001FCF  81C70020          add di,0x2000
00001FD3  268825            mov [es:di],ah
00001FD6  BF7C1E            mov di,0x1e7c
00001FD9  268825            mov [es:di],ah
00001FDC  81C70020          add di,0x2000
00001FE0  268825            mov [es:di],ah
00001FE3  81EFB01F          sub di,0x1fb0
00001FE7  268825            mov [es:di],ah
00001FEA  81C70020          add di,0x2000
00001FEE  268825            mov [es:di],ah
00001FF1  B43C              mov ah,0x3c
00001FF3  BF731E            mov di,0x1e73
00001FF6  268825            mov [es:di],ah
00001FF9  81C70020          add di,0x2000
00001FFD  268825            mov [es:di],ah
00002000  81EFB01F          sub di,0x1fb0
00002004  268825            mov [es:di],ah
00002007  81C70020          add di,0x2000
0000200B  268825            mov [es:di],ah
0000200E  BFB41A            mov di,0x1ab4
00002011  268825            mov [es:di],ah
00002014  81C70020          add di,0x2000
00002018  268825            mov [es:di],ah
0000201B  81EFB01F          sub di,0x1fb0
0000201F  268825            mov [es:di],ah
00002022  81C70020          add di,0x2000
00002026  268825            mov [es:di],ah
00002029  BF7819            mov di,0x1978
0000202C  268825            mov [es:di],ah
0000202F  81C70020          add di,0x2000
00002033  268825            mov [es:di],ah
00002036  81EFB01F          sub di,0x1fb0
0000203A  268825            mov [es:di],ah
0000203D  81C70020          add di,0x2000
00002041  268825            mov [es:di],ah
00002044  BFBC1A            mov di,0x1abc
00002047  268825            mov [es:di],ah
0000204A  81C70020          add di,0x2000
0000204E  268825            mov [es:di],ah
00002051  81EFB01F          sub di,0x1fb0
00002055  268825            mov [es:di],ah
00002058  81C70020          add di,0x2000
0000205C  268825            mov [es:di],ah
0000205F  BF7D1E            mov di,0x1e7d
00002062  268825            mov [es:di],ah
00002065  81C70020          add di,0x2000
00002069  268825            mov [es:di],ah
0000206C  81EFB01F          sub di,0x1fb0
00002070  268825            mov [es:di],ah
00002073  81C70020          add di,0x2000
00002077  268825            mov [es:di],ah
0000207A  BFD71D            mov di,0x1dd7
0000207D  30E4              xor ah,ah
0000207F  B008              mov al,0x8
00002081  B90300            mov cx,0x3
00002084  268825            mov [es:di],ah
00002087  47                inc di
00002088  E2FA              loop 0x2084
0000208A  2C01              sub al,0x1
0000208C  7420              jz 0x20ae
0000208E  83EF03            sub di,byte +0x3
00002091  81C70020          add di,0x2000
00002095  B90300            mov cx,0x3
00002098  268825            mov [es:di],ah
0000209B  47                inc di
0000209C  E2FA              loop 0x2098
0000209E  2C01              sub al,0x1
000020A0  740C              jz 0x20ae
000020A2  83EF03            sub di,byte +0x3
000020A5  81EFB01F          sub di,0x1fb0
000020A9  B90300            mov cx,0x3
000020AC  EBD6              jmp short 0x2084
000020AE  B8F82A            mov ax,0x2af8
000020B1  2D0100            sub ax,0x1
000020B4  7402              jz 0x20b8
000020B6  EBF9              jmp short 0x20b1
000020B8  BFD71D            mov di,0x1dd7
000020BB  B4FF              mov ah,0xff
000020BD  B008              mov al,0x8
000020BF  B90300            mov cx,0x3
000020C2  268825            mov [es:di],ah
000020C5  47                inc di
000020C6  E2FA              loop 0x20c2
000020C8  2C01              sub al,0x1
000020CA  7420              jz 0x20ec
000020CC  83EF03            sub di,byte +0x3
000020CF  81C70020          add di,0x2000
000020D3  B90300            mov cx,0x3
000020D6  268825            mov [es:di],ah
000020D9  47                inc di
000020DA  E2FA              loop 0x20d6
000020DC  2C01              sub al,0x1
000020DE  740C              jz 0x20ec
000020E0  83EF03            sub di,byte +0x3
000020E3  81EFB01F          sub di,0x1fb0
000020E7  B90300            mov cx,0x3
000020EA  EBD6              jmp short 0x20c2
000020EC  B47E              mov ah,0x7e
000020EE  BF751E            mov di,0x1e75
000020F1  268825            mov [es:di],ah
000020F4  81C70020          add di,0x2000
000020F8  268825            mov [es:di],ah
000020FB  81EFB01F          sub di,0x1fb0
000020FF  268825            mov [es:di],ah
00002102  81C70020          add di,0x2000
00002106  268825            mov [es:di],ah
00002109  BF361D            mov di,0x1d36
0000210C  268825            mov [es:di],ah
0000210F  81C70020          add di,0x2000
00002113  268825            mov [es:di],ah
00002116  81EFB01F          sub di,0x1fb0
0000211A  268825            mov [es:di],ah
0000211D  81C70020          add di,0x2000
00002121  268825            mov [es:di],ah
00002124  BFF81B            mov di,0x1bf8
00002127  268825            mov [es:di],ah
0000212A  81C70020          add di,0x2000
0000212E  268825            mov [es:di],ah
00002131  81EFB01F          sub di,0x1fb0
00002135  268825            mov [es:di],ah
00002138  81C70020          add di,0x2000
0000213C  268825            mov [es:di],ah
0000213F  BF3A1D            mov di,0x1d3a
00002142  268825            mov [es:di],ah
00002145  81C70020          add di,0x2000
00002149  268825            mov [es:di],ah
0000214C  81EFB01F          sub di,0x1fb0
00002150  268825            mov [es:di],ah
00002153  81C70020          add di,0x2000
00002157  268825            mov [es:di],ah
0000215A  BF7B1E            mov di,0x1e7b
0000215D  268825            mov [es:di],ah
00002160  81C70020          add di,0x2000
00002164  268825            mov [es:di],ah
00002167  81EFB01F          sub di,0x1fb0
0000216B  268825            mov [es:di],ah
0000216E  81C70020          add di,0x2000
00002172  268825            mov [es:di],ah
00002175  B8F82A            mov ax,0x2af8
00002178  2D0100            sub ax,0x1
0000217B  7402              jz 0x217f
0000217D  EBF9              jmp short 0x2178
0000217F  30E4              xor ah,ah
00002181  BF731E            mov di,0x1e73
00002184  268825            mov [es:di],ah
00002187  81C70020          add di,0x2000
0000218B  268825            mov [es:di],ah
0000218E  81EFB01F          sub di,0x1fb0
00002192  268825            mov [es:di],ah
00002195  81C70020          add di,0x2000
00002199  268825            mov [es:di],ah
0000219C  BFB41A            mov di,0x1ab4
0000219F  268825            mov [es:di],ah
000021A2  81C70020          add di,0x2000
000021A6  268825            mov [es:di],ah
000021A9  81EFB01F          sub di,0x1fb0
000021AD  268825            mov [es:di],ah
000021B0  81C70020          add di,0x2000
000021B4  268825            mov [es:di],ah
000021B7  BF7819            mov di,0x1978
000021BA  268825            mov [es:di],ah
000021BD  81C70020          add di,0x2000
000021C1  268825            mov [es:di],ah
000021C4  81EFB01F          sub di,0x1fb0
000021C8  268825            mov [es:di],ah
000021CB  81C70020          add di,0x2000
000021CF  268825            mov [es:di],ah
000021D2  BFBC1A            mov di,0x1abc
000021D5  268825            mov [es:di],ah
000021D8  81C70020          add di,0x2000
000021DC  268825            mov [es:di],ah
000021DF  81EFB01F          sub di,0x1fb0
000021E3  268825            mov [es:di],ah
000021E6  81C70020          add di,0x2000
000021EA  268825            mov [es:di],ah
000021ED  BF7D1E            mov di,0x1e7d
000021F0  268825            mov [es:di],ah
000021F3  81C70020          add di,0x2000
000021F7  268825            mov [es:di],ah
000021FA  81EFB01F          sub di,0x1fb0
000021FE  268825            mov [es:di],ah
00002201  81C70020          add di,0x2000
00002205  268825            mov [es:di],ah
00002208  B43C              mov ah,0x3c
0000220A  BF721E            mov di,0x1e72
0000220D  268825            mov [es:di],ah
00002210  81C70020          add di,0x2000
00002214  268825            mov [es:di],ah
00002217  81EFB01F          sub di,0x1fb0
0000221B  268825            mov [es:di],ah
0000221E  81C70020          add di,0x2000
00002222  268825            mov [es:di],ah
00002225  BF7319            mov di,0x1973
00002228  268825            mov [es:di],ah
0000222B  81C70020          add di,0x2000
0000222F  268825            mov [es:di],ah
00002232  81EFB01F          sub di,0x1fb0
00002236  268825            mov [es:di],ah
00002239  81C70020          add di,0x2000
0000223D  268825            mov [es:di],ah
00002240  BF3818            mov di,0x1838
00002243  268825            mov [es:di],ah
00002246  81C70020          add di,0x2000
0000224A  268825            mov [es:di],ah
0000224D  81EFB01F          sub di,0x1fb0
00002251  268825            mov [es:di],ah
00002254  81C70020          add di,0x2000
00002258  268825            mov [es:di],ah
0000225B  BF7D19            mov di,0x197d
0000225E  268825            mov [es:di],ah
00002261  81C70020          add di,0x2000
00002265  268825            mov [es:di],ah
00002268  81EFB01F          sub di,0x1fb0
0000226C  268825            mov [es:di],ah
0000226F  81C70020          add di,0x2000
00002273  268825            mov [es:di],ah
00002276  BF7E1E            mov di,0x1e7e
00002279  268825            mov [es:di],ah
0000227C  81C70020          add di,0x2000
00002280  268825            mov [es:di],ah
00002283  81EFB01F          sub di,0x1fb0
00002287  268825            mov [es:di],ah
0000228A  81C70020          add di,0x2000
0000228E  268825            mov [es:di],ah
00002291  30E4              xor ah,ah
00002293  BF751E            mov di,0x1e75
00002296  268825            mov [es:di],ah
00002299  81C70020          add di,0x2000
0000229D  268825            mov [es:di],ah
000022A0  81EFB01F          sub di,0x1fb0
000022A4  268825            mov [es:di],ah
000022A7  81C70020          add di,0x2000
000022AB  268825            mov [es:di],ah
000022AE  BF361D            mov di,0x1d36
000022B1  268825            mov [es:di],ah
000022B4  81C70020          add di,0x2000
000022B8  268825            mov [es:di],ah
000022BB  81EFB01F          sub di,0x1fb0
000022BF  268825            mov [es:di],ah
000022C2  81C70020          add di,0x2000
000022C6  268825            mov [es:di],ah
000022C9  BFF81B            mov di,0x1bf8
000022CC  268825            mov [es:di],ah
000022CF  81C70020          add di,0x2000
000022D3  268825            mov [es:di],ah
000022D6  81EFB01F          sub di,0x1fb0
000022DA  268825            mov [es:di],ah
000022DD  81C70020          add di,0x2000
000022E1  268825            mov [es:di],ah
000022E4  BF3A1D            mov di,0x1d3a
000022E7  268825            mov [es:di],ah
000022EA  81C70020          add di,0x2000
000022EE  268825            mov [es:di],ah
000022F1  81EFB01F          sub di,0x1fb0
000022F5  268825            mov [es:di],ah
000022F8  81C70020          add di,0x2000
000022FC  268825            mov [es:di],ah
000022FF  BF7B1E            mov di,0x1e7b
00002302  268825            mov [es:di],ah
00002305  81C70020          add di,0x2000
00002309  268825            mov [es:di],ah
0000230C  81EFB01F          sub di,0x1fb0
00002310  268825            mov [es:di],ah
00002313  81C70020          add di,0x2000
00002317  268825            mov [es:di],ah
0000231A  B47E              mov ah,0x7e
0000231C  BF741E            mov di,0x1e74
0000231F  268825            mov [es:di],ah
00002322  81C70020          add di,0x2000
00002326  268825            mov [es:di],ah
00002329  81EFB01F          sub di,0x1fb0
0000232D  268825            mov [es:di],ah
00002330  81C70020          add di,0x2000
00002334  268825            mov [es:di],ah
00002337  BFF51B            mov di,0x1bf5
0000233A  268825            mov [es:di],ah
0000233D  81C70020          add di,0x2000
00002341  268825            mov [es:di],ah
00002344  81EFB01F          sub di,0x1fb0
00002348  268825            mov [es:di],ah
0000234B  81C70020          add di,0x2000
0000234F  268825            mov [es:di],ah
00002352  BFB81A            mov di,0x1ab8
00002355  268825            mov [es:di],ah
00002358  81C70020          add di,0x2000
0000235C  268825            mov [es:di],ah
0000235F  81EFB01F          sub di,0x1fb0
00002363  268825            mov [es:di],ah
00002366  81C70020          add di,0x2000
0000236A  268825            mov [es:di],ah
0000236D  BFFB1B            mov di,0x1bfb
00002370  268825            mov [es:di],ah
00002373  81C70020          add di,0x2000
00002377  268825            mov [es:di],ah
0000237A  81EFB01F          sub di,0x1fb0
0000237E  268825            mov [es:di],ah
00002381  81C70020          add di,0x2000
00002385  268825            mov [es:di],ah
00002388  BF7C1E            mov di,0x1e7c
0000238B  268825            mov [es:di],ah
0000238E  81C70020          add di,0x2000
00002392  268825            mov [es:di],ah
00002395  81EFB01F          sub di,0x1fb0
00002399  268825            mov [es:di],ah
0000239C  81C70020          add di,0x2000
000023A0  268825            mov [es:di],ah
000023A3  B8F82A            mov ax,0x2af8
000023A6  2D0100            sub ax,0x1
000023A9  7402              jz 0x23ad
000023AB  EBF9              jmp short 0x23a6
000023AD  30E4              xor ah,ah
000023AF  BF721E            mov di,0x1e72
000023B2  268825            mov [es:di],ah
000023B5  81C70020          add di,0x2000
000023B9  268825            mov [es:di],ah
000023BC  81EFB01F          sub di,0x1fb0
000023C0  268825            mov [es:di],ah
000023C3  81C70020          add di,0x2000
000023C7  268825            mov [es:di],ah
000023CA  BF7319            mov di,0x1973
000023CD  268825            mov [es:di],ah
000023D0  81C70020          add di,0x2000
000023D4  268825            mov [es:di],ah
000023D7  81EFB01F          sub di,0x1fb0
000023DB  268825            mov [es:di],ah
000023DE  81C70020          add di,0x2000
000023E2  268825            mov [es:di],ah
000023E5  BF3818            mov di,0x1838
000023E8  268825            mov [es:di],ah
000023EB  81C70020          add di,0x2000
000023EF  268825            mov [es:di],ah
000023F2  81EFB01F          sub di,0x1fb0
000023F6  268825            mov [es:di],ah
000023F9  81C70020          add di,0x2000
000023FD  268825            mov [es:di],ah
00002400  BF7D19            mov di,0x197d
00002403  268825            mov [es:di],ah
00002406  81C70020          add di,0x2000
0000240A  268825            mov [es:di],ah
0000240D  81EFB01F          sub di,0x1fb0
00002411  268825            mov [es:di],ah
00002414  81C70020          add di,0x2000
00002418  268825            mov [es:di],ah
0000241B  BF7E1E            mov di,0x1e7e
0000241E  268825            mov [es:di],ah
00002421  81C70020          add di,0x2000
00002425  268825            mov [es:di],ah
00002428  81EFB01F          sub di,0x1fb0
0000242C  268825            mov [es:di],ah
0000242F  81C70020          add di,0x2000
00002433  268825            mov [es:di],ah
00002436  B418              mov ah,0x18
00002438  BF711E            mov di,0x1e71
0000243B  268825            mov [es:di],ah
0000243E  81C70020          add di,0x2000
00002442  268825            mov [es:di],ah
00002445  81EFB01F          sub di,0x1fb0
00002449  268825            mov [es:di],ah
0000244C  81C70020          add di,0x2000
00002450  268825            mov [es:di],ah
00002453  BF3218            mov di,0x1832
00002456  268825            mov [es:di],ah
00002459  81C70020          add di,0x2000
0000245D  268825            mov [es:di],ah
00002460  81EFB01F          sub di,0x1fb0
00002464  268825            mov [es:di],ah
00002467  81C70020          add di,0x2000
0000246B  268825            mov [es:di],ah
0000246E  BFF816            mov di,0x16f8
00002471  268825            mov [es:di],ah
00002474  81C70020          add di,0x2000
00002478  268825            mov [es:di],ah
0000247B  81EFB01F          sub di,0x1fb0
0000247F  268825            mov [es:di],ah
00002482  81C70020          add di,0x2000
00002486  268825            mov [es:di],ah
00002489  BF3E18            mov di,0x183e
0000248C  268825            mov [es:di],ah
0000248F  81C70020          add di,0x2000
00002493  268825            mov [es:di],ah
00002496  81EFB01F          sub di,0x1fb0
0000249A  268825            mov [es:di],ah
0000249D  81C70020          add di,0x2000
000024A1  268825            mov [es:di],ah
000024A4  BF7F1E            mov di,0x1e7f
000024A7  268825            mov [es:di],ah
000024AA  81C70020          add di,0x2000
000024AE  268825            mov [es:di],ah
000024B1  81EFB01F          sub di,0x1fb0
000024B5  268825            mov [es:di],ah
000024B8  81C70020          add di,0x2000
000024BC  268825            mov [es:di],ah
000024BF  30E4              xor ah,ah
000024C1  BF741E            mov di,0x1e74
000024C4  268825            mov [es:di],ah
000024C7  81C70020          add di,0x2000
000024CB  268825            mov [es:di],ah
000024CE  81EFB01F          sub di,0x1fb0
000024D2  268825            mov [es:di],ah
000024D5  81C70020          add di,0x2000
000024D9  268825            mov [es:di],ah
000024DC  BFF51B            mov di,0x1bf5
000024DF  268825            mov [es:di],ah
000024E2  81C70020          add di,0x2000
000024E6  268825            mov [es:di],ah
000024E9  81EFB01F          sub di,0x1fb0
000024ED  268825            mov [es:di],ah
000024F0  81C70020          add di,0x2000
000024F4  268825            mov [es:di],ah
000024F7  BFB81A            mov di,0x1ab8
000024FA  268825            mov [es:di],ah
000024FD  81C70020          add di,0x2000
00002501  268825            mov [es:di],ah
00002504  81EFB01F          sub di,0x1fb0
00002508  268825            mov [es:di],ah
0000250B  81C70020          add di,0x2000
0000250F  268825            mov [es:di],ah
00002512  BFFB1B            mov di,0x1bfb
00002515  268825            mov [es:di],ah
00002518  81C70020          add di,0x2000
0000251C  268825            mov [es:di],ah
0000251F  81EFB01F          sub di,0x1fb0
00002523  268825            mov [es:di],ah
00002526  81C70020          add di,0x2000
0000252A  268825            mov [es:di],ah
0000252D  BF7C1E            mov di,0x1e7c
00002530  268825            mov [es:di],ah
00002533  81C70020          add di,0x2000
00002537  268825            mov [es:di],ah
0000253A  81EFB01F          sub di,0x1fb0
0000253E  268825            mov [es:di],ah
00002541  81C70020          add di,0x2000
00002545  268825            mov [es:di],ah
00002548  B43C              mov ah,0x3c
0000254A  BF731E            mov di,0x1e73
0000254D  268825            mov [es:di],ah
00002550  81C70020          add di,0x2000
00002554  268825            mov [es:di],ah
00002557  81EFB01F          sub di,0x1fb0
0000255B  268825            mov [es:di],ah
0000255E  81C70020          add di,0x2000
00002562  268825            mov [es:di],ah
00002565  BFB41A            mov di,0x1ab4
00002568  268825            mov [es:di],ah
0000256B  81C70020          add di,0x2000
0000256F  268825            mov [es:di],ah
00002572  81EFB01F          sub di,0x1fb0
00002576  268825            mov [es:di],ah
00002579  81C70020          add di,0x2000
0000257D  268825            mov [es:di],ah
00002580  BF7819            mov di,0x1978
00002583  268825            mov [es:di],ah
00002586  81C70020          add di,0x2000
0000258A  268825            mov [es:di],ah
0000258D  81EFB01F          sub di,0x1fb0
00002591  268825            mov [es:di],ah
00002594  81C70020          add di,0x2000
00002598  268825            mov [es:di],ah
0000259B  BFBC1A            mov di,0x1abc
0000259E  268825            mov [es:di],ah
000025A1  81C70020          add di,0x2000
000025A5  268825            mov [es:di],ah
000025A8  81EFB01F          sub di,0x1fb0
000025AC  268825            mov [es:di],ah
000025AF  81C70020          add di,0x2000
000025B3  268825            mov [es:di],ah
000025B6  BF7D1E            mov di,0x1e7d
000025B9  268825            mov [es:di],ah
000025BC  81C70020          add di,0x2000
000025C0  268825            mov [es:di],ah
000025C3  81EFB01F          sub di,0x1fb0
000025C7  268825            mov [es:di],ah
000025CA  81C70020          add di,0x2000
000025CE  268825            mov [es:di],ah
000025D1  B8F82A            mov ax,0x2af8
000025D4  2D0100            sub ax,0x1
000025D7  7402              jz 0x25db
000025D9  EBF9              jmp short 0x25d4
000025DB  30E4              xor ah,ah
000025DD  BF711E            mov di,0x1e71
000025E0  268825            mov [es:di],ah
000025E3  81C70020          add di,0x2000
000025E7  268825            mov [es:di],ah
000025EA  81EFB01F          sub di,0x1fb0
000025EE  268825            mov [es:di],ah
000025F1  81C70020          add di,0x2000
000025F5  268825            mov [es:di],ah
000025F8  BF3218            mov di,0x1832
000025FB  268825            mov [es:di],ah
000025FE  81C70020          add di,0x2000
00002602  268825            mov [es:di],ah
00002605  81EFB01F          sub di,0x1fb0
00002609  268825            mov [es:di],ah
0000260C  81C70020          add di,0x2000
00002610  268825            mov [es:di],ah
00002613  BFF816            mov di,0x16f8
00002616  268825            mov [es:di],ah
00002619  81C70020          add di,0x2000
0000261D  268825            mov [es:di],ah
00002620  81EFB01F          sub di,0x1fb0
00002624  268825            mov [es:di],ah
00002627  81C70020          add di,0x2000
0000262B  268825            mov [es:di],ah
0000262E  BF3E18            mov di,0x183e
00002631  268825            mov [es:di],ah
00002634  81C70020          add di,0x2000
00002638  268825            mov [es:di],ah
0000263B  81EFB01F          sub di,0x1fb0
0000263F  268825            mov [es:di],ah
00002642  81C70020          add di,0x2000
00002646  268825            mov [es:di],ah
00002649  BF7F1E            mov di,0x1e7f
0000264C  268825            mov [es:di],ah
0000264F  81C70020          add di,0x2000
00002653  268825            mov [es:di],ah
00002656  81EFB01F          sub di,0x1fb0
0000265A  268825            mov [es:di],ah
0000265D  81C70020          add di,0x2000
00002661  268825            mov [es:di],ah
00002664  BF731E            mov di,0x1e73
00002667  268825            mov [es:di],ah
0000266A  81C70020          add di,0x2000
0000266E  268825            mov [es:di],ah
00002671  81EFB01F          sub di,0x1fb0
00002675  268825            mov [es:di],ah
00002678  81C70020          add di,0x2000
0000267C  268825            mov [es:di],ah
0000267F  BFB41A            mov di,0x1ab4
00002682  268825            mov [es:di],ah
00002685  81C70020          add di,0x2000
00002689  268825            mov [es:di],ah
0000268C  81EFB01F          sub di,0x1fb0
00002690  268825            mov [es:di],ah
00002693  81C70020          add di,0x2000
00002697  268825            mov [es:di],ah
0000269A  BF7819            mov di,0x1978
0000269D  268825            mov [es:di],ah
000026A0  81C70020          add di,0x2000
000026A4  268825            mov [es:di],ah
000026A7  81EFB01F          sub di,0x1fb0
000026AB  268825            mov [es:di],ah
000026AE  81C70020          add di,0x2000
000026B2  268825            mov [es:di],ah
000026B5  BFBC1A            mov di,0x1abc
000026B8  268825            mov [es:di],ah
000026BB  81C70020          add di,0x2000
000026BF  268825            mov [es:di],ah
000026C2  81EFB01F          sub di,0x1fb0
000026C6  268825            mov [es:di],ah
000026C9  81C70020          add di,0x2000
000026CD  268825            mov [es:di],ah
000026D0  BF7D1E            mov di,0x1e7d
000026D3  268825            mov [es:di],ah
000026D6  81C70020          add di,0x2000
000026DA  268825            mov [es:di],ah
000026DD  81EFB01F          sub di,0x1fb0
000026E1  268825            mov [es:di],ah
000026E4  81C70020          add di,0x2000
000026E8  268825            mov [es:di],ah
000026EB  B43C              mov ah,0x3c
000026ED  BF721E            mov di,0x1e72
000026F0  268825            mov [es:di],ah
000026F3  81C70020          add di,0x2000
000026F7  268825            mov [es:di],ah
000026FA  81EFB01F          sub di,0x1fb0
000026FE  268825            mov [es:di],ah
00002701  81C70020          add di,0x2000
00002705  268825            mov [es:di],ah
00002708  BF7319            mov di,0x1973
0000270B  268825            mov [es:di],ah
0000270E  81C70020          add di,0x2000
00002712  268825            mov [es:di],ah
00002715  81EFB01F          sub di,0x1fb0
00002719  268825            mov [es:di],ah
0000271C  81C70020          add di,0x2000
00002720  268825            mov [es:di],ah
00002723  BF3818            mov di,0x1838
00002726  268825            mov [es:di],ah
00002729  81C70020          add di,0x2000
0000272D  268825            mov [es:di],ah
00002730  81EFB01F          sub di,0x1fb0
00002734  268825            mov [es:di],ah
00002737  81C70020          add di,0x2000
0000273B  268825            mov [es:di],ah
0000273E  BF7D19            mov di,0x197d
00002741  268825            mov [es:di],ah
00002744  81C70020          add di,0x2000
00002748  268825            mov [es:di],ah
0000274B  81EFB01F          sub di,0x1fb0
0000274F  268825            mov [es:di],ah
00002752  81C70020          add di,0x2000
00002756  268825            mov [es:di],ah
00002759  BF7E1E            mov di,0x1e7e
0000275C  268825            mov [es:di],ah
0000275F  81C70020          add di,0x2000
00002763  268825            mov [es:di],ah
00002766  81EFB01F          sub di,0x1fb0
0000276A  268825            mov [es:di],ah
0000276D  81C70020          add di,0x2000
00002771  268825            mov [es:di],ah
00002774  BFD71D            mov di,0x1dd7
00002777  30E4              xor ah,ah
00002779  B008              mov al,0x8
0000277B  B90300            mov cx,0x3
0000277E  268825            mov [es:di],ah
00002781  47                inc di
00002782  E2FA              loop 0x277e
00002784  2C01              sub al,0x1
00002786  742A              jz 0x27b2
00002788  83EF03            sub di,byte +0x3
0000278B  81C70020          add di,0x2000
0000278F  B90300            mov cx,0x3
00002792  268825            mov [es:di],ah
00002795  47                inc di
00002796  E2FA              loop 0x2792
00002798  2C01              sub al,0x1
0000279A  7416              jz 0x27b2
0000279C  83EF03            sub di,byte +0x3
0000279F  81EFB01F          sub di,0x1fb0
000027A3  B90300            mov cx,0x3
000027A6  EBD6              jmp short 0x277e
000027A8  B8F82A            mov ax,0x2af8
000027AB  2D0100            sub ax,0x1
000027AE  7402              jz 0x27b2
000027B0  EBF9              jmp short 0x27ab
000027B2  30E4              xor ah,ah
000027B4  BF721E            mov di,0x1e72
000027B7  268825            mov [es:di],ah
000027BA  81C70020          add di,0x2000
000027BE  268825            mov [es:di],ah
000027C1  81EFB01F          sub di,0x1fb0
000027C5  268825            mov [es:di],ah
000027C8  81C70020          add di,0x2000
000027CC  268825            mov [es:di],ah
000027CF  BF7319            mov di,0x1973
000027D2  268825            mov [es:di],ah
000027D5  81C70020          add di,0x2000
000027D9  268825            mov [es:di],ah
000027DC  81EFB01F          sub di,0x1fb0
000027E0  268825            mov [es:di],ah
000027E3  81C70020          add di,0x2000
000027E7  268825            mov [es:di],ah
000027EA  BF3818            mov di,0x1838
000027ED  268825            mov [es:di],ah
000027F0  81C70020          add di,0x2000
000027F4  268825            mov [es:di],ah
000027F7  81EFB01F          sub di,0x1fb0
000027FB  268825            mov [es:di],ah
000027FE  81C70020          add di,0x2000
00002802  268825            mov [es:di],ah
00002805  BF7D19            mov di,0x197d
00002808  268825            mov [es:di],ah
0000280B  81C70020          add di,0x2000
0000280F  268825            mov [es:di],ah
00002812  81EFB01F          sub di,0x1fb0
00002816  268825            mov [es:di],ah
00002819  81C70020          add di,0x2000
0000281D  268825            mov [es:di],ah
00002820  BF7E1E            mov di,0x1e7e
00002823  268825            mov [es:di],ah
00002826  81C70020          add di,0x2000
0000282A  268825            mov [es:di],ah
0000282D  81EFB01F          sub di,0x1fb0
00002831  268825            mov [es:di],ah
00002834  81C70020          add di,0x2000
00002838  268825            mov [es:di],ah
0000283B  B418              mov ah,0x18
0000283D  BF711E            mov di,0x1e71
00002840  268825            mov [es:di],ah
00002843  81C70020          add di,0x2000
00002847  268825            mov [es:di],ah
0000284A  81EFB01F          sub di,0x1fb0
0000284E  268825            mov [es:di],ah
00002851  81C70020          add di,0x2000
00002855  268825            mov [es:di],ah
00002858  BF3218            mov di,0x1832
0000285B  268825            mov [es:di],ah
0000285E  81C70020          add di,0x2000
00002862  268825            mov [es:di],ah
00002865  81EFB01F          sub di,0x1fb0
00002869  268825            mov [es:di],ah
0000286C  81C70020          add di,0x2000
00002870  268825            mov [es:di],ah
00002873  BFF816            mov di,0x16f8
00002876  268825            mov [es:di],ah
00002879  81C70020          add di,0x2000
0000287D  268825            mov [es:di],ah
00002880  81EFB01F          sub di,0x1fb0
00002884  268825            mov [es:di],ah
00002887  81C70020          add di,0x2000
0000288B  268825            mov [es:di],ah
0000288E  BF3E18            mov di,0x183e
00002891  268825            mov [es:di],ah
00002894  81C70020          add di,0x2000
00002898  268825            mov [es:di],ah
0000289B  81EFB01F          sub di,0x1fb0
0000289F  268825            mov [es:di],ah
000028A2  81C70020          add di,0x2000
000028A6  268825            mov [es:di],ah
000028A9  BF7F1E            mov di,0x1e7f
000028AC  268825            mov [es:di],ah
000028AF  81C70020          add di,0x2000
000028B3  268825            mov [es:di],ah
000028B6  81EFB01F          sub di,0x1fb0
000028BA  268825            mov [es:di],ah
000028BD  81C70020          add di,0x2000
000028C1  268825            mov [es:di],ah
000028C4  B8F82A            mov ax,0x2af8
000028C7  2D0100            sub ax,0x1
000028CA  7402              jz 0x28ce
000028CC  EBF9              jmp short 0x28c7
000028CE  30E4              xor ah,ah
000028D0  BF711E            mov di,0x1e71
000028D3  268825            mov [es:di],ah
000028D6  81C70020          add di,0x2000
000028DA  268825            mov [es:di],ah
000028DD  81EFB01F          sub di,0x1fb0
000028E1  268825            mov [es:di],ah
000028E4  81C70020          add di,0x2000
000028E8  268825            mov [es:di],ah
000028EB  BF3218            mov di,0x1832
000028EE  268825            mov [es:di],ah
000028F1  81C70020          add di,0x2000
000028F5  268825            mov [es:di],ah
000028F8  81EFB01F          sub di,0x1fb0
000028FC  268825            mov [es:di],ah
000028FF  81C70020          add di,0x2000
00002903  268825            mov [es:di],ah
00002906  BFF816            mov di,0x16f8
00002909  268825            mov [es:di],ah
0000290C  81C70020          add di,0x2000
00002910  268825            mov [es:di],ah
00002913  81EFB01F          sub di,0x1fb0
00002917  268825            mov [es:di],ah
0000291A  81C70020          add di,0x2000
0000291E  268825            mov [es:di],ah
00002921  BF3E18            mov di,0x183e
00002924  268825            mov [es:di],ah
00002927  81C70020          add di,0x2000
0000292B  268825            mov [es:di],ah
0000292E  81EFB01F          sub di,0x1fb0
00002932  268825            mov [es:di],ah
00002935  81C70020          add di,0x2000
00002939  268825            mov [es:di],ah
0000293C  BF7F1E            mov di,0x1e7f
0000293F  268825            mov [es:di],ah
00002942  81C70020          add di,0x2000
00002946  268825            mov [es:di],ah
00002949  81EFB01F          sub di,0x1fb0
0000294D  268825            mov [es:di],ah
00002950  81C70020          add di,0x2000
00002954  268825            mov [es:di],ah
00002957  B8803E            mov ax,0x3e80
0000295A  2D0100            sub ax,0x1
0000295D  7402              jz 0x2961
0000295F  EBF9              jmp short 0x295a
00002961  A04D10            mov al,[0x104d]
00002964  3C00              cmp al,0x0
00002966  7403              jz 0x296b
00002968  E9A900            jmp 0x2a14
0000296B  A05910            mov al,[0x1059]
0000296E  8A265A10          mov ah,[0x105a]
00002972  8A1E5B10          mov bl,[0x105b]
00002976  8A3E5C10          mov bh,[0x105c]
0000297A  8A0E5D10          mov cl,[0x105d]
0000297E  8A2E5E10          mov ch,[0x105e]
00002982  8A165F10          mov dl,[0x105f]
00002986  8A366010          mov dh,[0x1060]
0000298A  38FE              cmp dh,bh
0000298C  7C4B              jl 0x29d9
0000298E  7F10              jg 0x29a0
00002990  38DA              cmp dl,bl
00002992  7C45              jl 0x29d9
00002994  7F0A              jg 0x29a0
00002996  38E5              cmp ch,ah
00002998  7C3F              jl 0x29d9
0000299A  7F04              jg 0x29a0
0000299C  38C1              cmp cl,al
0000299E  7C39              jl 0x29d9
000029A0  0430              add al,0x30
000029A2  A26B10            mov [0x106b],al
000029A5  80C430            add ah,0x30
000029A8  88266A10          mov [0x106a],ah
000029AC  80C330            add bl,0x30
000029AF  881E6910          mov [0x1069],bl
000029B3  80C730            add bh,0x30
000029B6  883E6810          mov [0x1068],bh
000029BA  80C130            add cl,0x30
000029BD  880E7E10          mov [0x107e],cl
000029C1  80C530            add ch,0x30
000029C4  882E7D10          mov [0x107d],ch
000029C8  80C230            add dl,0x30
000029CB  88167C10          mov [0x107c],dl
000029CF  80C630            add dh,0x30
000029D2  88367B10          mov [0x107b],dh
000029D6  E939ED            jmp 0x1712
000029D9  A25D10            mov [0x105d],al
000029DC  88265E10          mov [0x105e],ah
000029E0  881E5F10          mov [0x105f],bl
000029E4  883E6010          mov [0x1060],bh
000029E8  0430              add al,0x30
000029EA  A26B10            mov [0x106b],al
000029ED  A27E10            mov [0x107e],al
000029F0  80C430            add ah,0x30
000029F3  88266A10          mov [0x106a],ah
000029F7  88267D10          mov [0x107d],ah
000029FB  80C330            add bl,0x30
000029FE  881E6910          mov [0x1069],bl
00002A02  881E7C10          mov [0x107c],bl
00002A06  80C730            add bh,0x30
00002A09  883E6810          mov [0x1068],bh
00002A0D  883E7B10          mov [0x107b],bh
00002A11  E9FEEC            jmp 0x1712
00002A14  30C0              xor al,al
00002A16  C7063A100000      mov word [0x103a],0x0
00002A1C  A24910            mov [0x1049],al
00002A1F  BB2A0F            mov bx,0xf2a
00002A22  8B3E5010          mov di,[0x1050]
00002A26  B00F              mov al,0xf
00002A28  B90300            mov cx,0x3
00002A2B  8A27              mov ah,[bx]
00002A2D  268825            mov [es:di],ah
00002A30  47                inc di
00002A31  43                inc bx
00002A32  E2F7              loop 0x2a2b
00002A34  2C01              sub al,0x1
00002A36  7423              jz 0x2a5b
00002A38  83EF03            sub di,byte +0x3
00002A3B  81EFB01F          sub di,0x1fb0
00002A3F  B90300            mov cx,0x3
00002A42  8A27              mov ah,[bx]
00002A44  268825            mov [es:di],ah
00002A47  47                inc di
00002A48  43                inc bx
00002A49  E2F7              loop 0x2a42
00002A4B  2C01              sub al,0x1
00002A4D  740C              jz 0x2a5b
00002A4F  83EF03            sub di,byte +0x3
00002A52  81C70020          add di,0x2000
00002A56  B90300            mov cx,0x3
00002A59  EBD0              jmp short 0x2a2b
00002A5B  C3                ret
00002A5C  E461              in al,0x61
00002A5E  0C03              or al,0x3
00002A60  E661              out 0x61,al
00002A62  B0B6              mov al,0xb6
00002A64  E643              out 0x43,al
00002A66  A12C10            mov ax,[0x102c]
00002A69  E642              out 0x42,al
00002A6B  88E0              mov al,ah
00002A6D  E642              out 0x42,al
00002A6F  8B0E2A10          mov cx,[0x102a]
00002A73  E2FE              loop 0x2a73
00002A75  E461              in al,0x61
00002A77  24FC              and al,0xfc
00002A79  E661              out 0x61,al
00002A7B  C3                ret
00002A7C  8A27              mov ah,[bx]
00002A7E  268825            mov [es:di],ah
00002A81  43                inc bx
00002A82  47                inc di
00002A83  C3                ret
00002A84  8A27              mov ah,[bx]
00002A86  268825            mov [es:di],ah
00002A89  4F                dec di
00002A8A  4B                dec bx
00002A8B  C3                ret
00002A8C  B40B              mov ah,0xb
00002A8E  CD21              int 0x21
00002A90  3CFF              cmp al,0xff
00002A92  75F8              jnz 0x2a8c
00002A94  C3                ret
00002A95  B406              mov ah,0x6
00002A97  B2FF              mov dl,0xff
00002A99  CD21              int 0x21
00002A9B  C3                ret
00002A9C  0000              add [bx+si],al
00002A9E  0000              add [bx+si],al
00002AA0  0000              add [bx+si],al
00002AA2  0000              add [bx+si],al
00002AA4  0000              add [bx+si],al
00002AA6  0000              add [bx+si],al
00002AA8  0000              add [bx+si],al
00002AAA  0000              add [bx+si],al
00002AAC  0000              add [bx+si],al
00002AAE  0000              add [bx+si],al
00002AB0  0000              add [bx+si],al
00002AB2  0000              add [bx+si],al
00002AB4  0000              add [bx+si],al
00002AB6  0000              add [bx+si],al
00002AB8  0000              add [bx+si],al
00002ABA  0000              add [bx+si],al
00002ABC  0000              add [bx+si],al
00002ABE  0000              add [bx+si],al
00002AC0  0000              add [bx+si],al
00002AC2  0000              add [bx+si],al
00002AC4  0000              add [bx+si],al
00002AC6  0000              add [bx+si],al
00002AC8  0000              add [bx+si],al
00002ACA  0000              add [bx+si],al
00002ACC  0000              add [bx+si],al
00002ACE  0000              add [bx+si],al
00002AD0  0000              add [bx+si],al
00002AD2  0000              add [bx+si],al
00002AD4  0000              add [bx+si],al
00002AD6  0000              add [bx+si],al
00002AD8  0000              add [bx+si],al
00002ADA  0000              add [bx+si],al
00002ADC  0000              add [bx+si],al
00002ADE  0000              add [bx+si],al
00002AE0  0000              add [bx+si],al
00002AE2  0000              add [bx+si],al
00002AE4  0000              add [bx+si],al
00002AE6  0000              add [bx+si],al
00002AE8  0000              add [bx+si],al
00002AEA  0000              add [bx+si],al
00002AEC  0000              add [bx+si],al
00002AEE  0000              add [bx+si],al
00002AF0  0000              add [bx+si],al
00002AF2  0000              add [bx+si],al
00002AF4  0000              add [bx+si],al
00002AF6  0000              add [bx+si],al
00002AF8  0000              add [bx+si],al
00002AFA  0000              add [bx+si],al
00002AFC  0000              add [bx+si],al
00002AFE  0000              add [bx+si],al
