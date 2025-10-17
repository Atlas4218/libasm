            global  ft_strdup
            extern  _malloc
            extern  errno_location
            extern  ft_strlen
            extern  ft_strcpy
            section .data

            section .text

ft_strdup:
            xor     rax, rax
            call    ft_strlen
            push    rdi
            mov     rdi, rax
            inc     rdi
            call    _malloc
            cmp     rax, 0
            jle     error
            mov     rsi, rax
            pop     rdi
            call    ft_strcpy
            jmp     done
error:
            neg     rax
            mov     rdi, rax
            call    errno_location
done:
            ret
