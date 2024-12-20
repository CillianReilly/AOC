dm:raze[til[1+count[i]div 2],'0N]where i:"J"$'first read0`09.txt
cs:{sum prd 1(til count@)\x}

cs sum[not n]#@[dm;where n;:;]sum[n:null dm]#reverse dm except 0N

f:{$[(</)i:?'[;1b](e;)(c:sum e:x=y)<=0 l\l:9h$null x;x;[x:@[x;;y|]sum(til c;neg c-1;last i);@[x;;0N&]sum(til c;first i)]]}
cs f/[dm;]reverse distinct[dm]except 0N



k)dm:(,/(!1+(#i)div 2),'0N)(&)i:"J"$'*0:`09.txt
k)+/*/1(!#:)\(+/~n)#@[dm;&n;:;](+/n:^dm)#|dm@&:~dm=0N
