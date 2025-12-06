t:read0`06.txt
o:("+*"!(+;*))last[t]except" "
f:sum o over'

// p1
f flip value each -1_t

// p2
f{(0,where null x)cut x}"J"$flip -1_t

// probably a nice way to use (0|+)/ and (1|+/) against "J"$flip -1_t
