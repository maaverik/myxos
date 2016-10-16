integer main()
{
	integer pid;
	pid = Fork();
	print(pid);
	pid = Getpid();
	pid = Getppid();
	return 0;
}
