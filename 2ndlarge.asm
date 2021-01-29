;<Find 2nd largest number>
;<length of the array stored at the frst postion of array
LXI H,0000H
MOV C,M ;it act as a counter 
INR L
DCR C
MOV D,M
MVI E,00H
LOOP:INR L
MOV M,A
CMP D
JC GO
MOV E,D
MOV D,A
JMP AGAIN 
GO:CMP E
JC AGAIN
MOV E,A
AGAIN:DCR C
JNZ LOOP
MOV A,E
STA 0090H
HLT
