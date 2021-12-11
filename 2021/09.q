input:value each'read0`:09.txt

// Part 1
2 sum/b+t*b:all t</:(1 rotate;-1 rotate;1 rotate/:;-1 rotate/:)@\:t:2{flip 10,/:x,\:10}/input

// Part 2
t:{count[first x]cut@[raze y;where raze x;:;11+til 2 sum/x]}[b;]2{flip 9,/:x,\:9}/input
prd 3#desc value 1_count each group raze{max{count[first x]cut(raze[x],'raze y)@'raze all(not x=9;y>9;x<y)}[t;]each(1 rotate;-1 rotate;1 rotate/:;-1 rotate/:)@\:x}/[t]
