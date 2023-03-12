
.386 
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
myByte BYTE ? 
myWord WORD ?

.code
main proc
	mov al,200
	mov ah,200
	add ah,al

invoke ExitProcess , 0
main endp
end main
