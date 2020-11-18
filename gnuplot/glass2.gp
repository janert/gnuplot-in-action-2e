load "glass.def"

unset xtics; unset key
set ticscale 0; set grid lt 1 lc rgb "grey" lw 2
set ytic offset 0.5,0         # Move tic marks closer to their boxes
set style fill solid 0.5

set multiplot layout 1,9 margin 0.075,0.975,0.1,0.95 spacing 0.075,0
do for[k=2:10] { 
  set xlabel word(names,k)
  plot data u (1):k:(0.5) w boxplot pt 6 
}
unset multi