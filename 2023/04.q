wc:{sum value ssr[;"|";"in"](1+x?":")_x}each read0`04.txt
sum floor 2 xexp wc-1
sum{@[y;;y[z]+]z+1+til x z}[wc]/[c#1;til c:count wc]


k)wc:{+/.,/@[;1;:;"in"]_[;x]@,/(1;0 1)+'x?":|"}'0:`04.txt
k)+/_2 xexp wc-1
k)+/{@[y;;y[z]+]z+1+!x z}[wc]/[c#1;!c:#wc]
