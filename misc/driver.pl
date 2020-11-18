open PROC, "| /usr/bin/gnuplot " || die "Could not start gnuplot: $!";

print PROC "set xlabel 'Time'; set ylabel 'Amplitude';";

print PROC "set o 'graph.png';";
print PROC "set t pngcairo;";

print PROC "plot '-' u 1:2 t 'data' w l\n";

for( $x = 0.0; $x <= 10.0; $x += 0.1 ) {
  $y = exp(-$x/5)*sin( $x );
  print PROC "$x $y\n";
}
print PROC "e\n";

close PROC;
