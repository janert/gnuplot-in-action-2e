load "glass.def"

unset key; unset ytics
set xtics format ""

c(x) = 9<x && x<10 ? 2 : 3

set style parallel lw 1 lc black

set linetype 1 lc '#ddff0000' lw 1   # Default style
set linetype 2 lc '#aa0000ff' lw 1   # Highlight style
set linetype 3 lc '#ff000000' lw 1   # Invisible (transparent) style

set multi layout 1,2 margin 0.05,0.9,0.1,0.95 spacing 0

# Left side
set for[k=1:5] xtic add ( word(names,k) k )
plot [1:6] data u 1:2:3:4:5:6 w parallel lt 1, \
           data u 1:2:3:4:5:6:(c($8)) w parallel lc var

# Right side
set for[k=1:6] xtic add ( word(names,k+5) k )
set paxis 3 tics 1                   # Turn on tic marks for one col
set paxis 6 tics format ""
set for[k=1:7] paxis 6 tics add ( word(types,k) k ) offset 7,0
plot [1:6] data u 6:7:8:9:10:11 w parallel lt 1, \
           data u 6:7:8:9:10:11:(c($8)) w parallel lc var

unset multi 