.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
.data
;variables goes here
.code
main proc
	
invoke ExitProcess,0
main endp
end main ; entry point