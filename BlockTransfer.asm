;<Transfering contents of a array>
LXI H,0000H  ;// At first location give the length of array
MOV B,M
INX H
LXI D,0050H
LOOP:MOV A,M
STAX D
INX H
INX D
DCR B
JNZ LOOP
LXI H ,0008H     ;//at last put a number to identfy the  array
MOV A,M
STAX D
HLT
