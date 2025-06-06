USE gym_company;

INSERT INTO Membership_Types (type_id, type_name, category, class_type, duration_days) VALUES
    (1, 'Monthly', 'Standard', 'Individual', 30),
    (2, 'Monthly', 'Standard', 'Group', 30),
    (3, 'Monthly', 'Student', 'Individual', 30),
    (4, 'Monthly', 'Student', 'Group', 30),
    (5, 'Quarterly', 'Standard', 'Individual', 90),
    (6, 'Quarterly', 'Family', 'Group', 90),
    (7, 'Yearly', 'Standard', 'Individual', 365),
    (8, 'Yearly', 'Family', 'Group', 365),
    (9, 'Trial', 'Standard', 'Group', 3),
    (10, 'Trial', 'Student', 'Group', 14),
    (11, 'Yearly', 'Student', 'Individual', 365);