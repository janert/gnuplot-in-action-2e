set datafile separator ','

unset key
unset border
unset ytics
set xtics ( "Sepal\nLength" 1, "Sepal\nWidth" 2, "Petal\nLength" 3, "Petal\nWidth" 4 )
set bmargin 3

set for[k=1:4] paxis k tics
set paxis 5 tics ( "I. Setosa" 1, "I. Versicolor" 2, "I. Virginica" 3 ) left offset 4,0

cls(s) = s eq 'Iris-setosa' ? 1:(s eq 'Iris-versicolor' ? 2:3)

plot [0.6:5.8] "iris.data" u 1:2:3:4:(cls(strcol(5))):(cls(strcol(5))) w parallel lc var
