-- Отримання клієнтів, зареєстрованих за останні 3 місяці
SELECT first_name, last_name, email, registration_date 
FROM Clients 
WHERE registration_date >= DATE_SUB(CURRENT_DATE, INTERVAL 3 MONTH) 
ORDER BY registration_date DESC;

-- Аналіз доходів спортзалу за типами абонементів за 2025 рік
SELECT mt.type_name, mt.category, mt.class_type, SUM(m.price) AS total_revenue 
FROM Memberships m 
JOIN Membership_Types mt ON m.type_id = mt.type_id 
WHERE YEAR(m.start_date) = 2025 
GROUP BY mt.type_id, mt.type_name, mt.category, mt.class_type 
ORDER BY total_revenue DESC;

-- Вибірка тренерів зі спеціалізацією та кількістю їхніх занять
SELECT t.first_name, t.last_name, t.specialization, COUNT(c.class_id) AS class_count 
FROM Trainers t 
LEFT JOIN Classes c ON t.trainer_id = c.trainer_id 
GROUP BY t.trainer_id, t.first_name, t.last_name, t.specialization;

-- Отримання активних абонементів із деталями про клієнтів і типи абонементів
SELECT c.first_name, c.last_name, mt.type_name, m.start_date, m.end_date, m.price 
FROM Memberships m 
JOIN Clients c ON m.client_id = c.client_id 
JOIN Membership_Types mt ON m.type_id = mt.type_id 
WHERE m.status = 'Active';

-- Отримання списку всіх клієнтів із їхніми іменами, електронною поштою та датою реєстрації
SELECT first_name, last_name, email, registration_date 
FROM Clients 
ORDER BY registration_date DESC;