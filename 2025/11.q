// bfs
d:@[;`out;:;1#`out](!/)flip`$(::;" "vs)@'/:": "vs/:read0`11.txt

// part 1
fp1:{select sum c by node from ungroup update x node from y}[d;]/
exec first c from fp1 enlist`node`c!`you,1

// part 2
fp2:{
  n:x exec node from y;
  y:ungroup update x node from y;
  y:update fft+c*`fft=node,dac+c*`dac=node from y;
  y:update both:?[node in`fft`dac;fft&dac;both]from y;
  select sum c,sum fft,sum dac,sum both by node from y
  }[d;]/

exec first both from fp2 enlist`node`c`fft`dac`both!`svr,1 0 0 0
