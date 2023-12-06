i:flip{value trim(1+x?":")_x}each read0`6.txt
prd{sum y<s*x-s:til y}./:i
{sum y<s*x-s:til y}."J"$raze each string flip i
