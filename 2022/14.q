npt:"J"$","vs'/:" -> "vs/:read0`14.txt
rocks:reverse each'raze{flip -1_/:1 next\x}each npt
offset:0 499&min raze rocks
start:0 500-offset
rocks:rocks-\:\:offset
map:#[;0b]1+(-/)(max;min)@\:raze[rocks],enlist start
smear:{x|sums[x]mod 2}
horizontal:{(0<abs(-/)x)?1b}
mark:{./[x;y;:;1b]}
draw:{$[horizontal y;smear each mark[x;y];reverse flip smear each flip reverse mark[x;y]]}
map:not any draw[map;]each rocks

move:{$[not any m:x ./:n:y+/:(1 0;1 -1;1 1);[$[not 2 all/n within'\:(0,-1+count x;0,-1+first count each x);0N;y]];n m?1b]}
pour:{$[0N~n:move[y;]/[x];y;.[y;n;:;0b]]}

// part 1
{(2 sum/y)-2 sum/pour[x;]/[y]}[start;map]

// part 2
height:3+3 max/rocks
offset:(0,height)-start
start:start+offset
rocks:rocks+\:\:offset
map:(1+(height-1),2*height)#0b
map:not any draw[map;]each rocks
map:@[map;-1+height;:;(count first map)#0b]
{(2 sum/y)-2 sum/pour[x;]/[y]}[start;map]
