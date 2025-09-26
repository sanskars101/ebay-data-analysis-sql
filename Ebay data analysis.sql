-- Create Database
CREATE DATABASE ebay1;
USE ebay1;

-- Create Users Table
CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    Password VARCHAR(100),
    Phone VARCHAR(20),
    Address VARCHAR(150),
    City VARCHAR(50),
    Country VARCHAR(50),
    RegistrationDate DATE
);

-- Insert 20 Rows
INSERT INTO Users (FirstName, LastName, Email, Password, Phone, Address, City, Country, RegistrationDate) VALUES
('Ali', 'Khan', 'ali.khan@example.com', 'pass123', '03001234567', 'Street 12, Model Town', 'Lahore', 'Pakistan', '2023-01-15'),
('Sara', 'Ahmed', 'sara.ahmed@example.com', 'secure456', '03011234568', 'House 45, Gulshan', 'Karachi', 'Pakistan', '2023-02-10'),
('John', 'Smith', 'john.smith@example.com', 'john789', '03021234569', '12 Park Avenue', 'New York', 'USA', '2023-03-05'),
('Maria', 'Lopez', 'maria.lopez@example.com', 'maria321', '03031234560', 'Main Street 22', 'Madrid', 'Spain', '2023-04-12'),
('David', 'Brown', 'david.brown@example.com', 'david654', '03041234561', 'Baker Street 221B', 'London', 'UK', '2023-05-18'),
('Fatima', 'Sheikh', 'fatima.sheikh@example.com', 'fatima852', '03051234562', 'Street 8, Iqbal Town', 'Lahore', 'Pakistan', '2023-06-25'),
('Michael', 'Johnson', 'michael.j@example.com', 'mike741', '03061234563', 'Downtown Plaza', 'Chicago', 'USA', '2023-07-03'),
('Ayesha', 'Malik', 'ayesha.malik@example.com', 'ayesha963', '03071234564', 'Canal Road', 'Faisalabad', 'Pakistan', '2023-08-11'),
('Robert', 'Williams', 'robert.w@example.com', 'rob159', '03081234565', 'Elm Street 10', 'Toronto', 'Canada', '2023-09-09'),
('Emily', 'Taylor', 'emily.t@example.com', 'emily753', '03091234566', 'King Street 77', 'Sydney', 'Australia', '2023-10-21'),
('Usman', 'Raza', 'usman.raza@example.com', 'usman258', '03101234567', 'Defence Phase 5', 'Karachi', 'Pakistan', '2023-11-01'),
('Sophia', 'Martinez', 'sophia.m@example.com', 'sophia369', '03111234568', 'Sunset Blvd', 'Los Angeles', 'USA', '2023-11-15'),
('Amir', 'Hussain', 'amir.h@example.com', 'amir147', '03121234569', 'Street 55, Saddar', 'Rawalpindi', 'Pakistan', '2023-11-20'),
('Olivia', 'Clark', 'olivia.c@example.com', 'olivia951', '03131234560', 'Greenwood Ave', 'Melbourne', 'Australia', '2023-12-05'),
('Hassan', 'Ali', 'hassan.ali@example.com', 'hassan357', '03141234561', 'Shahrah-e-Faisal', 'Karachi', 'Pakistan', '2023-12-18'),
('William', 'Jones', 'will.jones@example.com', 'will258', '03151234562', 'George Street 5', 'London', 'UK', '2024-01-02'),
('Noor', 'Fatima', 'noor.f@example.com', 'noor654', '03161234563', 'Iqbal Road 33', 'Lahore', 'Pakistan', '2024-01-12'),
('James', 'Davis', 'james.d@example.com', 'james852', '03171234564', 'Main Square', 'Paris', 'France', '2024-02-01'),
('Khadija', 'Yousaf', 'khadija.y@example.com', 'khadija456', '03181234565', 'Street 99', 'Multan', 'Pakistan', '2024-02-18'),
('Daniel', 'Miller', 'daniel.m@example.com', 'daniel123', '03191234566', 'Broadway 12', 'New York', 'USA', '2024-03-01');

-- Create Products Table
CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT, -- Seller ID (linked with Users table)
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Description TEXT,
    Price DECIMAL(10,2),
    Quantity INT,
    ListingDate DATE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Insert 20 Rows
INSERT INTO Products (UserID, ProductName, Category, Description, Price, Quantity, ListingDate) VALUES
(1, 'iPhone 14 Pro', 'Electronics', 'Latest Apple iPhone 14 Pro 256GB', 1350.00, 5, '2023-02-20'),
(2, 'Samsung Galaxy S23', 'Electronics', 'Samsung flagship smartphone', 1200.00, 3, '2023-03-01'),
(3, 'Nike Air Max Shoes', 'Fashion', 'Men’s running shoes, size 42', 150.00, 10, '2023-03-10'),
(4, 'Wooden Dining Table', 'Home & Furniture', '6-seater dining table set', 750.00, 2, '2023-03-15'),
(5, 'Sony WH-1000XM4 Headphones', 'Electronics', 'Noise-cancelling wireless headphones', 300.00, 8, '2023-03-20'),
(6, 'Dell XPS 13 Laptop', 'Computers', '13-inch ultrabook with Intel i7', 1400.00, 4, '2023-04-01'),
(7, 'Canon EOS 90D Camera', 'Electronics', 'Professional DSLR camera', 1100.00, 3, '2023-04-05'),
(8, 'Adidas T-Shirt', 'Fashion', 'Original Adidas cotton T-shirt', 40.00, 20, '2023-04-12'),
(9, 'Samsung 55" Smart TV', 'Electronics', '4K Ultra HD Smart LED TV', 900.00, 6, '2023-04-15'),
(10, 'Leather Office Chair', 'Home & Furniture', 'Ergonomic leather chair', 250.00, 7, '2023-04-18'),
(11, 'Rolex Submariner Watch', 'Fashion', 'Luxury wristwatch for men', 9500.00, 1, '2023-05-01'),
(12, 'HP LaserJet Printer', 'Computers', 'All-in-one laser printer', 350.00, 5, '2023-05-08'),
(13, 'Kitchen Blender', 'Home & Kitchen', 'Multi-speed blender machine', 70.00, 12, '2023-05-12'),
(14, 'Oppo Reno 8', 'Electronics', 'Latest Oppo smartphone', 600.00, 9, '2023-05-18'),
(15, 'PlayStation 5 Console', 'Gaming', 'Sony PS5 with 2 controllers', 800.00, 4, '2023-05-22'),
(16, 'Apple MacBook Air M2', 'Computers', '13-inch laptop with Apple M2 chip', 1450.00, 3, '2023-06-01'),
(17, 'Gucci Handbag', 'Fashion', 'Designer handbag for women', 2200.00, 2, '2023-06-08'),
(18, 'Gaming Keyboard RGB', 'Computers', 'Mechanical keyboard with RGB lights', 120.00, 15, '2023-06-15'),
(19, 'Philips Air Fryer', 'Home & Kitchen', 'Healthy oil-free cooking air fryer', 180.00, 6, '2023-06-20'),
(20, 'Mountain Bike', 'Sports', '21-speed mountain bicycle', 500.00, 5, '2023-07-01');

-- Create Orders Table
CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,         -- Buyer ID (from Users table)
    ProductID INT,      -- Purchased Product (from Products table)
    Quantity INT,
    TotalAmount DECIMAL(10,2),
    OrderDate DATE,
    Status VARCHAR(20), -- Pending, Shipped, Delivered, Cancelled
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Insert 20 Rows
INSERT INTO Orders (UserID, ProductID, Quantity, TotalAmount, OrderDate, Status) VALUES
(2, 1, 1, 1350.00, '2023-03-05', 'Delivered'),
(3, 2, 1, 1200.00, '2023-03-10', 'Shipped'),
(4, 3, 2, 300.00, '2023-03-12', 'Delivered'),
(5, 4, 1, 750.00, '2023-03-18', 'Pending'),
(6, 5, 1, 300.00, '2023-03-22', 'Delivered'),
(7, 6, 1, 1400.00, '2023-03-25', 'Shipped'),
(8, 7, 1, 1100.00, '2023-04-02', 'Delivered'),
(9, 8, 3, 120.00, '2023-04-08', 'Delivered'),
(10, 9, 1, 900.00, '2023-04-12', 'Cancelled'),
(11, 10, 2, 500.00, '2023-04-18', 'Delivered'),
(12, 11, 1, 9500.00, '2023-05-05', 'Shipped'),
(13, 12, 1, 350.00, '2023-05-09', 'Delivered'),
(14, 13, 2, 140.00, '2023-05-15', 'Delivered'),
(15, 14, 1, 600.00, '2023-05-19', 'Pending'),
(16, 15, 1, 800.00, '2023-05-23', 'Shipped'),
(17, 16, 1, 1450.00, '2023-06-03', 'Delivered'),
(18, 17, 1, 2200.00, '2023-06-10', 'Delivered'),
(19, 18, 2, 240.00, '2023-06-17', 'Delivered'),
(20, 19, 1, 180.00, '2023-06-21', 'Cancelled'),
(1, 20, 1, 500.00, '2023-07-05', 'Delivered');

-- Create Payments Table
CREATE TABLE Payments (
    PaymentID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,              -- Linked with Orders table
    UserID INT,               -- Buyer who paid
    Amount DECIMAL(10,2),
    PaymentMethod VARCHAR(30), -- e.g., Credit Card, PayPal, Bank Transfer
    PaymentDate DATE,
    Status VARCHAR(20),       -- Paid, Failed, Refunded
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Insert 20 Rows
INSERT INTO Payments (OrderID, UserID, Amount, PaymentMethod, PaymentDate, Status) VALUES
(1, 2, 1350.00, 'Credit Card', '2023-03-05', 'Paid'),
(2, 3, 1200.00, 'PayPal', '2023-03-10', 'Paid'),
(3, 4, 300.00, 'Bank Transfer', '2023-03-12', 'Paid'),
(4, 5, 750.00, 'Credit Card', '2023-03-18', 'Pending'),
(5, 6, 300.00, 'PayPal', '2023-03-22', 'Paid'),
(6, 7, 1400.00, 'Credit Card', '2023-03-25', 'Paid'),
(7, 8, 1100.00, 'Bank Transfer', '2023-04-02', 'Paid'),
(8, 9, 120.00, 'PayPal', '2023-04-08', 'Paid'),
(9, 10, 900.00, 'Credit Card', '2023-04-12', 'Failed'),
(10, 11, 500.00, 'PayPal', '2023-04-18', 'Paid'),
(11, 12, 9500.00, 'Credit Card', '2023-05-05', 'Paid'),
(12, 13, 350.00, 'Bank Transfer', '2023-05-09', 'Paid'),
(13, 14, 140.00, 'PayPal', '2023-05-15', 'Paid'),
(14, 15, 600.00, 'Credit Card', '2023-05-19', 'Pending'),
(15, 16, 800.00, 'PayPal', '2023-05-23', 'Paid'),
(16, 17, 1450.00, 'Credit Card', '2023-06-03', 'Paid'),
(17, 18, 2200.00, 'Bank Transfer', '2023-06-10', 'Paid'),
(18, 19, 240.00, 'PayPal', '2023-06-17', 'Paid'),
(19, 20, 180.00, 'Credit Card', '2023-06-21', 'Refunded'),
(20, 1, 500.00, 'PayPal', '2023-07-05', 'Paid');

-- Create Feedback Table
CREATE TABLE Feedback (
    FeedbackID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,           -- Related order
    UserID INT,            -- Buyer who gave feedback
    ProductID INT,         -- Product being reviewed
    Rating INT CHECK (Rating BETWEEN 1 AND 5),
    Comment TEXT,
    FeedbackDate DATE,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Insert 20 Rows
INSERT INTO Feedback (OrderID, UserID, ProductID, Rating, Comment, FeedbackDate) VALUES
(1, 2, 1, 5, 'Excellent product, very satisfied!', '2023-03-07'),
(2, 3, 2, 4, 'Great phone, but delivery was slow.', '2023-03-12'),
(3, 4, 3, 5, 'Shoes are very comfortable!', '2023-03-15'),
(4, 5, 4, 3, 'Table quality is good but packaging was poor.', '2023-03-20'),
(5, 6, 5, 5, 'Amazing sound quality!', '2023-03-24'),
(6, 7, 6, 4, 'Laptop works great, battery could be better.', '2023-03-28'),
(7, 8, 7, 5, 'Camera is fantastic, very happy!', '2023-04-04'),
(8, 9, 8, 4, 'Shirt is good, size is slightly small.', '2023-04-10'),
(9, 10, 9, 2, 'TV stopped working after 2 weeks.', '2023-04-15'),
(10, 11, 10, 5, 'Very comfortable office chair.', '2023-04-20'),
(11, 12, 11, 5, 'Luxury watch, worth the price.', '2023-05-07'),
(12, 13, 12, 4, 'Printer is good but a bit noisy.', '2023-05-10'),
(13, 14, 13, 5, 'Blender is excellent, works perfectly.', '2023-05-16'),
(14, 15, 14, 4, 'Phone is good but battery drains fast.', '2023-05-20'),
(15, 16, 15, 5, 'PS5 is awesome, totally satisfied.', '2023-05-25'),
(16, 17, 16, 5, 'MacBook Air is super fast!', '2023-06-05'),
(17, 18, 17, 5, 'Handbag is stylish and original.', '2023-06-12'),
(18, 19, 18, 4, 'Keyboard looks cool, keys are a bit noisy.', '2023-06-18'),
(19, 20, 19, 3, 'Air fryer works fine but capacity is small.', '2023-06-22'),
(20, 1, 20, 5, 'Bike quality is superb, smooth ride.', '2023-07-07');


show tables;

#1. Show only unique products categories 
select distinct(category)
from Products;


#2. Show product IDs, comments, and ratings for feedback with rating 4 or higher.
select ProductID, Comment, Rating
from feedback
where rating >=4;

#3. Find User IDs, payment method, and status for all Paid PayPal payments.
select UserId , PaymentMethod, status
from payments
where PaymentMethod = 'Paypal' and Status = 'Paid';

#4. Get the total number of users in the system.
select count(UserID)
from users;

#5. Get the total number of users in the system.
select * 
from products
order By price Desc
Limit 5;

#6. List each distinct product category with the total quantity available
select distinct(category) as cat , sum(quantity) as total_quantity
from products
group  by cat;

#7. Show all orders placed in May 2023
select * 
from orders
where orderdate between '2023-05-01' and '2023-05-31';

#8. Show all users who live in Pakistan, USA, or UK
select * 
from users
where country in ('Pakistan','USA' ,'UK');

#9.Find the total revenue generated in each month (from the Orders table), and show the results in descending order of revenue
select sum(totalAmount) as total_rev, date_format(orderdate,'%m') as month
from orders
group by month
order by total_rev desc;

#10. Find the percentage of orders in each Status (Delivered, Pending, Shipped, Cancelled) compared to total orders.
select * from orders;
select status , count(*) as total_orders,
round((count(*) * 100.0 /
(select count(*) from orders)),2)
as percentage 
from orders 
group by status;

#11. Find the total revenue (SUM of TotalAmount) from all orders placed between '2023-05-01' and '2023-06-30', and also count how many orders were placed in this period.
select sum(totalAmount) as total_rev, count(*) as total_count
from orders
where orderdate between '2023-05-01' and '2023-06-30';

#12. Find the products that are more expensive than the average product price.
select productname , price from products 
where price >
(select avg(price) as avg_price
from products);

#13. Find the users who have placed at least one order with an amount greater than 1000.
select u.userid , u.firstname, u.lastname , u.email
from users u join orders as o 
on u.UserID = o.UserID
where totalamount > 1000;

#14. Find all products whose price is higher than the average price of products in the same category.
select productname, category , price from products p  where price >
(select avg(price)from products
where category = p.category);

#15. Show all orders along with the buyer's name, product name, and order status
select o.orderid , concat(u.firstname,' ',u.lastname)  as buyer_name , p.productname,
o.status from orders as o
inner join users as u on o.UserID = u.UserID
inner join products p on o.ProductID = p.ProductID;

#16. List all users who have purchased products and the total amount they spent
select u.userid , concat(u.firstname,' ',u.lastname) as user_name , 
sum(o.totalamount) as total_spent  from users u 
inner join orders o on u.userid = o.userid
group by u.userid , concat(u.firstname,' ',u.lastname)
order by total_spent desc;

#17. Show all products along with the average rating they received (if any).
select p.productid , p.productname , p.category,
avg(f.rating) as average_rating
from products p left join 
feedback f on p.productid = f.ProductID
group by p.productid , p.productname , p.category
order by average_rating;

#18. Display all payments along with the buyer's name, order date, and product name for payments that are “Paid”
select p.paymentid, p.status ,concat(u.firstname,' ',u.lastname) as user_name , o.orderdate , pp.productname 
from payments p inner join users u on 
p.userid = u.userid
inner join orders o on p.orderid = o.orderid
inner join products pp on o.productid = pp.productid
where p.status = 'Paid';