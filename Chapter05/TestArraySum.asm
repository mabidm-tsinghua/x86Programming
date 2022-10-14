; Testing the ArraySum procedure	(TestArraySum.asm)

.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:dword
ArraySum PROTO

.data
array dword 10000h,20000h,30000h,40000h,50000h
theSum dword ?

.code
main2 proc
	mov   esi,OFFSET array 			; ESI points to array
	mov   ecx,LENGTHOF array		; ECX = array count
	call  ArraySum					; calculate the sum
	mov   theSum,eax				; returned in EAX

		invoke ExitProcess,0
	;push 0
	;call ExitProcess
main2 endp
		


end 	