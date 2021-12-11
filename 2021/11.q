input:2{flip 0N,/:x,\:0N}/value each'read0`:11.txt

u:1 rotate;d:-1 rotate;l:1 rotate/:;r:-1 rotate/:
ur:u r::;ul:u l::;dl:d l::;dr:d r::
adj:sum(u;d;l;r;ur;ul;dr;dl)@\:
flash:{not[0=x]*sum not[f]*/:(x;adj f:9<x)}

// Part 1
first 100{$[2 any/9<i:1+x 1;{(x[0]+2 sum/9<x 1;flash x 1)}/[(x 0;i)];(x 0;i)]}/(0;input)

// Part 2
first{not 100=2 sum/0=x 1}{$[2 any/9<i:1+x 1;(1+x 0;flash/[i]);(1+x 0;i)]}/(0;input)
