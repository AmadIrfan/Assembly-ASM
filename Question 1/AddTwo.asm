Include Irvine32.Inc

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
 var1 sdword 00000011b
 var2 sdword 00001111b 
.code
main proc
	mov ebx,var1
	mov eax,var2
	sub eax,ebx
	movsx eax,ax

	Call WriteInt
	invoke ExitProcess,0
main endp
end main