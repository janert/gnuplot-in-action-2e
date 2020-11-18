unset border
unset tics
unset key
set view 75,35
splot "pyramid" index 0 with points pointtype 7 pointsize 3, \
      "" i 1 u 1:2:3:($4-$1):($5-$2):($6-$3) with vectors nohead 