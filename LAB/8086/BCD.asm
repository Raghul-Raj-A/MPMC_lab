;Code Convertion (BCD to Hex)

MOV BL,14
MOV AL,BL
AND BL,0F

MOV CL,AL
AND CL,F0

ROR CL,1
ROR CL,1
ROR CL,1
ROR CL,1

MOV AL,CL
MOV DL,0A
MUL DL
ADD AL,BL
INT 3 ;(break point interrupt)