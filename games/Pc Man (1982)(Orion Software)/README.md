# 2017-04-13:

0000:0000> load ../dos-software-decoding/games/Pc Man (1982)(Orion Software)/pcmanv1.com
[*] Reading rom from ../dos-software-decoding/games/Pc Man (1982)(Orion Software)/pcmanv1.com
loading rom to 0086F0..00C730
085F:0100> run
[W] Executing until we hit a breakpoint
int error: unknown interrupt 11, AX=0013, BX=0000



0000:0000> load ../dos-software-decoding/games/Pc Man (1982)(Orion Software)/pcmanv2.com
[*] Reading rom from ../dos-software-decoding/games/Pc Man (1982)(Orion Software)/pcmanv2.com
loading rom to 0086F0..00CD80
085F:0100> run
[W] Executing until we hit a breakpoint
int21 error: unknown AH=3D, AX=3D00
int21 error: unknown AH=3F, AX=3F00
int21 error: unknown AH=3E, AX=3E00
XXX unhandled out_u8 to 0061, data 4F
XXX unhandled out_u8 to 0043, data B6
XXX video: set video mode to 320x200, 4 colors
XXX unhandled out_u8 to 03D9, data 10
thread 'main' panicked at 'attempt to subtract with overflow', src/cpu.rs:981
note: Some details are omitted, run with `RUST_BACKTRACE=full` for a verbose backtrace.
stack backtrace:
   0: x86emu::cpu::CPU::execute
             at ./src/cpu.rs:981
   1: x86emu::cpu::CPU::execute_instruction
             at ./src/cpu.rs:605
   2: x86emu::debugger::Debugger::run
             at ./src/debugger.rs:151
   3: x86emu::debugger::Debugger::prompt
             at ./src/debugger.rs:108
   4: x86emu::debugger::Debugger::start
             at ./src/debugger.rs:28
   5: x86emu::main
             at ./src/main.rs:24

