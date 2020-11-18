set label 1 "{/OpenSymbol φ}(x) = e^{-x^2/2} ∕ √2{/OpenSymbol π}" at 1.2,.25
set label 2 "{/OpenSymbol Φ}(x) = ∫@_{-∞}^x &{i} {/OpenSymbol φ}(t) dt" at 1.2,0.8

set label 3 "{/:Bold*2 Big and Bold}" at -2.5,0.6

set key top left title "{/:Bold Legend}"

set xtics ( "{/OpenSymbol π}/2" pi/2, "0" 0, "-{/OpenSymbol π}/2" -pi/2 )

plot [-3:3] exp(-0.5*x**2)/sqrt(2*pi) t "{/OpenSymbol φ}(x)", norm(x) t "{/OpenSymbol Φ}(x)"