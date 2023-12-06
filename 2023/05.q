value first read0`05.txt
maps:{x@'iasc each @''[;1]x:value each'2_/:cut[;x]where""~/:x}read0`05.txt
maps:{`s#((1#0)!1#{x}),raze(sums each 1_/:x)!'((+)@'(-/)@'2#/:x),'{x}}each maps

// part 1
min{y[x]@'x}/[seeds;maps]

// part 2
// no need to track every seed - just the boundaries
range:{first[x]+til 1+neg(-/)x}
bnds:{0N 2#$[1=count distinct b:(k:key y)bin x;x;first[x],raze[-1 0+/:1_k range b],last x]}
2 min/{y[first each b]@'b:raze bnds[;y]each x}/[sums each 0N 2#seeds;maps]


