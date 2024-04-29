-- questao1
create database vendas;

-- questao2
create table produto(
codigo_produto int primary key,
descricao_Produto varchar(30),
preco_produto float
);

-- questao3
create table notafiscal(
Numero_nf int primary key,
Data_nf date,
valor_nf float
);

-- questao4
create table itens(
Produto_Codigo_Produto int primary key,
Nota_Fiscal_Numero_nf int,
Num_intem int,
Qtde_Item int,
foreign key (Numero_nf) references notafiscal (Numero_nf),
foreign key (codigo_produtos) references produto (codigo_produto)
);

-- questao5
alter table produto
modify column descricao_Produto varchar(50);

-- questao6
alter table Notafiscal
add ICMS float after Numero_nf;

-- questao7
alter table produto
add peso float;

-- questao8
alter table itens
drop primary key,
add Num_item int auto_increment primary key;

-- questao9
describe produto;

-- questao10
describe notafiscal;

-- questao11
alter table notafiscal
change column valor_nf 
Valortotal_nf float;

-- questao12
alter table notafiscal
drop Data_nf;

-- questao13
drop table itens;

-- questao14
rename table notafiscal to venda;
