set xdata time
set timefmt "%Y-%m-%d"

set xtics format "%d%b%y"
set ytics nomirror
set y2tics

set ylabel "Celsius"
set y2label "Fahrenheit"

set link y2 via (9/5.)*y+32 inverse (5/9.)*(y-32)

plot "frankfurt" u 1:2 axis x1y1 w lp, "newyork" u 1:2 axis x1y2 w lp