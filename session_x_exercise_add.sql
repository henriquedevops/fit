-- add session x exercises
with q0 as 
(
	select
		id_session as id_session_pk,
		id_exercise as id_exercise_pk
	from
		ftn.megagymdataset,
		ftn.tb_sessions
	where
		id_session = 1
		and id_exercise = 1197
)
insert
	into
	ftn.tb_sessions_x_exercises
	(
		id_session,
		id_exercise,
		set_number,
		reps,
		weight_kgs
	)
values(
		( select id_session_pk from q0 ), -- id_session
		( select id_exercise_pk from q0 ), -- id_exercise
		coalesce(
					(
						select max(set_number) from ftn.tb_sessions_x_exercises 
						where 
							id_session = 1
							and id_exercise = 1197
					)
				,0)+1, -- set_number
		10, -- reps
		18  -- weight_kgs
	);