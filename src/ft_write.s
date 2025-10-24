            global  ft_write
            extern  __errno_location
            section .text

ft_write:
            xor     rax, rax
            mov     rax, 1        ; syscall number: write
            syscall
            cmp     rax, 0
            jl     error
            jmp     done
error:
            neg     rax
            mov     rdx, rax
            call    __errno_location
            mov     dword [rax], edx
            mov     rax, -1
done:
            ret