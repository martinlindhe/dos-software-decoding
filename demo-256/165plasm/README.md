# 11 jun 2017

XXX set text-mode cursor shape, start_options=D4, bottom_line=E0
dac index = 0
XXX impl rep outsb
cpu: unknown op D4 at 085F:017D (1207 instructions executed)



# BUG: cx har fel värde efter 1183 instr executed


"BP 085F:0149" + f5  = i dosbox är CX 00C4, i min är den D4E0 ...



cmp8 flag bug


0000012A  80FB40            cmp bl,0x40     ; bl = 1
0000012D  76D7              jna 0x106       ; jump taken by dosbox, not by me. me CF=1, ZF=0   dosbox CF=1, ZF=0
                                                jna = Jump if not above (CF=1 or ZF=1).









# BUG: 017D skrivs över på ngt sätt

0000013A  33FF              xor di,di               di = 0
0000013C  882D              mov [di],ch
0000013E  88AD7C01          mov [di+0x17c],ch
00000142  BE7D01            mov si,0x17d            si = 0x17D
00000145  2BF7              sub si,di               si = si - 0
00000147  882C              mov [si],ch             [0x17D] = ch            write occurs


W] Breakpoint reached (step-into), ip = 085F:0147
Executed total 1182 instructions (1182 now) in 0 ms
[W] Breakpoint (memory write to 00876D = D4), ip = 085F:0149
Executed total 1183 instructions (1 now) in 0 ms



# dosbox-x

looks good in dosbox-x
