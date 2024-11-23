SELECT bill_date, bill_total
FROM restBill
WHERE cust_name = 'Bob Crow';

SELECT DISTINCT cust_name
FROM restBill
WHERE cust_name = '% Smith'
ORDER BY cust_name DESC;

SELECT DISTINCT cust_name
FROM restBill
WHERE cust_name = '% C%';

SELECT first_name, surname
FROM restStaff
WHERE staff_no IN (SELECT headwaiter FROM restStaff WHERE headwaiter IS NOT NULL);

SELECT *
FROM restBill
WHERE bill_date BETWEEN 20160201 AND 20160229;

SELECT DISTINCT bill_date
FROM restBill
WHERE bill_date BETWEEN 20150101 AND 20151231
ORDER BY bill_date;



