            global   ft_read
            extern __errno_location
            section  .text

ft_read:
            xor      rax, rax
            mov      rax, 0      ; syscall: read
            syscall
            cmp     rax, 0
            jl      error
            jmp     done
error:
            neg     rax
            mov     rdx, rax
            call    __errno_location
            mov      dword [rax], edx
            mov     rax, -1
done:
            ret