lgn( x, s )  = exp(-0.5*(log(x)/s)**2)/(x*s*sqrt(2*pi))  # Log-normal
clgn( x, s ) = norm(log(x)/s)                            # Cumulative

vals = "0.05 0.1 0.25 0.5"

set multiplot title "" layout 2,1 margins 0.1,0.9,0.1,0.95 spacing 0,0

# --- Top plot

set key bottom right Left title "Cumulative"
set xtics 0.2 format "" # No tic labels for x-axis, but adjust frequency
set ytics 0.2,0.2       # Suppress the tic label for y=0 (start,step)
set grid

plot [0:2][0:1] for[v in vals] clgn(x,v) t "s=" . v

# --- Bottom plot

set key top right Left title "Density"
set format x "%g"       # Restore the tic labels for the x-axis
set ytics auto
unset grid

plot [0:2][0:8.5] for[v in vals] lgn(x,v) t "s=" . v

unset multiplot