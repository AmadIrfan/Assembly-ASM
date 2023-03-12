INCLUDE Irvine32.inc
.data
	val byte "hello world ",0
	leng equ $ - val
	val1 db " assembly language ",0
	leng1 equ $ - val1
.code
main proc
	mov edx,  offset val
	mov eax, leng
	call WriteString
	mov edx,  offset val1
	mov ebx, leng1
	call WriteString
	call DumpRegs 
exit

main endp
end main