# 2017-04-13:

0000:0000> load ../dos-software-decoding/games/Galaxian (1983)(Atari Inc)/galaxian.com
[*] Reading rom from ../dos-software-decoding/games/Galaxian (1983)(Atari Inc)/galaxian.com
loading rom to 0086F0..0176F0
085F:0100> run
[W] Executing until we hit a breakpoint
rep movsb   src = 85F0, dst = 94F0, count = 0100
XXX unhandled out_u8 to 03F2, data 0C
rep movsb   src = 8770, dst = 0600, count = 0080
rep movsb   src = 94F0, dst = 0F00, count = E100
XXX unhandled out_u8 to 00A0, data 00
in_port: unhandled in8 00A0 at 001213
XXX unhandled out_u8 to 00A0, data 80
in_port: unhandled in8 0061 at 00121A
XXX unhandled out_u8 to 0061, data 00
XXX video: set video mode to 320x200, 4 colors
XXX set palette id to 00
XXX set bg/border color to 00
XXX impl out16
XXX impl out16
XXX impl out16
XXX unhandled out_u8 to 03DA, data 00
XXX unhandled out_u8 to 03DA, data 2A
XXX unhandled out_u8 to 03D8, data 2A
XXX impl shl16
thread 'main' panicked at 'index out of bounds: the len is 4194304 but the index is 18446744073709527040', /checkout/src/libcollections/vec.rs:1427
note: Some details are omitted, run with `RUST_BACKTRACE=full` for a verbose backtrace.
stack backtrace:
   0: <collections::vec::Vec<T> as core::ops::Index<usize>>::index
             at /checkout/src/libcollections/vec.rs:1427
   1: x86emu::cpu::CPU::peek_u8_at
             at ./src/cpu.rs:2404
   2: x86emu::cpu::CPU::peek_u16_at
             at ./src/cpu.rs:2408
   3: x86emu::cpu::CPU::read_parameter_value
             at ./src/cpu.rs:2482
   4: x86emu::cpu::CPU::execute
             at ./src/cpu.rs:962
   5: x86emu::cpu::CPU::execute_instruction
             at ./src/cpu.rs:594
   6: x86emu::debugger::Debugger::run
             at ./src/debugger.rs:151
   7: x86emu::debugger::Debugger::prompt
             at ./src/debugger.rs:108
   8: x86emu::debugger::Debugger::start
             at ./src/debugger.rs:28
   9: x86emu::main
             at ./src/main.rs:24

