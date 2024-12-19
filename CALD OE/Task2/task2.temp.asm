INCLUDE c:\Users\student\.vscode\extensions\istareatscreens.masm-runner-0.4.5\native\irvine\Irvine32.inc

.data
    prompt BYTE "Enter a 32-bit integer: ", 0     ; Prompt message
    output BYTE "You entered: ", 0                 ; Output message
    integer DWORD ?                                ; Reserve space for the integer

.code
MAIN PROC
    ; Display prompt message
    mov edx, OFFSET prompt
    call WriteString

    ; Read the integer from the user
    call ReadInt

    ; Store the input integer in 'integer'
    mov [integer], eax

    ; Print a newline
    call Crlf

    ; Display the output message
    mov edx, OFFSET output
    call WriteString

    ; Redisplay the stored integer
    mov eax, [integer]  ; Load the stored integer into eax
    call WriteInt       ; Call WriteInt to display the integer

    ; Exit the program
    exit

MAIN ENDP
END MAIN
