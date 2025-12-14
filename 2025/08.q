jb:flip("JJJ";",")0:`08.txt
c:update d:{sum x*x:(-/)x}each'(c,/:\:c)from([jb]c:enlist each jb;dc:enlist each jb)

// part 1
// need to track direct connections
f1:{
  nu:exec jb from x where{x=min x}min each d(_/)'desc each jb?dc;
  x:update dc:dc union\:jb from x where jb in nu;
  nu:(union/)x[;`c]each nu;
  update c:count[i]#enlist nu from x where jb in nu
  }

prd 3#desc count each exec distinct c from 1000 f1/c

// part 2
// don't care about direct connections, just the circuits
f2:{
  nu:exec jb from x where {x=min x}min each d(_/)'desc each jb?c;
  nu:(union/)x[;`c]each nu;
  update c:count[i]#enlist nu from x where jb in nu
  }

c:{exec not 2=count distinct c from x}f2/c
c:update nu:jb d?'min each d(_/)'desc each jb?c from c
exec 2 first/jb*nu from c where{x=min x}count each c,{x=min x}sum each{x*x}jb-'nu
