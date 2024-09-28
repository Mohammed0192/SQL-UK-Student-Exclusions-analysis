# Project Background 
The Department for Education has yet commit policies addressing **the alarming growth in UK student suspensions across primary and secondary education**. Since students have returned to in-person education post-2020, schools across the UK have been issuing suspensions and permenant exclusions exponentially. The Department for Education have released census based data on suspensions/exclusions and school workforce size for regions across the UK.

This project analyses the UK education census data from 2016 - 2023 to understand **what key factors dictate differences in exclusion rates across the UK** after the 2019-20 academic year.

Insights and recommendations are provided on the following key areas: 

- **Student Free School Meal Eligibility Analysis:** Analysing the average number of students being excluded based on Free School Meals eligibility as a socio-economic indicator
- **Regional Comparisons:** Evaluation of exclusion data based on region
- **Number of Teaching Assistants per School:**  Assessing the impact that Teaching Assistants have on student exclusion rates

Power BI dashboard used to report and explore trends can be found here [link].

The SQL queries used to inspect and clean the data for this analysis can be found here [link] (https://github.com/Mohammed0192/SQL-UK-analysis/blob/main/susp%20sql.sql) .

Targeted SQL queries regarding various business questions can be found here [link].



# Data Structure & Initial Checks

The companies main database structure as seen below consists of four tables: table1, table2, table3, table4, with a total row count of X records. A description of each table is as follows:
- **Table 1:** Exclusions data table which includes information on number of permanent exclusions 'perm_excl' and the identity indicators of students (e.g. ethnicity, age and free school meal eligibility) across time and region.
- **Table 2:** Workforce Data table showing teaching assistant numbers, headcount of teaching assistants and the number of schools across time and region

![History](https://github.com/user-attachments/assets/0a539a1b-491a-4b9e-a0f1-7c4733afd4df)



# Executive Summary

![image](https://github.com/user-attachments/assets/f4f06d9b-640c-47cb-9634-adafa04d25f8)
Reference: UK map by Region

### Overview of Findings
The data reveals** a significant North-South regional divide in the average number of students being excluded** eligble for free school meals (FSM). 

**The exclusion gap between FSM and non-FSM students widened significantly post-COVID**, with FSM students facing higher exclusion rates, again this gap is wider in Northern England compared to the South.

Furthermore, the number of teaching assistants per school seems to be one driver behind the north-south divide in exclusions, with **fewer teaching assistants per school disproportionately effecting FSM students.**


![Screenshot 2024-09-26 172246](https://github.com/user-attachments/assets/be14c657-c673-4fa0-9840-28fe21bd9f16)
![Screenshot 2024-09-26 172009](https://github.com/user-attachments/assets/e42d9cc1-990b-4518-896e-ef55b2191a37)

Further detailed regional analysis will follow this section.

# Insights Deep Dive
### Pre-COVID signs of a North-South Divide:

* **North-South Divide in exclusion rates started before the pandemic for GCSE students.** From 2016-2019, the number of GCSE students being permanently excluded from school in North England was on the rise, whereas the South saw a gradual decline in exclusion rates leading up to 2019-20, with the South West of England being an exception.
![Screenshot 2024-09-26 180954](https://github.com/user-attachments/assets/e21609d2-ded3-4798-8383-6213be13609e)
![Screenshot 2024-09-26 181032](https://github.com/user-attachments/assets/ed78baca-47b6-4e08-9613-f7003b8306de)

  
* **London saw greatest improvement in GCSE exclusions pre-COVID and recoverd best post-COVID.** Inner London, in particular, demonstrated the most effective recovery in managing exclusions after the pandemic.
  
* **Most exclusion rates shot up post-COVID at similar rates.** All regions saw a rise in exclusions post-2020, except the East of England who struggled pre-COVID but saw schools stabilizing their exclusion rates post-2020 
  
 * **Schools in Inner London saw lower GCSE exclusion rates post-COVID than Outer London.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
 
  ![Screenshot 2024-09-26 222838](https://github.com/user-attachments/assets/5d62b583-8189-4d1d-922a-1877efd5f3d3)


### Category 2:

* **Main insight 1.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 2.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 3.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 4.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

![Screenshot 2024-09-26 175712](https://github.com/user-attachments/assets/c1be4e3d-f4e8-4ef8-bd3b-e5c5037ba345)


### Category 3:

* **Main insight 1.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 2.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 3.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 4.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 3]


### Category 4:

* **Main insight 1.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 2.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 3.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 4.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 4]



# Recommendations:

Based on the insights and findings above, we would recommend the [stakeholder team] to consider the following: 

* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  


# Assumptions and Caveats:

Throughout the analysis, multiple assumptions were made to manage challenges with the data. These assumptions and caveats are noted below:

* Assumption 1 (ex: missing country records were for customers based in the US, and were re-coded to be US citizens)
  
* Assumption 1 (ex: data for December 2021 was missing - this was imputed using a combination of historical trends and December 2020 data)
  
* Assumption 1 (ex: because 3% of the refund date column contained non-sensical dates, these were excluded from the analysis)
