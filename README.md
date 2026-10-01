# CEID_Database_Project_2021-2022
Relational database design, EER modeling, stored procedures, triggers, and analytical SQL queries for a VoD platform (CEID, University of Patras).
A relational database system modeling a Video-on-Demand (VoD) streaming platform, developed using **MySQL Workbench** as part of the Databases Laboratory at the Department of Computer Engineering & Informatics (CEID), University of Patras.
Project Overview
The system models the operational and analytical workflows of a digital media subscription and rental platform (similar to Netflix / Prime Video). It manages media catalogs, customer accounts, rental transactions, streaming activity logs, and pricing rules.

Key Capabilities
- Relational Data Modeling:Conceptual and logical database design, normalized to 3NF/BCNF to eliminate redundancies and safeguard data integrity.
- Relational Constraints:Enforced primary keys, composite keys, foreign keys with appropriate `CASCADE` / `RESTRICT` actions, and domain constraints.
- Programmability & Automation:Implemented **Stored Procedures** for rental transactions and account operations, alongside Triggers for automated log updates and state integrity.
- Αnalytical Querying:SQL queries evaluating top-performing content, customer lifetime value, rental trends, and revenue metrics.

Database Architecture & EER Diagram
The Enhanced Entity-Relationship (EER) diagram provides a complete architectural overview of entities, attributes, primary/foreign keys, and relational cardinalities:

Tech Stack
- RDBMS: MySQL 8.x
- Development & Modeling:MySQL Workbench
- Languages: SQL, MySQL Procedural Extensions
