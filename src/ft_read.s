            global   ft_read
            extern __errno_location
            section  .text

ft_read:
            xor      rax, rax
            mov      rax, 3
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