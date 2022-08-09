# Pewlett-Hackard-Analysis
## Overview of the analysis: 

We were tasked to learn how many employees would be retiring from Pewlett-Hackard to ensure that there were enough employees filling in positions that would be left open. Through this analysis, we learned that more employees would be retiring than anticipated and there would need to be an uptick in hiring or mentoring to ensure there are no gaps within the company's operations. During the course of this analysis, we were given two assignments: to determine the number of retiring employees per title and find out which employees are eligible to participate in a mentorship program. These two results will hopefully address the concerns of Pewlett-Hackard. 


## Results: 


 - In our first deliverable, we create a table for employees who were close to when they would be retiring, specifically employees who were born between 1952 and 1955. This table included employees who had multiple jobs during the course of their employment at Pewlett-Hackard. I included the first 20 names in the output image below:
 ![image](https://user-images.githubusercontent.com/102992388/183766851-54541b45-a7d5-4967-a17c-a802010496e5.png)
- Since this table included the same employee multiple times (i.e. Chirstian Koblick and Kyoichi Maliniak), we created a new table where we only had each employee listed once:
  ![image2](https://user-images.githubusercontent.com/102992388/183767250-7560bc0c-e7ad-4c02-96dc-8afa265b986d.png)

- We then wanted to see how many employees would be leaving from each title to ensure Pewlett-Hackard was properly prepared. 
  ![image3](https://user-images.githubusercontent.com/102992388/183767515-5207d16e-f487-4a53-88d4-f94577646e48.png) 

- In our second deliverable, we wanted to learn how many employees were eligible for the mentorship program. This included employees who were born between January 1, 1965 and December 31, 1965. We selected those employees and created a new table for Pewlett-Hackard for them to know how many of their employees would be able to join this program to ensure there are no gaps within the operations. 
  ![image4](https://user-images.githubusercontent.com/102992388/183768088-fd8691f5-b635-416c-bf9b-7a42b27ac285.png)


## Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

Without taking corrective action, Pewlett-Hackard will soon have a staffing problem at their company. There are many employees who are close to retiring and without an influx in hiring, there will be too many gaps within the company. Specifically, there are 72,458 employees close to retiring. Through analysis, the company learned that there are 1,549 employees who are eligible for the mentorship program. They should be inducted into this program quickly so they can begin training new employees. If they move quickly, these 1,549 employees would be able to take on multiple new hires to mentor them in their new positions. In particular, the 72,458 employees who are close to retiring will be retiring over the course of the next 3 years. As such, the mentors should be able to keep track and fill in those positions accordingly. This also means that there would be more employees who qualify for the mentorship program as some employees retire. To ensure that all positions are properly filled, Pewlett-Hackard can consider extending the mentorship program, so mentors are available for a longer period of time, thereby increasing the number of mentors who can help new hires fill these roles. 

In order to count how many employees would be retiring soon, I used the following code:

```
select count(*) from retirement_titles_unique;
```

which resulted in the following output: 

![image5](https://user-images.githubusercontent.com/102992388/183769547-5377917f-c66c-4cbc-bbf0-d68d5b049957.png)

In order to count how many employees qualified for mentorship, I used the following code: 

```
select count(*) from mentorship_eligibility;
```

which resulted in the following output: 

![image6](https://user-images.githubusercontent.com/102992388/183769726-0f0a2887-4792-456a-97ed-97f47f4f3271.png)


