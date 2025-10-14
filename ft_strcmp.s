            global  ft_strcmp

            section .text

ft_strcmp: 
            xor     rax, rax
            xor     rdx, rdx
            jmp     compare
increment:  
            cmp     byte[rdi+rdx], 0
            je      done
            inc     rdx

compare:
            cmp     byte[rdi+rdx], byte[rsi+rdx]
            jg      greater
            jl      lower
            jmp     increment
greater:
            mov     rax, 1
            jmp     done
lower:
            mov     rax, -1
            jmp     done
done:       
            ret