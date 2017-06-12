stack is broken, no gfx

..

[085F:0150] 018A9C40   Add16    word [bp+si+0x409C], cx
[085F:0154] 0103       Add16    word [bp+di], ax
[085F:0156] C3         Retn
[085F:0000] 7086       Jo       0xFF88
[085F:0002] 63554A     Arpl     word [di+0x4A], dx

--

XXX video: set video mode to 320x200, 256 colors (VGA)
XXX impl aas
XXX impl arpl
cpu: unknown op 82 at 085F:0009 (0085F9 flat), 521244 instructions executed
executed unknown op, stopping. 521244 instructions executed
Executed total 521244 instructions (521245 now) in 217 ms
cpu: unknown op 10 at 085F:0014 (008604 flat), 521244 instructions executed
cpu: unknown op 10 at 085F:001A (00860A flat), 521244 instructions executed
cpu: unknown op 9A at 085F:0021 (008611 flat), 521244 instructions executed
op 8F unknown reg = 6
cpu: unknown op 82 at 085F:0032 (008622 flat), 521244 instructions executed
