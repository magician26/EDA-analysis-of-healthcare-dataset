create database healthcareproject;

use healthcareproject;

-- Structure of the table 
desc healthcare_dataset;

-- Checking null values 
select * 
from healthcare_dataset 
where Name IS NULL;

select * 
from healthcare_dataset 
where Age IS NULL;

select * 
from healthcare_dataset 
where Gender IS NULL;

select * 
from healthcare_dataset 
where Blood_Type IS NULL;

select * 
from healthcare_dataset 
where Medical_Condition IS NULL;

select * 
from healthcare_dataset 
where Date_Of_Admission IS NULL;

select * 
from healthcare_dataset 
where Doctor IS NULL;

select * 
from healthcare_dataset 
where Hospital IS NULL;

select * 
from healthcare_dataset 
where Insuarnce_Provider IS NULL;

select * 
from healthcare_dataset 
where Billing_Amount IS NULL;

select * 
from healthcare_dataset 
where Room_Number IS NULL;

select * 
from healthcare_dataset 
where Addmission_Type IS NULL;

select * 
from healthcare_dataset 
where Discharge_Date IS NULL;

select * 
from healthcare_dataset 
where Medication IS NULL;

select * 
from healthcare_dataset 
where Test_Result IS NULL;


-- Changing Datatype of some columns
alter table healthcare_dataset
modify column Date_of_Admission DATETIME;

alter table Healthcare_dataset
modify column Discharge_Date DATETIME;

-- Most Common Medical Conition
select Medical_Condition , count(*) as countn
from Healthcare_dataset
group by Medical_Condition
order by countn desc;


-- Avg money spend on different medical condition
select Medical_Condition, avg(Billing_Amount) as MedExpense
from healthcare_dataset
group by Medical_Condition
Order by MedExpense desc;


-- Average Number of days A patient is admitted for a medical condition
select distinct(Medical_Condition), avg(DATEDIFF(Discharge_Date,Date_of_Admission)) as AvgDay
from healthcare_dataset
group by Medical_Condition
order by AvgDay desc;


-- Avg Age of people with differnt medical condition
select distinct(Medical_Condition), avg(Age) as Avgage
from healthcare_dataset
group by Medical_Condition
order by Avgage desc;
 
 
 -- Number of patient with different medical condition 
select distinct(Medical_Condition), count(Name) as NOP
from healthcare_dataset
group by Medical_Condition
Order by  NOP desc;


-- Count of males in different medical conditions
select Distinct(Medical_Condition), count(Gender) as CG
from healthcare_dataset
where Gender = 'Male'
group by Medical_Condition
order by CG desc;


-- Count of females in different medical conditions
select Distinct(Medical_Condition), count(Gender) as CG
from healthcare_dataset
where Gender = 'Female'
group by Medical_Condition
order by CG desc;


-- Insuarance Company took by maximum number people
select distinct(Insurance_Provider), count(Name) as PTI
from healthcare_dataset
group by Insurance_Provider
Order by PTI desc;


-- No of patients by Admission type
select distinct(Admission_Type), count(Name) as PAT
from healthcare_dataset
group by Admission_Type
order by PAT desc;


-- Count of patients with diff blood groups 
select distinct(Blood_Type), count(Name) as BT
from healthcare_dataset
group by Blood_Type
order by BT desc;


-- Diff blood type pateints withh diff medical conditions
select distinct(Blood_Type) , count(Medical_Condition) as BTO
from healthcare_dataset
where Medical_Condition = "Obesity"
group by Blood_Type
order by BTO desc;

select distinct(Blood_Type) , count(Medical_Condition) as BTAR
from healthcare_dataset
where Medical_Condition = "Arthritis"
group by Blood_Type
order by BTAR desc;

select distinct(Blood_Type) , count(Medical_Condition) as BTD
from healthcare_dataset
where Medical_Condition = "Diabetes"
group by Blood_Type
order by BTD desc;

select distinct(Blood_Type) , count(Medical_Condition) as BTH
from healthcare_dataset
where Medical_Condition = "Hypertension"
group by Blood_Type
order by BTH desc;

select distinct(Blood_Type) , count(Medical_Condition) as BTC
from healthcare_dataset
where Medical_Condition = "Cancer"
group by Blood_Type
order by BTC desc;

select distinct(Blood_Type) , count(Medical_Condition) as BTA
from healthcare_dataset
where Medical_Condition = "Asthma"
group by Blood_Type
order by BTA desc;



-- 
