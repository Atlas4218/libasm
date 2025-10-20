            global  ft_strlen

            section .text
ft_strlen:  
            xor     rax, rax
            jmp     compare
increment:  
            inc     rax
compare:    
            cmp     byte [rdi+rax], 0
            jne     increment
done:       
            ret