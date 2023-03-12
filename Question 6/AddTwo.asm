Include Irvine32.Inc

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
;.data
 .code
main proc
	mov al,1111b
	add al,1
	mov bl,1111b
	add bl,11111111b

	Call WriteInt
	invoke ExitProcess,0
main endp
end main