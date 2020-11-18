unset key        
set xlab "Day"; set ylab "Machine"; set cblab "Defects" offset 1,0

set palette defined (0 'web-green', 0.5 'goldenrod', 0.999 'red', 1 'black')
set cbrange [0:7]

plot [0:32][0:21] "machines" u 1:2:3 w p pt 5 ps 1.75 pal,\
                  "" u 1:2 w p pt 4 ps 1.75 lw 0.5 lc black