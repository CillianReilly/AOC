rt:flip("JJ";",")0:`09.txt
r:raze{x,\:/:x}enlist each rt
a:prd each 1+abs(-/)each r

// part 1
max a

// part 2
// co-ordinate compression map
ccm:{x!'1+2*(til count@)each x}(asc distinct@)each flip rt
rt:ccm@'/:rt

// perimeter points
pp:raze rt+/:'(cross/)each(-1*signum d)*til each'sum 1 not\abs d:(-/)each -1_flip 1 next\rt,1#rt
r:@[;i:idesc a](asc each flip@)each ccm@'/:/:r
f:{(x>y 0)&x<y 1}

// check rectangles in order of decreasing size - stop at the first that doesn't contain any perimeter points
// check the perimeter points one by one - stop if any inside the current rectangle
// not particularly fast
a[i]{not count[x]={$[c:count x:x z;not all x f'y;c]}[x;y z;](1+)/0}[pp;r;](1+)/0
