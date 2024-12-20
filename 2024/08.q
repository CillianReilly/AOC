m:read0`08.txt

fq:distinct raze[m]except"."
fq:fq!{raze til[count x],/:'where each x=y}[m;]each fq

// vectors from each antenna to every other antenna
v:{neg x-/:'x _/:til count x}each fq

s:sum not null m ./:distinct@

s 2 raze/fq-/:''v
s 3 raze/fq-/:'/:'til[1+count first m]*\:/:v
