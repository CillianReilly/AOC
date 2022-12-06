i:flip -1 1 1*0 -1 -1+(6#" I";" ")0:(1+r?"")_r:read0`05.txt
s:trim flip reverse((-1+r?"")#r)[;1+4*til 9]

last each{@/[x;y 2 1;(,;:);](reverse y[0]#;y[0]_)@\:x y 1}/[s;i]
last each{@/[x;y 2 1;(,;:);](y[0]#;y[0]_)@\:x y 1}/[s;i]

animate:{1"\033[H\033[J";-1 {@/[raze"[",'x,'"]";0 2+/:3*where null x;:;" "]}each reverse flip(7h$first system"c")$x;system"sleep 0.02";}
{animate o:@/[x;y 2 1;(,;:);](y[0]#;y[0]_)@\:x y 1;o}/[s;i];
