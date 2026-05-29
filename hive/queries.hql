USE project;

-- Query 1: HTTP Status Code Breakdown
SELECT status, COUNT(*) AS count,
  ROUND(COUNT(*) * 100.0 / 61, 2) AS percentage
FROM logs
GROUP BY status
ORDER BY count DESC;

-- Query 2: Top 5 Most Accessed Endpoints
SELECT endpoint, COUNT(*) AS hits
FROM logs
WHERE status = 200
GROUP BY endpoint
ORDER BY hits DESC
LIMIT 5;

-- Query 3: Average Temperature per Location
SELECT location,
  ROUND(AVG(temperature), 2) AS avg_temp,
  ROUND(MAX(temperature), 2) AS max_temp,
  ROUND(MIN(temperature), 2) AS min_temp
FROM sensors
WHERE sensor_id != 'sensor_id'
GROUP BY location
ORDER BY avg_temp DESC;

-- Query 4: Overheating Alerts (above 40 degrees)
SELECT sensor_id, ts, temperature, location
FROM sensors
WHERE temperature > 40
ORDER BY temperature DESC;

-- Query 5: Total Social Posts Count
SELECT COUNT(*) AS total_posts FROM social;

-- Query 6: Average Sensor Temperature Overall
SELECT ROUND(AVG(temperature), 2) AS overall_avg_temp
FROM sensors
WHERE sensor_id != 'sensor_id';