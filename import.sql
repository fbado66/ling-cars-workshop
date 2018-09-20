DROP TABLE IF EXISTS lings CASCADE; 
CREATE TABLE lings (
  id SERIAL PRIMARY KEY,
  opening_statement TEXT,
  info_ling TEXT,
  closing_statement TEXT
);

DROP TABLE IF EXISTS users CASCADE; 
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username TEXT,
  password TEXT
  
);