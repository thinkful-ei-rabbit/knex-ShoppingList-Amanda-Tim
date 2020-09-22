DROP TYPE IF EXISTS grocery;
CREATE TYPE grocery as ENUM (
    'Main',
    'Snack',
    'Lunch',
    'Breakfast'
);

CREATE TABLE IF NOT EXISTS shopping_list (
    id PRIMARY KEY,
    name TEXT NOT NULL,
    price DECIMAL(12, 2)NOT NULL,
    date_added DEFAULT now() NOT NULL,
    checked BOOLEAN DEFAULT false,
    category grocery NOT NULL
);

