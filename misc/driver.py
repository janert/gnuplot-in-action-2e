
# This version requires Python2.
# See the file driver-python3.py in the same directory for a Python3 version.

import subprocess

data = [ [0, 12, 25],     # x, y1, y2
         [1, 14, 22],
         [2, 15, 23],
         [3, 11, 25] ]

gnuplot = "/usr/bin/gnuplot"

gp = subprocess.Popen( gnuplot, stdin=subprocess.PIPE )

gp.stdin.write( "$d << EOD\n" )
for row in data:
    for col in row:      
        gp.stdin.write( "%f\t" % (col,) )
    gp.stdin.write( "\n" )
gp.stdin.write( "EOD\n" )

gp.stdin.write( "set t pngcairo; set o 'graph.png';\n" )
gp.stdin.write( "plot $d u 1:2 w l, $d u 1:3 w l\n" )
