ft_strcpy:
    mov rax, rdi

.loop:
    cmp [rdi], 0
    je .done
    movb rsi, rdi
    inc rdi
    inc rsi
    jmp .loop

.done:
    movb rsi, 0
    len equ rdi - rax
    mov rax, len
    ret
    
