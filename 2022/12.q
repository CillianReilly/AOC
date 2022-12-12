npt:read0`12.txt

// breadth first search
locate:{reverse(any each 1 flip\x=y)?\:1b}[npt;]
start:locate"S"
end:locate"E"
map:./[-97+6h$npt;(start;end);:;0 25]
visited:.[map&0;end;:;1]
adj:(0 1;1 0;0 -1;-1 0)+\:
filter:{[x;y;z;w]p:x ./:z;z where(&/)(not y ./:z;p>-2+x . w;not null p)}
step:{(./[y;p;:;1];p:distinct raze filter[x;y;;]./:flip(adj each l;l:z))}

// part 1
-1+count(not start in last@)(step[map;;].)\(visited;enlist end)

// part 2
a:{raze xc,/:'yc xc:where 0<count each yc:where each x=y}[npt;"a"]
-1+count(not any a in last@)(step[map;;].)\(visited;enlist end)
