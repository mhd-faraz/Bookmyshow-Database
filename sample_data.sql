INSERT INTO theatre (theatre_name, city, address, phone) VALUES
('PVR Nexus', 'Delhi', 'Nexus Mall, Delhi', '9876543210'),
('IMAX Cinepolis', 'Noida', 'Sector 15, Noida', '9876543211'),
('Cinepolis Orbits', 'Gurgaon', 'Orbits Mall, Gurgaon', '9876543212');

INSERT INTO movie (movie_name, language, format, genre, duration_minutes, release_date) VALUES
('Dasara', 'Telugu', '2D', 'Action', 145, '2023-03-30'),
('Kisi Ka Bhai Kisi Ki Jaan', 'Hindi', '2D', 'Comedy/Action', 163, '2023-04-21'),
('Tu Jhoothi Main Makkaar', 'Hindi', '2D', 'Comedy/Romance', 145, '2023-07-14'),
('Avatar: The Way of Water', 'English', '3D', 'Sci-Fi', 192, '2022-12-16');

INSERT INTO screen (theatre_id, screen_number, capacity) VALUES
(1, 'Screen 1', 150),
(1, 'Screen 2', 200),
(2, 'Screen A', 180),
(3, 'Screen X', 220);

INSERT INTO show_timing (movie_id, theatre_id, screen_id, show_date, show_time, price) VALUES
(1, 1, 1, '2024-06-25', '12:15:00', 250),
(2, 1, 1, '2024-06-25', '15:30:00', 280),
(2, 1, 2, '2024-06-25', '13:10:00', 280),
(2, 1, 2, '2024-06-25', '16:20:00', 300),
(2, 1, 2, '2024-06-25', '19:30:00', 350),
(3, 1, 2, '2024-06-25', '19:15:00', 320),
(4, 1, 1, '2024-06-25', '13:00:00', 400),
(1, 2, 3, '2024-06-26', '14:00:00', 220),
(3, 3, 4, '2024-06-26', '15:45:00', 300);
