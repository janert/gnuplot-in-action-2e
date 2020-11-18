load "glass.def"

set boxwid 1
set xtic format ""
set for[k=1:7] xtic add ( word(types,k) k )
plot data u 11:(1) smooth frequency w boxes