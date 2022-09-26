SELECT j.n_izd, j.name, j.town
FROM spj
JOIN p ON p.n_det = spj.n_det
JOIN j ON j.n_izd = spj.n_izd
JOIN s ON s.n_post = spj.n_post
WHERE s.town = p.town 
