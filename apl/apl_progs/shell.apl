decl
	string command;
	integer pid;
enddecl
integer main()
{
	print("Shell>");
	read(command);
	
	while (command != "exit") do
		
		pid = Fork();
		
		if (pid > -1) then
			// wait for the child process to finish execution
			pid = Wait(pid);
		endif;
		
		if (pid == -2) then
			// child process
			// exec into the required command
			pid = Exec(command);
			if (pid == -1) then
				print("Error");
				break;
			endif;
		endif;
		
		if (pid == -1) then
			print("Fork error");
		endif;		
		
		print("Shell>");
		read(command);
		
	endwhile;
	
	print("Exiting...");
	return 0;
}
