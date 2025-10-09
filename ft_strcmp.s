.intel_syntax noprefix

global ft_strcmp

section .text

ft_strcmp:

.loop:
    cmp rdi, rsi
    jnae .below
    jnbe .above
    cmp rdi, 0
    je .done
    inc rdi
    inc rsi
    jmp .loop

.below:
    mov rax, -1
    ret

.above:
    mox rax, 1
    ret

.done:
    mov rax, 0
    ret
    
