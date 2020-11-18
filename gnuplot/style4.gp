unset border
set xtic nomirror
set ytic rotate by 90 center nomirror
set arrow 1000 from graph 0,0 to graph 1.075,0 head filled lw 2
set arrow 1001 from graph 0,0 to graph 0,1.075 head filled lw 2 

set size square

set lmargin 7
set rmargin 5
set tmargin 1.5
set ylabel offset 3,0
set xlabel offset 0,0.5

set key opaque title "Legend" box lw 2 font ",10" 

set linetype 1 lw 2 pt  9 lc rgb '0xff4500'          # orangered
set linetype 2 lw 2 pt 11 lc rgb '0x00ff00' dt '-'   # green
set linetype 3 lw 2 pt 13 lc rgb '0x0000ee' dt '_'   # blue1 
set linetype 4 lw 2 pt  9 lc rgb '0xff1493' dt '.'   # deeppink
set linetype 5 lw 2 pt 11 lc rgb '0x00eeee'          # cyan2
set linetype 6 lw 2 pt 13 lc rgb '0x9400d3' dt '-'   # darkviolet

set termoption font "Times,20"
# set termoption fontscale 0.5
