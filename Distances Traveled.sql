-- Link:- https://platform.stratascratch.com/coding/10324-distances-traveled?code_type=3

SELECT u.id, u.name, SUM(r.distance) AS total_distance
FROM lyft_users AS u
JOIN lyft_rides_log AS r ON u.id = r.user_id
GROUP BY u.id, u.name
ORDER BY total_distance DESC
LIMIT 10;