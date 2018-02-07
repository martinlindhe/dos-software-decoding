# 2017-04-14, moslo.com:

0000:0000> load ../dos-software-decoding/games/Slow Mo (1990)(David Perrell)/moslo.com
[*] Reading rom from ../dos-software-decoding/games/Slow Mo (1990)(David Perrell)/moslo.com
loading rom to 0086F0..008ACA
085F:0100> run
[W] Executing until we hit a breakpoint
XXX impl lodsw
XXX DOS - WRITE TO FILE OR DEVICE, handle=0002, count=0000, data from 085F:0450
XXX impl shr16
int21 error: unknown AH=4A, AX=4A00
XXX impl lodsw
XXX DOS - WRITE TO FILE OR DEVICE, handle=0002, count=4A20, data from 085F:0279




# 2017-04-14, verislow.com:

0000:0000> load ../dos-software-decoding/games/Slow Mo (1990)(David Perrell)/varislow.com
[*] Reading rom from ../dos-software-decoding/games/Slow Mo (1990)(David Perrell)/varislow.com
loading rom to 0086F0..00889D
085F:0100> run
[W] Executing until we hit a breakpoint


VARISLOW  by  Ray Usher                   [To slow AT down to play games]

Left Shift:    Slows down action

Right Shift:    Speeds up action

Left Shift & Right Shift together:    Exits program
int21 error: unknown AH=35, AX=351C
int21 error: unknown AH=25, AX=251C
int error: unknown interrupt 27, AX=251C, BX=0000
thread 'main' panicked at 'attempt to add with overflow', src/cpu.rs:2222
note: Some details are omitted, run with `RUST_BACKTRACE=full` for a verbose backtrace.
stack backtrace:
   0: x86emu::cpu::CPU::read_u8
             at ./src/cpu.rs:2222
   1: x86emu::cpu::CPU::decode_instruction
             at ./src/cpu.rs:1233
   2: x86emu::cpu::CPU::execute_instruction
             at ./src/cpu.rs:574
   3: x86emu::debugger::Debugger::run
             at ./src/debugger.rs:151
   4: x86emu::debugger::Debugger::prompt
             at ./src/debugger.rs:108
   5: x86emu::debugger::Debugger::start
             at ./src/debugger.rs:28
   6: x86emu::main
             at ./src/main.rs:24

