create database parkinglot;
 use parkinglot;

create table car_vehicle(no_plate varchar(30),
customer_name varchar(30)not null,
phone_number int);
select*from car_vehicle;

create table in_process(token_no int auto_increment primary key,
vehicle_no varchar(30) not null,
entry_timing timestamp default current_timestamp);
select*from in_process;

create table out_process(token_no int,
exit_timing timestamp default current_timestamp,
fee_amount int);

select i.token_no,i.vehicle_no,i.entry_timing,o.exit_timing,o.fee_amount
 from in_process i 
 join out_process o 
 on i.token_no=o.token_no;
