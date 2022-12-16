sb:2 cut/:flip "J"$-1_/:/:last each'"="vs/:/:("  **    **";" ")0:read0[`15t.txt],\:"."
md:{sum abs x-y}
distances:md ./:sb
sensors:first each sb
beacons:last each sb
range:{neg[x]+til 1+(-/)(neg\)x}

// part 1
(neg sum 2000000=last each distinct beacons)+/count distinct raze{$[not 0<d:(abs x-last y)-z;first[y]+range abs d;()]}'[2000000;sensors;distances]

// part 2
// works for test data but real input is too large
// 20 vs ?[;1b]all{y<md[;x]each til[20]cross til 20}'[sensors;distances]
