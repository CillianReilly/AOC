trees:3(flip reverse@)\read0`08.txt
map:((reverse flip@)/)'[til 4;]

p1:not(=':)maxs@
p2:{reverse[x]&/:1+(sum mins 1_)each'y>x _\:/:y}

2 sum/max map p1 each trees
2 max/prd map p2[til count first trees;]each trees


// part 1 variants
2 sum/first 4({(flip reverse@)each(x|not(=':)maxs y;y)}.)/((2#count t)#0;t:read0`08.txt)
