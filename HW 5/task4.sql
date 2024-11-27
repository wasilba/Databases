SELECT DISTINCT b.cust_name
FROM restBill b
JOIN restRoom_management rm ON b.bill_date = rm.room_date
JOIN restStaff s ON rm.headwaiter = s.staff_no
WHERE s.first_name = 'Charles' AND b.bill_total > 450;

SELECT s.first_name, s.surname
FROM restStaff s
WHERE s.staff_no = (
    SELECT rm.headwaiter
    FROM restRoom_management rm
    WHERE rm.room_name = (
        SELECT t.room_name
        FROM restRest_table t
        JOIN restBill b ON t.table_no = b.table_no
        WHERE b.cust_name = 'Nerida Smith' AND b.bill_date = 20160111
    ) AND rm.room_date = 20160111
);

SELECT b.cust_name
FROM restBill b
WHERE b.bill_total = (SELECT MIN(bill_total) FROM restBill);

SELECT s.first_name, s.surname
FROM restStaff s
WHERE s.staff_no NOT IN (SELECT waiter_no FROM restBill);

SELECT b.cust_name, h.first_name AS headwaiter_first_name, h.surname AS headwaiter_surname, t.room_name
FROM restBill b
JOIN restRest_table t ON b.table_no = t.table_no
JOIN restRoom_management rm ON t.room_name = rm.room_name AND b.bill_date = rm.room_date
JOIN restStaff h ON rm.headwaiter = h.staff_no
WHERE b.bill_total = (SELECT MAX(bill_total) FROM restBill);
