tst:read0`11.txt

// this needs to be refactored

// expand
tst:2{flip x asc til[count x],where not any each x}/"#"=tst

idx:(count each(flip\)tst)vs/:where raze tst

// overcount - divide by 2
0.5*2 sum/sum each'abs idx-\:/:idx


tst:"#"=read0`11.txt
idx:(count each(flip\)tst)vs/:where raze tst

// count how many gaps each distance crosses and scale appropriately
7h$0.5*sum sum each{(abs(-/)x)+999999*sum each(where each not any each'(flip\)tst)within'asc each flip x}each 2 0N#/:idx cross idx
