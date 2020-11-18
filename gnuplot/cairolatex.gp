set label 1 '$\phi(x) = \frac{1}{\sqrt{2 \pi}} e^{-\frac{1}{2} x^2}$' at 1.2,0.25
set label 2 '$\Phi(x) = \int_{-\infty}^x \phi(t) dt$' at 1.2,0.8

set label 3 '\textbf{\Large Big and Bold}' at -2.5,0.6

set key top left Left title '\textbf{Legend}'

set xtics ( '$-\pi/2$' -pi/2, '$0$' 0, '$\pi/2$' pi/2 )

plot [-3:3] exp(-0.5*x**2) /sqrt(2*pi) t '$\phi(x)$', norm(x) t '$\Phi(x)$'

set terminal cairolatex pdf
set o "cairolatex.tex"    # Name of output LaTeX file with extension!
replot
