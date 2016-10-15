decl
	integer status, fd;
	integer a[10];
	integer n;
	integer m;
	integer num;
enddecl

integer main(){
	
	status = Create("numbers.dat");
	status = Open("numbers.dat");
	status = Write(fd, 56);
	status = Write(fd, 78);
	status = Write(fd, 147);
	status = Write(fd, 96);
	status = Write(fd, 35);
	status = Write(fd, 74);
	status = Write(fd, 45);
	status = Write(fd, 96);
	status = Write(fd, 23);
	status = Write(fd, 78);
	n = 0;
	m = 0;
	status = Seek(fd, 0);
	while(n < 10) do
		status = Read(fd, num);
		print(num);
		a[n] = num;
		n = n+1;
	endwhile;
	n = 0;
	m = 0;
	while(n < 9) do
		m = 0;
		while (m < 9 - n) do
			if (a[m] > a[m+1]) then
				num = a[m];
				a[m] = a[m+1];
				a[m+1] = num;
			endif;
			m = m+1;
		endwhile;
	n = n+1;
	endwhile;
	status = Seek(fd, 0);
	n = 0;
	while(n < 10) do
		status = Write(fd, a[n]);
		print(a[n]);
		n = n+1;
	endwhile;
	status = Close(fd);
	return 0;
}
