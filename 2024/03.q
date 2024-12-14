i:raze read0`03.txt

f:{sum prd each(0^"J"$p)*all each'in[;.Q.n]p:","vs'(p?'")")#'p:1_"mul("vs x}
f i
f raze first each"don't()"vs/:"do()"vs i


k)i:,/0:`03.txt
k)f:{+/*/'(0^"J"$p)*&/''in[;.Q.n]p:","\:'(p?'")")#'p:1_"mul("\:x}
k)f i
k)f@,/*:'"don't()"\:'"do()"\:i
