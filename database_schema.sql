-- Table for storing user registration details
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table for storing login details
CREATE TABLE login_attempts (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  login_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Table for storing payment details
CREATE TABLE payments (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  payment_amount DECIMAL(10, 2) NOT NULL,
  payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Table for storing order details
CREATE TABLE orders (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  product_name VARCHAR(255) NOT NULL,
  quantity INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(id)
);
