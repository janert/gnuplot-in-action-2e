
# Make sure gnuplot can find the file "world.dat" from the demo/ folder
# of the gnuplot distribution.

set mapping spherical      # Switch on spherical coordinates
set angles degrees

unset border               # Clean up
unset tics
unset key
set hidden3d

set parametric             # For the grid lines
set urange [-90:90]
set vrange [0:360]

set view 55,80,1.5,1.25    # Choose view point

splot "world.dat" w l, cos(u)*cos(v),-cos(u)*sin(v),sin(u) w l lc rgb "grey"