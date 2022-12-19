cubes:value each read0`18t.txt
d1:(1 0 0;-1 0 0;0 1 0;0 -1 0;0 0 1;0 0 -1)

// part 1
p1:(6*count cubes)-sum count each(cubes+/:\:d1)inter\:cubes

// part 2
// 6 neighbours listed - trapped air

// d2:(2 0 0;1 1 0;1 -1 0;1 0 1;1 0 -1)
// gaps:except[;cubes]1 0 0+/:cubes where 5=count each(cubes+/:\:d2)inter\:cubes

// (gaps+/:\:d1)except\:cubes
// need bfs in 3d to not revisit gaps

