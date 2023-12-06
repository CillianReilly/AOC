i:flip{value trim(1+x?":")_x}each read0`6.txt
prd{sum y<s*x-s:til x}./:i
{sum y<s*x-s:til x}."J"$raze each string flip i

// a lot faster to use the quadratic formula
// distance is given by x*(t-x)
// solve for x*(t-x) > d
`t`d set'{value trim(1+x?":")_x}each read0`06.txt
f:{prd(-/)(ceiling;floor)@'-1 0+'0.5*x+/:(neg\)sqrt(x*x)-4*y}

f[t;d]
f ."J"$raze each string(t;d)
