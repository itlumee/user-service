CREATE TABLE states
(
    code       INT NOT NULL PRIMARY KEY,
    name       VARCHAR,
    type       VARCHAR,
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT (NOW() at time zone 'utc'),
    updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT (NOW() at time zone 'utc')
);

CREATE TABLE districts
(
    code       INT NOT NULL PRIMARY KEY,
    name       VARCHAR,
    state_code INT REFERENCES states (code),
    short_name VARCHAR,
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT (NOW() at time zone 'utc'),
    updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT (NOW() at time zone 'utc')
);