d:1 -1,7h$1 neg\2+count first m:value each'read0`10.txt
m:raze 2{flip 100,'x,'100}/m

// valid neighbours
vn:{i where(1+x z)=x i:i where(i:y+z)within(0;-1+count x)}
f:{$[9=x z;z;raze .z.s[x;y;]each vn[x;y;z]]}

t:f[m;d;]each where not m

sum(count distinct@)each t
sum count each t
