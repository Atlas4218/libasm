            global  ft_write
            extern  errno_location
            section .text

ft_write:
            xor     rax, rax
            mov     rax, 4
            syscall
            cmp     rax, 0
            jl     error
            jmp     done
error:
            mov     rdi, rax
            call    errno_location
            mov     rax, -1
done:
            ret