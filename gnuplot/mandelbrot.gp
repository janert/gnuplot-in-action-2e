set size sq; set view map

set samples 500; set isosamples 500

MAXITR = 100
f(z,c,k) = abs(z)>2 || k>=MAXITR ? k : f(z**2+c,c,k+1)

set palette defined ( 0 'white', 5 'blue', 15 'red', 50 'yellow', 99 'yellow', 100 'black' )

splot [-1.5:0.5][-1:1] "++" u 1:2:( f({0,0}, $1+$2*{0,1}, 0) ) w pm3d