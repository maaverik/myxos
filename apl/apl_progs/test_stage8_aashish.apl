decl
	integer a;
	string b;
	string c;
	integer status;
	integer fileDescriptor;
enddecl
integer main()
{	
	status = Create("myfile.dat");
	print(status);
	b = "carpe";
	c = "diem";
	fileDescriptor = Open("myfile.dat");
	print(status);
	status = Write(fileDescriptor, b);
	print(status);
	status = Write(fileDescriptor, c);
	print(status);
	
	// first part of the story complete
	
	status = Close(fileDescriptor);
	print(status);
	
	// open the file again
	status = Open("myfile.dat");
	print(status);
	// read the first word
	status = Read(fileDescriptor, a);
	print(status);
	print(a);
	// read the next word
	status = Read(fileDescriptor, b);
	print(status);
	print(b);
	
	// try setting lseek to a huge value
	status = Seek(fileDescriptor, 520);
	print(status);
	
	// close file
	status = Close(fileDescriptor);
	print(status);		
	return fileDescriptor;
}
