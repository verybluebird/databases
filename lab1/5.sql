CREATE TABLE temp (town character(20));
INSERT INTO temp (SELECT town 
				FROM p
				INTERSECT
				(SELECT town 
				FROM j 
				INTERSECT
				(SELECT town 
				FROM s )))
ORDER BY town ASC