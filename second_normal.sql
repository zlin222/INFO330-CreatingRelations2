
-- create a temporary table with id and abilities are primary key
CREATE TABLE pokemon_2NF (
id INTEGER,
abilities TEXT,
PRIMARY KEY(id, abilities));

-- create distinct values of id and abilities in first normal form
CREATE TABLE pokemon_d AS Select DISTINCT id, abilities From NF_pokemon;

-- join the values id and abilities to the new table which make table have primary key id and abilities with other all distinct values
INSERT INTO pokemon_2NF (id, abilities)
SELECT id, abilities FROM pokemon_d;

-- select all distinct values from first normal form with distinct values
CREATE TABLE another_2NF AS SELECT * FROM NF_pokemon group by id, abilities;

-- creat new table contain all column in first normal form
CREATE TABLE pokemon_NF2 (
    id INTEGER, abilities TEXT, against_bug TEXT, against_dark TEXT,
    against_dragon TEXT, against_electric TEXT, against_fairy TEXT,
    against_fight TEXT, against_fire TEXT, against_flying TEXT, 
    against_ghost TEXT, against_grass TEXT, against_ground TEXT, 
    against_ice TEXT, against_normal TEXT, against_poison TEXT, 
    against_psychic TEXT, against_rock TEXT, against_steel TEXT, 
    against_water TEXT, attack TEXT, base_egg_steps TEXT,
    base_happiness TEXT, base_total TEXT, capture_rate TEXT, 
    classfication TEXT, defense TEXT, experience_growth TEXT, 
    height_m TEXT, hp TEXT, name TEXT, percentage_male TEXT,
    pokedex_number TEXT, sp_attack TEXT, sp_defense TEXT, 
    speed TEXT, type1 TEXT, type2 TEXT, weight_kg TEXT, 
    generation TEXT, is_legendary TEXT,
    PRIMARY KEY (id, abilities)
);

-- select all distinct values to this second normal form
INSERT INTO pokemon_NF2 SELECT * FROM another_2NF;

-- drop the previous temporary table
drop table another_2NF;
drop table NF_pokemon;
drop table pokemon_d;

