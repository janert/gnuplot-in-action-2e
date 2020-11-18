# Must prepopulate f(x) and x before call

NEWTON_steps = 0
NEWTON_eps = 1.e-6

while( abs(f(x)) > 1e-12 && NEWTON_steps < 15 ) {
  NEWTON_df = (f(x+NEWTON_eps) - f(x) )/NEWTON_eps
  x = x - f(x)/NEWTON_df
  NEWTON_steps = NEWTON_steps + 1
}
print sprintf("f(%.12f) = %.12f in %d steps", x, f(x), NEWTON_steps)

undefine NEWTON*