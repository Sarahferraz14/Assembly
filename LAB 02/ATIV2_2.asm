
Title ATIV2_2.asm
.model small


.data
    msg1 db "   Digite um numero (0-9) $"
    msg2 db 10,13, "    Digite outro numero(0-9) $"
    msg3 db 10,13, "    A soma desses numeros $"


.code
    main proc
        ;acessa as infos de data
        mov ax,@data
        mov ds,ax

        ;lê as msg1
        lea dx, msg1
        mov ah,09
        int 21h

        ;recebe o numero digitada 
        mov ah,01
        int 21h

        ;move a infromação do número para outro registrador e substrai 30d dele 
        mov bl,al
        sub bl,30h
        
        ;imprime a msg2
        mov ah,09
        lea dx,msg2
        int 21h

        ;recebe o numero digitada 
        mov ah,01
        int 21h

        ;substrai 30d dele 
        sub al,30h

        ;soma os num e os transforma em caracteres 
        add bl,al
        add bl,30h
        
        ;imprime a msg3, muda registrador e imprime a soma
        lea dx,msg3
        mov ah,09
        int 21h

        mov dl,bl

        mov ah,02
        int 21h

        ;acaba com o programa
        mov ah,4ch
        int 21h
main endp
end main