input:`end _group(!).{x@\:where not`start=x 0}raze each(reverse\)`$flip"-"vs/:read0`:12.txt

// Part 1
sum`start=(raze/){$[not 11h=abs type x;.z.s each x;`end in x;x;.z.s each x,/:input[last x]except e where all each string[e:((),x)except`start`end]in .Q.a]}`start


// Part 2
sum`start=(raze/){$[not 11h=abs type x;.z.s each x;`end in x;x;.z.s each x,/:input[last x]except $[count e where all each string[where 1<count each group e:((),x)except`start`end]in .Q.a;e where all each string[e except`start`end]in .Q.a;`]]}`start
