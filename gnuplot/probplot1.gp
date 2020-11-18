FILE = "probplotdata1"             # Configure data file
COL  = 1                           # ... and column

stats FILE u COL nooutput          # Populate STATS_records

set table $tmp                     # Store cumul dist fct in heredoc
plot FILE u COL:(1./(STATS_records+1)) s cumul 
unset table

plot $tmp u (invnorm($2)):1 w p    # Create prob plot
