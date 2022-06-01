/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name = 'mon';
SELECT name from animals WHERE 2016 > date > 2019;
SELECT name from animals WHERE escape_attempts < 3;
SELECT date_of_birth from animals WHERE name = 'Agumon' or name = 'Pikachu';
SELECT name, escape_attempts from animals WHERE weight_kg > 10.5;
SELECT * from animals WHERE neutered > 0;
SELECT * from animals WHERE name = 'Gabumon';
SELECT * from animals WHERE 10.4 <= weight_kg <= 17.3;

/*ADD a column and 2nd. pt. Queries*/

ALTER TABLE animals ADD species varchar(100);

BEGIN;

UPDATE animals SET species = 'Digimon' WHERE name = 'Agumon';
UPDATE animals SET species = 'Digimon' WHERE name = 'Gabumon';
UPDATE animals SET species = 'Digimon' WHERE name = 'Devimon';
UPDATE animals SET species = 'Digimon' WHERE name = 'Plantmon';
UPDATE animals SET species = 'Digimon' WHERE name = 'Angemon';
UPDATE animals SET species = 'Digimon' WHERE name = 'Boarmon';
UPDATE animals SET species = 'Pokemon' WHERE name = 'Pikachu';
UPDATE animals SET species = 'Pokemon' WHERE name = 'Charmander';
UPDATE animals SET species = 'Pokemon' WHERE name = 'Squirtle';
UPDATE animals SET species = 'Pokemon' WHERE name = 'Blossom';
UPDATE animals SET species = 'Pokemon' WHERE name = 'Ditto';

ROLLBACK;

BEGIN;

UPDATE animals SET species = 'Digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'Pokemon' WHERE species = NULL;

COMMIT;

BEGIN;

DELETE FROM animals;

ROLLBACK;

BEGIN;

DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT SP1;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO SAVEPOINT SP1;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;

COMMIT;

SELECT count(*) FROM animals;
SELECT count(*) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT name FROM animals WHERE (escape_attempts = (SELECT MAX (escape_attempts) FROM animals)) OR (escape_attempts = 1) OR (escape_attempts = 0);
SELECT MAX(weight_kg), MIN(weight_kg) FROM animals WHERE species = 'Digimon';
SELECT MAX(weight_kg), MIN(weight_kg) FROM animals WHERE species = 'Pokemon';
SELECT AVG(escape_attempts) FROM animals WHERE (species = 'Digimon') AND (date_of_birth BETWEEN '1990-01-01' AND '2000-01-01');
SELECT AVG(escape_attempts) FROM animals WHERE (species = 'Pokemon') AND (date_of_birth BETWEEN '1990-01-01' AND '2000-01-01');