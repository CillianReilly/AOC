r:read0`10.txt
ild:7h$"#"=1_'(r?'"]")#'r
bws:value each'" "vs/:{(-1+x?'"{")#'x}(1+r?'" ")_'r
bws:{@[(1+max max each x)#0;;1+]each x}each bws
jr:value each -1_'(1+r?'"{")_'r

c:flip 2 vs til 7h$2 xexp max count each bws
bp:{y@/:where each'x group 7h$(<>/)each y*/:x:neg[c]#'(7h$2 xexp c:count y)#x}[c;]each bws

// part 1
sum(min count each)each bp@'ild

// part 2
f:{
  $[not any y;0;
    any 0>y;100000;
    k:y in key x;min count each x y;
    not[k]and all y<2;100000;
    not any(p:y mod 2)in key x;100000;
    not any p;min(0,count each b)+2*f[x;]each(enlist[y],y-/:sum each b:1_x p&0)div 2;
    min(count each x p)+2*.z.s[x;]each(y-/:sum each x p)div 2
    ]
  }

sum f'[bp;jr]
