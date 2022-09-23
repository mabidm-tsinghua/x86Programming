; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

;Enables assembly of nonprivileged instructions for the 80386 processor
.386
;.MODEL memory-model ⟦, language-type⟧ ⟦, stack-option⟧
.model flat,stdcall
;.STACK ⟦size⟧  ; default size 1KB, stack segment
.stack 4096
;label PROTO ⟦distance⟧ ⟦language-type⟧ ⟦, ⟦parameter⟧:tag ...⟧
ExitProcess proto,dwExitCode:dword
; start of a code segment
.code 
main proc
	mov	eax,5	; eax=5			
	add	eax,6	; eax  = eax + 6			

	invoke ExitProcess,0  ;INVOKE expression ⟦, argument ...⟧
main endp
end  main; here instead of main label also works