t(x,n) = cos(n*acos(x))     # Define some function

set xrange [-1:1]
set yrange [-1:1]

set multiplot title "Chebyshev Polynomials" layout 3,2

do for[k=1:6] { plot t(x,k) t sprintf( "k=%d", k ) }

unset multiplot             # Don't forget! 