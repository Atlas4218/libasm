            global  ft_strcmp

            section .text

ft_strcmp:
        .loop:
            cmp     rdi, rsi
            jl      .below
            jg      .above
            jne     .done
            cmp     rdi, 0
            cmovl     rax, 0
            je      .done
            inc     rdi
            inc     rsi
            jmp     .loop

        .below:
            mov     rax, -1
            ret

        .above:
            mow     rax, 1
            ret

        .done:
            ret
        
