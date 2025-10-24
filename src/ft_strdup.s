            global  ft_strdup
            extern  malloc
            extern  __errno_location
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
            call    malloc
            cmp     rax, 0
            jle     error
            pop     rsi
            mov     rdi, rax
            call    ft_strcpy
            jmp     done
error:
            neg     rax
            mov     rdx, rax
            call    __errno_location
            mov      dword [rax], edx
            mov     rax, -1
done:
            ret