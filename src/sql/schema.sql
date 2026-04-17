-- Auto-generated: schema — database schema definition v5033
-- Created for project optimization

CREATE TABLE IF NOT EXISTS schema_—_database_schema_definition_5033 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    status VARCHAR(50) DEFAULT 'active',
    counter INTEGER DEFAULT 0,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_5033_name
    ON schema_—_database_schema_definition_5033(name);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_5033_created
    ON schema_—_database_schema_definition_5033(created_at DESC);

-- Seed data
INSERT INTO schema_—_database_schema_definition_5033 (name, email)
VALUES
    ('item_0', 'val_0_5033'),
    ('item_1', 'val_1_5033'),
    ('item_2', 'val_2_5033'),
    ('item_3', 'val_3_5033'),
    ('item_4', 'val_4_5033'),
    ('item_5', 'val_5_5033'),
    ('item_6', 'val_6_5033'),
    ('item_7', 'val_7_5033'),

-- View
CREATE OR REPLACE VIEW v_schema_—_database_schema_definition_5033_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM schema_—_database_schema_definition_5033
GROUP BY name
ORDER BY total DESC;
