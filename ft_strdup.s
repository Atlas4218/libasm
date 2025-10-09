global ft_strdup

section .data
    
section .text

ft_strdup:
    mov rax, rdi

.loop:
    cmp rdi, 0
    je .done
    rsi equ rdi
    inc rdi
    inc rsi
    jmp .loop

.done:
    movb rsi, 0
    len equ rdi - rax
    mov rax, len
    ret
    
