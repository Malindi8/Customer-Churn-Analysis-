Select Gender , count(Gender) as TotalCount,
Count (Gender)*100.0 / (Select Count(*) from stg_churn) as percentage
From stg_Churn
Group By Gender


Select Contract , count(Contract) as TotalCount,
Count (Contract)* 1.0 / (Select Count(*) from stg_churn) as percentage
From stg_Churn
Group By Contract


Select Customer_Status , count(Customer_Status) as TotalCount,Sum (Total_Revenue) as ToatalRev,
Sum (Total_Revenue)/ (Select Sum(Total_Revenue) from stg_churn) *100 as RevPercentage
From stg_Churn
Group By Customer_Status

Select State , count(State) as TotalCount,
Count (State)* 100.0 / (Select Count(*) from stg_churn) as percentage
From stg_Churn
Group By State
Order By Percentage desc

Select Distinct Internet_Type
From stg_Churn