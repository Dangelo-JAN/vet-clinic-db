/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id int primary key
    name varchar(100)
    date_of_birth date
    escape_attempts int
    neutered bit
    weight_kg decimal
);
