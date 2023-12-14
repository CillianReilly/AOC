// Not refactored yet

// Consider all possible reflections
p:{1_'cut[;x]where""~/:x:enlist[""],x}read0`13.tst
range:{first[x]+til neg(-/)x}
f:{0|r first where x={2 sum/not(=/)1 reverse\x}each y range each r+'-1 1*/:min each r,'reverse r:1+til count[y]-1}

// part 1 - no differences
100 sv sum f[0;]each'(flip\)each p

// part 2 - 2 differences
100 sv sum f[2;] each'(flip\)each p
