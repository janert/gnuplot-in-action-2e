f(x,a) = x<a ? sqrt(a-x) : 0        # Magnetization
g(x,b) = 0.25*x**4 + b*x**2         # Free Energy

set multiplot

set grid
plot [-3:2.5][-1:2] f(x,0) notitle w l lw 3
unset grid

unset tics
unset key
set margins 0, 0, 0, 0

set size 0.2

set origin 0.175,0.425
clear
plot [-2.5:2.5][-1.5:2] g(x,-1)

set origin 0.4625,0.125
clear
plot [-2.5:2.5][-0.5:3] g(x,0)

set origin 0.675,0.425
clear
plot [-2.5:2.5][-0.5:3] g(x,1)

unset multiplot