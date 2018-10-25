# 2017-04-13

0000:0000> load ../dos-software-decoding/games/Pente (1984)(Michael Leach)/pente.com
[*] Reading rom from ../dos-software-decoding/games/Pente (1984)(Michael Leach)/pente.com
loading rom to 0086F0..00F900
085F:0100> run
[W] Executing until we hit a breakpoint
Not enough memory
Program aborted
int21 error: unknown AH=00, AX=0024
XXX impl outs word
XXX impl outs byte
XXX impl outs word
thread 'main' panicked at 'attempt to add with overflow', src/cpu.rs:2459
note: Some details are omitted, run with `RUST_BACKTRACE=full` for a verbose backtrace.
stack backtrace:
   0: x86emu::cpu::CPU::pop16
             at ./src/cpu.rs:2459
   1: x86emu::cpu::CPU::execute
             at ./src/cpu.rs:1067
   2: x86emu::cpu::CPU::execute_instruction
             at ./src/cpu.rs:605
   3: x86emu::debugger::Debugger::run
             at ./src/debugger.rs:151
   4: x86emu::debugger::Debugger::prompt
             at ./src/debugger.rs:108
   5: x86emu::debugger::Debugger::start
             at ./src/debugger.rs:28
   6: x86emu::main
             at ./src/main.rs:24

