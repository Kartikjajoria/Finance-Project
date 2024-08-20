SELECT * FROM Bank_loan_data

--(1) 
SELECT COUNT(id) AS Total_Loan_Applications FROM Bank_loan_data

--(2) Total Count 
SELECT COUNT(id) AS MTD_Total_Loan_Applications FROM Bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

--(3) Total Sum
SELECT SUM(loan_amount) as MTD_Total_funded_amount from Bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

--(4) Sum Of Total Amount Received
SELECT SUM(total_payment) as MTD_Total_amount_received from Bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

--(5) Average Interest rate 
SELECT ROUND(AVG(int_rate),4)* 100 AS Avg_Interest_Rate FROM Bank_loan_data
--for current month 
SELECT ROUND(AVG(int_rate),4)* 100 AS MTD_Avg_Interest_Rate FROM Bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

--(6) Avg Debt To Income Ratio
SELECT ROUND(AVG(dti),4)* 100 AS Average_DTI FROM Bank_loan_data
--for current month 
SELECT ROUND(AVG(dti),4)* 100 AS MTD_Average_DTI FROM Bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021



