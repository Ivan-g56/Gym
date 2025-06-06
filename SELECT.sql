
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