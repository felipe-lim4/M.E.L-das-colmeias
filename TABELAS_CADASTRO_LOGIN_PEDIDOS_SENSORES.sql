CREATE DATABASE MEL;
USE MEL;

-- TABELA DE CADASTRO DE CLIENTES
CREATE TABLE cliente (
ID int primary key  auto_increment,
nome_completo varchar(80) not null,
nome_fantasia varchar (80) not null,
cpf char (14) not null,
cnpj char(18) not null,
dtNasc date not null,
email varchar (40) not null,
senha varchar (15) not null,
rua varchar (40) not null,
numero varchar (5) not null,
bairro varchar (30) not null, 
complemento varchar (30) not null,
cidade varchar (25) not null,
estado varchar (25) not null,
cep char (9) not null
);

INSERT INTO cliente values 
(default, 'Lucas Carvalho de Souza', 'Mel do Vale', '123.456.789-01', '12.345.678/0001-90', '1980-01-01', 'contato@meldovale.com.br', 'Mel1234Vale', 'Rua das Abelhas', '100', 'Jardim Apícola', 'Sala 5B', 'Campos dos Goytacazes', 'RJ', '28000-000'),
(default, 'Ana Beatriz Fernandes', 'Doce Nectar', '234.567.890-12', '23.456.789/0001-01', '1975-05-15', 'info@docenectar.com.br', 'Nectar75Doce', 'Avenida das Flores', '250', 'Centro', 'Loja 3', 'Ribeirão Preto', 'SP', '14000-000'),
(default, 'Eduardo Martins Oliveira', 'Mel São João', '345.678.901-23', '34.567.890/0001-12', '1985-09-23', 'contato@melsaojoao.com.br', 'SJoao1985Mel', 'Rua dos Polinizadores', '55', 'Vila Apicultora', 'Edifício Apiário', 'Belo Horizonte', 'MG', '30100-000');

SELECT nome_completo AS 'Nome Completo', nome_fantasia as 'Nome Fantasia da Empresa', cpf as 'CPF', dtNasc as 'Data de Nascimento', cnpj as 'CNPJ', email as 'E-Mail', senha as 'Senha', rua as 'Rua', numero as 'Número', bairro as 'Bairro', complemento as 'Complemento', cidade as 'Cidade', estado as 'Estado', cep as 'CEP'
FROM cliente;

-- SELECIONANDO EMAIL E SENHA (LOGIN)
SELECT email as 'LOGIN', senha as 'SENHA' from cliente; 

-- 	CRIANDO TABELA DE PEDIDOS
create table pedido(
idPedido int primary key auto_increment,
Quantidade_solicitada int,
Preco_unitario float,
valor_total float,
pagamento varchar (80),
constraint chkpagamento check (pagamento in ('cartao_debito', 'cartao_credito','boleto','transferencia'))
);
insert into pedido (quantidade_solicitada , preco_unitario , valor_total , pagamento) values
('10','25000','250000','boleto'),
('5','25000','125000','cartao_credito'),
('8','25000','200000','transferencia');

select
 Quantidade_solicitada as 'Quantidade Solicitada',
 Preco_unitario as 'Preço Unitário', 
 valor_total as 'Valor Total', 
 pagamento as 'Pagamento' from pedido;

--  CRIANDO TABELA COM DADOS GERAIS DAS COLMEIAS

create table colmeia(
	id int auto_increment primary key,
    nome varchar(50) not null,
    temperaturaAtual float not null,
    umidadeAtual float not null,
    ultimoUpdate datetime not null
);


-- CRIANDO TABELA COM DADOS INDIVIDUAIS DE CADA COLMEIA
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


