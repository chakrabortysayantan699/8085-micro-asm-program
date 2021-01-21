;<finding positive a and negetive data 
LXI H,0040H
MVI B,00H    ;// it will show number of positive number
MVI C,00H    ;// it will show number of zero
MVI D,00H    ;// it will show number of negative number
MVI E,08H    ;// it will work like counter.....you can give your number of data on which you are working
START: MOV A,M
ADI 00H
JZ ZERO
JP POS
INR D
JMP END
POS:INR B
JMP END
ZERO:INR C
END:INX H
DCR E
JNZ START
HLT
