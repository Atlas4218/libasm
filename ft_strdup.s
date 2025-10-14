            global  ft_strdup
            extern  _malloc
            extern  errno_location
            section .data

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


ft_strdup:
            xor     rax, rax
            cmp     rdi, 0
            je      done
            call    ft_strlen
            push    rdi
            mov     rdi, rax
            call    _malloc
            cmp     rax, 0
            jle     error
            mov     rsi, rax
            pop     rdi
            call    ft_strcpy
            jmp     done
error:
            mov     rdi, 12
            call    errno_location
done:
            ret
