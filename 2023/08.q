txt:read0`8.txt
idx:"R"=first txt
map:(!/)flip`$(2_txt)@\:(0 1 2;(7 8 9;12 13 14))
f:{x[z 0;y z[1]mod count y],1+z 1}[map;idx;]

// part 1
last(not`ZZZ~first@)f/(`AAA;0)

// part 2
// lcm of path counts works here because the input is nice
// in general, this wouldn't be a solution
gcd:{first last({y,x mod y}.)/(x;y)}
lcm:{7h$(x*y)%gcd[x;y]}
c:last each{not first[x]like"*Z"}f/'(;0)each key[map]where key[map]like"*A"
lcm/[c]
