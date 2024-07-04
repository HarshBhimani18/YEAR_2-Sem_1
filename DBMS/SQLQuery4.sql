--Display name of customer who belongs to either ‘NAGPUR’ or ‘DELHI’ from customer table. (OR & IN)SELECT *FROM CUSTOMER WHERE CITY='NAGPUR' OR CITY='DELHI'
--Display name of customers with branch whose amount is greater than 4000 and account no is less than 105 from deposit table.
SELECT CNAME,BNAME FROM DEPOSIT WHERE AMOUNT>4000 AND ACTNO<105
--Find all borrowers whose amount is greater than equals to 3000 & less than equals to 8000 from borrow table. (AND & BETWEEN
SELECT *FROM BORROW WHERE AMOUNT>=3000 AND AMOUNT<=8000
SELECT *FROM BORROW WHERE AMOUNT BETWEEN 3000 AND 8000
--Find all depositors who do not belongs to ‘ANDHERI’ branch from deposit table.
SELECT *FROM DEPOSIT WHERE BNAME<>'ANDHERI'
--Display Account No, Customer Name & Amount of such customers who belongs to ‘AJNI’, ‘KAROLBAGH’ Or ‘M.G.ROAD’ and Account No is less than 104 from deposit table.
SELECT ACTNO,CNAME,AMOUNT 
FROM DEPOSIT WHERE BNAME IN('AJNI','KAROLBAGH','M.G.ROAD') AND ACTNO <104
--Display all the details of first five customers from deposit table.
SELECT TOP 5 *FROM DEPOSIT 
--Display all the details of first three depositors whose amount is greater than 1000.
SELECT TOP 3 *FROM DEPOSIT WHERE AMOUNT>1000
--Display Loan No, Customer Name of first five borrowers whose branch name does not belongs to ‘ANDHERI’ from borrow table.
SELECT TOP 5 LOANNO,CNAME FROM BORROW WHERE BNAME<>'ANDHERI'
--Retrieve all unique cities using DISTINCT. (Use Customers Table)
SELECT DISTINCT CITY FROM CUSTOMER
--Retrieve all unique branches using DISTINCT. (Use Branch Table)
SELECT DISTINCT BNAME FROM BRANCH
--Retrieve top 50% record from table BORROW.
SELECT TOP 50 PERCENT *FROM BORROW
--Display top 10% amount from table DEPOSIT.
SELECT TOP 10 PERCENT AMOUNT FROM DEPOSIT
--Display top 25% customer who deposited more than 5000.
SELECT TOP 25 PERCENT *FROM DEPOSIT WHERE AMOUNT>=5000
--Retrieve first 10% Loan Amounts.
SELECT TOP 10 PERCENT AMOUNT FROM BORROW
--Retrieve all unique customer names with city.
SELECT DISTINCT CNAME,CITY FROM CUSTOMER
--Retrieve all Loan records with one more column in Loan Amount as 10% extra amount.
SELECT *,(AMOUNT+AMOUNT*0.1) AS 'EXTRA AMOUNT' FROM BORROW
--Retrieve all odd/even value loan number from Borrow table.
SELECT LOANNO FROM BORROW WHERE LOANNO%2=0
SELECT LOANNO FROM BORROW WHERE LOANNO%2=1

