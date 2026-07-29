CREATE TABLE datatype (
    id SERIAL PRIMARY KEY,

    -- Integer Types
    small_number SMALLINT,
    normal_number INT,
    large_number BIGINT,

    -- Decimal Types
    salary DECIMAL(10,2),
    price NUMERIC(8,2),

    -- Floating Point Types
    temperature REAL,
    pi_value DOUBLE PRECISION,

    -- Character Types
    fixed_code CHAR(5),
    name VARCHAR(50),
    description TEXT,

    -- Boolean Type
    is_active BOOLEAN,

    -- Date & Time Types
    birth_date DATE,
    login_time TIME,
    created_at TIMESTAMP,
    last_login TIMESTAMPTZ,

    -- Interval Type
    subscription_duration INTERVAL
);

INSERT INTO datatype (
    small_number,
    normal_number,
    large_number,
    salary,
    price,
    temperature,
    pi_value,
    fixed_code,
    name,
    description,
    is_active,
    birth_date,
    login_time,
    created_at,
    last_login,
    subscription_duration
)
VALUES (
    32000,
    150000,
    9876543210123,
    55000.75,
    1299.99,
    36.5,
    3.141592653589793,
    'AB123',
    'Deep Pathak',
    'Learning PostgreSQL Data Types',
    TRUE,
    '2003-07-15',
    '14:30:45',
    '2026-07-02 14:30:45',
    '2026-07-02 14:30:45+05:30',
    INTERVAL '30 days'
);

SELECT * FROM datatype;