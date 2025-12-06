jr:"J"$''read0`03.txt
f:{last(x>count last@)({m:s?max s:(y+1)#x;((1+m)_x;y-m;z,x m)}.)/(y;count[y]-x;())}
sum 10 sv'f[2;]each jr
sum 10 sv'f[12;]each jr



// bryan dornan
input:"J"$''read0`03.txt
f:{l:last x; x:first x; ((1+w) _ x; l,x w:first where x=max neg[y]_x)};
sum {10 sv last f/[(x;());reverse til 2]}each input
sum {10 sv last f/[(x;());reverse til 12]}each input







