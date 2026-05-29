# Building a Big Data Pipeline with Hadoop and Hive

## Project Overview

This project demonstrates the implementation of a complete Big Data Analytics Pipeline using Apache Hadoop and Apache Hive in a Dockerized environment.

The system processes multiple heterogeneous datasets including:

- Web server logs
- IoT sensor readings
- Social media records

The datasets are stored in HDFS and analyzed using HiveQL queries through Apache Hive.

The project demonstrates:

- Distributed storage using HDFS
- Hive-based analytical querying
- Multi-format data handling
- Dockerized Hadoop ecosystem
- Enterprise-style big data workflows

---

## Dataset

Sample datasets are included inside the `data/` folder for demonstration purposes.

---

# Tech Stack

| Technology | Purpose |
|---|---|
| Apache Hadoop | Distributed storage and processing |
| HDFS | Distributed file system |
| Apache Hive | SQL-based analytics |
| HiveQL | Query language |
| Docker | Containerized deployment |
| Docker Compose | Multi-container orchestration |
| PostgreSQL | Hive Metastore database |
| Power BI | Data visualization |

---

# Architecture

```text
                 +----------------------+
                 |    Data Sources      |
                 +----------------------+
                 | Web Logs             |
                 | IoT Sensors          |
                 | Social Media Data    |
                 +----------+-----------+
                            |
                            v
                 +----------------------+
                 |        HDFS          |
                 | Distributed Storage  |
                 +----------+-----------+
                            |
                            v
                 +----------------------+
                 |     Apache Hive      |
                 | Hive External Tables |
                 +----------+-----------+
                            |
        ---------------------------------------------
        |                    |                     |
        v                    v                     v
  Web Analytics      Sensor Analytics     Social Analytics
                            |
                            v
                 +----------------------+
                 | Business Insights    |
                 +----------------------+
```

---

# Project Structure

```text
project/
├── data/
├── docs/
├── hive/
├── screenshots/
├── scripts/
├── docker-compose.yml
├── hadoop.env
├── README.md
└── .gitignore
```

---

# Commands to Run

## Start Docker Containers

```bash
docker-compose up -d
```

## Verify Containers

```bash
docker ps
```

## Access NameNode Container

```bash
docker exec -it namenode bash
```

## Create HDFS Directories

```bash
hdfs dfs -mkdir -p /data/raw/logs
hdfs dfs -mkdir -p /data/raw/sensors
hdfs dfs -mkdir -p /data/raw/social
```

## Upload Files to HDFS

```bash
hdfs dfs -put access.log /data/raw/logs/
hdfs dfs -put temperature.csv /data/raw/sensors/
hdfs dfs -put posts.json /data/raw/social/
```

## Open Hive Beeline

```bash
beeline -u jdbc:hive2://localhost:10000
```

## Run Hive Setup Script

```bash
beeline -u jdbc:hive2://localhost:10000 -f hive/setup.hql
```

## Execute Queries

```bash
beeline -u jdbc:hive2://localhost:10000 -f hive/queries.hql
```

---

# Features

- Distributed data storage using HDFS
- HiveQL-based analytics
- Multi-format dataset support
- Web traffic analysis
- IoT sensor monitoring
- Social media engagement analytics
- Dockerized deployment
- Fault-tolerant architecture
- Scalable data pipeline

---

# Learning Outcomes

Through this project, the following concepts were learned:

- Hadoop ecosystem architecture
- HDFS distributed storage
- Hive external table creation
- HiveQL analytics
- Docker-based deployment
- Big data pipeline design
- Query execution using Hive
- Handling structured and semi-structured datasets
- Distributed analytics workflows

---

# Future Enhancements

- Apache Spark integration
- Kafka real-time streaming
- Cloud deployment on AWS EMR
- Real-time dashboards
- ML-based anomaly detection
- Airflow workflow automation

---

# Author

Athul Raj  
B.Tech Computer Science and Engineering  
JAIN (Deemed-to-be University)
