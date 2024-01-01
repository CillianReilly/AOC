// dijkstra
m:"J"$''read0`17.tst
d:-1+count each 1 first\m

t:2!enlist`coords`dir`weight`total`visited!(0 0;`;m . 0 0;0;0b)

f:{[m;s;t]
	o:0!select from t where not visited;
	n:o first iasc o`total;

	d:(n[`dir],d?neg d n`dir)_d:`U`R`D`L!(-1 0;0 1;1 0;0 -1);
	w:m ./:/:c:n[`coords]+/:/:(1+til last s)*\:/:value d;
	an:update coords:raze(-1+first s)_'c,dir:raze(1+last deltas s)#'key d,weight:raze(-1+first s)_'w,total:raze n[`total]+(-1+first s)_'sums each w from((1+last deltas s)*count d)#enlist n;
	an:select from an where not null weight;
	an:an where not t[flip an`coords`dir;`visited];

	.[;(n`coords`dir;`visited);:;1b]`coords xasc .[t;();&;an]
	}

ep:enlist[d],/:`U`D`R`L
wc:{not any y[x;`visited]}[ep;]

// part 1
exec first total from`visited xdesc(wc f[m;1 3;]/t)ep

// part 2
exec first total from`visited xdesc(wc f[m;4 10;]/t)ep


\

// no significant speed up using heuristic distance
hd:{sum x-y}[d;]

t:2!enlist`coords`dir`weight`total`dis`visited!(0 0;`;m . 0 0;0;0;0b)
fh:{[m;t]
        o:0!select from t where not visited;
        n:o first iasc sum o`total`dis;
        0N!"Next node is: ",(" "sv string n`coords),", path: ",string n`dir;

        d:(n[`dir],d?neg d n`dir)_d:`U`R`D`L!(-1 0;0 1;1 0;0 -1);
        w:m ./:/:c:n[`coords]+/:/:1 2 3*\:/:value d;
        an:update coords:raze c,dir:raze 3#'key d,weight:raze w,total:raze n[`total]+sums each w from(3*count d)#enlist n;
        an:update dis:hd each coords from select from an where not null weight;
        an:an where not t[flip an`coords`dir;`visited];

        .[;(n`coords`dir;`visited);:;1b] .[t;();&;an]
        }
