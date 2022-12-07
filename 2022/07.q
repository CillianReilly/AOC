f:{$[y like"$ cd*";($[".."~5_y;(v;enlist"/")""~v:"/"sv(-2_"/"vs x 0),enlist"";x[0],$[enlist["/"]~v:(5_y);v;v,"/"]];x 1);y like"$ ls";x;y like"dir *";(x[0];x[1],enlist[x[0],(last" "vs y)]!enlist 0Nj);(x[0];x[1],enlist[x[0],t[1]]!enlist"J"$(t:" "vs y)0)]}
d:{(where x>0)#x}last f2/[("";()!());]rd`07.txt
d:{sum each value[x]group "/"sv/:-1_/:"/"vs/:key x}d
d2:{(sum;y)fby x}. flip raze{(enlist each t),'{count[x]#y}[;x 1] t:-1_{"/"sv -1_"/"vs x}\[x 0]}each flip(key;value)@\:d

// part 1
sum d2 where 100001>d2
// part 2
min d2 where d2>(sum d)-40000000


// peter gyorok
i:read0`07.txt
p:(1#`:) {$[y~"$ cd /";1#x;y~"$ cd ..";-1_x;y like"$ cd *";x,.Q.dd[last x]`$last" "vs y;x]} \ i
s:"J"$first@'(" "vs/:i)
d:exec sum s by p from ungroup ([]p;s)
sum d where d<=100000
min d where d>=d[`:]-40000000
