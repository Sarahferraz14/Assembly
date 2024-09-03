Title ATIV1_3.ASM
.model small


.data
    msg1 db "digite um catactere$"
    msg2 db 10,13,"caractere digitado:$"


.code
    main proc
        
        ;Permite o acesso às variáveis definidas em .data 
        mov ax, @data
        mov ds,ax

        ;Exibe na tela a string msg 1
        mov ah, 9 
        lea dx, msg1 
        int 21h 

        ;Exibe o caractere ':' na tela
        mov ah,2
        mov dl,":"
        int 21h

        ;Lê um caracter do teclado e salva o caracter lido em al 
        mov ah, 1
        int 21h
        
        ;Copia o caracter lido para bl
        mov bl,al

        ;Exibe o caractere Line Feed (move o cursor para a linha seguinte)
        mov ah,2
        mov dl,10
        int 21h

        ;Exibe o caracter Carriage Return (move o cursor para o canto esquerdo da tela)
        mov ah, 2
        mov dl, 13  
        int 21h

        ;Exibe na tela a string msg2
        mov ah, 9 
        lea dx, msg2
        int 21h 

        ;Exibe o caracter lido (salvo em bl) 
        mov ah, 2
        mov dl,bl
        int 21h

        ;Finaliza o programa
        mov ah, 4Ch
        int 21h
    
    main endp
end main