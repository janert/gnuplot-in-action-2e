set xtics 26
set mxtics 2

set xrange [0:150]

set multiplot layout 2,2 rowsfirst margins 0.1,0.95,0.15,0.9 spacing 0.1,0.05

# top left: individual product numbers
set key horizontal samplen 2 at screen 0.55,0.95 width -7 center
set xtic format ""
set ylab "Absolute" offset 1,0
tx(k) = (k==2 ? 'Product 1' : ''.k-1)
plot for[k=2:5] "composition" u 1:k t  '' . tx(k) w l
unset ylab
unset key

# top right: stacked product numbers: use sum
plot for[k=2:5] "composition" u 1:(sum[j=2:k] column(j)) w l

# bottom left: individual fractions: divide by sum over all products
set xtic format "%g"
set xlab "Individual"
set ylab "Fractional" offset 1,0
plot [][0:.6] for[k=2:5] "composition" u 1:(column(k)/(sum[j=2:5] column(j))) w l
unset ylab

# bottom right: stacked fractions: divide sum by sum over all
set xlab "Stacked"
plot [][0:1.025] for[k=2:5] "composition" u 1:((sum[j=2:k] column(j))/(sum[j=2:5] column(j))) w l

unset multiplot