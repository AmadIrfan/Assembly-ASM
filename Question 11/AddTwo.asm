Include Irvine32.Inc

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
	intArray1 WORD 10,20,30,40,50,60,70,80,90,100

.code
main proc

	mov eax,SIZEOF intArray1
	mov al, LENGTHOF intArray1
	Call WriteInt
	invoke ExitProcess,0
main endp
end main