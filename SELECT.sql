
-- Отримання списку всіх клієнтів із їхніми іменами, електронною поштою та датою реєстрації
SELECT first_name, last_name, email, registration_date 
FROM Clients 
ORDER BY registration_date DESC;

-- Список клієнтів, зареєстрованих після 1 січня 2025 року
SELECT first_name, last_name 
FROM Clients 
WHERE registration_date > '2025-01-01';

-- Типи абонементів для групових занять
SELECT type_name, category, duration_days 
FROM Membership_Types 
WHERE class_type = 'Group';

-- Перелік усіх тренерів та їхні заплановані заняття
SELECT t.first_name, t.last_name, t.specialization, c.class_name, c.schedule_time
FROM Trainers t
LEFT JOIN Classes c ON t.trainer_id = c.trainer_id
WHERE t.status = 'Active' AND c.status = 'Scheduled';

-- список клієнтів, які відвідували певні заняття 1 червня 2025 року
SELECT DISTINCT c.first_name, c.last_name, cl.class_name, v.visit_date_time
FROM Clients c
JOIN Visits v ON c.client_id = v.client_id 
JOIN Classes cl ON v.class_id = cl.class_id
WHERE DATE(v.visit_date_time) = '2025-06-01';

-- Список тренерів, у яких немає запланованих занять
SELECT t.first_name, t.last_name, t.specialization
FROM Trainers t
LEFT JOIN Classes c ON t.trainer_id = c.trainer_id
WHERE c.class_id IS NULL AND t.status = 'Active';

-- Всі типи абонементів
SELECT type_name, category, duration_days
FROM Membership_Types;

-- Перелік запланованих занять на сьогодні
SELECT class_name, schedule_time, location
FROM Classes
WHERE DATE(schedule_time) = CURDATE()
AND status = 'Scheduled';

-- Підрахунок загальної кількості платежів
SELECT COUNT(payment_id) as total_payments, SUM(amount) as total_amount
FROM Payments;

-- Список клієнтів які мають річний абонемент
SELECT c.first_name, c.last_name
FROM Clients c
JOIN Memberships m ON c.client_id = m.client_id
JOIN Membership_Types mt ON m.type_id = mt.type_id
WHERE mt.type_name = 'Yearly';

-- Перелік всіх абонементів які дорожчі 1000грн.
SELECT c.first_name, c.last_name, m.price
FROM Memberships m
JOIN Clients c ON m.client_id = c.client_id
WHERE m.status = 'Active' AND m.price > 1000;

-- Список клієнтів зі студенським абонементом
SELECT c.first_name, c.last_name
FROM Clients c
JOIN Memberships m ON c.client_id = m.client_id
JOIN Membership_Types mt ON m.type_id = mt.type_id
WHERE mt.category = 'Student';

-- Тренери з йоги
SELECT first_name, last_name, email
FROM Trainers
WHERE specialization = 'йога' AND status = 'Active';

-- Список клієнтів які купили абонемент цього року
SELECT first_name, last_name, registration_date
FROM Clients
WHERE YEAR(registration_date) = YEAR(CURDATE());

-- Клієнти в яких день народження цього місяця
SELECT first_name, last_name, date_of_birth
FROM Clients
WHERE MONTH(date_of_birth) = MONTH(CURDATE());

-- Список клієнтів з сімейним абонементом
SELECT c.first_name, c.last_name
FROM Clients c
JOIN Memberships m ON c.client_id = m.client_id
JOIN Membership_Types mt ON m.type_id = mt.type_id
WHERE mt.category = 'Family';



