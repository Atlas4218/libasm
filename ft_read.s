            global   ft_read
            extern errno_location
            section  .text

ft_read:
            xor      rax, rax
            mov      rax, 3
            syscall
            cmp     rax, 0
            jl     error
            jmp     done
error:
rax         equ     0 - rax
            mov     rdi, rax
            call    errno_location
            mov     rax, -1
done:
            ret