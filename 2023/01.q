// part 1
sum value each(first;last)@\:/:inter\:[;.Q.n]read0`01.txt

// part 2
// can't map directly from "sevenine" to "79" as this would incorrectly map "sevenineight" to "79ight"
// need to map "sevenineight" to "sevennineeight" first then to "798"
map:(("twone";"oneight";"sevenine";"eighthree";"eightwo";"threeight";"fiveight";"nineight";"one";"two";"three";"four";"five";"six";"seven";"eight";"nine");("twoone";"oneeight";"sevennine";"eightthree";"eighttwo";"threeeight";"fiveeight";"nineeight";"1";"2";"3";"4";"5";"6";"7";"8";"9"))
sum value each(first;last)@\:/:inter\:[;.Q.n]ssr/[;map 0;map 1]each read0`01.txt

// part 2 - ignore overlaps and just find the first and last digits
n:1_.Q.n,string`one`two`three`four`five`six`seven`eight`nine
sum{10 sv 1+mod[;9]?'[;1b]flip in/:[;s](min;max)@\:raze s:x ss/:n}each read0`01.txt
