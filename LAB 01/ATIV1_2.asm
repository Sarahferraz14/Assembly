Title ATIV1_2.ASM
.model small

.code
main proc

    ;Exibe o caracter ? na tela 
    mov ah, 2
    mov dl, "?"
    int 21h

    ;Lê um caracter do teclado e salva o caracter lido em al 
    mov ah, 1
    int 21h

    ;Copia o caracter lido para bl 
    mov bl, al

    ;Exibe o caracter Line Feed (move o cursor para a linha seguinte) 
    mov ah, 2
    mov dl, 10   
    int 21h

    ;Exibe o caracter Carriage Return (move o cursor para o canto esquerdo da tela)
    mov ah, 2
    mov dl, 13  
    int 21h

    ;Exibe o caracter lido (salvo em BL) 
    mov ah, 2
    move dl, bl
    int 21h

    ;Finaliza o programa
    mov ah, 4ch
    int 21h
    
    main endp
end main







