#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC monitor */
	case 3: // STATE 1 - lab4_deadlock_starvation_free.pml:54 - [assert((!(eating[(_pid-5)])||((((eating[(_pid-5)]&&fork[(_pid-5)])&&fork[(((_pid-5)+1)%5)])&&!(eating[(((_pid-5)+1)%5)]))&&!(eating[((((_pid-5)-1)+5)%5)]))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		spin_assert(( !(((int)now.eating[ Index((((int)((P1 *)this)->_pid)-5), 5) ]))||((((((int)now.eating[ Index((((int)((P1 *)this)->_pid)-5), 5) ])&&((int)now.fork[ Index((((int)((P1 *)this)->_pid)-5), 5) ]))&&((int)now.fork[ Index((((((int)((P1 *)this)->_pid)-5)+1)%5), 5) ]))&& !(((int)now.eating[ Index((((((int)((P1 *)this)->_pid)-5)+1)%5), 5) ])))&& !(((int)now.eating[ Index(((((((int)((P1 *)this)->_pid)-5)-1)+5)%5), 5) ])))), "( !(eating[(_pid-5)])||((((eating[(_pid-5)]&&fork[(_pid-5)])&&fork[(((_pid-5)+1)%5)])&& !(eating[(((_pid-5)+1)%5)]))&& !(eating[((((_pid-5)-1)+5)%5)])))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - lab4_deadlock_starvation_free.pml:56 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC philo */
	case 5: // STATE 1 - lab4_deadlock_starvation_free.pml:12 - [(((_pid%2)==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!(((((int)((P0 *)this)->_pid)%2)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 2 - lab4_deadlock_starvation_free.pml:14 - [((fork[_pid]==0))] (7:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)now.fork[ Index(((int)((P0 *)this)->_pid), 5) ])==0)))
			continue;
		/* merge: fork[_pid] = 1(0, 3, 7) */
		reached[0][3] = 1;
		(trpt+1)->bup.oval = ((int)now.fork[ Index(((int)((P0 *)this)->_pid), 5) ]);
		now.fork[ Index(((P0 *)this)->_pid, 5) ] = 1;
#ifdef VAR_RANGES
		logval("fork[_pid]", ((int)now.fork[ Index(((int)((P0 *)this)->_pid), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 7: // STATE 5 - lab4_deadlock_starvation_free.pml:18 - [((fork[((_pid+1)%5)]==0))] (17:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (!((((int)now.fork[ Index(((((int)((P0 *)this)->_pid)+1)%5), 5) ])==0)))
			continue;
		/* merge: fork[((_pid+1)%5)] = 1(0, 6, 17) */
		reached[0][6] = 1;
		(trpt+1)->bup.oval = ((int)now.fork[ Index(((((int)((P0 *)this)->_pid)+1)%5), 5) ]);
		now.fork[ Index(((((P0 *)this)->_pid+1)%5), 5) ] = 1;
#ifdef VAR_RANGES
		logval("fork[((_pid+1)%5)]", ((int)now.fork[ Index(((((int)((P0 *)this)->_pid)+1)%5), 5) ]));
#endif
		;
		/* merge: .(goto)(0, 16, 17) */
		reached[0][16] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 8: // STATE 8 - lab4_deadlock_starvation_free.pml:21 - [(((_pid%2)==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (!(((((int)((P0 *)this)->_pid)%2)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 9 - lab4_deadlock_starvation_free.pml:23 - [((fork[((_pid+1)%5)]==0))] (14:0:1 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!((((int)now.fork[ Index(((((int)((P0 *)this)->_pid)+1)%5), 5) ])==0)))
			continue;
		/* merge: fork[((_pid+1)%5)] = 1(0, 10, 14) */
		reached[0][10] = 1;
		(trpt+1)->bup.oval = ((int)now.fork[ Index(((((int)((P0 *)this)->_pid)+1)%5), 5) ]);
		now.fork[ Index(((((P0 *)this)->_pid+1)%5), 5) ] = 1;
#ifdef VAR_RANGES
		logval("fork[((_pid+1)%5)]", ((int)now.fork[ Index(((((int)((P0 *)this)->_pid)+1)%5), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 10: // STATE 12 - lab4_deadlock_starvation_free.pml:27 - [((fork[_pid]==0))] (17:0:1 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		if (!((((int)now.fork[ Index(((int)((P0 *)this)->_pid), 5) ])==0)))
			continue;
		/* merge: fork[_pid] = 1(0, 13, 17) */
		reached[0][13] = 1;
		(trpt+1)->bup.oval = ((int)now.fork[ Index(((int)((P0 *)this)->_pid), 5) ]);
		now.fork[ Index(((P0 *)this)->_pid, 5) ] = 1;
#ifdef VAR_RANGES
		logval("fork[_pid]", ((int)now.fork[ Index(((int)((P0 *)this)->_pid), 5) ]));
#endif
		;
		/* merge: .(goto)(0, 16, 17) */
		reached[0][16] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 11: // STATE 17 - lab4_deadlock_starvation_free.pml:31 - [eating[_pid] = 1] (0:0:1 - 3)
		IfNotBlocked
		reached[0][17] = 1;
		(trpt+1)->bup.oval = ((int)now.eating[ Index(((int)((P0 *)this)->_pid), 5) ]);
		now.eating[ Index(((P0 *)this)->_pid, 5) ] = 1;
#ifdef VAR_RANGES
		logval("eating[_pid]", ((int)now.eating[ Index(((int)((P0 *)this)->_pid), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 18 - lab4_deadlock_starvation_free.pml:32 - [printf('%d eating\\n',_pid)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		Printf("%d eating\n", ((int)((P0 *)this)->_pid));
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 19 - lab4_deadlock_starvation_free.pml:35 - [((_pid==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		if (!((((int)((P0 *)this)->_pid)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 21 - lab4_deadlock_starvation_free.pml:36 - [((_pid==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][21] = 1;
		if (!((((int)((P0 *)this)->_pid)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 23 - lab4_deadlock_starvation_free.pml:37 - [((_pid==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		if (!((((int)((P0 *)this)->_pid)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 25 - lab4_deadlock_starvation_free.pml:38 - [((_pid==3))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		if (!((((int)((P0 *)this)->_pid)==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 27 - lab4_deadlock_starvation_free.pml:39 - [((_pid==4))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		if (!((((int)((P0 *)this)->_pid)==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 31 - lab4_deadlock_starvation_free.pml:41 - [eating[_pid] = 0] (0:0:1 - 6)
		IfNotBlocked
		reached[0][31] = 1;
		(trpt+1)->bup.oval = ((int)now.eating[ Index(((int)((P0 *)this)->_pid), 5) ]);
		now.eating[ Index(((P0 *)this)->_pid, 5) ] = 0;
#ifdef VAR_RANGES
		logval("eating[_pid]", ((int)now.eating[ Index(((int)((P0 *)this)->_pid), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 32 - lab4_deadlock_starvation_free.pml:42 - [fork[_pid] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][32] = 1;
		(trpt+1)->bup.oval = ((int)now.fork[ Index(((int)((P0 *)this)->_pid), 5) ]);
		now.fork[ Index(((P0 *)this)->_pid, 5) ] = 0;
#ifdef VAR_RANGES
		logval("fork[_pid]", ((int)now.fork[ Index(((int)((P0 *)this)->_pid), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 33 - lab4_deadlock_starvation_free.pml:43 - [fork[((_pid+1)%5)] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][33] = 1;
		(trpt+1)->bup.oval = ((int)now.fork[ Index(((((int)((P0 *)this)->_pid)+1)%5), 5) ]);
		now.fork[ Index(((((P0 *)this)->_pid+1)%5), 5) ] = 0;
#ifdef VAR_RANGES
		logval("fork[((_pid+1)%5)]", ((int)now.fork[ Index(((((int)((P0 *)this)->_pid)+1)%5), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

