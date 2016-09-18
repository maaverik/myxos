decl
	integer status;
enddecl
integer main()
{
	print("Stage7_prog");
	status = Create("Myfile.dat");
	print(status);
	return 0;
}
