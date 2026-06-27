# Pharmacy Dashboard API

## Project Description

A backend-focused pharmacy management system designed for administrative use.  
It manages medicines, categories, manufacturers, and inventory with secure authentication and scalable architecture.

---

## Goal

To build a scalable backend system using PostgreSQL and NestJS, demonstrating real-world architecture, authentication, and database design principles.

---

## Tech Stack

- PostgreSQL 18
- NestJS (initialized)
- Prisma (planned)

---

## Project Structure
pharmacy-dashboard-api/
│
├── backend/ # NestJS application (in progress)
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

## Backend (NestJS)

The backend project has been initialized using NestJS.

Next steps:
- Configure environment variables
- Connect PostgreSQL database
- Implement authentication module
- Setup Prisma ORM (optional)
- Create first REST APIs

---

## Database Design

Relational structure:

- medicine_categories → medicines
- manufacturers → medicines
- medicines → inventory

All schema definitions and seed data are located in `/database`.

---

## Roadmap

### Phase 1 – Foundation (Completed)
- Database design (PostgreSQL 18)
- ER diagram
- Seed data
- System documentation

### Phase 2 – Backend Core (In Progress)
- NestJS setup
- PostgreSQL connection
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

## Notes

- Backend is currently under development.
- Database layer is fully designed and seeded.
- Project follows modular and scalable architecture principles.
