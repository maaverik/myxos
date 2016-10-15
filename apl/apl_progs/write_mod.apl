decl
	integer status;
	integer fd;
	
enddecl

integer main(){
	status = Create("sample");
	fd = Open("sample");
	status = Write(fd, "effervescence");
	print(status);
	status = Write(fd, "qwerty");
	print(status);
	return 0;
}
