CREATE VIEW samsBills AS
SELECT 
    rs.first_name,
    rs.surname,
    rb.bill_date,
    rb.cust_name,
    rb.bill_total
FROM 
    restBill rb
JOIN 
    restStaff rs
ON 
    rb.waiter_no = rs.staff_no
WHERE 
    rs.first_name = 'Sam' AND rs.surname = 'Pitt';


SELECT 
    first_name, 
    surname, 
    bill_date, 
    cust_name, 
    bill_total
FROM 
    samsBills
WHERE 
    bill_total > 400;


CREATE VIEW roomTotals AS
SELECT 
    rt.room_name,
    SUM(rb.bill_total) AS total_sum
FROM 
    restBill rb
JOIN 
    restRest_table rt
ON 
    rb.table_no = rt.table_no
GROUP BY 
    rt.room_name;


CREATE VIEW teamTotals AS
SELECT 
    CONCAT(hs.first_name, ' ', hs.surname) AS headwaiter_name,
    SUM(rb.bill_total) AS total_sum
FROM 
    restBill rb
JOIN 
    restStaff ws 
ON 
    rb.waiter_no = ws.staff_no
JOIN 
    restStaff hs
ON 
    ws.headwaiter = hs.staff_no
GROUP BY 
    headwaiter_name;
