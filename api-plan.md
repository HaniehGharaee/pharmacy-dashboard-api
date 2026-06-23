# API Plan

Authentication
POST   /auth/login
POST   /auth/verify-otp
POST   /auth/refresh
POST   /auth/logout

Users
GET    /users/profile
PUT    /users/profile

Categories
GET    /categories
GET    /categories/:id
POST   /categories
PUT    /categories/:id
DELETE /categories/:id

Manufacturers
GET    /manufacturers
GET    /manufacturers/:id
POST   /manufacturers
PUT    /manufacturers/:id
DELETE /manufacturers/:id

Medicines
GET    /medicines
GET    /medicines/:id
POST   /medicines
PUT    /medicines/:id
DELETE /medicines/:id

Inventory
GET    /inventory
POST   /inventory/increase
POST   /inventory/decrease
