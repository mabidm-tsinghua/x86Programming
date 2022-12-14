; Copying a String (CopyStr.asm)

; This program copies a string.

.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:dword

.data
source  byte  "This is the source string",0
target  byte  SIZEOF source DUP(0) ; count DUP(integer)


.code
main4 proc

	mov  esi,0				; index register
	mov  ecx,SIZEOF source	; loop counter
L1:
	mov  al,source[esi]		; get a character from source
	mov  target[esi],al		; store it in the target
	inc  esi				; move to next character
	loop L1					; repeat for entire string

	invoke ExitProcess,0
main4 endp
end 