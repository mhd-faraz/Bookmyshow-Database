CREATE DATABASE IF NOT EXISTS bookmyshow_db;
USE bookmyshow_db;

CREATE TABLE theatre (
  theatre_id INT PRIMARY KEY AUTO_INCREMENT,
  theatre_name VARCHAR(100) NOT NULL,
  city VARCHAR(50) NOT NULL,
  address VARCHAR(255) NOT NULL,
  phone VARCHAR(20),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE movie (
  movie_id INT PRIMARY KEY AUTO_INCREMENT,
  movie_name VARCHAR(150) NOT NULL UNIQUE,
  language VARCHAR(50) NOT NULL,
  format VARCHAR(50),
  genre VARCHAR(50),
  duration_minutes INT,
  release_date DATE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE screen (
  screen_id INT PRIMARY KEY AUTO_INCREMENT,
  theatre_id INT NOT NULL,
  screen_number VARCHAR(50) NOT NULL,
  capacity INT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (theatre_id) REFERENCES theatre(theatre_id) ON DELETE CASCADE
);

CREATE TABLE show_timing (
  show_id INT PRIMARY KEY AUTO_INCREMENT,
  movie_id INT NOT NULL,
  theatre_id INT NOT NULL,
  screen_id INT NOT NULL,
  show_date DATE NOT NULL,
  show_time TIME NOT NULL,
  price DECIMAL(8,2) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (movie_id) REFERENCES movie(movie_id) ON DELETE CASCADE,
  FOREIGN KEY (theatre_id) REFERENCES theatre(theatre_id) ON DELETE CASCADE,
  FOREIGN KEY (screen_id) REFERENCES screen(screen_id) ON DELETE CASCADE,
  UNIQUE KEY unique_show (movie_id, theatre_id, screen_id, show_date, show_time)
);
