-- Auto-generated: migration script v4210
-- Created for project optimization

CREATE TABLE IF NOT EXISTS migration_script_4210 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    counter INTEGER DEFAULT 0,
    email VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_migration_script_4210_name
    ON migration_script_4210(name);

CREATE INDEX IF NOT EXISTS idx_migration_script_4210_created
    ON migration_script_4210(created_at DESC);

-- Seed data
INSERT INTO migration_script_4210 (name, status)
VALUES
    ('item_0', 'val_0_4210'),
    ('item_1', 'val_1_4210'),
    ('item_2', 'val_2_4210'),
    ('item_3', 'val_3_4210'),
    ('item_4', 'val_4_4210'),
    ('item_5', 'val_5_4210'),
    ('item_6', 'val_6_4210');

-- View
CREATE OR REPLACE VIEW v_migration_script_4210_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM migration_script_4210
GROUP BY name
ORDER BY total DESC;
