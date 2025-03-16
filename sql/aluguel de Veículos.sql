drop database senaiempresa;

create database senaiempresa;

use senaiempresa;

create table TabelaDepartamento ( 
	id_departamento int auto_increment primary key,
    NomeDepartamento varchar(100) not null,
    NumeroDepartamento int not null,
    NomeColaboradorGerente varchar(100)
);

create table TabelaColaborador(
    id_colaborador int auto_increment primary key,
    NomeColaborador varchar(100) not null,
    CPFColaborador varchar(14) not null,
    TelefoneColaborador varchar(15),
    Salario decimal(10,2),
    EmailColaborador varchar(100),
    Cargo varchar(50),
    id_departamento int,
    foreign key (id_departamento) references TabelaDepartamento(id_departamento)
);

create table TabelaClientes(
	id_cliente int auto_increment primary key,
    Nome varchar(100) not null,
    CPF varchar(14) not null,
    Telefone varchar(100),
    EndereçoCompleto varchar(100)
);

create table TabelaScoreCredito(
	id_score int auto_increment primary key,
    DataConsulta date not null,
    jusificativa text,
    id_cliente int,
    foreign key(id_cliente) references TabelaClientes(id_cliente)
);

create table TabelaEmprestimo(
	id_emprestimo int auto_increment primary key,
    NomeCliente varchar(100) not null,
    Prazo int not null,
    DataInicio date not null,
    Tipo varchar(50) not null,
    valor decimal(10, 2) not null,
    status varchar(50),
    id_cliente int,
    foreign key (id_cliente) references TabelaClientes(id_cliente)
);

create table TabelaPagamentos(
	id_pagamento int auto_increment primary key,
    DataPagamento date not null,
    Status_ varchar(50),
    Valor decimal(10, 2) not null,
    id_emprestimo int,
    foreign key (id_emprestimo) references TabelaEmprestimo(id_emprestimo)
);

create table TabelaConta(
	id_conta int auto_increment primary key,
    NumeroConta varchar(50) not null,
    TipoConta varchar(50) not null,
	DataAbertura date not null
);

-- Inserir dados na TabelaDepartamento
insert into TabelaDepartamento(NomeDepartamento, NumeroDepartamento, NomeColaboradorGerente)
values
('Financeiro', 101, 'Carlos Almeida'),
('RH', 102, 'Fernanda Mady'),
('TI', 103, 'Roberta Souza'),
('Marketing', 104, 'Miguel Costa');

select * from TabelaDepartamento;

-- Inserir dados na TabelaColaborador
insert into TabelaColaborador(NomeColaborador, CPFColaborador, TelefoneColaborador, Salario, EmailColaborador, Cargo, id_departamento)
values
('Ana Silva', '123.456.789-00', '11-98765-4321', 3500.50, 'ana.silva@email.com', 'Analista Financeiro', 102),
('João Pereira', '234.567.890-11', '11-97654-3210', 4500.00, 'joao.pereira@email.com', 'Gerente de TI', 104),
('Laura Costa', '345.678.901-22', '11-96543-2109', 2800.00, 'laura.costa@email.com', 'Assistente RH', 103),
('Carlos Souza', '456.789.012-33', '11-95432-1098', 5000.00, 'carlos.souza@email.com', 'Analista de Marketing', 101);

select * from TabelaColaborador;

TRUNCATE TABLE TabelaColaborador;


-- Inserir dados na TabelaClientes
insert into TabelaClientes(Nome, CPF, Telefone, EndereçoCompleto)
values
('Pedro Oliveira', '567.890.123-44', '11-93321-8765', 'Rua das Flores, 123, São Paulo'),
('Maria Santos', '678.901.234-55', '11-92210-7654', 'Avenida Paulista, 456, São Paulo'),
('Luís Fernandes', '789.012.345-66', '11-91109-6543', 'Rua dos Três Irmãos, 789, São Paulo');

-- Inserir dados na TabelaScoreCredito
insert into TabelaScoreCredito(DataConsulta, jusificativa, id_cliente)
values
('2025-01-15', 'Consulta para análise de crédito para empréstimo', 1),
('2025-02-10', 'Consulta para aumento de limite de crédito', 2),
('2025-03-05', 'Consulta para aprovação de crédito pessoal', 3);

-- Inserir dados na TabelaEmprestimo
insert into TabelaEmprestimo(NomeCliente, Prazo, DataInicio, Tipo, valor, status, id_cliente)
values
('Pedro Oliveira', 24, '2025-01-20', 'Pessoal', 15000.00, 'Aprovado', 1),
('Maria Santos', 12, '2025-02-15', 'Consignado', 5000.00, 'Em andamento', 2),
('Luís Fernandes', 36, '2025-03-01', 'Veículo', 30000.00, 'Aprovado', 3);

-- Inserir dados na TabelaPagamentos
insert into TabelaPagamentos(DataPagamento, Status_, Valor, id_emprestimo)
values
('2025-02-20', 'Pago', 2000.00, 1),
('2025-03-05', 'Aguardando pagamento', 1500.00, 2),
('2025-03-10', 'Pago', 5000.00, 3);

-- Inserir dados na TabelaConta
insert into TabelaConta(NumeroConta, TipoConta, DataAbertura)
values
('12345-6', 'Corrente', '2020-05-10'),
('23456-7', 'Poupança', '2021-06-15'),
('34567-8', 'Corrente', '2022-07-20');






