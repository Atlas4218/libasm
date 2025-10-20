            global  ft_strcpy

            section .text

ft_strcpy: 
            xor     rax, rax
            jmp     copy
increment:  
            inc     rax
copy:
            mov     dl, byte[rdi+rax]
            mov     byte[rsi+rax], dl
            cmp     byte [rdi+rax], 0
            jne     increment
done:       
            mov     rax, rsi
            ret