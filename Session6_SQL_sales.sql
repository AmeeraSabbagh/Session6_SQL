/*View customers info and the responsible employee */
select idcustomer As Customer_ID , cust_name As Customer_Name ,cust_phone As Customer_phoneNumber
, idemployee As Employee_Number , emp_name As Employee_name  from 
customer join employee on customer.idcustomer = employee.emp_cust;

/*View order info info and the responsible employee */
select  idemployee As Employee_Number , emp_name As Employee_name  ,idorder As Order_Number,order_cost As Cost ,order_diliviry_date As Dilivery_Date from
order_ join employee on
employee.emp_order = idorder ;

/*view orders that cost between 25 and 50*/
select idorder,order_cost from  order_ where order_cost >25 and order_cost<=50;

/*view order with minimum cost*/
select min(order_cost) , idorder from order_;

/*view order with maximim cost*/
select max(order_cost) , idorder from order_;

/*view average salary for employees*/
select avg(emp_salary) from employee;

/*view summation of employees salary*/
select sum(emp_salary) from employee;

/*view order info  orderd by diliviry date*/
select distinct idorder , order_diliviry_date ,cust_id from order_ order by order_diliviry_date;

/*view employees salaries between 300-400*/
select emp_salary from employee where( not emp_salary < 300) and emp_salary <= 400;

/*view citise that have more than 5 customers*/
select idcustomer ,count( cust_city) from customer group by cust_city having count(idcustomer) > 5;

/*view customers how havent phone number */
select idcustomer , cust_name from customer where cust_phone is null;

/*view all customers stored even they dont have order */
select idcustomer As Customer_ID , cust_name As Customer_Name ,cust_phone As Customer_phoneNumber,
idorder As Order_Number,order_diliviry_date As Dilivery_Date, order_cost As cost 
from customer left join order_ on customer.cust_order_id = order_.cust_id;

/*view all orders stored even they dont have customers */
select idcustomer As Customer_ID , cust_name As Customer_Name ,cust_phone As Customer_phoneNumber,
idorder As Order_Number,order_diliviry_date As Dilivery_Date, order_cost As cost 
from customer right join order_ on customer.cust_order_id = order_.cust_id;

/*view employees order by highiest salary*/
select distinct idemployee, emp_name , emp_salary from employee order by emp_salary desc;




