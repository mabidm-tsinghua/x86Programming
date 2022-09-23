; AddTwoSum.asm - Chapter 3 example.

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
sum dword 0

.code
main0 proc
	mov	eax,5				
	add	eax,6				
	mov sum,eax

	invoke ExitProcess,0
main0 endp
end 

;everything after end is ignored