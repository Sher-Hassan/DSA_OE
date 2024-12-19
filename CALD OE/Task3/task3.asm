INCLUDE Irvine32.inc

.data
Array1      WORD 100h, 200h
Array2      WORD 2 DUP(0)
arrSize     WORD 2
msgDirect   BYTE "Direct Addressing: ", 0
msgIndirect BYTE "Indirect Addressing: ", 0

.code
main PROC
    ; Copy Array1 to Array2 using direct addressing
    mov ax, word ptr [Array1]
    mov word ptr [Array2], ax
    mov ax, word ptr [Array1+2]
    mov word ptr [Array2+2], ax

    ; Display results using direct addressing
    mov edx, OFFSET msgDirect
    call WriteString
    mov esi, OFFSET Array2
    movzx ecx, word ptr arrSize

display_direct:
    xor eax, eax
    mov ax, word ptr [esi]
    call WriteHex
    call Crlf
    add esi, 2
    loop display_direct

    ; Copy Array1 to Array2 using indirect addressing
    mov esi, OFFSET Array1
    mov edi, OFFSET Array2
    movzx ecx, word ptr arrSize

copy_indirect:
    mov ax, word ptr [esi]
    mov word ptr [edi], ax
    add esi, 2
    add edi, 2
    loop copy_indirect

    ; Display results using indirect addressing
    mov edx, OFFSET msgIndirect
    call WriteString
    mov esi, OFFSET Array2
    movzx ecx, word ptr arrSize

display_indirect:
    xor eax, eax
    mov ax, word ptr [esi]
    call WriteHex
    call Crlf
    add esi, 2
    loop display_indirect

    exit
main ENDP
END main