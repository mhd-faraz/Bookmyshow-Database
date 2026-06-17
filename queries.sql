-- P1 QUERY: Shows on Given Date at Given Theatre
SELECT 
  st.show_id,
  m.movie_name,
  m.language,
  m.format,
  m.duration_minutes,
  sc.screen_number,
  st.show_date,
  st.show_time,
  st.price,
  th.theatre_name
FROM show_timing st
INNER JOIN movie m ON st.movie_id = m.movie_id
INNER JOIN theatre th ON st.theatre_id = th.theatre_id
INNER JOIN screen sc ON st.screen_id = sc.screen_id
WHERE st.theatre_id = 1
  AND st.show_date = '2024-06-25'
ORDER BY st.show_time;

-- P2 QUERY: With Language Filter
SELECT 
  st.show_id,
  m.movie_name,
  m.language,
  m.format,
  m.duration_minutes,
  sc.screen_number,
  st.show_time,
  st.price,
  (sc.capacity) AS available_seats
FROM show_timing st
INNER JOIN movie m ON st.movie_id = m.movie_id
INNER JOIN theatre th ON st.theatre_id = th.theatre_id
INNER JOIN screen sc ON st.screen_id = sc.screen_id
WHERE st.theatre_id = 1
  AND st.show_date = '2024-06-25'
  AND m.language = 'Hindi'
ORDER BY st.show_time;

-- BONUS: All Movies on Date
SELECT DISTINCT 
  m.movie_id,
  m.movie_name,
  m.language,
  m.format
FROM show_timing st
INNER JOIN movie m ON st.movie_id = m.movie_id
WHERE st.show_date = '2024-06-25'
ORDER BY m.movie_name;

-- BONUS: Show Count
SELECT 
  m.movie_name,
  COUNT(st.show_id) AS total_shows
FROM show_timing st
INNER JOIN movie m ON st.movie_id = m.movie_id
WHERE st.show_date = '2024-06-25'
GROUP BY st.movie_id, m.movie_name;

-- BONUS: Price Analysis
SELECT 
  m.movie_name,
  MIN(st.price) AS lowest_price,
  MAX(st.price) AS highest_price,
  AVG(st.price) AS avg_price
FROM show_timing st
INNER JOIN movie m ON st.movie_id = m.movie_id
WHERE st.show_date = '2024-06-25'
GROUP BY st.movie_id, m.movie_name;
