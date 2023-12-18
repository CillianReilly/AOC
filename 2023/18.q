t:flip`dir`dis`hex!("CJ*";" ")0:read0`18.txt

// determinant of 2x2 matrix
det:{(-/)x*reverse y}
// area by the shoelace formula
area:{.5*sum{det':[last x;x]}x}
// interior points by pick's theorem
ip:{(x+1)-.5*y}

// part 1
exec 7h$sum[dis]+ip[;sum dis]area sums dis*("UDRL"!(-1 0;1 0;0 1;0 -1))dir from t

// part 2
t:update dir:"RDLU"value each hex[;7],dis:16 sv/:"0123456789abcdef"?hex[;2 3 4 5 6]from t
exec 7h$sum[dis]+ip[;sum dis]area sums dis*("UDRL"!(-1 0;1 0;0 1;0 -1))dir from t

