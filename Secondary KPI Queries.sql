
--(1) Good loan percentage
select (count(case when loan_status ='Fully Paid' or loan_status ='Current' then id end)* 100)/
count(id) as Good_loan_percentage from Bank_loan_data

--(2) Good loan application
select count(loan_status) as Good_loan_application from Bank_loan_data
where loan_status ='fully paid' or loan_status ='Current'

--(3) Good loan funded amount 
select sum(loan_amount) as Good_loan_funded_amount from bank_loan_data
where loan_status ='fully paid' or loan_status ='Current' 

--(4) Good loan received amount
select sum(total_payment) as Good_loan_received_amount from bank_loan_data
where loan_status ='fully paid' or loan_status ='Current' 

--(5) Bad loan percentage
select (count(case when loan_status ='Charged off' then id end)* 100.0)/
count(id) as Bad_loan_percentage from Bank_loan_data

--(6) Bad loan application
select count(loan_status) as Bad_loan_application from Bank_loan_data
where loan_status ='Charged off'

--(7) Bad loan funded amount 
select sum(loan_amount) as Bad_loan_funded_amount from bank_loan_data
where loan_status ='Charged off'

--(8) Bad loan received amount
select sum(total_payment) as Bad_loan_received_amount from bank_loan_data
where loan_status ='Charged off'

--(9) Loan status grid view
select loan_status,
count(id) as Total_loan_applications,
sum(total_payment) as Total_amount_received,
sum(loan_amount) as Total_funded_amount,
avg(int_rate * 100) as Interest_rate,
avg(dti * 100) as DTI
from Bank_loan_data 
group by loan_status
