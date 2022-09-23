.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
.data
;variables goes here
.code
main proc
;code goes here
INVOKE ExitProcess, eax
main ENDP
END main ;specify the program's entry point