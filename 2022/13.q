npt:.j.k each'r 0 1+/:3*til div[;3]1+count r:read0`13.txt

f:{	$[all -9=type each x;
		$[(</)x;1;(>/)x;-1;0];
	  0 in c:count each x;
		$[(</)c;1;(>/)c;-1;0];
	  r:.z.s first each x;
		r;
		.z.s 1_/:(),/:x]
	  }

// part 1
sum 1+where 1=f each npt

// part 2
prd 1+?/:[;0 1]idesc sum each 1=f each'{count[x]cut x cross x}enlist each({2 enlist/x}each 2 6f),raze npt
