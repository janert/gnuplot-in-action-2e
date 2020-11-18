load "glass.def"

unset key; unset ytics
set xtics format ""

set style parallel lw 1 lc black

set linetype 1 lc '#ddff0000' lw 1

set multi layout 1,2 margin 0.05,0.9,0.1,0.95 spacing 0

# Left side
set for[k=1:5] xtic add ( word(names,k) k )
plot [1:6] data u 1:2:3:4:5:6 w parallel lt 1

# Right side
set for[k=1:6] xtic add ( word(names,k+5) k )
set paxis 6 tics format ""
set for[k=1:7] paxis 6 tics add ( word(types,k) k ) offset 7,0
plot [1:6] data u 6:7:8:9:10:11 w parallel lt 1

unset multi