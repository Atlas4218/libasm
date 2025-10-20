            global  ft_write
            extern  __errno_location
            section .text

ft_write:
            xor     rax, rax
            mov     rax, 4
            syscall
            cmp     rax, 0
            jl     error
            jmp     done
error:
            neg     rax
            mov     rdi, rax
            call    __errno_location
            mov     rax, -1
done:
            ret