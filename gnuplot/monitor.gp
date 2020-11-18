logname = "logfile"   # Configure name of logfile
tmplen  = 200
tmpname = "tmp"

bind "x" "end=1"      # Hit 'x' to terminate script!
end = 0
while( end==0 ) {
  system sprintf( "tail -%d %s > %s", tmplen, logname, tmpname )
  stats [*:*][*:*] "tmp" u 1:2 nooutput
  set xrange [STATS_max_x-11.0:STATS_max_x+1]
  plot "tmp" u 1:2 w lp
  pause .01
}
