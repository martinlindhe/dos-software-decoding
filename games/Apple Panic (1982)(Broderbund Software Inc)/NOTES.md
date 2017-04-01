2017-04-01, when not loading rom into segment 0:

loading rom to 0086F0..0104F0
085F:0100> run
[W] Executing until we hit a breakpoint
XXX impl and8
XXX impl or8
XXX video: set video mode to 320x200, 4 colors
XXX unhandled out_u8 to 03D8, data 00
XXX unhandled out_u8 to 03D9, data 20
rep movsw   src = C4F0, dst = B8000, count = 2000
XXX unhandled out_u8 to 03D8, data 0A
XXX unhandled out_u8 to 03D9, data 00
in_port: unhandled in8 0061 at 00A82F
XXX unhandled out_u8 to 0043, data B6
XXX unhandled out_u8 to 0042, data 3E
XXX unhandled out_u8 to 0042, data 89
in_port: unhandled in8 0061 at 00A826
XXX impl or8
XXX unhandled out_u8 to 0061, data 00
cpu: unknown op F0 at 00A873
[E] Failed to execute instruction, breaking. Instruction { command: Unknown, segment: Default, params: ParameterPair { src: None, dst: None } }
085F:2283> flat
[*] 085F:2283 is 00A873.  rom offset is 0000:0100, or 002283


2017-04-01, first entry:

002287 (which is a "push bp" in rom) gets overwritten, several ops address
it as a data register

0000:0100> run
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
cpu: unknown op 00 at 002287
