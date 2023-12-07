t:flip`hand`bid!("*J";" ")0:`7.txt

p1:{desc value count each group x}
p2:{desc value{@[x;x?max x:"J"_x;+;0^x"J"]}count each group x}

// part 1
exec sum bid*1+i from`hand`strength xasc update p1 each hand,strength:"23456789TJQKA"?hand from t

// part 2
exec sum bid*1+i from`hand`strength xasc update p2 each hand,strength:"J23456789TQKA"?hand from t
