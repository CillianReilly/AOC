input:value first read0`:AOC06.txt

// Part 1
count 80{@[x-1;where i;:;6],sum[i:0=x]#8}/input

// Part 2
// Solution for part 1 isn't efficient enough
sum 256{@[1 rotate x;6;+;x 0]}/0^(count each group input)til 9
