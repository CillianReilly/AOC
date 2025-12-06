`r`i set'"J"$("-"vs';::)@'{(c,1+neg count[x]-c:x?"")#\:x}read0`05.txt;

// p1
sum any i within/:r

// p2
f:{$[2 any/i:y within/:x;(x _i),enlist(min;max)@'y,'x i:?[;1b]any each i;x,enlist y]}/[();]

// reverse to account for larger ranges occuring towards the end
sum 1+neg(-/)each f/[reverse f/[r]]


