(max;sum 3#desc@)@\:('[sum;value])each"  "vs" "sv read0`01.txt
(max;sum 3#desc@)@\:sum each(0,where 0N=i)cut i:"J"$read0`01.txt
(max;sum 3#desc@)@\:value each"++"vs"+"sv read0`01.txt
(max;sum 3#desc@)@\:deltas asc s*(~':)s:sums"J"$read0`:01.txt

(max;sum 3#desc@)@\:(sum get::)each"\n\n"vs read1`:01.txt		// nick psaris
(max;sum 3#desc{x*0=0^next x}@)@\:(0|+)scan"J"$read0`:01.txt		// attila vrabecz
