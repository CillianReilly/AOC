n:"J"$","vs first r:read0`:AOC04.txt
b:(5*til 100)cut"J"$/:/:(0 3 6 9 12)cut/:(1_r)where not""~/:1_r

f:{n[m]*2 sum/w*m<n?w:b s?m:z s:min/[2;]each(max;max each)@\:/:n?b}

// Part 1
f[n;b;min]

// Part 2
f[n;b;max]
