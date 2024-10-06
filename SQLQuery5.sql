CREATE VIEW vw_ChurnData as
	Select * from prod_Churn where Customer_Status In ('Churned','Stayed')

CREATE VIEW vw_JoinData as
	Select * from prod_Churn where Customer_Status = 'Joined'