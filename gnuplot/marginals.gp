t(x,n) = cos(n*acos(x))     # Define some function

set xrange [-1:1]
set yrange [-1:1]

set multiplot layout 3,2 margins 0.15,0.95,0.15,0.95 spacing 0.03,0.05

set xtics format "";   set ytics format "%g"; plot t(x,1) t "k=1"
set xtics format "";   set ytics format "";   plot t(x,2) t "k=2"

set ylabel "Chebyshev\nPolynomials"
set xtics format "";   set ytics format "%g"; plot t(x,3) t "k=3"
unset ylabel
set xtics format "";   set ytics format "";   plot t(x,4) t "k=4"

set xlabel "k odd";
set xtics format "%g"; set ytics format "%g"; plot t(x,5) t "k=5"
set xlabel "k even";
set xtics format "%g"; set ytics format "";   plot t(x,6) t "k=6"
unset xlabel

unset multiplot             # Don't forget!