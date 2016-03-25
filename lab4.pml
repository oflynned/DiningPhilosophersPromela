#define MAX_NUM 5
#define MAX_REPS 100

#define TRUE 1
#define FALSE 0

int n, p, rand;
bool turn;

//arrays of states
bool forks[MAX_NUM] = { FALSE, FALSE, FALSE, FALSE, FALSE };
bool philosophers[MAX_NUM] = { FALSE, FALSE, FALSE, FALSE, FALSE };

active proctype generate_rand()
{
	//limit from 0 to 255
	byte rand_local;
	//randomly increment, decrement or stop
	do
		::rand++
		::rand--
		::break
	od;
	printf("%i was pseudo-randomly generated\n", rand_local);
	rand = rand_local;
}

active proctype Eat(int id, int l_rand) 
{  
	lock:
		atomic
		{
			printf("Agent %i is eating\n", id);
			philosopher[id] = TRUE;
			forks[p] = TRUE;
			forks[p == 4 ? 0 : p + 1] = TRUE;
			goto sleep
		}
	sleep:
		atomic
		{
			int	count = 0;
			printf("Agent %i is sleeping\n", id);
			if
				::(count < l_rand) -> count += 1; skip;
				::else -> break;
			fi;
		}
	philosopher[id] = FALSE;
}

active proctype Think(int id, int l_rand)
{
	atomic
	{
		philosopher[id] = FALSE;
		int	count = 0;
		printf("Agent %i is sleeping\n", id);
		if
			::(count < l_rand) -> count += 1; skip;
			::else -> break;
		fi;
	}
}

init 
{	
	for(n=0; n<MAX_REPS; n++)
	{
		for(p=0; p<MAX_NUM; p++)
		{
			atomic 
			{
				printf("Rep %i/%i\n", n, MAX_REPS);
				run generate_rand();
				if
				::((rand < 128) && (n < MAX_REPS) && (forks[p] = FALSE) && (forks[p == 4 ? 0 : p + 1] = FALSE)) -> run Eat(p, rand);
				::((rand >= 128) && (n < MAX_REPS) -> run Think(p, rand);
				::((rand < 128) && (n < MAX_REPS) && (forks[p] = TRUE) || (forks[p == 4 ? 0 : p + 1] = TRUE)) -> run Think(p, rand);
				::else -> break;
				fi;
			}
		}
	}
	
	(n >= MAX_REPS - 1);
	printf("at end -- asserting condition checks\n");
}
