;< counting Even and odd number
MVI D,0000H
MVI E,0000H
LXI H,0010H
MOV C,M     ;the first element of the array should contain the length of the array
LOOP:INX H
MOV A,M
RRC
JC ODD
INR D ;//will show the number of even
GO:DCR C
JNZ LOOP
MOV A,D
STA 0050H
MOV A,E ;// will reflect the number of odd number
STA 0055H
HLT
ODD:INR E
JMP GO
