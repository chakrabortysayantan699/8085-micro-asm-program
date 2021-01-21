;<SWapping content of two location>
LHLD 0040H   ;// First data given in  this location
XCHG
LHLD 0050H	  ;// 2nd data given in  this location
SHLD 0040H
XCHG
SHLD 0050H 	
HLT
