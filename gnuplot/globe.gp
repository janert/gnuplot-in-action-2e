unset key; unset border; unset tics
set hidden3d

set mapping spherical; set angles degrees
set parametric; set urange [-90:90]; set vrange [0:360]

bind "x" "end=1"

end = 0; t = 0
while( end==0 ) {
  t = (t + 1)%360

  set view 90-30*cos(t), 360-t, 1.5, 1.25

  splot cos(u)*cos(v),-cos(u)*sin(v),sin(u) w l lc rgb "grey", "world_110m.txt" w l lt 1

  pause 0.01
}
