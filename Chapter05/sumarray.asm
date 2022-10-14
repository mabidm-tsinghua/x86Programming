
.model flat,stdcall ; must
.386


.code ; must


;-----------------------------------------------------
ArraySum proc 
;
; Calculates the sum of an array of 32-bit integers.
; Receives: ESI = the array offset
; ECX = number of elements in the array
; Returns: EAX = sum of the array elements
;-----------------------------------------------------


	push  esi 				; save ESI, ECX
	push  ecx
	mov   eax,0				; set the sum to zero

L1:
	add   eax,[esi]			; add each integer to sum
	add   esi,TYPE DWORD	; point to next integer
	loop  L1				; repeat for array size
	pop   ecx				; restore ECX, ESI
	pop   esi
	ret 					; sum is in EAX
ArraySum endp

end ; must