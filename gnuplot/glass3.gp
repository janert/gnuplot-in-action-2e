load "glass.def"

unset xtic; unset key

set multi layout 3,3 margin 0.075,0.99,0.015,0.975 spacing 0.055,0.035
do for[k=2:10] {
  set label word(names,k) at graph 0.95,0.9 right
  plot data u (1):k:(0.5):11 w boxplot pt 6 
  unset label
}
unset multi