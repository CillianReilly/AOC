d:group(!/)("JJ";"|")0:(i?"")#i:read0`05.txt
o:value each(1+i?"")_i
s:{sum x@'floor .5*count each x}

i:(all(>':)@)each count each'o inter/:'d o

s o where i
s{y@'iasc each count each'y inter/:'x y}[d;]o where not i


k)d:=(!/)("JJ";"|")0:(i?"")#i:0:`05.txt
k)o:.:'(1+i?"")_i
k)s:{+/x@'_.5*#:'x}
k)i:(&/(>':)@)'#:''o@'&:''o in/:'d o
k)s o@&i
k)s{y@'<:'#:''y@'&:''y in/:'x y}[d;]o@&~i
