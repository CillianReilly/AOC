i:{(0,where""~/:x)cut x}read0`:13.txt
n:flip value each first i
folds:{(`x`y?"S"$;"J"$)@'"="vs last" "vs x}each 1_last i

fold:{@[x;f;:;]i-2*0|(i:x f:first y)-last y}

// Part 1
count distinct flip fold[n;]first folds

// Part 2
-1 flip ./[(1+max i)#"";;:;"#"]i:distinct flip fold/[n;folds];
