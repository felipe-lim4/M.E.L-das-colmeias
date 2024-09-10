create database Dados;

use Dados;

create table colmeia(
	id int auto_increment primary key,
    nome varchar(50) not null,
    temperaturaAtual float not null,
    umidadeAtual float not null,
    ultimoUpdate datetime not null
);

create table historico(
    id int primary key auto_increment,
    idColmeia int not null,
	temperatura float not null,
    umidade float not null,
    horarioSensor datetime not null
);

INSERT INTO colmeia (nome, temperaturaAtual, umidadeAtual, ultimoUpdate) VALUES 
    ('Jataí', 29.0, 53.5, '2024-09-09 18:00:00'),
    ('Mandaçaia', 30.5, 55.0, '2024-09-09 08:00:00'),
    ('Irapuã', 28.0, 52.0, '2024-09-09 11:00:00'),
    ('Aruanã', 31.0, 58.0, '2024-09-09 14:00:00');



INSERT INTO historico (idColmeia, temperatura, umidade, horarioSensor) 
VALUES 
    (1, 30.0, 55.0, '2024-09-09 08:00:00'),
    (1, 31.5, 57.0, '2024-09-09 09:00:00'),
    (1, 32.0, 58.5, '2024-09-09 10:00:00'),
    (1, 32.8, 60.0, '2024-09-09 11:00:00'),
    (1, 33.2, 61.0, '2024-09-09 12:00:00'),
    (1, 33.0, 60.5, '2024-09-09 13:00:00'),
    (1, 32.5, 59.0, '2024-09-09 14:00:00'),
    (1, 31.0, 57.5, '2024-09-09 15:00:00'),
    (1, 30.2, 56.0, '2024-09-09 16:00:00'),
    (1, 29.5, 54.0, '2024-09-09 17:00:00'),
    (1, 29.0, 53.5, '2024-09-09 18:00:00');



select nome as 'Nome da Colméia', temperaturaAtual as 'Temperatura Atual', umidadeAtual as 'Umidade Atual', ultimoUpdate as 'Último update' from colmeia;
select temperatura as 'Temperatura', umidade as 'Umidade', horarioSensor as 'Horário do sensor' from historico;
