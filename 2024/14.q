i:(reverse each value each last@)each("S= ")0:/:read0`14.txt

p:(sum each 1 100*/:i)mod\:g:103 101
prd count each group 1+2 sv'q</:p where all each p<>\:q:g div 2

// run until each robot is on a unique square - not the greatest heuristic
-1+count{not all 1=count each group first x}{enlist[sum[x]mod\:103 101],-1#x}\flip i


k)i:(|:'.:'*|:)'("S= ")0:/:0:`14.txt
k)p:p-g*/:(p:+/'1 100*/:i)div\:g:103 101
k)*/#:'=1+2/:'q</:p@&(&/)'~p=\:q:g div 2
