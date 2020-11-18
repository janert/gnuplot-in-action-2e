set datafile separator ','

unset key                     # switch off unnecessary decorations
unset border
unset ytics
set xtics ("Sepal\nLength" 1, "Sepal\nWidth" 2, \
           "Petal\nLength" 3, "Petal\nWidth" 4 )
set lmargin 6
set bmargin 3

set for[k=1:4] paxis k tics   # turn on tic marks along parallel axes

plot [1:4] "iris.data" u 1:2:3:4 w parallel 