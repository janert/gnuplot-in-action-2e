set size ratio -1
unset key

set palette defined ( log(15) 'cyan', log(100) 'blue', log(200) 'red', \
                      log(500) 'yellow', log(2000) 'white', \
                      log(9995) 'white', log(10000) 'black')

set logscale cb
set cbrange [15:10000]

plot "fractal" u 1:2:3 w p pt 5 ps .05 lc pal z
