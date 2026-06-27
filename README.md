# Pharmacy Dashboard API

## Project Description

A backend-focused pharmacy management system designed for administrative use.  
It manages medicines, categories, manufacturers, and inventory with secure authentication and scalable architecture.

---

## Goal

To build a scalable backend system using PostgreSQL and NestJS, demonstrating real-world architecture, authentication, and database design principles.

---

---

## Database Schema

The system currently includes the following core entities:

- users (admin authentication)
- medicine_categories
- manufacturers
- medicines
- inventory

---

## Features (Planned)

- Admin authentication (2-step login + TOTP)
- Medicine management (CRUD)
- Category management
- Manufacturer management
- Inventory tracking
- Role-based access control (RBAC)
- Audit logging

---

## Database

The database is designed with relational integrity using foreign keys:

- medicines → medicine_categories
- medicines → manufacturers
- inventory → medicines

All seed data is located in:

database/
├── schema.sql
├── seed.sql
└── README.md

---

## Roadmap

### Phase 1 – Foundation (Completed)
- Database design (PostgreSQL 18)
- ER diagram
- Seed data
- System documentation

### Phase 2 – Backend Core (Planned)
- NestJS project setup
- Authentication system (2-step login + TOTP)
- User management API

### Phase 3 – Business Logic (Planned)
- Medicines CRUD API
- Inventory management API

### Phase 4 – Enterprise Features (Planned)
- Role-based access control (RBAC)
- Audit logging
- Reporting dashboard

---

## Project Structure


pharmacy-dashboard-api/
│
├── database/
│ ├── schema.sql
│ ├── seed.sql
│ └── README.md
│
├── docs/
│ ├── requirements.md
│ ├── database-design.md
│ ├── api-plan.md
│ └── er-diagram.png
│
└── README.md


---

## Notes

- This project currently focuses on database design and system architecture.
- Backend implementation will be built using NestJS in the next phase.
- All sample data is for development purposes only.

---
