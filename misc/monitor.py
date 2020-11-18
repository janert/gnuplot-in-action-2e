import sys
import subprocess

buflen = 200                       # number of data points to buffer

gnuplot = "/usr/bin/gnuplot"

gp = subprocess.Popen( gnuplot, stdin=subprocess.PIPE )
gp.stdin.write( "set t wxt\n" )

buf = []
while 1:
    line = sys.stdin.readline()    # read unbuffered from stdin

    t, u = line.strip().split()
    buf.append( (float(t), float(u)) )

    buf = buf[-buflen:]            # drop oldest data points,
                                   # retaining at most buflen points

    mx = buf[-1][0]                # most recent time stamp
    gp.stdin.write( "set xrange [%f:%f]\n" % ( mx-10, mx+1 ) )

    gp.stdin.write( "plot '-' u 1:2 w lp\n" )
    for d in buf:
        gp.stdin.write( "%f %f\n" % d )
    gp.stdin.write( "e\n" )
