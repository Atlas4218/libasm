section .data
    mov rax, rdi
.loop:
    cmp [rdi], 0
    je .done
    inc rdi
    jmp .loop

.done:
    len equ rdi - rax
    mov rax, len
    ret
    
