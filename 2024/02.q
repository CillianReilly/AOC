i:value each read0`02.txt

f:{any all each(1 neg\1_deltas x)within 1 3}
sum f each i
// very nice application of drop to drop an index from a list
sum{any f each x _/:til count x}each i


k)i:.:'0:`02.txt
k)f:{|/&/'~(d<1)|3<d:-:\1_-':x}
k)+/f'i
k)+/{|/f'x_/:!#x}'i

