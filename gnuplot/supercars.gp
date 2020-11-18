unset key

set ylabel "Horsepowers"; set xlabel "Year"

set for[k=1:3] label k sprintf( "% d Cylinders", 4*(k+1) ) at 2003.75,1200+k*50 point pt 7 lc k offset 11,-0.175 right

plot [2003:2014][500:1400] "supercars" u 1:2:($3/4-1) pt 7 ps 1.0 lc var, "" u 1:2:8 w labels offset 1,-1
