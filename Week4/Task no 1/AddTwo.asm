INCLUDE Irvine32.inc
.data
	v1 dword 17
	v2 dword 6
	v3 dword 9
	v4 dword 3
.code
main proc

	mov eax,v1 
	add eax,v2
	mov ebx,v3
	add ebx,v4
	sub eax,ebx
	call WriteInt
	call DumpRegs 

exit
main endp
end main