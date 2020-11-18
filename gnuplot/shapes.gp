set angle degrees

plot "shapes" u 1:($2+2):(2*$3*cos($4)):(2*$3*sin($4)) w vectors, \
     "" u 1:($2+1):($3) w circles,\
     "" u 1:(1):($3):(0):4 w circles,\
     "" u 1:(0):(0.5):($3):4 w ellipses