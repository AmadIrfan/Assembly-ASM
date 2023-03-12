Include Irvine32.Inc

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
  var1 sdword ?

.code
main proc

	
	mov eax,10		 ; moved the value in eax register
	mov var1,eax	 ;moved the value from eax to var1
	mov eax,10		 ; moved the value in eax
	sub eax,var1     ;subtracted the value of var1 with eax value that wil be zero

	Call WriteInt
	invoke ExitProcess,0
main endp
end main