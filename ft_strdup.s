global ft_strdup

section .data
    
section .text

ft_strdup:
    mov edi, rdi
    call ft_strlen

    buff resb rax

    mov edi, rdi
    mov esi, buff
    call ft_strcpy

    mov rax, buff
    ret

ft_strlen:
    mov rax, rdi
.loop:
    cmp rdi, 0
    je .done
    inc rdi
    jmp .loop

.done:
    len equ rdi - rax
    mov rax, len
    ret

ft_strcpy:
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