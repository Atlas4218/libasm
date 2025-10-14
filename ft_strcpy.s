            global  ft_strcpy

            section .text

ft_strcpy: 
            xor     rax, rax
            jmp     copy
increment:  
            inc     rax
copy:
            mov     byte[rsi+rax], byte[rdi+rax]
            cmp     byte [rdi+rax], 0
            jne     increment
done:       
            mov     rax, rsi
            ret