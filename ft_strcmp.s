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
            mov     dl, BYTE[rsi+rdx]
            cmp     BYTE[rdi+rdx], dl
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