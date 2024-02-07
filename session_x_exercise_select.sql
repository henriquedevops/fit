select
	s.dt_session,
	se.id_s_x_e,	
	e.title,
	set_number,
	reps,
	weight_kgs
from
	ftn.tb_sessions_x_exercises se
		inner join ftn.tb_sessions s
			on s.id_session = se.id_session 
		inner join ftn.megagymdataset e 
			on se.id_exercise = e.id_exercise
order by
	dt_session,
	id_s_x_e
	