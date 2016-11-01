integer main()
{
	integer childpid,i, retval;
	childpid = Fork();
	if(childpid == -2) then
		retval = Exec("stage10.xsm");
	else
		if(childpid != -1) then
			i = 0;
			while (i< 100) do
				i = i+1;
			endwhile;
			print(childpid);
		endif;
	endif;
	return 0;
}
