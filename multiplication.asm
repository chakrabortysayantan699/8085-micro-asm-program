;<16 bit multiplication>
LHLD 0050H
XCHG
LDA 0052H
LXI H,0000H
MVI C,08
NEXT:DAD H
RAL
JNC AGAIN
DAD D
AGAIN:DCR C
JNZ NEXT
SHLD 0055H
HLT