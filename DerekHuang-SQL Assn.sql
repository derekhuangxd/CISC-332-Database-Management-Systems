-- Question 1
SELECT fname, lname, pname
FROM employee, project, works_on
WHERE lname in ("Wong", "Borg", "English") and ESSN = SSN and Pnumber = Pno;

-- Question 2
SELECT Fname, lname
from employee
WHERE SSN in
(
SELECT ESSN 
from dependent d
where d.relationship='son' union  
SELECT ESSN 
from dependent d
where d.relationship='daughter'
);

-- Question 3
SELECT dlocation, pname, count(distinct SSN) as employeesCount
FROM employee, deptlocations, project, works_on
WHERE Dnumber = Dnum and Pnumber = Pno and ESSN = SSN
GROUP BY Pname, Dlocation;

-- Question 4
CREATE TEMPORARY TABLE X AS
SELECT Pname, Pno
FROM Employee JOIN Project JOIN Works_On
WHERE Lname = "Narayan" and SSN = ESSN and Pno=Pnumber;

SELECT Pname, Pno
FROM X
WHERE X.Pno in
    (SELECT Pno
     FROM Employee JOIN Project JOIN Works_On
     WHERE Lname = "Jabbar" and SSN = ESSN and Pno=Pnumber);

-- Question 5
SELECT fname, lname, (2020 - year(d.Bdate)) as age
FROM employee, dependent d
WHERE year(d.Bdate) >= 1970 and SSN = ESSN;

-- Question 6
select fName, lName, ssn, pname, sum(Hours) as sumOfHours
from Employee JOIN (Works_On JOIN Project ON PNo = PNumber) ON SSN = ESSN
where Plocation = 'Sugarland' AND
(FName, LName) in 
(
select e.FName, e.LName
from project p, works_on w, Employee e
where e.SSN = w.essn AND p.pnumber = w.pno AND p.plocation = 'Sugarland'
group by e.SSN
HAVING COUNT(P.PNumber) = ( 
    select count(P.PNumber) from Project P where P.PLocation = 'Sugarland')
)
group by SSN,PName;

-- Question 7
CREATE TEMPORARY TABLE sameEmployee as
SELECT *
FROM Employee;

SELECT e.Fname as employeeFName, e.Lname as employeeLName,
if (e.SuperSSN is null, null, se.FName) as superFName,
if (e.SuperSSN is null, null, se.LName) as superLName
FROM employee e, sameEmployee se
WHERE e.SuperSSN = se.SSN or e.SuperSSN is null
GROUP BY e.Lname;

-- Question 8
SELECT pname, fname, lname, plocation
FROM project, department, employee
WHERE dnum = dnumber and mgrssn = ssn;

-- Question 9
create temporary table tempT as 
SELECT LName, SSN, max(Salary) as max_salary
from employee;

SELECT e.LName, e.SSN
from employee e, tempT
where e.salary=max_salary;

-- Question 10
create temporary table tempY as 
SELECT SSN, max(Salary) as max_salary
from employee e, department d
WHERE d.mgrssn=e.ssn;

SELECT e.FName, e.LName
from employee e, department d, tempY
WHERE d.mgrssn=e.ssn and e.Salary=max_salary;