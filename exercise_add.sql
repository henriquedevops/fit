select
	id_exercise,
	title,
	description,
	exercise_type,
	body_part,
	equipment,
	exercise_level,
	rating,
	rating_desc
from
	ftn.megagymdataset
where title ilike '%suitcase%'

select distinct exercise_level from ftn.megagymdataset;


insert
	into
	ftn.megagymdataset
(
	title,
	description,
	exercise_type,
	body_part,
	equipment,
	exercise_level,
	rating,
	rating_desc)
values(
'Scapullar pull-ups - assisted', -- title
null, -- description
'Strength', -- exercise_type
'Lats', -- body_part
'Body Only', -- equipment
'Beginner', -- exercise_level
null, -- rating
null -- rating_desc
);