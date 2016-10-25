integer main(){
	integer r, a, b, c, d, e, f, final, pid, n1, n2, r1, r2, r3, i, j, k;
	pid = Fork();
	if (pid == -2) then		// qc
		c = Open("c.data");
		d = Open("d.data");
		r = Seek(c, 0);
		r = Seek(d, 0);

		r1 = Read(c, n1);
		r2 = Read(c, n2);
		r = Create("cd.data");
		r3 = Open("cd.data");

		i = 0;
		j = 0;
		while (i < 25 && j < 25) do
			if (n1 >= n2) then
				r = Write(r3, n1);
				i = i+1;
				r1 = Read(c, n1);
			else
				r = Write(r3, n2);
				r2 = Read(d, n2);
				j = j+1;
			endif;
		endwhile;

		
		
		while(i < 25) do
			r = Write(r3, n1);
			r1 = Read(c, n1);
			i = i+1;
		endwhile;

		while(j < 25) do
			r = Write(r3, n2);
			r2 = Read(d, n2);
			j = j+1;
		endwhile;

	else							// q
		a = Open("a.data");
		b = Open("b.data");
		r = Seek(a, 0);
		r = Seek(b, 0);

		r1 = Read(a, n1);
		r2 = Read(a, n2);
		r = Create("ab.data");
		r3 = Open("ab.data");

		i = 0;
		j = 0;
		while (i < 25 && j < 25) do
			if (n1 >= n2) then
				r = Write(r3, n1);
				i = i+1;
				r1 = Read(c, n1);
			else
				r = Write(r3, n2);
				r2 = Read(d, n2);
				j = j+1;
			endif;

			endwhile;

		while(i < 25) do
			r = Write(r3, n1);
			r1 = Read(a, n1);
			i = i+1;
		endwhile;

		while(j < 25) do
			r = Write(r3, n2);
			r2 = Read(b, n2);
			j = j+1;
		endwhile;

		r = Wait(pid);
		
		a = Close(r1);
		b = Close(r2);
		r = Close(r3);
		a = Open("ab.data");
		b = Open("cd.data");
		print("seeking");
		r = Seek(a, 0);
		r = Seek(b, 0);
		print("reading");
		r1 = Read(a, n1);
		r2 = Read(a, n2);
		print("Creating abcd");
		r = Create("abcd.data");
		print("Opening abcd");
		r3 = Open("abcd.data");

		i = 0;
		j = 0;
		while (i < 25 && j < 25) do
			if (n1 >= n2) then
				r = Write(r3, n1);
				r1 = Read(a, n1);
				i = i+1;
			else
				r = Write(r3, n2);
				r2 = Read(b, n2);
				j = j+1;
			endif;

		endwhile;

		
		while(i < 25) do
			r = Write(r3, n1);
			r1 = Read(a, n1);
			i = i+1;
		endwhile;

		while(j < 25) do
			r = Write(r3, n2);
			r2 = Read(b, n2);
			j = j+1;
		endwhile;

	endif;
	return 0;
}
