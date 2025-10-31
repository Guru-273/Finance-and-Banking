create table customers(
    customer_id INT  Primary key Auto _ increment,
    name varchar(100),
    email varchar(100),
    phone_No varchar(100),
    Adderess varchar(100)
    );

INSERT INTO Customers (name, email, phone, address)
VALUES
('Ravi Kumar', 'ravi.kumar@example.com', '9876543210', 'Hyderabad, India'),
('Priya Sharma', 'priya.sharma@example.com', '9123456780', 'Mumbai, India'),
('Amit Patel', 'amit.patel@example.com', '9988776655', 'Delhi, India'),
('Sneha Reddy', 'sneha.reddy@example.com', '9998877665', 'Chennai, India'),
('Rahul Mehta', 'rahul.mehta@example.com', '9765432109', 'Pune, India'),
('Neha Gupta', 'neha.gupta@example.com', '9890011223', 'Kolkata, India'),
('Arjun Singh', 'arjun.singh@example.com', '9123456712', 'Bengaluru, India'),
('Kavya Iyer', 'kavya.iyer@example.com', '9543217890', 'Coimbatore, India'),
('Vikram Das', 'vikram.das@example.com', '9012345678', 'Bhubaneswar, India'),
('Anjali Verma', 'anjali.verma@example.com', '9823456701', 'Jaipur, India');


CREATE TABLE Accounts (
    account_id INT PRIMARY KEY,
    customer_id INT,
    account_type VARCHAR(50),
    balance DECIMAL(12,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);


INSERT INTO Accounts (customer_id, account_type, balance)
VALUES
(1, 'Savings', 7500.50),
(2, 'Current', 15000.00),
(3, 'Savings', 9200.75),
(4, 'Fixed Deposit', 50000.00),
(5, 'Savings', 4300.25),
(6, 'Current', 18000.00),
(7, 'Savings', 12000.00),
(8, 'Current', 9500.50),
(9, 'Savings', 6700.00),
(10, 'Fixed Deposit', 25000.00);

CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    transaction_type VARCHAR(50),
    amount DECIMAL(12,2),
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
);

INSERT INTO Transactions (account_id, transaction_type, amount)
VALUES
(1, 'Deposit', 2000.00),
(1, 'Withdrawal', 500.00),
(2, 'Deposit', 3000.00),
(2, 'Withdrawal', 1000.00),
(3, 'Deposit', 2500.00),
(3, 'Withdrawal', 700.00),
(4, 'Deposit', 10000.00),
(5, 'Withdrawal', 400.00),
(6, 'Deposit', 5000.00),
(6, 'Withdrawal', 1500.00),
(7, 'Deposit', 2200.00),
(8, 'Withdrawal', 800.00),
(9, 'Deposit', 900.00),
(9, 'Withdrawal', 300.00),
(10, 'Deposit', 6000.00),
(10, 'Withdrawal', 2000.00);

    
