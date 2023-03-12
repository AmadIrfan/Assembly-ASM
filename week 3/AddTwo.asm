include Irvine32.inc


.386
.model flat,stdcall

.stack 4096
ExitProcess proto,dwExitCode:dword

;defined variable

.data 
sum byte 10
b byte 06

.code
main proc
	mov	al,sum				
	mov	ah,b
	mult al,ah
	movzx eax,al
	call WriteInt
	invoke ExitProcess,0

main endp
end main