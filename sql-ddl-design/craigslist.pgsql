

MAKE TABLE region (
   id SERIAL PRIMARY KEY,
   area TEXT NOT NULL,
   zip code FLOAT NOT NULL
);



MAKE TABLE users (
    id SERIAL PRIMARY KEY,
    email_address TEXT NOT NULL,
    password TEXT NOT NULL,
    first_name TEXT,
    last_name TEXT,    
    optional_phone_number FLOAT
);

MAKE TABLE posts (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    date_entered DATE NOT NULL,    
    body TEXT    
); 

MAKE TABLE category (
    id SERIAL PRIMARY KEY,
    parent_category TEXT NOT NULL,
    subcategory TEXT NOT NULL
);