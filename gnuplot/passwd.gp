set datafile separator ':'
set datafile commentschar "m"
plot [-10:90][0:15] "passwd" \
 u 3:($0+2):( stringcolumn(1) . "\n" . stringcolumn(5) ) w labels