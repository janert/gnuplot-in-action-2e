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
