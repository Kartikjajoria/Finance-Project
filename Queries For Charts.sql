
--(1) Monthly trend by issue date (line chart)
select 
month(issue_date) as Month_number,
datename(month,issue_date) as Month_name,
count(id) as Total_loan_applications,
sum(loan_amount) as Total_funded_amount,
sum(total_payment) as Total_received_amount
from Bank_loan_data
group by month(issue_date),datename(month,issue_date)
order by month(issue_date)

--(2) Regional analysis by state (filled map)
select
address_state,
count(id) as Total_loan_applications,
sum(loan_amount) as Total_funded_amount,
sum(total_payment) as Total_received_amount
from Bank_loan_data
group by address_state
order by sum(loan_amount) desc

--(3) Loan term ananlysis (donut charts)
select
term,
count(id) as Total_loan_applications,
sum(loan_amount) as Total_funded_amount,
sum(total_payment) as Total_received_amount
from Bank_loan_data
group by term
order by term

--(4) Employee lenght analysis (bar charts)
select
emp_length,
count(id) as Total_loan_applications,
sum(loan_amount) as Total_funded_amount,
sum(total_payment) as Total_received_amount
from Bank_loan_data
group by emp_length
order by emp_length

--(4) Loan purpose breakdown(bar chart)
select
purpose,
count(id) as Total_loan_applications,
sum(loan_amount) as Total_funded_amount,
sum(total_payment) as Total_received_amount
from Bank_loan_data
group by purpose
order by count(id) desc

--(5) Home ownership analysis(tree map)
select
home_ownership,
count(id) as Total_loan_applications,
sum(loan_amount) as Total_funded_amount,
sum(total_payment) as Total_received_amount
from Bank_loan_data
group by home_ownership
order by count(id) desc