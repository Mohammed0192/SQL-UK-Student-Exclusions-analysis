SELECT e.school_type,e.la_name,  
e.characteristic, 
SUM(CASE WHEN e2.time_period > 201920 THEN e2.suspension ELSE 0 END) AS UK_COVID_Susp,
SUM(CASE WHEN e.time_period < 201920 THEN e.suspension ELSE 0 END) AS UK_PreCOVID_Susp
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



SELECT c.region_name,
SUM(CASE WHEN c.characteristic LIKE 'FSM - Eligible' AND c.time_period < 201920 THEN perm_excl ELSE 0 END) - SUM(CASE WHEN c.characteristic LIKE 'FSM - Not eligible' AND c.time_period < 201920 THEN perm_excl ELSE 0 END) AS Pre_COVID_FSM_Diff,
SUM(CASE WHEN c.characteristic LIKE 'FSM - Eligible' AND v.time_period > 201920 THEN perm_excl ELSE 0 END) - SUM(CASE WHEN c.characteristic LIKE 'FSM - Not eligible' AND c.time_period > 201920 THEN perm_excl ELSE 0 END) AS Post_COVID_FSM_Diff,
ROUND(AVG(CASE WHEN v.time_period < 201920 THEN v.rate ELSE 0 END),1) AS PreCOVID_Rate,
ROUND(AVG(CASE WHEN v.time_period > 201920 THEN v.rate ELSE 0 END), 1) AS PostCOVID_Rate
FROM characteristics_excl2 AS c
INNER JOIN school_vacancy_data AS v
ON c.region_name = v.region_name
GROUP BY c.region_name
ORDER BY Post_COVID_FSM_Diff DESC
LIMIT 15
