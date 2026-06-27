 =========================
 USERS (Admin)
 =========================
INSERT INTO users (username, password_hash, phone, is_active)
VALUES 
('admin', 'hashed_password_here', '+4915112345678', true);

 =========================
 MEDICINE CATEGORIES
 =========================
INSERT INTO medicine_categories (name, description)
VALUES 
('Antibiotics', 'Medicines used to treat bacterial infections'),
('Painkillers', 'Medicines for pain relief'),
('Vitamins', 'Dietary supplements and vitamins'),
('Antiseptics', 'Used for disinfection and cleaning wounds');

 =========================
 MANUFACTURERS
 =========================
INSERT INTO manufacturers  (name, country, city, website, email, phone, address, is_active)
VALUES 
('Pfizer', 'USA', 'New York', 'https://www.pfizer.com', 'info@pfizer.com', '+1-212-733-2323', '235 E 42nd St, New York, NY', true),
('Bayer', 'Germany', 'Leverkusen', 'https://www.bayer.com', 'info@bayer.com', '+49-214-30-1', 'Kaiser-Wilhelm-Allee, Leverkusen', true),
('Novartis', 'Switzerland', 'Basel', 'https://www.novartis.com', 'info@novartis.com', '+41-61-324-1111', 'Fabrikstrasse 2, Basel', true);

 =========================
 MEDICINES
 =========================
INSERT INTO medicines 
(category_id, manufacturer_id, name, generic_name, barcode, price, description, is_active)
VALUES
(1, 1, 'Amoxicillin 500mg', 'Amoxicillin', 'AMX500001', 12.50, 'Antibiotic for bacterial infections', true),
(2, 2, 'Ibuprofen 400mg', 'Ibuprofen', 'IBU400001', 8.99, 'Pain relief and anti-inflammatory', true),
(3, 3, 'Vitamin C 1000mg', 'Ascorbic Acid', 'VITC1000', 6.50, 'Immune system support', true),
(4, 2, 'Betadine Solution', 'Povidone Iodine', 'BETADINE01', 5.25, 'Antiseptic solution for wounds', true);

 =========================
 INVENTORY
 =========================
INSERT INTO inventory (medicine_id, quantity, minimum_stock)
values
(
    (SELECT id FROM medicines WHERE barcode = 'AMX500001'),
    100,
    20
),
(
    (SELECT id FROM medicines WHERE barcode = 'IBU400001'),
    150,
    30
),
(
    (SELECT id FROM medicines WHERE barcode = 'VITC1000'),
    200,
    50
),
(
    (SELECT id FROM medicines WHERE barcode = 'BETADINE01'),
    80,
    15
);
