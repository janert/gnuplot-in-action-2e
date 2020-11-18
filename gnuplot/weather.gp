set angle degrees  
unset key

set bar 0          # disable whiskers on the errorbars
set boxwidth .7    # fix width of candlesticks

sym(s) = s eq 'up' ? "△" : (s eq 'dn' ? "▼" : "◎")

plot [0:32][0:18] \
"weather" u 1:($5+2):($5+2):(10+2):(10+2) w cand lc rgb "grey" fs solid, \
"" u 1:2:3:2 w yerrorlines pt 0 lt 1, \
"" u 1:(1):(0.4):(90-0.01*$4*359):(90) w circ lc rgb "blue" fs solid, \
"" u 1:(1):(0.4) w circ lc rgb "black", \
2 lc rgb 'dark-grey', 10+2 lc rgb 'dark-grey', \
"" u 1:(16) w p lt 2 pt 7 ps .75, \
"" u 1:(16):(.05*$6*cos(90-$7)):(.05*$6*sin(90-$7)) w vectors lw 2 lt 2 nohead,\
"" u 1:($8-1000):(sym(stringcolumn(9))) w labels