# run-monash-database
Relational database project for the Run Monash carnival system, featuring schema design, data population, advanced SQL queries, transaction handling, and JSON/MongoDB integration.
## Overview
The Run Monash carnival system manages competitors, events, teams, and charities across multiple carnivals.  
This project demonstrates my ability to:
- Design and implement missing schema tables with constraints.
- Populate the database with realistic test data.
- Apply DML operations with proper transaction handling.
- Modify the live database structure while preserving integrity.
- Write complex SQL queries for reporting.
- Integrate relational data with JSON and MongoDB.

---

## Features
- **Schema Design (DDL):** Implemented Competitor, Entry, and Team tables with keys, constraints, and comments.  
- **Data Population:** Inserted realistic test data for 15+ competitors, 30+ entries, and 5+ teams, ensuring valid scenarios.  
- **DML & Transactions:** Created sequences, handled inserts/updates/deletes with transaction safety.  
- **Database Modifications:** Added new attributes and a charity allocation table with percentage constraints.  
- **Advanced SQL Queries:** Developed reporting queries (e.g., most popular team names, event records, carnival statistics).  
- **JSON & MongoDB:** Generated JSON documents from Oracle and inserted them into MongoDB for querying.  

---

## Project Deliverables
This repository includes:
- `T1-rm-schema.sql` → Schema creation (DDL).  
- `T2-rm-insert.sql` → Data population with sample competitors, entries, and teams.  
- `T3-rm-dm.sql` → Data manipulation and transactions.  
- `T4-rm-mods.sql` → Database modifications (new attributes/tables).  
- `T5-rm-select.sql` → SQL queries for reports.  
- `T6-rm-json.sql` → JSON data generation in Oracle SQL.  
- `T6-rm-mongo.mongodb.js` → MongoDB integration for team documents.  
- `FIT2094_Assignment2_Brief.pdf` → Project brief.  

---

## Results
- Built and tested a complete Oracle database with enforced constraints.  
- Successfully populated with realistic test data, covering edge cases.  
- Transaction-safe updates and modifications ensured consistency.  
- JSON and MongoDB outputs demonstrated integration with non-relational models.  

---

## Author
**Nashmia Shakeel**  
