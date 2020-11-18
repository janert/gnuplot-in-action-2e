set logscale
unset key

set ylabel "Weight"
set xlabel "Heart rate [beats per minute]"

set ytics format "%.0s%cg"
set xtics format "%.0t·10^{%T}"

plot [10:1000][:0.2e9] \
 "mammals" u 3:2:1 w labels point pt 7 lc rgb 'red' offset 0,-1