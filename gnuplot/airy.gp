set palette defined ( 0 'web-green', 1 'goldenrod', 2 'red' )

set grid lt 1 lw 1.5 lc palette frac 0.5
set label 1 "{/:Bold Origin}" at 1.5,-0.15 center tc palette frac 0.9
set arrow 1 from 1.1,-0.15 to 0.125,-0.02 lw 2 lc palette frac 0.9

plot [-5:3] airy(x) lw 2 lc palette frac 0.1