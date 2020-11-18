set datafile separator ","
unset key           
set border 2        # retain only the border on the left
set xtics scale 0   # remove the tics, but retain tic labels
set ytics nomirror  # avoid tics on the right
plot "iris.data" u (1):1:(0.5):5 w boxplot  