.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
.data
;variables goes here
.code
main0 proc
;code goes here
INVOKE ExitProcess, eax
main0 ENDP
END main0 ;specify the program's entry point