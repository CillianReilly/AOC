p:read0`14.txt
roll:ssr[;".O";"O."]/'
tload:{2 sum/(1+reverse til count x)*"O"=x}

// part 1
tload flip roll flip p

// part 2
cycle:{flip reverse flip roll flip x}/[4;]
g:group{not any last[x]in -1_x}{x,enlist cycle last x}/enlist p
tload g?{x+(1000000000-x)mod y-x}. g(1<count each g)?1b

// adotsch
roll:{flip"#"sv/:desc each'"#"vs/:flip x}
tload:{2 sum/sums"O"=x}

// part 1
tload roll p
