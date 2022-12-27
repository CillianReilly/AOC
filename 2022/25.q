decimalise:{sum(7h$5 xexp reverse til count x)*(-2+"=-"?x)^"J"$/:x}
snafuise:{o:(.Q.n neg t)^" -="t:7h$reverse %[;-1_s]1_deltas{x+(y%5)*0 -1 -2 2 1@7h$(x mod y)%(y%5)}\[x;s:((5*x)>)(5*)\1];$["0"~first o;1_o;o]}

snafuise sum decimalise each read0`25.txt

// rory kemp
"=-012" 2+(5 vs sum 5 sv'2-"210-"?read0`25.txt){{(1_i,0)+y-5*i:x=y}[y]over x}/4 3
