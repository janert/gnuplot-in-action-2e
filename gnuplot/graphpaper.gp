set terminal pdfcairo size 12.5cm,12.5cm
set o 'graphpaper.pdf'

set size 0.8,0.8
set origin 0.1,0.1
set margins 0,0,0,0

unset key
unset tics

set style arrow 1 nohead lw 1

set for [i=1:99] arrow from i/10.,0 to i/10.,10 as 1 lc rgb 'light-grey'
set for [i=1:99] arrow from 0,i/10. to 10,i/10. as 1 lc rgb 'light-grey'

set for [i=5:95:10] arrow from i/10.,0 to i/10.,10 as 1 lc rgb 'grey'
set for [i=5:95:5] arrow from 0,i/10. to 10,i/10. as 1 lc rgb 'grey'

set for [i=10:90:10] arrow from i/10.,0 to i/10.,10 as 1 lc rgb 'dark-grey'
set for [i=10:90:10] arrow from 0,i/10. to 10,i/10. as 1 lc rgb 'dark-grey'

plot [0:10][0:10] 1/0
set o
