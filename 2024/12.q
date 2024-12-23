c:count m:read0`12.txt
f:{count[x]#''(next;prev;next';prev')@\:x}

sum prd each(sum;count)@\:/:raze[4-sum n]group raze{max y|/:x*f y}[n:m=/:f m;]/[c cut til c*c]
