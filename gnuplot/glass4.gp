load "glass.def"

col = 6                          # Column to display
get( s, k ) = word( s, int(k) )  # Access k-th element in string s

unset key
set title "Attribute: " . get(names,col)

s = ''
do for[k=1:7] { 
  stats data u ($11==k?1:0) noout
  s = s . sprintf( " %d", STATS_sum )
}
plot data u (1):col:(0.01*get(s,$11)):(get(types,$11)) w boxplot
