t:read0`10.txt
s:(count each(flip\)t)vs raze[t]?"S"

// starting tile
st:{((0101b;0011b;0110b;1001b;1100b;1010b)!"-7FJL|")in'[;("|F7";"-7J";"|JL";"-LF")]x ./:y+/:(-1 0;0 1;1 0;0 -1)}
t:.[t;s;:;]st[t;s]

// clockwise directions
cw:"-7FJL|"!flip`N`S`E`W!(" WE  N";"   WES";"ES N  ";"W S N ")
// starting direction
sd:("-7FJL|"!"ESEWNN")t . s
d:"NSEW"!(-1 0;1 0;0 1;0 -1)

step:{enlist[s],cw[;`$z]x . s:y+d z}[t;;].

// part 1
floor 0.5*1+count p:(not s~first@)step\step(s;sd)

// part 2
p:./[(count each(flip\)t)#"";p[;0];:;p[;1]]

// project right from each boundary 
$["N"in p[;(not all null p)?1b];
	[
	  p:@'[p;where each(t="7")and p="W";:;"I"];
	  p:@'[p;where each(t="|")and p="N";:;"I"];
	  p:@'[p;where each(t="J")and p="N";:;"I"]
	];
	[
	  p:@'[p;where each(t="7")and p="S";:;"I"];
	  p:@'[p;where each(t="|")and p="S";:;"I"];
	  p:@'[p;where each(t="J")and p="W";:;"I"]
	]
  ];

sum sum each{null[x]and"I"=fills each x}trim p
