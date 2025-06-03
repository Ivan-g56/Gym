CREATE DATABASE IF NOT EXISTS gym_company;
USE gym_company;

-- Таблиця Клієнти
CREATE TABLE IF NOT EXISTS Clients (
    client_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20) NOT NULL,
    date_of_birth DATE,
    registration_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Таблиця Типи абонементів
CREATE TABLE IF NOT EXISTS Membership_Types (
    type_id INT PRIMARY KEY AUTO_INCREMENT,
    type_name ENUM('Monthly', 'Quarterly', 'Yearly', 'Trial') NOT NULL,
    category ENUM('Standard', 'Student', 'Family') NOT NULL DEFAULT 'Standard',
    class_type ENUM('Individual', 'Group') NOT NULL,
    duration_days INT NOT NULL
);

-- Таблиця Абонементи
CREATE TABLE IF NOT EXISTS Memberships (
    membership_id INT PRIMARY KEY AUTO_INCREMENT,
    client_id INT NOT NULL,
    type_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    status ENUM('Active', 'Expired', 'Cancelled') DEFAULT 'Active',
    FOREIGN KEY (client_id) REFERENCES Clients(client_id) ON DELETE CASCADE,
    FOREIGN KEY (type_id) REFERENCES Membership_Types(type_id) ON DELETE RESTRICT
);

-- Таблиця Тренери
CREATE TABLE IF NOT EXISTS Trainers (
    trainer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    specialization VARCHAR(100) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    hire_date DATE NOT NULL,
    status ENUM('Active', 'On Leave', 'Terminated') DEFAULT 'Active'
);

-- Таблиця Заняття
CREATE TABLE IF NOT EXISTS Classes (
    class_id INT PRIMARY KEY AUTO_INCREMENT,
    trainer_id INT NOT NULL,
    class_name VARCHAR(100) NOT NULL,
    schedule_time DATETIME NOT NULL,
    duration INT NOT NULL,
    max_capacity INT NOT NULL,
    location VARCHAR(100),
    status ENUM('Scheduled', 'Cancelled', 'Completed') DEFAULT 'Scheduled',
    FOREIGN KEY (trainer_id) REFERENCES Trainers(trainer_id) ON DELETE RESTRICT
);

-- Таблиця Реєстрація на заняття
CREATE TABLE IF NOT EXISTS Class_Registrations (
    registration_id INT PRIMARY KEY AUTO_INCREMENT,
    client_id INT NOT NULL,
    class_id INT NOT NULL,
    registration_date DATE NOT NULL,
    FOREIGN KEY (client_id) REFERENCES Clients(client_id) ON DELETE CASCADE,
    FOREIGN KEY (class_id) REFERENCES Classes(class_id) ON DELETE CASCADE,
    UNIQUE (client_id, class_id)
);

-- Таблиця Відвідування
CREATE TABLE IF NOT EXISTS Visits (
    visit_id INT PRIMARY KEY AUTO_INCREMENT,
    client_id INT NOT NULL,
    visit_date_time DATETIME NOT NULL,
    membership_id INT,
    class_id INT,
    FOREIGN KEY (client_id) REFERENCES Clients(client_id) ON DELETE CASCADE,
    FOREIGN KEY (membership_id) REFERENCES Memberships(membership_id) ON DELETE SET NULL,
    FOREIGN KEY (class_id) REFERENCES Classes(class_id) ON DELETE SET NULL
);

-- Таблиця Платежі
CREATE TABLE IF NOT EXISTS Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    client_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    payment_date DATE NOT NULL,
    payment_type VARCHAR(50) NOT NULL,
    membership_id INT,
    FOREIGN KEY (client_id) REFERENCES Clients(client_id) ON DELETE CASCADE,
    FOREIGN KEY (membership_id) REFERENCES Memberships(membership_id) ON DELETE SET NULL
);

