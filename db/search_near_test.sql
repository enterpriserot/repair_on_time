SELECT *, (6371 * acos(
		sin(radians(latitude)) 
		* sin(radians(38.821991))
		+ cos(radians(longitude - -0.601544)) 
		* cos (radians(latitude))
		* cos(radians(38.821991))
		)
	   ) AS distance
FROM technicians
HAVING distance > 5 
ORDER BY distance ASC