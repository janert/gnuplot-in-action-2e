set xdata time
set timefmt "%Y-%m-%d"
set xtics format "%d %b"

set ytics nomirror  # Switch mirroring of principal system OFF
set y2tics          # Switch secondary system ON

set ylabel  "Mean icecream consumption per head [grams]"
set y2label "Mean temperature [Celsius]"

set key top left reverse Left

plot ["1951-03-25":] \
 "icecream" u 1:2 t "Icecream" axes x1y1 w linesp, \
 "" u 1:3 axes x1y2 t "Temperature" w linesp