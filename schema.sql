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

/* 4th. pt. project */

CREATE TABLE species (
    id serial,
    name name,
    age integer,
    date_of_graduation date,
    CONSTRAINT vets_pkey PRIMARY KEY (id),
);

CREATE TABLE specializations (
    species_id integer,
    vet_id integer,
    CONSTRAINT specializations_pkey PRIMARY KEY (species_id, vets_id),
    CONSTRAINT species_fkey FOREIGN KEY (species_id),
    CONSTRAINT vets_fkey FOREIGN KEY (vets_id),
);

CREATE TABLE visits (
    animal_id integer,
    vet_id integer,
    date_of_visit date NOT NULL,
    CONSTRAINT visits_pkey PRIMARY KEY (animal_id, vet_id, date_of_visit),
    CONSTRAINT animals_fkey FOREIGN KEY (animal_id),
    CONSTRAINT vets_fkey FOREIGN KEY (vet_id),
);
