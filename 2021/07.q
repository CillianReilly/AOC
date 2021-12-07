input:value first read0`:07.txt

// Shorter
f:{min sum y abs til[max x]-/:x}[input;]

// Faster
f:{min sum value[d]*y abs til[max k]-/:k:key d:count each group x}[input;]

// Part 1
f(::)

// Part 2 - fuel costs are given by triangular numbers
f{7h$.5*/1(1+)\x}
