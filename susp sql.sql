SELECT e.school_type,e.la_name,  
e.characteristic, 
SUM(CASE WHEN e2.time_period >= 202021 THEN e2.suspension ELSE 0 END) AS UK_COVID_Susp,
SUM(CASE WHEN e.time_period < 202021 THEN e.suspension ELSE 0 END) AS UK_PreCOVID_Susp
FROM characteristics_excl2 AS e
JOIN characteristics_excl2 AS e2
ON e.school_type = e2.school_type
    AND e.la_name = e2.la_name
    AND e.characteristic_group = e2.characteristic_group
    AND e.characteristic = e2.characteristic

WHERE 
    e.characteristic LIKE 'Ethnicity%'
    AND e.time_period < 202021 
    AND e2.time_period >= 202021
GROUP BY  
    e.school_type,
    e.la_name, 
    e.characteristic
ORDER BY UK_COVID_Susp desc
LIMIT 10