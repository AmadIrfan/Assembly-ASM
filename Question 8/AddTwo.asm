Include Irvine32.Inc

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
	var1 WORD 0h
	var2 WORD 0F55Ah
	sum WORD 0
	intArray1 WORD 10,20,30,40,50,60,70,80,90,100,5 ; Uninitialize array
.code
main PROC
		mov eax,var1
		mov ebx,var2
		add eax,ebx
		mov sum,eax
		mov eax,0
		imul var1
INVOKE ExitProcess,0
main ENDP
END main