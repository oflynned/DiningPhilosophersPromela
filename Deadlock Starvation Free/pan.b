	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC monitor */
;
		;
		
	case 4: // STATE 2
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC philo */
;
		;
		
	case 6: // STATE 3
		;
		now.fork[ Index(((P0 *)this)->_pid, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 7: // STATE 6
		;
		now.fork[ Index(((((P0 *)this)->_pid+1)%5), 5) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 9: // STATE 10
		;
		now.fork[ Index(((((P0 *)this)->_pid+1)%5), 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 10: // STATE 13
		;
		now.fork[ Index(((P0 *)this)->_pid, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 11: // STATE 17
		;
		now.eating[ Index(((P0 *)this)->_pid, 5) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 18: // STATE 31
		;
		now.eating[ Index(((P0 *)this)->_pid, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 32
		;
		now.fork[ Index(((P0 *)this)->_pid, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 33
		;
		now.fork[ Index(((((P0 *)this)->_pid+1)%5), 5) ] = trpt->bup.oval;
		;
		goto R999;
	}

