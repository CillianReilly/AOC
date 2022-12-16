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
