set yrange [9:16]
set y2range [6:13]

set ytics 9,1,12 nomirror
set y2tics 10,1,13 

set datafile missing "NaN"

plot [0:10] "missing" u 1:2 ax x1y2 w linesp lt 1 pt 7, \
     "" u 1:($2) ax x1y1 w linesp lt 1 pt 7