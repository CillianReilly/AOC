sb:2 cut/:flip "J"$-1_/:/:last each'"="vs/:/:("  **    **";" ")0:read0[`15.txt],\:"."
md:{sum abs x-y}
distances:md ./:sb
sensors:first each sb
beacons:last each sb
range:{neg[x]+til 1+(-/)(neg\)x}

// part 1
(neg sum 2000000=last each distinct beacons)+/count distinct raze{$[not 0<d:(abs x-last y)-z;first[y]+range abs d;()]}'[2000000;sensors;distances]

// part 2
corners:(-1 0;0 1;1 0;0 -1)
directions:((-/)reverse@)each flip 1(1 rotate)\corners
steps:{(enlist 0 0),/:sums each y#/:enlist each x}[directions;]
perimeter:{distinct raze(x*z)+/:'y+/:/:steps z}[corners;]
filter:{x where{all within\:[x;0 4000000]}each x}
//candidates:distinct raze filter each perimeter'[sensors;1+distances]
//sum 4000000 1*candidates ?[;1b]all{z<md[;y]each x}[candidates;;]'[sensors;distances]

// Did this manually
sb2:(sensors;distances)@\:iasc distances
sum 4000000 1*p ?[;1b]all{z<md[;y]each x}[p:filter perimeter . sb2[;7];;]'[sensors;distances]


// rory kemp
`sx`sy`bx`by set' flip {get @[x;where not x in "-0123456789";:;" "]}each read0 `:15.txt;
m:sum abs (sx-bx;sy-by) / manhattan dists
{count except[;bx where by=x] distinct raze {$[y<0;();x-y-til 1+2*y]}'[sx;m-abs sy-x]} 2000000 / part 1
peri:raze 1 1 -1 -1,''(sy-sx+m+1; sy-sx-m+1; sy+sx+m+1; sy+sx-m+1)
int:distinct raze peri {r:0-1%(%/)x-y; (r; sum x*r,1)}\:/: peri
sum 4000000 1*floor first int where {all raze(x=floor x;0<=x;x<=4000000;m<sum abs(sx;sy)-x)} each int
