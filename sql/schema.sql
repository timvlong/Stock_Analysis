-- Creating the schema, ie blueprint of the database.


-- Deleting previous 'raw_daily_info' tables to ensure we replace data in our pipline and don't add to it.
DROP TABLE IF EXISTS raw_daily_info;
-- Creating a table to store the close prices and volume of the chosen stock each day.
CREATE TABLE raw_daily_info (
    stock TEXT,
    date DATE,
    -- Setting close prices as floats.
    close DOUBLE,
    -- Setting volume as a large integer, ie no decimals.
    volume BIGINT
);


-- Deleting previous 'daily_returns' tables.
DROP TABLE IF EXISTS daily_returns;
-- Creating a table to store the daily return of each stock.
CREATE TABLE daily_returns (
    stock TEXT,
    date DATE,
    close DOUBLE,
    daily_return DOUBLE
);
