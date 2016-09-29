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
	print("creation:");
	print(status);
	b = "carpe";
	c = "diem";
	fileDescriptor = Open("myfile.dat");
	print("opening:");
	print(status);
	status = Write(fileDescriptor, b);
	print("carpe:");
	print(status);
	status = Write(fileDescriptor, c);
	print("diem:");
	print(status);
	
	// first part of the story complete
	
	status = Close(fileDescriptor);
	print("Closing:");
	print(status);
	
	// open the file again
	status = Open("myfile.dat");
	print("Reopen:");
	print(status);
	// read the first word
	status = Read(fileDescriptor, a);
	print("carpe:");
	print(status);
	print("Word read:");
	print(a);
	// read the next word
	status = Read(fileDescriptor, b);
	print("diem:");
	print(status);
	print("Word read:");
	print(b);
	
	// try setting lseek to a huge value
	status = Seek(fileDescriptor, 520);
	print("Try bad lseek:");
	print(status);
	
	// close file
	status = Close(fileDescriptor);
	print("Closing:");
	print(status);		
	return fileDescriptor;
}
