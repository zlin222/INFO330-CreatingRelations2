
-- create a new trainer table
CREATE TABLE trainer (
first_name VARCHAR(80) NOT NULL,
last_name VARCHAR(80) NOT NULL,
favorite_pokemon_types TEXT,
team_id INT);

-- insert the relevent values
INSERT INTO trainer VALUES 
('Ziyu','Lin','fire','1'),
('Ziyu','Lin','grass','1'),
('Justin','Dong','water','2'),
('Justin','Dong','bug','2'),
('Justin','Dong','poison','2'),
('Kaarina','Tulleau','dark','3'),
('Kaarina','Tulleau','ice','3'),
('Ted','Neward','flying','4'),
('Ted','Neward','ground','4'),
('Fan','Yang','electric','5'),
('Fan','Yang','fairy','5'),
('Fan','Yang','rock','5');

-- because of third normal form, create a team table
CREATE TABLE trainer_team (
team_id INT,
team_members TEXT);

-- insert values
INSERT INTO trainer_team VALUES 
('1','Bulbasaur'),
('1','Ivysaur'),
('1','Venusaur'),
('1','Charizard'),
('2','Kakuna'),
('2','Pidgey'),
('2','Ekans'),
('2','Arbok'),
('2','Raichu'),
('3','Rattata'),
('3','Meowth'),
('3','Abra'),
('3','Machop'),
('3','Diglett'),
('3','Oddish'),
('3','Golem'),
('3','Ponyta'),
('4','Hypno'),
('4','Seel'),
('4','Cubone'),
('5','Koffing'),
('5','Snorlax'),
('5','Mew'),
('5','Eevee'),
('5','Ditto'),
('5','Bayleef'),
('5','Natu');