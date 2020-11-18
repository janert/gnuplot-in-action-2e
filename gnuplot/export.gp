export( file, terminal ) = sprintf( \
    "set t push; set t %s; set o '%s'; replot; set o; set t pop", \
    terminal, file )