-- Auto-generated: table creation v3832
-- Created for project optimization

CREATE TABLE IF NOT EXISTS table_creation_3832 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    is_active BOOLEAN DEFAULT TRUE,
    status VARCHAR(50) DEFAULT 'active',
    counter INTEGER DEFAULT 0,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_table_creation_3832_name
    ON table_creation_3832(name);

CREATE INDEX IF NOT EXISTS idx_table_creation_3832_created
    ON table_creation_3832(created_at DESC);

-- Seed data
INSERT INTO table_creation_3832 (name, email)
VALUES
    ('item_0', 'val_0_3832'),
    ('item_1', 'val_1_3832'),
    ('item_2', 'val_2_3832'),
    ('item_3', 'val_3_3832'),
    ('item_4', 'val_4_3832'),
    ('item_5', 'val_5_3832'),
    ('item_6', 'val_6_3832'),
    ('item_7', 'val_7_3832'),

-- View
CREATE OR REPLACE VIEW v_table_creation_3832_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM table_creation_3832
GROUP BY name
ORDER BY total DESC;
