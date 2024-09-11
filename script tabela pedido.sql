create database regra_de_negocio;
use regra_de_negocio;

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

select * from pedido;





