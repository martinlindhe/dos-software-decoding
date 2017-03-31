2017-03-30:

0x2285 (which is a RET in rom) gets overwritten somewhere along the lines...

000100> run
[W] Executing until we hit a breakpoint
XXX impl and8
XXX impl or8
XXX video: set video mode to 320x200, 4 colors
XXX unhandled out_u8 to 03D8, data 00
XXX unhandled out_u8 to 03D9, data 20
rep movsw   src = 3F00, dst = B8000, count = 2000
XXX unhandled out_u8 to 03D8, data 0A
XXX unhandled out_u8 to 03D9, data 00
XXX unhandled in8 61
XXX unhandled out_u8 to 0043, data B6
XXX unhandled out_u8 to 0042, data 3E
XXX unhandled out_u8 to 0042, data 89
XXX unhandled in8 61
XXX impl or8
XXX unhandled out_u8 to 0061, data 89
XXX impl xchg16
XXX impl xchg16
cpu: unknown op 86 at 2285

