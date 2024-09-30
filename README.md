# Project Background 
The Department for Education has yet commit policies addressing **the alarming growth in UK student suspensions across primary and secondary education**. Since students have returned to in-person education post-2020, schools across the UK have been issuing suspensions and permenant exclusions exponentially. The Department for Education have released census based data on suspensions/exclusions and school workforce size for regions across the UK.

This project analyses the UK education census data from 2016 - 2023 to understand **what key factors dictate differences in exclusion rates across the UK** after the 2019-20 academic year.

Insights and recommendations are provided on the following key areas: 

- **Student Free School Meal Eligibility Analysis:** Analysing the average number of students being excluded based on Free School Meals eligibility as a socio-economic indicator
- **Regional Comparisons:** Evaluation of exclusion data based on region
- **Number of Teaching Assistants per School:**  Assessing the impact that Teaching Assistants have on student exclusion rates

The SQL queries used to inspect and clean the data for this analysis can be found here: (https://github.com/Mohammed0192/SQL-UK-analysis/blob/main/susp%20sql.sql) .


# Data Structure & Initial Checks

The companies main database structure as seen below consists of two tables: table1, table2, with a total row count of over 400,000 records. A description of each table is as follows:
- **Table 1:** Exclusions data table which includes information on number of permanent exclusions 'perm_excl' and the identity indicators of students (e.g. ethnicity, age and free school meal eligibility) across time and region.
- **Table 2:** Workforce Data table showing teaching assistant numbers, headcount of teaching assistants and the number of schools across time and region

![History](https://github.com/user-attachments/assets/0a539a1b-491a-4b9e-a0f1-7c4733afd4df)



# Executive Summary

![image](https://github.com/user-attachments/assets/f4f06d9b-640c-47cb-9634-adafa04d25f8)
Reference: UK map by Region

### Overview of Findings
The data reveals **a significant North-South regional divide in the average number of students being excluded eligble for free school meals (FSM).** 

**The exclusion gap between FSM and non-FSM students widened significantly post-COVID**, with FSM students facing higher exclusion rates, again this gap is wider in Northern England compared to the South.

Furthermore, the number of teaching assistants per school seems to be one driver behind the north-south divide in exclusions, with **fewer teaching assistants per school disproportionately effecting FSM students.**


![Screenshot 2024-09-26 172246](https://github.com/user-attachments/assets/be14c657-c673-4fa0-9840-28fe21bd9f16)
![Screenshot 2024-09-26 172009](https://github.com/user-attachments/assets/e42d9cc1-990b-4518-896e-ef55b2191a37)

Further detailed regional analysis will follow this section.

# Insights Deep Dive
### Pre-COVID signs of a North-South Divide:

![Screenshot 2024-09-30 112819](https://github.com/user-attachments/assets/11579a56-8554-4cff-bec6-9db340c4f29d)

* **North-South Divide in exclusion rates started before the pandemic for GCSE students.** From 2016-2019, the number of GCSE students being permanently excluded from school in North England was on the rise, whereas the South saw a gradual decline in exclusion rates leading up to 2019-20, with the South West of England being an exception.

![Screenshot 2024-09-26 180954](https://github.com/user-attachments/assets/e21609d2-ded3-4798-8383-6213be13609e)
![Screenshot 2024-09-26 181032](https://github.com/user-attachments/assets/ed78baca-47b6-4e08-9613-f7003b8306de)

  
* **London saw greatest improvement in GCSE exclusions pre-COVID and recoverd best post-COVID.** Inner London, in particular, demonstrated the most effective recovery in managing exclusions after the pandemic.
  
* **Most exclusion rates shot up post-COVID at similar rates.** All regions saw a rise in exclusions post-2020, except the East of England who struggled pre-COVID but saw schools stabilizing their exclusion rates post-2020 
  
 * **Schools in Inner London saw lower GCSE exclusion rates post-COVID than Outer London.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
 
  ![Screenshot 2024-09-26 222838](https://github.com/user-attachments/assets/5d62b583-8189-4d1d-922a-1877efd5f3d3)


### KS3 student exclusions:

* **KS3 student exclusions recovered worst from COVID in the North East.** In 2016-17, schools in the North East had some of the lowest average exclusions but post-COVID they joined other northern regions in having some of the highest
  
* **KS3 student exclusions recovered best in London post-COVID** KS3 student exclusions in London returned to normal levels post-COVID .
  
* **East Midlands student exclusions dipped least during COVID.** During the COVID lockdown period, exclusion numbers in the East Midlands dipped least during 2020-2021 which could signify a more abrupt return to in-person lessons.


![Screenshot 2024-09-26 175712](https://github.com/user-attachments/assets/c1be4e3d-f4e8-4ef8-bd3b-e5c5037ba345)


# Recommendations:

Based on the insights, I would recommend policy analysts to consider the following: 

* Investing in quality support staff such as teaching assistants over quantity. **By investing in more quality training for teaching assistants, regions struggling with school exclusions would not need to surpass the average .**
  
* Strategic lessons should be taken from schools in East England. **Schools in East England saw exclusion rates recover quickest post-COVID compared to other northern regions. Lessons should be taken from their post-COVID strategy.**
  
* Structural issues in Northern regions need addressing immediately. **The North-Side divide in exclusions was exacerbated by COVID-19 but predates it and larger structural issues need addressing to help reverse this..**



# Assumptions and Caveats:

Throughout the analysis, multiple assumptions were made to manage challenges with the data. These assumptions and caveats are noted below:

* No data inaccuracies during COVID (e.g. we are assuming that student exclusion data after COVID was collected at the same rate of accuracy throughout the UK) 
  
* 0.05% of data was missing or non-sensical and were excluded from the analysis
