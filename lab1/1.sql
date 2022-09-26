SELECT DISTINCT spj.n_post
FROM spj
WHERE spj.n_det IN (SELECT spj.n_det
					FROM spj
					WHERE spj.n_izd IN (SELECT n_izd 
										FROM j
										WHERE town='Осло'))