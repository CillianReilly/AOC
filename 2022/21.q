\P 0
npt:{first[x]!ssr[;"/";"%"]each last x}("S*";":")0:`21.txt

// part 1
o:(10h in type each value@){key[x]set'value x:{$[any -7 -9h in type x;x;any -7 -9h in type @[value;x;x];value x;any all each -7 9h=\:type each{@[value;x;x]}each -2#parse x;value x;x]}each x;x}/npt
o`root

// part 2
delete humn from`.;
npt:{first[x]!trim ssr[;"/";"%"]each last x}("**";":")0:`21.txt
npt:@[npt;"humn";:;"humn"]
root:ssr[npt"root";"+";"="]
f:{$[y~"humn";y;any y in .Q.a;"(",,[;")"]string[first p]sv .z.s[x;] each x string -2#p:parse y;y]}
step:{eval raze undo[;y]0 1 cut@[last x;y;:;first x]}
g:{,[;enlist x[1;i]]step[first[x],enlist t;]i:?[;0h]type each t:{@[eval;x;x]}each last x}

undo:{	op:2 first/x;
	$[(%)~op;
		$[y=1;(*;last x);(%;last x)];
	  (-)~op;
		$[y=1;(+;last x);(-;last x)];
	  (+)~op;
		$[y=1;(-;last x);(-;reverse last x)];
	  (*)~op;
		$[y=1;(%;last x);(%;reverse last x)]
	   ]}

o:asc{parse@[string value@;x;x]}each"="vs -1_1_f[npt;root]
{step[first[x],enlist t;]?[;`humn]t:{@[eval;x;x]}each last x}(not`humn in last@)g/o
