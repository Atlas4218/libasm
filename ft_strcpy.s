            global  ft_strcpy

            section .text

ft_strcpy:  mov     rax, rdi
        .loop:
            cmp     rdi, 0
            je      .done
            mov     rsi, rdi
            inc     rdi
            inc     rsi
            jmp     .loop
        .done:
            mov     rsi, 0
len         equ     rdi - rax
            mov     rax, len
            ret
            
