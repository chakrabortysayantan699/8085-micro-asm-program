;<reverse of a number
LXI H,0010H
MVI C,08H ;//16 bit number length is 8
XRA A
MOV D,A
lOOP: MOV A,M
RRC
MOV M,A
MOV A,D
RAL 
MOV D,A
DCR C
JNZ lOOP
MOV A,D
STA 0090H
HLT
