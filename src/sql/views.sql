-- Auto-generated: views — views v5633
-- Created for project optimization

CREATE TABLE IF NOT EXISTS views_—_views_5633 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    status VARCHAR(50) DEFAULT 'active',
    score DECIMAL(10,2),
    description TEXT,
    email VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_views_—_views_5633_name
    ON views_—_views_5633(name);

CREATE INDEX IF NOT EXISTS idx_views_—_views_5633_created
    ON views_—_views_5633(created_at DESC);

-- Seed data
INSERT INTO views_—_views_5633 (name, is_active)
VALUES
    ('item_0', 'val_0_5633'),
    ('item_1', 'val_1_5633'),
    ('item_2', 'val_2_5633'),
    ('item_3', 'val_3_5633'),
    ('item_4', 'val_4_5633'),
    ('item_5', 'val_5_5633'),
    ('item_6', 'val_6_5633'),
    ('item_7', 'val_7_5633'),

-- View
CREATE OR REPLACE VIEW v_views_—_views_5633_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM views_—_views_5633
GROUP BY name
ORDER BY total DESC;
