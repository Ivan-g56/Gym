USE gym_company;

INSERT INTO Classes (class_id, trainer_id, class_name, schedule_time, duration, max_capacity, location, status) VALUES
(1, 1, 'Силові тренування', '2025-06-01 10:00:00', 60, 8, 'Зал №1', 'Completed'),  -- Олександр Коваленко
(2, 2, 'Силові тренування', '2025-06-01 12:00:00', 90, 8, 'Зал №2', 'Completed'),  -- Дмитро Бондар
(3, 3, 'Йога', '2025-06-01 14:00:00', 60, 12, 'Йога-студія', 'Completed'),         -- Марія Шевченко
(4, 4, 'Йога', '2025-06-02 09:00:00', 60, 12, 'Йога-студія', 'Scheduled'),         -- Тетяна Василенко
(5, 5, 'Пілатес', '2025-06-02 11:00:00', 60, 10, 'Йога-студія', 'Scheduled'),      -- Анастасія Лисенко
(6, 6, 'Пілатес', '2025-06-03 10:00:00', 60, 10, 'Йога-студія', 'Scheduled'),      -- Софія Захарченко
(7, 7, 'Бокс', '2025-06-02 15:00:00', 60, 6, 'Ринг', 'Scheduled'),                 -- Іван Петренко
(8, 8, 'Бокс', '2025-06-04 17:00:00', 90, 6, 'Ринг', 'Scheduled'),                 -- Сергій Остапенко
(9, 1, 'Силові тренування', '2025-06-05 16:00:00', 60, 8, 'Зал №1', 'Scheduled'),  -- Олександр Коваленко
(10, 2, 'Силові тренування', '2025-06-07 18:00:00', 90, 8, 'Зал №2', 'Scheduled'),  -- Дмитро Бондар
(11, 3, 'Йога', '2025-06-06 09:00:00', 60, 12, 'Йога-студія', 'Scheduled'),        -- Марія Шевchenko
(12, 4, 'Йога', '2025-06-09 10:00:00', 60, 12, 'Йога-студія', 'Scheduled'),        -- Тетяна Василенко
(13, 5, 'Пілатес', '2025-06-10 11:00:00', 60, 10, 'Йога-студія', 'Scheduled'),     -- Анастасія Лисенко
(14, 6, 'Пілатес', '2025-06-12 10:00:00', 60, 10, 'Йога-студія', 'Scheduled'),     -- Софія Захарченко
(15, 7, 'Бокс', '2025-06-11 15:00:00', 60, 6, 'Ринг', 'Scheduled'),                -- Іван Петренко
(16, 8, 'Бокс', '2025-06-14 17:00:00', 90, 6, 'Ринг', 'Scheduled'),                -- Сергій Остапенко
(17, 9, 'Фітнес-аеробіка', '2025-06-13 19:00:00', 45, 15, 'Танцювальний зал', 'Scheduled'), -- Юлія Мельник
(18, 10, 'Фітнес-аеробіка', '2025-06-16 18:00:00', 45, 15, 'Танцювальний зал', 'Scheduled'), -- Олена Сидоренко
(19, 11, 'Зумба', '2025-06-15 19:00:00', 45, 15, 'Танцювальний зал', 'Scheduled'), -- Катерина Кравець
(20, 12, 'Зумба', '2025-06-18 19:00:00', 45, 15, 'Танцювальний зал', 'Scheduled'), -- Роман Клименко
(21, 13, 'Кросфіт', '2025-06-17 08:00:00', 60, 8, 'Зал №1', 'Scheduled'),         -- Михайло Ткаченко
(22, 14, 'Кросфіт', '2025-06-19 09:00:00', 90, 8, 'Зал №1', 'Scheduled'),         -- Віктор Гнатюк
(23, 1, 'Силові тренування', '2025-06-21 16:00:00', 60, 10, 'Зал №1', 'Scheduled'), -- Олександр Коваленко
(24, 2, 'Силові тренування', '2025-06-23 18:00:00', 90, 8, 'Зал №2', 'Scheduled'),  -- Дмитро Бондар
(25, 3, 'Йога', '2025-06-20 09:00:00', 60, 12, 'Йога-студія', 'Scheduled'),        -- Марія Шевченко
(26, 4, 'Йога', '2025-06-25 10:00:00', 60, 12, 'Йога-студія', 'Scheduled'),        -- Тетяна Василенко
(27, 5, 'Пілатес', '2025-06-24 11:00:00', 60, 10, 'Йога-студія', 'Scheduled'),     -- Анастасія Лисенко
(28, 6, 'Пілатес', '2025-06-27 10:00:00', 60, 10, 'Йога-студія', 'Scheduled'),     -- Софія Захарченко
(29, 7, 'Бокс', '2025-06-26 15:00:00', 60, 6, 'Ринг', 'Scheduled'),                -- Іван Петренко
(30, 8, 'Бокс', '2025-06-28 17:00:00', 90, 6, 'Ринг', 'Scheduled'),                -- Сергій Остапенко
(31, 9, 'Фітнес-аеробіка', '2025-06-22 19:00:00', 45, 15, 'Танцювальний зал', 'Scheduled'), -- Юлія Мельник
(32, 10, 'Фітнес-аеробіка', '2025-06-30 18:00:00', 45, 15, 'Танцювальний зал', 'Scheduled'), -- Олена Сидоренко
(33, 11, 'Зумба', '2025-06-29 19:00:00', 45, 15, 'Танцювальний зал', 'Scheduled'), -- Катерина Кравець
(34, 12, 'Зумба', '2025-06-08 19:00:00', 45, 15, 'Танцювальний зал', 'Scheduled'), -- Роман Клименко
(35, 13, 'Кросфіт', '2025-06-03 08:00:00', 60, 8, 'Зал №1', 'Scheduled'),         -- Михайло Ткаченко
(36, 14, 'Кросфіт', '2025-06-11 09:00:00', 90, 8, 'Зал №1', 'Scheduled'),         -- Віктор Гнатюк
(37, 1, 'Силові тренування', '2025-06-14 16:00:00', 60, 10, 'Зал №1', 'Scheduled'), -- Олександр Коваленко
(38, 2, 'Силові тренування', '2025-06-30 17:00:00', 90, 8, 'Зал №2', 'Scheduled'),  -- Дмитро Бондар
(39, 13, 'Кросфіт', '2025-06-15 10:00:00', 60, 8, 'Зал №2', 'Scheduled'),         -- Михайло Ткаченко
(40, 14, 'Кросфіт', '2025-06-25 09:00:00', 90, 8, 'Зал №1', 'Scheduled'),         -- Віктор Гнатюк
(41, 7, 'Бокс', '2025-06-19 15:00:00', 60, 6, 'Ринг', 'Scheduled'),               -- Іван Петренко
(42, 8, 'Бокс', '2025-06-21 17:00:00', 90, 6, 'Ринг', 'Scheduled'),               -- Сергій Остапенко
(43, 9, 'Фітнес-аеробіка', '2025-06-17 19:00:00', 45, 15, 'Танцювальний зал', 'Scheduled'), -- Юлія Мельник
(44, 11, 'Зумба', '2025-06-23 19:00:00', 45, 15, 'Танцювальний зал', 'Scheduled'), -- Катерина Кравець
(45, 12, 'Зумба', '2025-06-27 19:00:00', 45, 15, 'Танцювальний зал', 'Scheduled'); -- Роман Клиmenko