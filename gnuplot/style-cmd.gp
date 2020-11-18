set xlabel "Input"
set ylabel "Response"

plot "sparse" u 1:2 t "Sparse 1" w lp, "" u 1:3 t "Sparse 2" w lp, \
     "" u 1:2:(1000) t "Smooth" s acs w l, \
     "dense" u 1:2 t "Dense 1" w l, "" u 1:3 t "Dense 2" w l, \
     "" u 1:4 t "Dense 3" w l