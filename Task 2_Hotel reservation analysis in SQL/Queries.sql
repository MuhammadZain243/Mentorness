-- 1 
Select count(*) as  "Total_Number_of_Reservations"
From hotel_reservation.`hotel reservation dataset`;

-- 2
SELECT type_of_meal_plan as Popular_Meal_Plan, COUNT(*) AS Count
FROM hotel_reservation.`hotel reservation dataset`
GROUP BY type_of_meal_plan 
ORDER BY count DESC 
LIMIT 1;

-- 3
SELECT AVG(avg_price_per_room) AS Average_Price_Room
FROM hotel_reservation.`hotel reservation dataset`
WHERE no_of_children > 0;

-- 4
SELECT COUNT(*) AS Total_Reservations_At_2017
FROM hotel_reservation.`hotel reservation dataset`
WHERE STR_TO_DATE(arrival_date, '%d-%m-%Y') BETWEEN '2017-01-01' AND '2017-12-31';

-- 5
SELECT room_type_reserved AS Room_Type , COUNT(*) AS Count 
FROM hotel_reservation.`hotel reservation dataset`
GROUP BY room_type_reserved 
ORDER BY count DESC 
LIMIT 1;

-- 6
SELECT COUNT(*) AS Weeken_Rreservations 
FROM hotel_reservation.`hotel reservation dataset`
WHERE no_of_weekend_nights > 0;

-- 7
SELECT MAX(lead_time) AS Highest_Lead_Time, MIN(lead_time) AS Lowest_Lead_Time 
FROM hotel_reservation.`hotel reservation dataset`;


-- 8
SELECT market_segment_type, COUNT(*) AS Count 
FROM hotel_reservation.`hotel reservation dataset`
GROUP BY market_segment_type 
ORDER BY count DESC
LIMIT 1;

-- 9
SELECT COUNT(*) AS confirmed_reservations 
FROM hotel_reservation.`hotel reservation dataset`
WHERE booking_status = 'Confirmed';

-- 10
SELECT SUM(no_of_adults) AS Total_Adults, SUM(no_of_children) AS Total_Children 
FROM hotel_reservation.`hotel reservation dataset`;

-- 11
SELECT AVG(no_of_weekend_nights) AS Average_Weekend_Nights 
FROM hotel_reservation.`hotel reservation dataset`
WHERE no_of_children > 0;

-- 12
SELECT 
	YEAR(STR_TO_DATE(arrival_date, '%d-%m-%Y')) AS Year, MONTH(STR_TO_DATE(arrival_date, '%d-%m-%Y')) AS Month, 
    COUNT(*) AS Reservations_Count 
FROM hotel_reservation.`hotel reservation dataset`
GROUP BY YEAR(STR_TO_DATE(arrival_date, '%d-%m-%Y')), 
	MONTH(STR_TO_DATE(arrival_date, '%d-%m-%Y'))
ORDER BY Year, Month;


-- 13
SELECT room_type_reserved AS Room_Type, AVG(no_of_weekend_nights + no_of_week_nights) AS Average_Nights 
FROM hotel_reservation.`hotel reservation dataset`
GROUP BY room_type_reserved;

-- 14
SELECT room_type_reserved AS Room_Type, AVG(avg_price_per_room) AS Average_Price, COUNT(*) AS Count 
FROM hotel_reservation.`hotel reservation dataset`
WHERE no_of_children > 0 
GROUP BY room_type_reserved 
ORDER BY count DESC 
LIMIT 1;

-- 15
SELECT market_segment_type AS Market_Type, AVG(avg_price_per_room) AS Average_Price 
FROM hotel_reservation.`hotel reservation dataset`
GROUP BY market_segment_type 
ORDER BY average_price DESC 
LIMIT 1;
