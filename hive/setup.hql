CREATE DATABASE IF NOT EXISTS project;
USE project;

-- Logs table
CREATE EXTERNAL TABLE IF NOT EXISTS logs (
  ip STRING,
  datetime STRING,
  method STRING,
  endpoint STRING,
  protocol STRING,
  status INT,
  size INT
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.RegexSerDe'
WITH SERDEPROPERTIES (
  "input.regex" = "^(\\S+) \\S+ \\S+ \\[([^\\]]+)\\] \"(\\S+) (\\S+) (\\S+)\" (\\d+) (\\d+).*"
)
STORED AS TEXTFILE
LOCATION '/data/raw/logs/';

-- Sensors table
CREATE EXTERNAL TABLE IF NOT EXISTS sensors (
  sensor_id STRING,
  ts STRING,
  temperature FLOAT,
  humidity FLOAT,
  location STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/data/raw/sensors/'
TBLPROPERTIES ("skip.header.line.count"="1");

-- Social table
CREATE EXTERNAL TABLE IF NOT EXISTS social (
  raw STRING
)
STORED AS TEXTFILE
LOCATION '/data/raw/social/';