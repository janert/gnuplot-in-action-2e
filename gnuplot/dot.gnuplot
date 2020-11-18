# Improve default settings
set encoding utf8

set samples 3000

set isosamples 30
set hidden3d


# Local library
set loadpath "/home/janert/lib/gnuplot/"

# Local style - enable if defined
# load "default-style.gp" 


# Color management functions
hsv( h, s, v )  = hsv2rgb( h - floor(h), s, v )
pack( r, g, b ) = 2**16*r + 2**8*g + b


# Set arrows with mouse
bind "Button1" \
"if(exists('arrow')==0) { \
   arrow=1; arrow_x=MOUSE_X; arrow_y=MOUSE_Y; \
   set label 1000 at arrow_x,arrow_y point; replot; \
 } else { \
   unset label 1000; \
   set arrow from arrow_x,arrow_y to MOUSE_X, MOUSE_Y; replot; \
   undefine arrow,arrow_x,arrow_y \
}"

bind "Escape" "unset label 1000; replot; undefine arrow,arrow_x,arrow_y"
