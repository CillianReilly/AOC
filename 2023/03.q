// Reduce the schematic to 1 dimension
`c`es set'(count first::;raze)@\:read0`03.txt;
idx:c sv/:i cross i:1 0 -1
s:idx+\:/:where not es in .Q.n,"."
n:(cut/)(where not 1=deltas@;::)@\:where es in .Q.n

// part 1
sum value each es n where any each n in raze s

// part 2
s:idx+\:/:where es="*"
sum prd each get each'es n where each flip any each'in/:[;n]s where 2=sum any each's in/:n
