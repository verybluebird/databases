UPDATE s SET reiting=(SELECT COUNT(DISTINCT n_izd)*5
					FROM spj
					WHERE n_post = s.n_post)
WHERE reiting=(SELECT MIN(reiting) 
			FROM s)
