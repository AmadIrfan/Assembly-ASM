Include Irvine32.Inc

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
  var1 sdword ?
.code
main proc

	;Setting and clearing Zero Flag (ZF) by subtracting two signed integers using EAX.
	
	mov eax,10		 	
	mov var1,eax	 
	mov eax,10		 
	sub eax,var1     
	Call WriteInt
	invoke ExitProcess,0
main endp
end main