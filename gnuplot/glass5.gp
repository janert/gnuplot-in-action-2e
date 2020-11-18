load "glass.def"

unset key; unset tics

set size square

set multi layout 9,9 margin 0.01,0.99,0.01,0.99 spacing 0.01
do for[i=2:10] {
  do for[j=2:10] { 
    if( i!=j ) {
      if( i<j ) {
        plot data u i:j w p ps .25 pt 7 
      } else {
        plot data u i:j w p ps .5 pt 7 lc rgb "#e60000ff"
      } 
    } else {
      unset border
      set label word(names,i) at 0,0 center
      plot [-1:1][-1:1] 1/0
      unset label
      set border
    }
  }
}
unset multi