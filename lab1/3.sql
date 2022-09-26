SELECT s.n_post
FROM s
WHERE NOT EXISTS (SELECT * 
				FROM spj
				WHERE n_post=s.n_post
				AND 
				NOT EXISTS (SELECT * 
							FROM p
							WHERE n_det=spj.n_det 
							AND
							LOWER(name) LIKE '%к%'))