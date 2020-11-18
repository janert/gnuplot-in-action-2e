set polar                               # Switch on polar mode
set size square                         # Ensure square aspect ratio

unset border                            # Switch off border...
unset tics                              # ... and regular tic marks
set tmargin 2; set bmargin 2            # Make room at top and bottom
set key left at graph 1,0.95            # Get the key out of the way

set rrange [0:1]                        # Fix radial range
set raxis                               # Switch on axis at zero-angle
set rtics 0.25 nomirror scale 0.5       # Format radial tic marks
set grid polar pi/8.0                   # Switch on and customize grid

set label "0π" at 1,0 offset char 1,0   # Angular tic labels
set label "+0.5π" at 0,1 center offset char 0,0.75
set label "-0.5π" at 0,-1 center offset char 0,-0.75
set label "+/-π" at -1,0 offset char -5,0

plot [-0.875*pi:0.875*pi] "polardata" u 1:2 t "Data" w l, \
                          0.27*(2-cos(3*t)+0.75*cos(5*t)) t "Model"