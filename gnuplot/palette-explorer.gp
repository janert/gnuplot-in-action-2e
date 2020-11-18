# Invoke as: call 'palette-explorer.gp' 'blue' 'white' 'red'

c1 = ARG1
c2 = ARG2
c3 = ARG3

s = 0.5
ds = 0.025

p = sprintf( "set palette defined (0 '%s', s '%s', 1 '%s'); ", c1, c2, c3 )

bind 'F1' "s=(s-ds>0?s-ds:0); " . p . "replot;"
bind 'F2' "s=(s+ds<1?s+ds:1); " . p . "replot;"

eval(p)