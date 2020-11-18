set xlabel "Cluster size [thousands]"
set ylabel "Running time [sec]"
set title "DLA Growth Program: Run Time vs Cluster Size (Double Logarithmic)"

set key top left
set logscale

plot [1:100][0.1:] "progress" u 1:2 title "Data" w p, (x/2.5)**3 notitle
