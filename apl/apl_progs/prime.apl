decl
	integer n, i, j, chk;
enddecl

integer main(){
	read(n);
	j = 0;
	while (j < n) do
		i = 2;
		chk = 0;
		while (i < j/2) do
			if (i%j == 0) then
				chk = 1;
			endif;
			i = i+1;
		endwhile;
		if (chk == 1) then
			print(j);
		endif;
	endwhile;
	return 0;
}
	
