SELECT rank, COUNT(numofunitcom)
FROM commander
GROUP BY rank;


SELECT MAX(COUNT(numofunitdri))
FROM driver
GROUP BY numofunitdri;


SELECT docid
FROM doctor
WHERE numofunitdoc = 51
UNION
SELECT parid
FROM paramedic
WHERE numofunitpar = 51


SELECT DISTINCT seniority
FROM doctor NATURAL JOIN medic
WHERE numofunitdoc = numofunitmed;




UPDATE medic
SET seniority = 39
WHERE seniority = 38


UPDATE commander
SET rank = 'ravseren'
WHERE comid = 693509106


Delete from driver
Where license_number = 6362578  or  license_number = 7188616


Delete from equipment_manager
Where numofuniteqi = 87  


