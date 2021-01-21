;<Swapping contents of a array>
LXI H,0000H
MOV B,M
INX H
LXI D,0050H
LOOP:MOV A,M
STAX D
INX H
INX D
DCR B
JNZ LOOP
LXI H ,0008H //at last put a number to identfy last of 
the  array
MOV A,M
STAX D
HLT
