set xdata time                      # turn on time series mode!

set timefmt "%m"                    # input format: 1...12
set xtics format "%b"               # output format: Jan, Feb, ...

plot [][0:10] "months" u 1:2 w lp   # plot
