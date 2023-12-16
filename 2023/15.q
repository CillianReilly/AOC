is:first read0`15.txt
hash:{(17*x+y)mod 256}/[0;]7h$

// part 1
sum hash each","vs is

f:{(0^1+last each where each x=0N)_'y}
t:update box:hash each label,step:i from flip`label`fl!flip("*J";"=")0:/:","vs is except"-"
t:`box`step xasc update last each f[fl;fl],first each f[fl;step]from delete from(`box`label xgroup t)where null last each fl
sum exec sum prd(fl;1+box;1+til count i)by box from t
