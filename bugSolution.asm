; Original code with potential overflow
;mov eax, [ebx+ecx*4]

;Improved code with overflow check
mov ecx, DWORD PTR [ecx*4]
;Check for overflow
cmp ecx, 0FFFFFFFFh ;Check for signed overflow
jl overflow_error
;Check for unsigned overflow
cmp ecx, 0
jl overflow_error
add ebx, ecx
mov eax, [ebx]
jmp continue

overflow_error:
; Handle the overflow error appropriately, e.g., by printing an error message
; and exiting the program
mov eax, -1
ret
continue: ;continue the code after checking for overflow