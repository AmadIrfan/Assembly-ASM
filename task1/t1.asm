INCLUDE Irvine32.inc
.data
	value1 dword 17
	value2 dword 6
	value3 dword 9
	value4 dword 3
.code
main proc
	mov eax,value1 
	add eax,value2
	mov ebx,value3
	add ebx,value4
	sub eax,ebx
	call WriteInt
	call DumpRegs 

	invoke ExitProcess,0
main endp
end main