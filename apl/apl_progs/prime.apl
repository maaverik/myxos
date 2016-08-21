decl
	integer n, i, j, chk;
enddecl

integer main(){
	print("Enter n:");
	read(n);
	j = 2;
	while (j < n) do
		i = 2;
		chk = 0;
		while (i < j) do
			if (j%i == 0) then
				chk = 1;
			endif;
			i = i+1;
		endwhile;
		if (chk == 0) then
			print(j);
		endif;
		j = j+1;
	endwhile;
	return 0;
}
	
