-- Auto-generated: table creation v4100
-- Created for project optimization

CREATE TABLE IF NOT EXISTS table_creation_4100 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    email VARCHAR(255),
    metadata JSONB,
    description TEXT,
    counter INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_table_creation_4100_name
    ON table_creation_4100(name);

CREATE INDEX IF NOT EXISTS idx_table_creation_4100_created
    ON table_creation_4100(created_at DESC);

-- Seed data
INSERT INTO table_creation_4100 (name, status)
VALUES
    ('item_0', 'val_0_4100'),
    ('item_1', 'val_1_4100'),
    ('item_2', 'val_2_4100'),
    ('item_3', 'val_3_4100'),
    ('item_4', 'val_4_4100'),
    ('item_5', 'val_5_4100'),
    ('item_6', 'val_6_4100'),
    ('item_7', 'val_7_4100'),

-- View
CREATE OR REPLACE VIEW v_table_creation_4100_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM table_creation_4100
GROUP BY name
ORDER BY total DESC;
