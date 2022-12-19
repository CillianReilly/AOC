gas:0,'neg 61-7h$first read0`17t.txt
grid:3 7#1b
rocks:((0 2;0 3;0 4;0 5);(2 3;1 2;1 3;1 4;0 3);(2 2;2 3;2 4;1 4;0 4);(0 2;1 2;2 2;3 2);(0 2;0 3;1 2;1 3))

height:{1+(-/)(max;min)@\:x[;0]}
draw:{./[x;y;:;0b]}
push:{p:$[all x ./:p:y+\:first gas;p;y];gas::1 rotate gas;p}
fall:{$[b:all x ./:f:y+\:1 0;(f;b);(y;b)]}
move:{$[last m:fall[x;]push[x;first y];m;(first m;0b)]}
justify:{((3,count first x)#1b),((all each x)?0b)_x}
drop:{x:((height first y;count first x)#1b),x;justify draw[x;]first(last)move[x;]/y}	

// part 1
-3+count{drop[x;(y;1b)]}/[grid;2022#rocks]
