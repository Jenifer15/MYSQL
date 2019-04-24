CREATE TABLE clientes(
nome varchar(30) NOT NULL,
endereço varchar(50),
cpf varchar(11)NOT NULL,
PRIMARY KEY (CPF)
);

CREATE TABLE produtos(
descriçao varchar (50),
preço float NOT NULL,
UNIDADE varchar(5),
codigo int(8) AUTO_INCREMENT
PRIMARY KEY (codigo)
);

CREATE TABLE compra(
cpf_clientes varchar(11),
codigo_produtos int(8),
quantidade float NOT NULL,
FOREIGN KEY (cpf_clientes) REFERENCES clientes (cpf),
FOREIGN KEY (codigo_produtos) REFERENCES produtos (codigo)
);
