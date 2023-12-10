txt:{reverse(1_deltas@)\[value x]}each read0`9.txt

// part 1
sum last each{y+0,x}/'[txt]

// part 2
sum first each{,[;y](-/)0^first each(y;x)}/'[txt]


// speed improvements
// don't run deltas until convergence - stop when all zeroes
txt:{reverse(not all 0=)(1_deltas@)\value x}each read0`9.txt

// no need to carry around entire lists, we're only interested in the first and last entries
// part 1
sum sum each last each'txt
// part 2
sum({y-x}/)each first each'txt

// in fact, no need to keep most of the values in each history, just first and last
txt:{flip(last;first)@\:/:reverse(not all 0=)(1_deltas@)\value x}each read0`9.txt

// parts 1 and 2
sum(sum;{y-x}/)@'/:txt

k)+/{(+/;{y-x}/)@'+(*|:)''1|:\'|(~&/0=)(1_-':)\.:x}'0:`9.txt

// part 2 is the same as part 1 on the reversed input
sum{sum each last each'reverse each(not all 0=)(1_deltas@)\'(reverse\)value x}each read0`9.txt
k)+/{+/'(*|:)''|:'(~&/0=)(1_-':)\'|:\(.:)x}'0:`9.txt
