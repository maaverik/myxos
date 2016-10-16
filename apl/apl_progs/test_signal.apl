integer main()
{
	integer pid;
	integer status;
	integer ppid;
	pid = Fork();
	if (pid != -2) then
		// parent
		print(1);
		status = Wait(pid);
		print(3);
		print(5);
		print(7);
		print(9);
		print(11);
		print(13);
		print(15);
		print(17);
		print(19);
		
	endif;
		print(2);
		print(4);	
		print(6);
		print(8);
		print(10);
		
		print(12);
		print(14);
		print(16);
		status = Signal(); // signal all other processes to resume
		// so till 10 there should be no interweaved output
		// and then there can be some
		print(18);
		print(20);
		Exit();
	// wait for child to finish
	// ./xsm --timer=10 should not get you an interweaved output
	
	return 0;
}
