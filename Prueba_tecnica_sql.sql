--This would create the table
CREATE TABLE WebsiteAnalytics (
    date DATE, 
    page_views INT, 
    conversions INT, 
    revenue DECIMAL(10, 2) -- Revenue with two decimals precission
);

--This would insert the data into the table in their respective columns
INSERT INTO WebsiteAnalytics (date, page_views, conversions, revenue) VALUES
('2025-03-01', 1200, 30, 450.50),
('2025-03-02', 980, 22, 375.75),
('2025-03-03', 1450, 40, 610.30),
('2025-03-04', 1100, 28, 500.20),
('2025-03-05', 890, 18, 320.90),
('2025-03-06', 1300, 35, 540.75),
('2025-03-07', 1500, 42, 620.80),
('2025-03-08', 1250, 33, 505.60),
('2025-03-09', 1100, 27, 470.25),
('2025-03-10', 1600, 50, 700.00);

--These is the querie to calculate the conversion rate, as we are using the page_views and conversions columns, we need to convert them to float to get the correct result multiplying by 100, then we divide the conversions by the page_views.
SELECT 
    date,
    (conversions * 100.0 / page_views) AS conversion_rate
FROM 
    WebsiteAnalytics;

--These is the querie to calculate the total revenue per day, we are multipying the revenue and conversions columns.
SELECT 
    date,
    (revenue * conversions) AS total_revenue_per_day --As revenue is already in decimal, we don't need to convert it to float.
FROM 
    WebsiteAnalytics;

--These is the querie to calculate the average revenue per conversion, we are using the revenue and conversions columns, we need to convert them to float to get the correct result multiplying by 100, then we divide the conversions by the page_views.
SELECT 
    date,
    (revenue * 100.0 / conversions) AS average_revenue_per_conversion
FROM 
    WebsiteAnalytics;

SELECT * FROM WebsiteAnalytics;