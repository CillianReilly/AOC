m:raze({reverse each x}\)each(flip\)"J"$/:/:read0`08.txt
2 sum/max(::;reverse each;flip;reverse flip@)@'{differ each maxs each x}each m
2 max/prd(::;reverse each;flip;reverse flip@)@'{(reverse til 99)&1+sum each mins each 1_/:x>-1_(_[1;]\)x}each'm

// part 1 variants
2 sum/first 4({(flip reverse@)each(x|not(=':)maxs y;y)}.)/((2#count t)#0;t:read0`08.txt)
2 sum/max((reverse flip@)/)'[til 4;](not(=':)maxs@)each 3(flip reverse@)\read0`08.txt
