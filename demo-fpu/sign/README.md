unpacked code uses both fpu and 32bit:

00000150  6631FF            xor edi,edi
00000153  6631C0            xor eax,eax
00000156  66B9803E0000      mov ecx,0x3e80
0000015C  F366AB            rep stosd
0000015F  DBE3              fninit
