input:50,value each{x^("LR"!"-0")x}read0`01.txt
sum not mod[;100]sums input

mod2:{x-y*(x div y)+x<0}
r:0;{r+:(2 not/x)*not(p:x+y)within 1 99;p mod 100}\[mod2[input;100]];r+sum abs[input]div 100
