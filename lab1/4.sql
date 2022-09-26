SELECT DISTINCT post.n_post, pt.sves 
FROM (SELECT n_post 
	FROM spj) post 
LEFT JOIN (SELECT spj.n_post, SUM(spj.kol) sves
		FROM spj 
		JOIN p ON spj.n_det=p.n_det
		WHERE p.ves>17 
		GROUP BY spj.n_post) pt 
ON pt.n_post=post.n_post 
ORDER BY 1 


