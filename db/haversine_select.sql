
SELECT *, ( 6371 * acos( cos( radians(-0) ) * cos( radians( latitude ) ) * cos( radians( longitude ) - radians(-0) ) + sin( radians(38) ) * sin( radians( latitude ) ) ) ) AS distance FROM technicians HAVING distance < 25 ORDER BY distance LIMIT 0, 20;

38.821991, -0.601544
Funciona:
SELECT *, (6371 * acos(
		sin(radians(latitude)) 
		* sin(radians(38.821991))
		+ cos(radians(longitude - -0.601544)) 
		* cos (radians(latitude))
		* cos(radians(38.821991))
		)
	   ) AS distance
FROM technicians
HAVING distance < 1 
ORDER BY distance ASC


$lat = ;
$lng = ;
$distance = 5;
$box = getBoundaries($lat, $lng, $ distance);

SELECT *, (6371 * acos(
		sin(radians(latitude)) 
		* sin(radians(38.821991))
		+ cos(radians(longitude - -0.601544)) 
		* cos (radians(latitude))
		* cos(radians(38.821991))
		)
	   ) AS distance
FROM technicians
HAVING distance < 1 
ORDER BY distance ASC
