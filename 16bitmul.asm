;<16 bit multiplication>
LHLD 0050H ;//multiplicand
XCHG
LDA 0052H ;//multiplier
LXI H,0000H
MVI C,08  ;//8 times we have to do operation
NEXT:DAD H
RAL
JNC AGAIN
DAD D
AGAIN:DCR C
JNZ NEXT
SHLD 0055H
HLT
