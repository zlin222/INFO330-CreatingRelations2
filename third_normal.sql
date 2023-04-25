
-- create temporary table for first third normal form
CREATE TABLE norm3_id_abilities_temp AS Select DISTINCT id, pokedex_number, 
abilities, name From pokemon_NF2;

-- set the first third normal form, let id and abilities be primary key
CREATE TABLE norm3_id_abilities (
id INT,
pokedex_number INT,
abilities TEXT,
name TEXT,
primary key(id, abilities));

-- insert the value into form
INSERT INTO norm3_id_abilities SELECT * FROM norm3_id_abilities_temp;

-- create temporary table for second third normal form
CREATE TABLE norm3_name_1_temp AS Select DISTINCT name, generation, 
type1, type2, classfication From pokemon_NF2;

-- set the second third normal form, let name be primary key
CREATE TABLE norm3_name_1 (
name TEXT,
generation TEXT,
type1 TEXT,
type2 TEXT,
classfication TEXT,
primary key(name));

-- insert the value into form
INSERT INTO norm3_name_1
SELECT * FROM norm3_name_1_temp;

-- create temporary table for third third normal form
CREATE TABLE norm3_name_2_temp AS Select DISTINCT name,
percentage_male, weight_kg, height_m From pokemon_NF2;

-- set the third third normal form, let name be primary key
CREATE TABLE norm3_name_2 (
name TEXT,
percentage_male INT,
weight_kg INT,
height_m TEXT,
primary key(name));

-- insert the value into form
INSERT INTO norm3_name_2 SELECT * FROM norm3_name_2_temp;

-- create temporary table for fourth third normal form
CREATE TABLE norm3_name_3_temp AS Select DISTINCT name,
hp, attack, defense, sp_attack, sp_defense,
speed, base_total From pokemon_NF2;

-- set the third third normal form, let name be primary key
CREATE TABLE norm3_name_3 (
name TEXT,
hp TEXT,
attack TEXT,
defense TEXT,
sp_attack TEXT,
sp_defense TEXT,
speed TEXT,
base_total TEXT,
primary key(name));

-- insert the value into form
INSERT INTO norm3_name_3 SELECT * FROM norm3_name_3_temp;

-- create temporary table for fifth third normal form
CREATE TABLE norm3_generation_temp AS Select DISTINCT name,
generation, base_egg_steps, 
base_happiness, capture_rate,
experience_growth, is_legendary From pokemon_NF2;

-- set the fifth third normal form, let name be primary key
CREATE TABLE norm3_generation (
name TEXT,
generation TEXT,
base_egg_steps TEXT,
base_happiness TEXT,
capture_rate TEXT,
experience_growth TEXT,
is_legendary TEXT,
primary key(name, generation));

-- insert the value into form
INSERT INTO norm3_generation SELECT * FROM norm3_generation_temp;


-- create temporary table for sixth third normal form
CREATE TABLE norm3_types_temp AS Select DISTINCT type1,
type2 From pokemon_NF2;

-- set the sixth third normal form, let type1 and type2 be primary key
CREATE TABLE norm3_types (
type1 TEXT,
type2 TEXT,
primary key(type1, type2));

-- insert the value into form
INSERT INTO norm3_types SELECT * FROM norm3_types_temp;


-- create temporary table for seventh third normal form
CREATE TABLE norm3_types_aga_temp AS Select DISTINCT type1,
type2, against_bug, against_dark, against_dragon,
against_electric, against_fairy, against_fight, 
against_fire, against_flying, against_ghost, against_grass, 
against_ground, against_ice, against_normal, against_poison, 
against_psychic, against_rock, against_steel, against_water From pokemon_NF2;

-- set the sixth third normal form, let type1 and type2 be primary key
CREATE TABLE norm3_types_aga (
type1 TEXT,
type2 TEXT,
against_bug TEXT, against_dark TEXT,
against_dragon TEXT, against_electric TEXT, against_fairy TEXT,
against_fight TEXT, against_fire TEXT, against_flying TEXT, 
against_ghost TEXT, against_grass TEXT, against_ground TEXT, 
against_ice TEXT, against_normal TEXT, against_poison TEXT, 
against_psychic TEXT, against_rock TEXT, against_steel TEXT, 
against_water TEXT,
primary key(type1, type2));

-- insert the value into form
INSERT INTO norm3_types_aga SELECT * FROM norm3_types_aga_temp;

-- drop the previous temporary table
drop table norm3_generation_temp;
drop table norm3_id_abilities_temp;
drop table norm3_name_1_temp;
drop table norm3_name_2_temp;
drop table norm3_name_3_temp;
drop table norm3_types_aga_temp;
drop table norm3_types_temp;
drop table pokemon_2NF;
drop table pokemon_NF2;












