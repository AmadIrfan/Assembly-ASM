; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example
Include Irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	array1 WORD "HelloWorld"
	array2 WORD "ABC"
.code
main proc
	mov esi,0 
	mov ecx,SIZEOF array1 
	mov al,array1[ecx] 
	mov array2[ecx],al
	Call WriteInt			

	invoke ExitProcess,0
main endp
end main