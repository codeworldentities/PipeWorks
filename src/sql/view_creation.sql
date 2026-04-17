-- Auto-generated: view creation v8601
-- Created for project optimization

CREATE TABLE IF NOT EXISTS view_creation_8601 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    counter INTEGER DEFAULT 0,
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_view_creation_8601_name
    ON view_creation_8601(name);

CREATE INDEX IF NOT EXISTS idx_view_creation_8601_created
    ON view_creation_8601(created_at DESC);

-- Seed data
INSERT INTO view_creation_8601 (name, is_active)
VALUES
    ('item_0', 'val_0_8601'),
    ('item_1', 'val_1_8601'),
    ('item_2', 'val_2_8601'),
    ('item_3', 'val_3_8601'),
    ('item_4', 'val_4_8601'),
    ('item_5', 'val_5_8601'),
    ('item_6', 'val_6_8601'),
    ('item_7', 'val_7_8601'),

-- View
CREATE OR REPLACE VIEW v_view_creation_8601_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM view_creation_8601
GROUP BY name
ORDER BY total DESC;
