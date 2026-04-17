-- Auto-generated: procedures — procedures v4502
-- Created for project optimization

CREATE TABLE IF NOT EXISTS procedures_—_procedures_4502 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    metadata JSONB,
    score DECIMAL(10,2),
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_4502_name
    ON procedures_—_procedures_4502(name);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_4502_created
    ON procedures_—_procedures_4502(created_at DESC);

-- Seed data
INSERT INTO procedures_—_procedures_4502 (name, metadata)
VALUES
    ('item_0', 'val_0_4502'),
    ('item_1', 'val_1_4502'),
    ('item_2', 'val_2_4502'),
    ('item_3', 'val_3_4502'),
    ('item_4', 'val_4_4502'),
    ('item_5', 'val_5_4502');

-- View
CREATE OR REPLACE VIEW v_procedures_—_procedures_4502_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM procedures_—_procedures_4502
GROUP BY name
ORDER BY total DESC;
