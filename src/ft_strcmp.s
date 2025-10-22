            global  ft_strcmp

            section .text

ft_strcmp: 
            xor     rax, rax
            xor     rcx, rcx
            xor     rdx, rdx
            jmp     compare
increment:  
            cmp     byte[rdi+rcx], 0
            je      done
            inc     rcx

compare:
            mov     dl, BYTE[rsi+rcx*1]
            cmp     BYTE[rdi+rcx], dl
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