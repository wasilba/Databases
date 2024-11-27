SELECT s.first_name, s.surname, b.bill_date, COUNT(b.bill_no) AS bill_count
FROM restBill b
JOIN restStaff s ON b.waiter_no = s.staff_nno 
GROUP BY s.first_name, s.surname, b.bill_date
HAVING COUNT(b.bill_no) >= 2;

SELECT t.room_name, COUNT(*) AS table_count
FROM restRest_table t
WHERE t.no_of_seats > 6
GROUP BY t.room_name;

SELECT t.room_name, SUM(b.bill_total) AS total_bill_amount
FROM restRest_table t
JOIN restBill b ON t.table_no = b.table_no
GROUP BY t.room_name;

SELECT h.first_name, h.surname, SUM(b.bill_total) AS total_bill_amount
FROM restStaff h
JOIN restStaff w ON h.staff_no = w.headwaiter
JOIN restBill b ON w.staff_no = b.waiter_no
GROUP BY h.first_name, h.surname
ORDER BY total_bill_amount DESC;

SELECT b.cust_name, AVG(b.bill_total) AS average_spent
FROM restBill b
GROUP BY b.cust_name
HAVING AVG(b.bill_total) < 400; 

SELECT s.first_name, s.surname, COUNT(b.bill_no) AS bill_count
FROM restBill b
JOIN restStaff s ON b.waiter_no = s.staff_no
GROUP BY s.first_name, s.surname 
HAVING COUNT(b.bill_no) >= 3;


