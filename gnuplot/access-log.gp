set xdata time
set timefmt "[%d/%b/%Y:%H:%M:%S"   # The left bracket is part of the format!
set xtics format "%d%b\n%H:00" rotate

set ylabel "Hits per hour"

plot "access_log" u (strcol(4)[1:15] . ":00:00"):(1) s f w l