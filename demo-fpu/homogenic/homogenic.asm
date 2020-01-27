; ---------------------------------------------------------------------------------
; homogenic - by: superogue/marquee design (superogue1@protonmail.com)
; (c)2020 marquee design
;
; Greetings to: 
; blossom, rrrola, hellmood, tomcat/abaddon, sensenstahl, kuemmel, fsqrt, harekiet
; nuey, bruce, sjaak, ile, aaldert, fready and everyone else at demotivation
; ---------------------------------------------------------------------------------
org 100h   
start:
push 0a000h-70
aas  		
pop es
mov al,13h
int 10h
mov dx,music
mov ax,0x251C
int 0x21	

;mov cl,31
palloop:
mov dx,0x3c8
mov al,cl
out dx,al
inc dx
out dx,al
add al,16
out dx,al
add al,16
out dx,al
loop palloop

update:
mov ax,0cccdh 		; rrrola di to dh/dl
mul di
sub dh,byte[si]     
pusha
fninit
fstp dword [total]
fild word [byte bx-14]		; get framecounter bp->t
fmul dword [pi128]
fcos
fiadd word [d2]
fidiv word [d4]
fstp dword [m]
fild word [byte bx-8]
fidiv word [d16]
fst dword [px]
;fstp st4
fild word [byte bx-9]
fidiv word [d16]
fstp dword [py]
mov cl,8
iterations:
fld dword [py]
fmul st0         
fld dword [px]
fmul st0         
fadd st1         
fst st2          
fld dword [m]
fstp st2         
fld dword [px]
call divlm
fstp dword [px]
fld dword [py]
call divlm
fstp dword [py]
fld dword [l2]
fsub st3           
fadd dword [total]
fstp dword [total]
fld st2        
fstp dword [l2]
loop iterations
fld dword [total]
fistp word [byte bx-4] 
popa
and al,31
stosb
inc di
inc di
jnz update  
;hlt	
inc	bp			
in      al,60h
dec     al
jnz     update
;ret

divlm:
fabs
fdiv st3          ;dword [l]
fsub st2          ;dword [m]
;ret
musicdata:
db		0c3h,95,93h,28,127	; hellmood ch3 optimisation

; music routine
music:
  pusha
  mov dx,331h		; 3
  mov al,3fh		; 2
  out dx,al			; 1
  dec dx			; 1	

  inc si
  inc byte [si]		; 2
  mov bl,byte[si]	; 2

  jnz nosound		; 2

  mov si,musicdata	; 3
  mov cl,6 			; 2
  rep outsb			; 2

nosound:
  mov al,bl
  and al,3			; 2
  jnz nodrum		; 2
  mov al,099h		; 2
  out dx,al			; 1
  mov al,bl
  mov bx,drumdata   ; 3
  and al,31			; 2
  xlat				; hi there ile ;-)
  out 	dx,al		; 1
  mov 	al,127		; 2	
drumdata:
  out 	dx,al		; 1
nodrum:
  popa
  iret       
db 		35,35,35,42 ; 40,42,35,42

pi128:
d16  dw  8192
dw 	3d49h; pi/64 (~0.049)
d4  dw  5
d2  dw  4

section .bss
m resw 4
px resw 4
py resw 4
total resw 4
l resw 4
l2 resw 4
