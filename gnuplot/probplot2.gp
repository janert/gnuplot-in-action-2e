FILE = "probplotdata2"             # Configure data file
COL  = 1                           # ... and column

stats FILE u COL nooutput          # Populate STATS_records

set table $tmp                     # Store cumul dist fct in heredoc
plot FILE u COL:(1./(STATS_records+1)) s cumul 
unset table

set xrange [-1:1]
set link x2 via norm(x) inverse invnorm(x)   # Link the two axes
set xrange [*:*]

set xtics nomirror                 # Fix the appearance of tic labels
set x2tics format "%.2f" rotate
set x2tics add ( "0.01" 0.01, "0.05" 0.05, "0.95" 0.95, "0.99" 0.99 )

set grid x2tics ytics

stats $tmp u (invnorm($2)):1 noout # Performs linear regression, and ...
print "mu=", STATS_intercept, " sigma=", STATS_slope # ... print results

plot $tmp u (invnorm($2)):1 w p, STATS_slope*x + STATS_intercept