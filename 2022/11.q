r:read0`11t.txt

// items
items:(),/:value each 18_/:r 1+7*til sum r like"*Monkey*"
operations:value each"{[old]",/:(19_/:r 2+7*til sum r like"*Monkey*"),\:"}"
divisors:value each last each" "vs/:r 3+7*til sum r like"*Monkey*"
to:value each'last each'" "vs/:/:r 4 5+/:7*til sum r like"*Monkey*"

// part 1
f:{.[;0,y;:;`long$()]{.[x;0,y 0;,;y 1]}/[x;]{,'[;w]x[3]not 0=mod[;x 2]w:floor %[;3]x[1]x 0}x[;y]}
prd 2#desc sum raze(8 cut 64#100000000b)*/:8 cut count each'first each -1_raze 20{{f\[x;til count first x]}last x}\enlist(items;operations;divisors;to)


// part 2
f:{@[;z 0;:;count[x]#enlist 7h$()]@/[y;;,';flip w]m:z[2]2 not/@[;z 0]w:mod[;x]z[1]y z 0}
prd 2#desc sum{x*count[x]#(2#c)#1b,(c:count first x)#0b}count[items]cut first each count each'raze enlist[flip items mod/:divisors],-1_f[divisors]\[flip items mod/:divisors;]raze 10000#enlist(til count items),'flip(operations;to)
