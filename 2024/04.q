// pad so as not to match across lines
c:count first ws:2{flip" ",'x,'" "}/read0`04.txt
f:{all each'neg[z]xprev'\:/:raze[x]=/:/:1 reverse\y}

3 sum/f[ws;w;](t;c*t;t+c*t;t-c*t:til count w:"XMAS")
sum 2=2 sum/(c+1;neg c-1)xprev'/:f[ws;w;](t+c*t;t-c*t:til count w:"MAS")
