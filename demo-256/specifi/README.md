code gets corrupted

[085F:0154] 56         Push16   si
[085F:0155] 44         Inc16    sp
cpu: unknown op 1D at 085F:0156 (1217150 instructions executed)
[085F:0156] 1D         Unknown


should be:
00000154  8776FC            xchg si,[bp-0x4]
00000157  877EFE            xchg di,[bp-0x2]
0000015A  8A02              mov al,[bp+si]
