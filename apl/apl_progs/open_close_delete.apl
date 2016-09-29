decl
	integer status;
enddecl
integer main(){
	status = Create("Samplefile.txt");
	print(status);
	status = Delete("Samplefile.txt");
	print(status);
	status = Create("Samplefile1.txt");
	print(status);
	status = Create("Samplefile2.txt");
	print(status);
	status = Close(4);
	print(status);
	status = Open("Samplefile1.txt");
	print(status);
	status = Delete("Samplefile1.txt");
	print(status);
	status = Open("Samplefile2.txt");
	print(status);
	status = Close(status);
	print(status);
	status = Delete("Samplefile2.txt");
	print(status);
	return 0;
}
