-- Calculating the daily returns of each stock of interest and inserting into the database.


-- Using the raw stock data to calculate the daily return.
INSERT INTO daily_returns
-- Calculating daily return as ( close(today) / close(yesterday) ) - 1.
-- ie proportion by which the close price deviated from that of yesterday.
SELECT stock, date, close, close / LAG(close) OVER (PARTITION BY stock ORDER BY date) - 1 AS daily_return
FROM raw_daily_info;