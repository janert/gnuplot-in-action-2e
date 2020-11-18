set datafile separator ","
unset xtics; set ytics 1
set bars 0; unset key;

set multiplot \
    title "From left to right: I. Setosa, I. Versicolor, I.Virginica" \
    layout 2,2 margins 0.1,0.9,0.1,0.9 spacing 0.075

set xlabel ""; set ylabel "Sepal"
plot "iris.data" u (1):1:(0.5):5 w boxplot
set xlabel ""; set ylabel ""
plot "iris.data" u (1):2:(0.5):5 w boxplot

set xlabel "Length"; set ylabel "Petal"
plot "iris.data" u (1):3:(0.5):5 w boxplot
set xlabel "Width"; set ylabel ""
plot "iris.data" u (1):4:(0.5):5 w boxplot

unset multi