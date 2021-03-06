-- TEST DATA
-- USERS
INSERT INTO user (id, login, first_name, email, password_hash, activated, image_url) VALUES (1, 'admin', 'administrador', 'admin@porras.es', '$2a$11$b8zILFych1k7ge3cCnzrEepHA7LOHNAk.x2iG9zd/8K0vypCJ5ODC',  1, 'gilfoyle-small.jpg');
INSERT INTO user (id, login, first_name, email, password_hash, activated, image_url) VALUES (2, 'judge', 'juez', 'judge@porras.es', '$2a$11$b8zILFych1k7ge3cCnzrEepHA7LOHNAk.x2iG9zd/8K0vypCJ5ODC',           1, '70f0a92752c232df98c2616b1d6b0248.jpg');
INSERT INTO user (id, login, first_name, email, password_hash, activated, image_url) VALUES (3, 'user', 'ususario', 'user@porras.es', '$2a$11$b8zILFych1k7ge3cCnzrEepHA7LOHNAk.x2iG9zd/8K0vypCJ5ODC',         1, 'dinesh.jpg');
INSERT INTO user (id, login, first_name, email, password_hash, activated, image_url) VALUES (4, 'porras', 'porrero', 'porra@porras.es', '$2a$11$b8zILFych1k7ge3cCnzrEepHA7LOHNAk.x2iG9zd/8K0vypCJ5ODC',       1, 'gilfoyle-small.jpg');
INSERT INTO user (id, login, first_name, last_name, email, password_hash, activated, image_url) VALUES (5, 'dani',    'Daniel'    , 'Ortiz', 'dani@porras.es', '$2a$11$b8zILFych1k7ge3cCnzrEepHA7LOHNAk.x2iG9zd/8K0vypCJ5ODC',           1, 'dani.png');
INSERT INTO user (id, login, first_name, last_name, email, password_hash, activated, image_url) VALUES (6, 'riesco',  'Héctor'    , 'Riesco','riesco@porras.es', '$2a$11$b8zILFych1k7ge3cCnzrEepHA7LOHNAk.x2iG9zd/8K0vypCJ5ODC',       1, 'riesco.png');
INSERT INTO user (id, login, first_name, last_name, email, password_hash, activated, image_url) VALUES (7, 'malagon', 'Héctor'    , 'Malagon', 'malagon@porras.es', '$2a$11$b8zILFych1k7ge3cCnzrEepHA7LOHNAk.x2iG9zd/8K0vypCJ5ODC',     1, 'malagon.png');
INSERT INTO user (id, login, first_name, last_name, email, password_hash, activated, image_url) VALUES (8, 'pepe'   , 'Jose Miguel','Maldonado', 'pepe@porras.es', '$2a$11$b8zILFych1k7ge3cCnzrEepHA7LOHNAk.x2iG9zd/8K0vypCJ5ODC',             1, 'pep.png');

-- ROLES
INSERT INTO role (name) VALUES ('ROLE_ADMIN');
INSERT INTO role (name) VALUES ('ROLE_USER');
INSERT INTO role (name) VALUES ('ROLE_JUDGE');
INSERT INTO role (name) VALUES ('ROLE_ANONYMOUS');

-- USER_ROLE
INSERT INTO user_role (id_user, role_name) VALUES (1, 'ROLE_ADMIN');
INSERT INTO user_role (id_user, role_name) VALUES (2, 'ROLE_JUDGE');
INSERT INTO user_role (id_user, role_name) VALUES (3, 'ROLE_USER');
INSERT INTO user_role (id_user, role_name) VALUES (4, 'ROLE_ANONYMOUS');
INSERT INTO user_role (id_user, role_name) VALUES (5, 'ROLE_USER');
INSERT INTO user_role (id_user, role_name) VALUES (6, 'ROLE_USER');
INSERT INTO user_role (id_user, role_name) VALUES (7, 'ROLE_USER');
INSERT INTO user_role (id_user, role_name) VALUES (8, 'ROLE_USER');

-- USER_FIENDS
INSERT INTO user_friend (user_id, friend_id, active) VALUES (5, 7, 1);
INSERT INTO user_friend (user_id, friend_id, active) VALUES (5, 6, 1);
INSERT INTO user_friend (user_id, friend_id, active) VALUES (5, 8, 1);
INSERT INTO user_friend (user_id, friend_id, active) VALUES (6, 7, 1);
INSERT INTO user_friend (user_id, friend_id, active) VALUES (6, 5, 1);
INSERT INTO user_friend (user_id, friend_id, active) VALUES (6, 8, 1);
INSERT INTO user_friend (user_id, friend_id, active) VALUES (7, 6, 1);
INSERT INTO user_friend (user_id, friend_id, active) VALUES (7, 8, 1);
INSERT INTO user_friend (user_id, friend_id, active) VALUES (7, 5, 1);
INSERT INTO user_friend (user_id, friend_id, active) VALUES (8, 5, 1);
INSERT INTO user_friend (user_id, friend_id, active) VALUES (8, 6, 1);
INSERT INTO user_friend (user_id, friend_id, active) VALUES (8, 7, 1);

-- PORRAS
INSERT INTO porra (id, equipo_local, equipo_visitante, image_url, title, creator_id, type, winner_bet, finish_time, created_time, min_bet, description) VALUES (1, 'Madrid', 'Barsa', 'madrid.png', 'madrid-barsa', 1, 'MATCH', 'riesco',                                 '2017-06-20 22:19:33.925', '2017-06-04 22:19:33.925', 5, 'Esto es una prueba de la descripción de una porra..........');
INSERT INTO porra (id, equipo_local, equipo_visitante, image_url, title, creator_id, type, winner_bet, finish_time, created_time, min_bet, description) VALUES (2, 'Atlético de Madrid', 'Sevilla', 'atletico.png', 'Atlético de Madrid - Sevilla', 1, 'MATCH', 'null', '2017-06-20 22:19:33.925', '2017-06-2 22:19:33.925',  5, 'Esto es una prueba de la descripción de una porra..........');
INSERT INTO porra (id, equipo_local, equipo_visitante, image_url, title, creator_id, type, winner_bet, finish_time, created_time, min_bet, description) VALUES (3, 'Barcelona', 'Valencia', 'barsa.png', 'Barcelona - Valencia C.F.',     3, 'MATCH', 'null',          '2017-06-20 22:19:33.925', '2017-06-7 22:19:33.925',  5, 'Esto es una prueba de la descripción de una porra..........');
INSERT INTO porra (id, equipo_local, equipo_visitante, image_url, title, creator_id, type, winner_bet, finish_time, created_time, min_bet, description) VALUES (4, 'Deportivo', 'Celta de Vigo', 'deportivo.png', 'Deportivo - Celta de Vigo',     2, 'MATCH', 'null',    '2017-06-20 22:19:33.925', '2017-06-3 22:19:33.925',  5, 'Esto es una prueba de la descripción de una porra..........');
INSERT INTO porra (id, equipo_local, equipo_visitante, image_url, title, creator_id, type, winner_bet, finish_time, created_time, min_bet, description) VALUES (5, 'null', 'null', 'beer-icon.png', 'Equipos que descienden',        3, 'POSSIBLES', 'null',          '2017-06-20 22:19:33.925', '2016-11-8 22:19:33.925',  5, 'Esto es una prueba de la descripción de una porra..........');
INSERT INTO porra (id, equipo_local, equipo_visitante, image_url, title, creator_id, type, winner_bet, finish_time, created_time, min_bet, description) VALUES (6, 'null', 'null', 'beer-icon.png', 'Próximo entrenador despedido',  4, 'POSSIBLES', 'null',          '2017-06-20 22:19:33.925', '2016-06-20 22:19:33.925', 4, 'Esto es una prueba de la descripción de una porra..........');
INSERT INTO porra (id, equipo_local, equipo_visitante, image_url, title, creator_id, type, winner_bet, finish_time, created_time, min_bet, description) VALUES (7, 'null', 'null', 'beer-icon.png', '¿Quién gana euromierdón?',      5, 'OPEN', 'null',               '2017-06-20 22:19:33.925', '2017-06-20 22:19:33.925', 4, 'Esto es una prueba de la descripción de una porra..........');
INSERT INTO porra (id, equipo_local, equipo_visitante, image_url, title, creator_id, type, winner_bet, finish_time, created_time, min_bet, description) VALUES (8, 'null', 'null', 'beer-icon.png', 'Ganará o no el madrid?',       6, 'POSSIBLES', 'null',           '2017-06-20 22:19:33.925', '2017-06-20 22:19:33.925', 4, 'Esto es una prueba de la descripción de una porra..........');

-- POSSIBLE_BETS
INSERT INTO possible_bet (id, porra_id, bet) VALUES (1, 8, 'pierde');
INSERT INTO possible_bet (id, porra_id, bet) VALUES (2, 8, 'gana');
INSERT INTO possible_bet (id, porra_id, bet) VALUES (3, 8, 'empate');
INSERT INTO possible_bet (id, porra_id, bet) VALUES (4, 5, 'valencia');
INSERT INTO possible_bet (id, porra_id, bet) VALUES (5, 5, 'sporting gijón');
INSERT INTO possible_bet (id, porra_id, bet) VALUES (6, 5, 'osasuna');
INSERT INTO possible_bet (id, porra_id, bet) VALUES (7, 5, 'celta');
INSERT INTO possible_bet (id, porra_id, bet) VALUES (8, 6, 'simeone');
INSERT INTO possible_bet (id, porra_id, bet) VALUES (9, 6, 'zidane');

-- USER_PORRAS
INSERT INTO user_porra (user_id, porra_id, bet, possible_bet_id, winned, paid, paid_time, bet_amount) VALUES (3, 1, 'betString', null, 0, 0, null, 5);
INSERT INTO user_porra (user_id, porra_id, bet, possible_bet_id, winned, paid, paid_time, bet_amount) VALUES (6, 1, 'betString', null, 0, 1, null, 5);
INSERT INTO user_porra (user_id, porra_id, bet, possible_bet_id, winned, paid, paid_time, bet_amount) VALUES (3, 2, 'betString', null, 0, 0, null, 5);
INSERT INTO user_porra (user_id, porra_id, bet, possible_bet_id, winned, paid, paid_time, bet_amount) VALUES (3, 3, 'betString', null, 1, 1, null, 5);
INSERT INTO user_porra (user_id, porra_id, bet, possible_bet_id, winned, paid, paid_time, bet_amount) VALUES (1, 1, 'betString', null, 0, 0, null, 5);
INSERT INTO user_porra (user_id, porra_id, bet, possible_bet_id, winned, paid, paid_time, bet_amount) VALUES (3, 6, null, 8, 0, 0, null, 6);
INSERT INTO user_porra (user_id, porra_id, bet, possible_bet_id, winned, paid, paid_time, bet_amount) VALUES (3, 8, null, 1, 0, 0, null, 6);
INSERT INTO user_porra (user_id, porra_id, bet, possible_bet_id, winned, paid, paid_time, bet_amount) VALUES (3, 4, 'betString', null, 0, 0, null, 8);
INSERT INTO user_porra (user_id, porra_id, bet, possible_bet_id, winned, paid, paid_time, bet_amount) VALUES (3, 5, null, 5, 0, 0, null, 9);
INSERT INTO user_porra (user_id, porra_id, bet, possible_bet_id, winned, paid, paid_time, bet_amount) VALUES (5, 5, null, 5, 0, 0, null, 9);
INSERT INTO user_porra (user_id, porra_id, bet, possible_bet_id, winned, paid, paid_time, bet_amount) VALUES (6, 5, null, 5, 0, 0, null, 6);
INSERT INTO user_porra (user_id, porra_id, bet, possible_bet_id, winned, paid, paid_time, bet_amount) VALUES (7, 5, null, 5, 0, 0, null, 6);
INSERT INTO user_porra (user_id, porra_id, bet, possible_bet_id, winned, paid, paid_time, bet_amount) VALUES (8, 5, null, 5, 0, 0, null, 6);
INSERT INTO user_porra (user_id, porra_id, bet, possible_bet_id, winned, paid, paid_time, bet_amount) VALUES (4, 5, null, 5, 0, 0, null, 6);
