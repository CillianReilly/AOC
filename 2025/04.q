g:2{flip 0b,'x,'0b}/(".@"!01b)read0`04.txt
f:{x*4>(2 sum/2(1 0 -1 rotate'\:)/x)-x}

2 sum/f g
(-/)sum/[2;]each(g;{x<>f x}/[g])
