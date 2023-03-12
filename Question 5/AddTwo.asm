Include Irvine32.Inc

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
  var1 dword -50
  var2 dword -60
.code
main proc	
	mov eax,var1	 	
	imul var2	 
	Call WriteInt
	invoke ExitProcess,0
main endp
end main