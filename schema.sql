/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id serial,
    name varchar(100),
    date_of_birth date,
    escape_attempts int,
    neutered booleam,
    weight_kg decimal,
    species_id serial,
    owner_id serial,
    CONSTRAINT animal_pkey PRIMARY KEY (id),
    CONSTRAINT owners_fkey FOREIGN KEY (owner_id),
    CONSTRAINT species_fkey FOREIGN KEY (species_id),
);

/* 3rd. pt. project */

CREATE TABLE owners (
    id serial,
    full_name varchar(100),
    age integer,
    CONSTRAINT owners_pkey PRIMARY KEY (id),
);

CREATE TABLE species (
    id serial,
    name varchar(100),
    CONSTRAINT species_pkey PRIMARY KEY (id),
);
