// first version
t:{@[`red`green`blue!3#0;;:;]./:flip each"SJ"$/:/:reverse each'" "vs/:/:trim","vs/:";"vs(1+x?":")_x}each read0`02.txt

sum 1+where 2(all each)/13 14 15>/:/:t
sum(prd max::)each t

// second version - credit to rory kemp for 0N 2#2_" "vs
t:{"rgb"#max each group(!/)flip(get;first)@'/:0N 2#2_" "vs x}each read0`02.txt
sum 1+where all each 13 14 15>/:t
sum prd each t

// second version (k)
t:{"rgb"#(|/)'=(!/)@+(.:;*:)@'/:0N 2#" "\:(2+x?":")_x}'0::`02.txt
+/1+&&/'13 14 15>/:t
+/*/'t



