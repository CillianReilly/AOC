input:("*J";" ")0:`AOC02.txt

// Part 1
g:{sum prd@[x;0;:;y]}[input;];
f:g"forward"~/:input 0;
f*g(("down";"up";"forward")!1 -1 0)input 0

// Part 2
f*last{(("down";"up";"forward")!((x[0]+last[y];x 1);(x[0]-last[y];x 1);(x 0;x[1]+x[0]*last[y])))y 0}/[0 0;flip input]
