m:flip 1(".^|"!0 0 1)\.[m;(0;first[m:read0`07.txt]?"S");:;"|"]
m:{(@[first[y];raze n;:;"|"];@[last[y];;+;last[x]p]n:p+(".^"!(0;-1 1))first[y]p:where first[x]="|")}\[m]

// p1
2 sum/prd"^|"='1_'1 prev\first each m

// p2
sum 2 last/m
