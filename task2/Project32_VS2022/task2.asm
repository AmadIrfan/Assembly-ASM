INCLUDE Irvine32.inc
.data

	value byte "Hello World",0
	len equ $ - value
	value1 db " Assembly Language",0
	
	le1 equ $ - value1
.code
main proc
	mov edx,  offset value
	mov eax, len
	call WriteString
	mov edx,  offset value1
	mov ebx, le1
	call WriteString
	call DumpRegs 
exit

main ENDP
END main