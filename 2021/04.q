n:"J"$","vs first r:read0`:04.txt
b:(5*til 100)cut"J"$/:/:(0 3 6 9 12)cut/:(1_r)where not""~/:1_r

f:{x[m]*2 sum/w*m<x?w:y s?m:z s:{2 min/(max;max each)@\:x}each x?y}[n;b;]

// Part 1
f min

// Part 2
f max
