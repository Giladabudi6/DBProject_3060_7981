CREATE VIEW View_TAAGAD_Training AS
SELECT 
    t.tdate,
    t.type,
    c.comid,
    c.rank,
    c.numofunitcom,
    d.departmentid,
    d.name AS department_name
FROM 
    training t
JOIN 
    COMMANDER c ON t.comid = c.comid
JOIN 
    DEPARTMENT d ON t.departmentid = d.departmentid;



SELECT 
    tdate,
    type,
    department_name
FROM 
    View_TAAGAD_Training;



SELECT 
    comid,
    COUNT(tdate) AS number_of_trainings
FROM 
    View_TAAGAD_Training
GROUP BY 
    comid;










CREATE VIEW Training_Summary_View AS
SELECT 
    t.tdate,
    t.type,
    COUNT(s.soldierid) AS number_of_soldiers
FROM 
    training t
JOIN 
    DEPARTMENT d ON t.departmentid = d.departmentid
JOIN 
    SOLDIER s ON d.departmentid = s.departmentid
GROUP BY 
    t.tdate, t.type;





SELECT 
    type,
    COUNT(tdate) AS number_of_trainings
FROM 
    Training_Summary_View
GROUP BY 
    type;



SELECT 
    tdate,
    type
FROM 
    Training_Summary_View
WHERE 
    number_of_soldiers > 8;
























