;Stepper motor

MOV AL,80
MOV DX,0FFE6
OUT DX,AL
MOV AL,11 :: 22/33/44
MOV DX,0FFE0
L3:
OUT DX,AL
CALL 3000
ROR AL,1    // ROL AL,1
JMP L3

3000:
MOV CL,FF
L:DEC L
JNZ L
RET