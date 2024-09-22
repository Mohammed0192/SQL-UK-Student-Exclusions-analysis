SELECT region_name, la_name,
SUM(CASE WHEN characteristic LIKE 'FSM - Eligible' AND time_period < 201920 THEN perm_excl ELSE 0 END) - SUM(CASE WHEN characteristic LIKE 'FSM - Not eligible' AND time_period < 201920 THEN perm_excl ELSE 0 END) AS Pre_COVID_FSM_Diff,
SUM(CASE WHEN characteristic LIKE 'FSM - Eligible' AND time_period > 201920 THEN perm_excl ELSE 0 END) - SUM(CASE WHEN characteristic LIKE 'FSM - Not eligible' AND time_period > 201920 THEN perm_excl ELSE 0 END) AS Post_COVID_FSM_Diff
FROM characteristics_excl2
WHERE la_name IS NOT NULL
GROUP BY region_name, la_name
ORDER BY  Post_COVID_FSM_Diff DESC
LIMIT 10



SELECT c.region_name,
    --adding up FSM eligibility before and after 201920 / COVID
SUM(CASE WHEN c.characteristic LIKE 'FSM - Eligible' AND c.time_period < 201920 THEN perm_excl ELSE 0 END) - SUM(CASE WHEN c.characteristic LIKE 'FSM - Not eligible' AND c.time_period < 201920 THEN perm_excl ELSE 0 END) AS Pre_COVID_FSM_Diff,
SUM(CASE WHEN c.characteristic LIKE 'FSM - Eligible' AND v.time_period > 201920 THEN perm_excl ELSE 0 END) - SUM(CASE WHEN c.characteristic LIKE 'FSM - Not eligible' AND c.time_period > 201920 THEN perm_excl ELSE 0 END) AS Post_COVID_FSM_Diff,
    --average of teacher vacancies in that area
ROUND(AVG(CASE WHEN v.time_period < 201920 THEN v.rate ELSE 0 END),1) AS PreCOVID_Rate,
ROUND(AVG(CASE WHEN v.time_period > 201920 THEN v.rate ELSE 0 END), 1) AS PostCOVID_Rate
FROM characteristics_excl2 AS c
    -- joining it on region
INNER JOIN school_vacancy_data AS v
ON c.region_name = v.region_name
GROUP BY c.region_name
ORDER BY Post_COVID_FSM_Diff DESC
LIMIT 15



WITH CTE_fsm AS (
    SELECT
        c.region_code,
        c.region_name,
        ROUND(AVG(CASE WHEN c.characteristic = 'FSM - Eligible' AND c.time_period < 201920 THEN c.perm_excl ELSE NULL END),1) AS pre_covid_fsm_eligible,
        ROUND(AVG(CASE WHEN c.characteristic = 'FSM - Not eligible' AND c.time_period < 201920 THEN c.perm_excl ELSE NULL END),1) AS pre_covid_fsm_not_eligible,
        ROUND(AVG(CASE WHEN c.characteristic = 'FSM - Eligible' AND c.time_period > 201920 THEN c.perm_excl ELSE NULL END),1) AS post_covid_fsm_eligible,
        ROUND(AVG(CASE WHEN c.characteristic = 'FSM - Not eligible' AND c.time_period > 201920 THEN c.perm_excl ELSE 0 END),1) AS post_covid_fsm_not_eligible
    FROM characteristics_excl2 AS c
    WHERE c.region_name IS NOT NULL
    GROUP BY c.region_code, c.region_name
),
vacancy_data AS (
    SELECT
        v.region_code,
        ROUND(AVG(CASE WHEN v.time_period > 201920 AND v.rate > 0 THEN v.rate ELSE NULL END),1) AS post_covid_vacancies
    FROM school_vacancy_data AS v
    GROUP BY v.region_code
)
SELECT
    fsm.region_code,
    fsm.region_name,
    fsm.pre_covid_fsm_eligible - fsm.pre_covid_fsm_not_eligible AS pre_covid_fsm_diff,
    fsm.post_covid_fsm_eligible - fsm.post_covid_fsm_not_eligible AS post_covid_fsm_diff,
    vd.post_covid_vacancies
FROM CTE_fsm AS fsm
JOIN vacancy_data AS vd
ON fsm.region_code = vd.region_code
ORDER BY post_covid_vacancies DESC
LIMIT 10;


