#define NUM 5

bool fork[NUM];
bool eating[NUM];

active [NUM] proctype philo ()
{
	L1:
	/* even philosophers pick up left, then right
	odd philosophers pick up right, then left */
	if
		:: (_pid%2 == 0) ->
			atomic {
				(fork[_pid] == 0);
				fork[_pid] = 1;
			}
			atomic {
				(fork[(_pid+1)%NUM] == 0);
				fork[(_pid+1)%NUM] = 1;
			}
		:: (_pid%2 == 1) ->
			atomic {
				(fork[(_pid+1)%NUM] == 0);
				fork[(_pid+1)%NUM] = 1;
			}
			atomic {
				(fork[_pid] == 0);
				fork[_pid] = 1;
			}
	fi;
	eating[_pid] = 1;
	printf ("%d eating\n", _pid);
	/* eating */
	if
		:: (_pid == 0) -> progress0: skip;
		:: (_pid == 1) -> progress1: skip;
		:: (_pid == 2) -> progress2: skip;
		:: (_pid == 3) -> progress3: skip;
		:: (_pid == 4) -> progress4: skip;
	fi;
	eating[_pid] = 0;
	fork[_pid] = 0;
	fork[(_pid+1)%NUM] = 0;
	goto L1;
}

active [NUM] proctype monitor ()
{
	assert ((!eating[_pid-NUM]) ||
	(eating[_pid-NUM] &&
	fork[_pid-NUM] &&
	fork[(_pid-NUM+1)%NUM] &&
	!eating[(_pid-NUM+1)%NUM] &&
	!eating[(_pid-NUM-1+NUM)%NUM])
	);
}
