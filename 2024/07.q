v:value each(2+i?'":")_'i:read0`07.txt
a:value each(i?'":")#'i

sum a*a in'{raze(x+y;x*y)}/'[v]
sum a*a in'{raze(x+y;x*y;(7h$10 xexp count string y)sv'((),x),'y)}/'[v]


k)v:.:'(2+i?'":")_'i:0:`07.txt
k)a:.:'(i?'":")#'i
k)+/a*a in'{,/(x+y;x*y)}/'[v]
k)+/a*a in'{,/(x+y;x*y;(7h$10 xexp #$y)/:'((),x),'y)}/'[v]
