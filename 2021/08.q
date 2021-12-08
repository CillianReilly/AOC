input:read0`:08.txt

// Part 1
sum any 2 3 4 7=\:count each" "vs raze last each"|"vs/:input

// Part 2
DISPLAY:("abcefg";"cf";"acdeg";"acdfg";"bcdf";"abdfg";"abdefg";"acf";"abcdefg";"abcdfg")

ekm:{x except key y}
a:{(union/[i])except(inter/)i:x where any 2 3=\:y}
b:{ekm[;z](inter/)x where any 4 6=\:y}
c:{(x first where 3=y)inter(union/)"abcdefg"except/:x where 6=y}
d:{ekm[;z]x first where 4=y}
e:{ekm[;z](union/)x where 5=y}
f:{ekm[;z]x first where 3=y}
g:{ekm[;z](inter/)x where 5=y}

p2:{
	signals:" "vs first" |"vs x;
	ces:count each signals;
	map:()!();

	map:map,a[signals;ces]!enlist"a";
	map:map,c[signals;ces]!enlist"c";
	map:map,f[signals;ces;map]!enlist"f";
	map:map,b[signals;ces;map]!enlist"b";
	map:map,d[signals;ces;map]!enlist"d";
	map:map,g[signals;ces;map]!enlist"g";
	map:map,e[signals;ces;map]!enlist"e";

	10 sv DISPLAY?asc each map" "vs last"| "vs x
	}

sum p2 each input
