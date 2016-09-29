decl
	integer status;
	integer word;
		integer word1;
	integer filedescriptor1;
	integer filedescriptor2;
	integer filedescriptor3;
	integer n ;
	integer i;
	integer counter ;
enddecl
integer main()
{

	status = Create("numbers.dat");
	print(status);
	filedescriptor1 = Open("numbers.dat");
	print(filedescriptor1);
	status = Create("reverse.dat");
	print(status);
	filedescriptor2 = Open("reverse.dat");
	print(filedescriptor2);
	

	n = 1;
	while (n<=1000) do
		print(n);
		status = Write(filedescriptor1,n);
		n = n+1;
	endwhile;
	status = Close(filedescriptor1);
	print(status);

	filedescriptor1 = Open("numbers.dat");
  
 
 
  n= Seek(filedescriptor1,999);

  
  i=999;
   while(i>=0) do
   
    n= Read(filedescriptor1,word);
    n= Seek(filedescriptor1,-2);
     n= Write(filedescriptor2,word);
     i=i-1;
     endwhile;
   n=Close(filedescriptor1);

   n=Delete("numbers.dat");
   print(n);
     return 0;
}
