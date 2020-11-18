hw(x,a) = a*x + (1-a)*s
s=1; plot "unsmoothed" u 1:2 w l, "" u 1:(s=hw($2,0.2)) w l lw 2