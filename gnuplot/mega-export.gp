# Invoke as: call "mega-export.gp" "graph.png" "terminal options"
# File format MUST be a three-letter extension.

# Save arguments
arg = ARG1
opts = ARG2
len = strlen( arg )

# Find the last "/" in the filename
k = 0
do for [i = 1:len] {
  if( arg[i:i] eq "/" ) {
    k = i
  }
}

# Split the filename into path, file, and extension
if( k == 0 ) {         # No "/" found: use current dir
  path = ''
  file = arg[1:len-4]
} else {               # At least one "/" found
  path = arg[1:k]
  file = arg[k+1:len-4]
}
type = arg[len-2:]     # Assuming 3 letter extension

# Select a terminal based on the extension
term = ''
if( type eq 'eps' ) { term = 'epscairo' }
if( type eq 'pdf' ) { term = 'pdfcairo' }
if( type eq 'png' ) { term = 'pngcairo' }
if( type eq 'svg' ) { term = 'svg' }
if( term eq '' ) {
  print "Unknown file type - using pdf"
  term = 'pdfcairo'
}

save path . file . '.gp'

set t push
eval "set t " . term . " " . opts
set o path . file . "." . type
replot
set o
set t pop

print "Done!"