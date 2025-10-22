            global  ft_strcpy

            section .text

ft_strcpy: 
            xor     rax, rax
            jmp     copy
increment:  
            inc     rax
copy:
            mov     dl, byte[rsi+rax]
            mov     byte[rdi+rax], dl
            cmp     byte [rsi+rax], 0
            jne     increment
done:       
            mov     rax, rdi
            ret