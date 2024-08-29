create database Floricultura;

create table Clientes (
 RG varchar(30) primary key,
 nome varchar(100),
 telefone varchar(20),
 endereço varchar(200)
);

create table Produtos(
 id int primary key auto_increment,
 nome varchar(100),
 tipo varchar(50),
 valor decimal(10, 2),
 quantia_estote int
 );
 
 CREATE TABLE Compras (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_rg VARCHAR(20),
    data_compra DATE,
    valor_total DECIMAL(10, 2),
    FOREIGN KEY (cliente_rg) REFERENCES Clientes(RG)
);

CREATE TABLE Detalhes_Compra (
    id_compra INT,
    id_produto INT,
    quantidade INT,
    FOREIGN KEY (id_compra) REFERENCES Compras(id),
    FOREIGN KEY (id_produto) REFERENCES Produtos(id)
);

insert into clientes values
('123', 'matheus', '234', '567');

insert into produtos values
(1,'abc','vaso', 10.5, 2);

insert into compras values 
(1,'123','2000-10-10', 10.5); 

insert into detalhes_compra values
(1, 1, 12);

select * from clientes, produtos,compras,detalhes_compra;
