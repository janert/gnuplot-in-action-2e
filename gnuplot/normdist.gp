sqrt2pi = sqrt(2.0*pi)

gauss(x,m,s) = exp(-0.5*((x-m)/s)**2)/(sqrt2pi*s)
lognorm(x,m,s) = exp(-0.5*((log(x)-m)/s)**2)/(sqrt2pi*x*s)
