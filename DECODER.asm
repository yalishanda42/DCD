				org 100h

	mov ah, 09h
	mov dx, msg
	int 21h

	mov cl, 0h
	jmp  waitpresskey

msg:
db 'DO NOT USE THIS IF YOU DO NOT KNOW HOW', 0dh, 0ah, '$'

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

waitpresskey:
mov ah, 08h
int 21h
jmp numcheck

numcheck:
cmp al, 30h
jl waitpresskey
cmp al, 39h
jg waitpresskey
cmp cl, 0ah
je second

mov ah, 0eh
int 10h
cmp al, 30h
je zero
cmp al, 31h
je ten
cmp al, 32h
je twenty
jg waitpresskey

sub al, 30h

		first:
		mov cl, 0ah
		jmp waitpresskey

zero:
mov bl, 0d
jmp first

ten:
mov bl, 10d
jmp first

twenty:
mov bl, 20d
jmp first


		second:
		mov ah, 0eh
		int 10h
		sub al, 30h
		mov cl, al
		add bl, cl  ;_____bl = bl + cl___key coding_____

		cmp bl, 1h
		jl endings  ; if '00' ends program
		cmp bl, 26d
		mov ah, 09h
		mov dx, space
		int 21h
		jg waitpresskey


		sub bl, 1h

		jmp enteringz
		jmp waitpress

space db 20h, 24h

enteringz:	 ; prints a new line
mov ah, 09h
mov dx,_enter
int 21h

_enter db 0dh, 0ah, 024h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
waitpress:
mov ah, 08h
int 21h

	cmp al, 0dh
	je enteringz
	cmp al, 1bh
	je endings
	cmp al, 08h
	je printing
	cmp al, 09h
	je transmit
	cmp al, 41h ;  = A
	jl checkingone
	cmp al, 7ah ;  = z
	jg printing
	cmp al, 60h ;  = `
	je printing
	mov cl, 41h ;  = A
	add cl, bl
	cmp al, cl
	jl operation
	je coding
	mov cl, 61h ;  = a
	add cl, bl
	cmp al, cl
	jl testing
;
;
; here comes the b-z

coding: 	     ; decodes the letter
sub al, bl
jmp printing

checkingone:	     ; checks for symbols 20-3f in ascii
cmp al, 1fh
jg printing
jmp waitpress

printing:	     ; prints the letter / symbol
mov ah, 0eh
int 10h
jmp waitpress



operation:	     ; makes the switch from A to Z
add al, 1Ah
jmp coding

testing:
cmp al, 5bh	 ; = [
jl coding	 ; happens if B-Z
cmp al, 60h	 ; =  ^
jl printing	 ; happens if [\]^_
jmp operation	 ; happens for a-z needing switch


transmit:	     ; when TAB is pressed this is done
mov ah, 09h
mov dx, _enter
int 21h
jmp waitpresskey

endings:	     ; ends the program
int 20h
