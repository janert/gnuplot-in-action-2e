unset border; unset tics; unset key

set t pdfcairo size 14cm,17cm
set output "fonttest.pdf"

s = "Quarges Gyt R17"
t = "∑αλ ∝ ∫ Γ(θ ⋅ π) dφ → ∞"

f = "Helvetica 'Nimbus Sans L' FreeSans TexGyreHeros Arial "
f = f . "Verdana 'DejaVu Sans' 'Liberation Sans' 'Droid Sans' ? "
f = f . "Times Palatino 'Bitstream Charter' Utopia 'Century Schoolbook L' ? "
f = f . "OpenSymbol STIXGeneral 'Asana Math'"

a = 0; b=2.75; c=5.75
n = words(f); m = n

do for[k=1:n] {
  m = m - 1
  w = word(f,k)
  if( w ne '?' ) {
    set label w at a,m font "Helvetica,12"
    set label s at b,m font sprintf("%s,16", w)
    set label t at c,m font sprintf("%s,16", w)
  }
}
plot [-0.25:9.25][-1:n] -2
