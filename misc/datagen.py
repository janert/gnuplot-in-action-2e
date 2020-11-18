import sys
import time
import math
import random

tmax = float( sys.argv[1] )

t = 0
while 1:
    dt = random.uniform( 0, 2.0*tmax )
    time.sleep(dt)
    t += dt

    print t, math.sin(0.1*math.pi*t/tmax)
