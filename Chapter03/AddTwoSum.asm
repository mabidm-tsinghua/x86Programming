; AddTwoSum.asm - Chapter 3 example.

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword


.data
x dword 4
y dword 6
z dword ?

.code
main0 proc
	mov	eax,x	;			
	add	eax,y				
	mov z,eax
	

	invoke ExitProcess,0
main0 endp
end 
;everything after end is ignored