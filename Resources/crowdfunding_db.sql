CREATE TABLE category (
    category_id VARCHAR(10) PRIMARY KEY,
    category VARCHAR(255) NOT NULL
);

SELECT * FROM category;

CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategory VARCHAR(255) NOT NULL
);

SELECT * FROM subcategory;

CREATE TABLE contacts (
    contact_id INTEGER PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

SELECT * FROM contacts;

CREATE TABLE campaign (
    cf_id VARCHAR(10) PRIMARY KEY,
    contact_id INTEGER,
    company_name VARCHAR(255),
    description TEXT,
    goal FLOAT,
    pledged FLOAT,
    outcome VARCHAR(255),
    backers_count INTEGER,
    country VARCHAR(255),
    currency VARCHAR(255),
    launch_date DATE,
    end_date DATE,
    category_id VARCHAR(10),
    subcategory_id VARCHAR(10),
    FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
    FOREIGN KEY (category_id) REFERENCES category (category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);

SELECT * FROM campaign;