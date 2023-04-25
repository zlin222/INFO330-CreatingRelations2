
-- import all pokemon data to sqlite database
.open pokemon1.sqlite
.mode csv
.import pokemon.csv imported_pokemon_data

-- create a temporary table to help split in following steps
CREATE TABLE temp_pokemon (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    abilities TEXT,
    nextabilities TEXT);

-- select abilities filling in temporary table   
INSERT INTO temp_pokemon (abilities)
SELECT abilities FROM imported_pokemon_data;

-- create a new table ab which contain data after split abilities
CREATE TABLE ab AS WITH split(id, abilities, nextabilities) AS (
select id, '' AS abilities, abilities||',' AS abilities 
from temp_pokemon union all select id, 
substr(nextabilities, 0, instr(nextabilities, ',')) 
AS abilities, substr(nextabilities, instr(nextabilities, ',')+1) 
AS nextabilities 
from split 
where nextabilities !='') 
select id, abilities 
from split 
where abilities !='' 
order by id;

-- left join the split column back to the initial pokemon table
CREATE TABLE NF_pokemon AS 
SELECT * FROM ab 
LEFT JOIN imported_pokemon_data ON ab.id=imported_pokemon_data.pokedex_number;

-- remove other things around abilities
UPDATE NF_pokemon SET abilities = replace(replace(replace(abilities,'[',''),']',''),' ','');
UPDATE NF_pokemon SET abilities = replace(replace(abilities,'''',''),'''','');

-- drop unnecessary column
ALTER TABLE NF_pokemon
DROP COLUMN 'abilities:1';

-- drop the previous temporary table
drop table ab;
drop table temp_pokemon;
drop table imported_pokemon_data;