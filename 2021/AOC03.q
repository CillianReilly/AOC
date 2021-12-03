input:"B"$/:/:read0`:AOC03.txt

// Part 1
prd 2 sv/:(not\)500<sum input

// Part 2
r:2 sv first first 12{(x[0]where((.5*count x 0)<=sum[x 0])[x 1]=x[0;;x 1];1+x[1])}/(input;0)
r*2 sv first first 8{(x[0]where((.5*count x 0)>sum[x 0])[x 1]=x[0;;x 1];1+x[1])}/(input;0)
