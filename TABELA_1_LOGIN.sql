CREATE DATABASE login_usuario;
USE login_usuario;
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

