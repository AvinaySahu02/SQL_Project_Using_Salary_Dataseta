Create database data_new;
use data_new;  #query to use the selected database

#-------------------Query-------------------------

#Q1.Show all columns and rows in the table
select * from salaries;

#Q2.Show the number of employees in the table
select count(EmployeeName) from salaries;

#Q3.Show all the unique job titles in the table
select distinct jobtitle as total_unique_jobtitle from salaries;

#Q4.Show the jobtitle and overtime pay for all employee with overtime greater than 50000.
select jobtitle, overtimepay from salaries
where OvertimePay > 50000;

#Q5.Show the average base pay for all employees.
select avg(basepay) as "Avg BasePay" from salaries;

#Q6.shwo the top 10 highest paid employees
select EmployeeName, TotalPay from salaries
order by TotalPay desc
limit 10;

#Q7.show the average of BasePay, OvetimePay and other pay for each employee
select employeename, (BasePay + OvertimePay + Otherpay)/3 from salaries;

#Q8.Show all employees who have the word "Manager" in the jobtitle
select employeename, jobtitle from salaries
where jobtitle like "%Manager%";

#Q9.Show all employee wiht a job title not equal to "Manager".
select employeename, jobtitle from salaries
where jobtitle not like "%Manager%";

#Q10.Show all employees with a total pay between 50000 and 75000
select employeename, totalpay from salaries
where TotalPay between 50000 and 75000;

#Q11.Show all employees with a base pay less than 50000 or a total pay greater than 100000
select employeename, basepay, totalpay from salaries
where basepay < 50000 or totalpay > 100000;

#Q12.Show all employees with a total pay benefites values between 125000 and 150000 and a job title containint the word "Director"
select employeename, totalpay, jobtitle from salaries
where TotalPay between 125000 and 150000 
and jobtitle like "%Director%";

#Q13.Show all employees ordered by their totalpay benefits in descending order.
select employeename, totalpay, jobtitle from salaries
order by TotalPayBenefits desc;

#Q14.Show all jobtitles with an average base pay of at least 100000 and order them by the average base pay in descendign order
select jobtitle, avg(basepay) as "avgbasepay" from salaries
group by jobtitle
having avg(BasePay) >= 100000
order by avg(basepay) desc;

#Q15.update the basepay of all employees with the job title containing "Manger" by increasing it by 10%
update salaries
set basepay = basepay*1.1
where jobtitle like "%Manager%";
select * from salaries;

#Q16. Delete all employees who have no OvertimePay.
select count(*) from salaries 
where overtimepay = 0;

#final answer to the above solution
-- delete from salaries 
-- where overtimepay = 0;