; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example
Include Irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	Array WORD 50 DUP(5)
.code
main proc
	mov eax,SIZEOF Array
	mov esi,OFFSET Array
	mov al,[esi+99]
	mov edi,OFFSET Array
	Call WriteInt
L1:	
	add ecx,[edi]
	add edi,TYPE Array			
	Loop L1
	Call WriteInt
	invoke ExitProcess,0
main endp
end main