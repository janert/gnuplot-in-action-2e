unset key; unset border; unset tics

bind "x" "end=1"

end = 0; t = 0
while( end==0 ) {
  t = t + 0.1
  splot [][][-1:1] exp(-0.2*sqrt(x**2+y**2))*cos(sqrt(x**2+y**2) - t)
  pause 0.001
}