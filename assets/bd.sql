CREATE TABLE tipo_produto(
id_tipo_produto serial CONSTRAINT pk_id_tipo_produto PRIMARY KEY,
nome varchar(255) UNIQUE
);

create table especificacao(
id_especificacao serial CONSTRAINT pk_id_especificacao primary key,
nome varchar(255)
);

CREATE TABLE produto(
	id_produto serial CONSTRAINT pk_id_produto PRIMARY KEY,
	nome_produto varchar(255),
	descricao TEXT,
	id_tipo_produto integer,
        id_especificacao integer,
	data_insert TIMESTAMP,
	data_update TIMESTAMP,
	ip integer,
	FOREIGN KEY (id_tipo_produto) REFERENCES tipo_produto(id_tipo_produto) ON DELETE CASCADE );
        FOREIGN KEY (id_especificacao) REFERENCES especificacao(id_especificacao) ON DELETE CASCADE );



CREATE TABLE preco(
	id_preco serial CONSTRAINT pk_id_preco PRIMARY KEY,
	id_produto integer,
	valor money,
	FOREIGN KEY (id_produto) REFERENCES produto (id_produto) ON DELETE CASCADE 
		);
		
CREATE TABLE venda(
id_venda serial CONSTRAINT pk_id_venda PRIMARY KEY,
data_venda TIMESTAMP,
id_produto integer,
id_tipo_produto integer,
id_preco integer,
FOREIGN KEY (id_produto) REFERENCES produto (id_produto) ON DELETE CASCADE,
FOREIGN KEY (id_tipo_produto) REFERENCES tipo_produto(id_tipo_produto) ON DELETE CASCADE, 
FOREIGN KEY (id_preco) REFERENCES preco(id_preco) ON DELETE CASCADE
);


insert into produto (nome_produto, descricao, id_tipo_produto, id_especificacao) values 
('Á MODA','Muçarela, Parmesão, Requeijão e Rodelas de Tomate','1','1'),
('Á MODA','Muçarela, Parmesão, Requeijão e Rodelas de Tomate','1','2'),
('Á MODA PUCHETI','Calabresa, Presunto, Tomate e Muçarela','1','1'),
('Á MODA PUCHETI','Calabresa, Presunto, Tomate e Muçarela','1','2'),
('ALICHE','Aliche, Tomate e Azeitonas','1','1'),
('ALICHE','Aliche, Tomate e Azeitonas','1','2'),
('ALHO COM MUÇARELA','Alho e Muçarela','1','1'),
('ALHO COM MUÇARELA','Alho e Muçarela','1','2'),
('ATUM','Atum Ralado, Cebola e Azeitonas','1','1'),
('ATUM','Atum Ralado, Cebola e Azeitonas','1','2'),
('BAIANA','Calabresa Suína, Ovos, Molho de Pimenta, Cebolas e Azeitonas','1','1'),
('BAIANA','Calabresa Suína, Ovos, Molho de Pimenta, Cebolas e Azeitonas','1','2'),
('BAURU','Presunto, Tomate e Muçarela','1','1'),
('BAURU','Presunto, Tomate e Muçarela','1','2'),
('BRÓCOLIS','Brócolis Refogado, Muçarela ou Requeijão','1','1'),
('BRÓCOLIS','Brócolis Refogado, Muçarela ou Requeijão','1','2'),
('CAIPIRA','Frango Desfiado, Milho e Requeijão','1','1'),
('CAIPIRA','Frango Desfiado, Milho e Requeijão','1','2'),
('CALABRESA SUÍNA','Calabresa Suína com Cebola','1','1'),
('CALABRESA SUÍNA','Calabresa Suína com Cebola','1','2'),
('CALIFÓRNIA','Peito de Peru, Requijão e Azeitonas','1','1'),
('CALIFÓRNIA','Peito de Peru, Requijão e Azeitonas','1','2'),
('PEPPERONI','Pepperoni, Tomate seco, Moçarela e Azeitonas','1','1'),
('PEPPERONI','Pepperoni, Tomate seco, Moçarela e Azeitonas','1','2'),
('CHAMPIGNON','Champignon com Muçarela ou Requeijão','1','1'),
('CHAMPIGNON','Champignon com Muçarela ou Requeijão','1','2'),
('CINCO QUEIJOS','Muçarela, Parmesão, Requeijão, Provolone e Gorgonzola','1','1'),
('CINCO QUEIJOS','Muçarela, Parmesão, Requeijão, Provolone e Gorgonzola','1','2'),
('CUBANA','Frango Desfiado, Palmito e Muçarela','1','1'),
('CUBANA','Frango Desfiado, Palmito e Muçarela','1','2'),
('DO PAPA','Presunto Picado Muçarela e Requeijão','1','1'),
('DO PAPA','Presunto Picado Muçarela e Requeijão','1','2'),
('DOIS QUEIJOS','Muçarela e Requeijão','1','1'),
('DOIS QUEIJOS','Muçarela e Requeijão','1','2'),
('ESCAROLA','Escarola temperado com alho, Muçarela e Requijão','1','1'),
('ESCAROLA','Escarola temperado com alho, Muçarela e Requijão','1','2'),
('FRANGO COM REQUEIJÃO','Frango Desfiado, com Muçarela ou Requeijão','1','1'),
('FRANGO COM REQUEIJÃO','Frango Desfiado, com Muçarela ou Requeijão','1','2'),
('FRANGO AO CREME','frango Desfiado, Champignon, Presunto Picado, Creme de Leite Parmesão e Muçarela','1','1'),
('FRANGO AO CREME','frango Desfiado, Champignon, Presunto Picado, Creme de Leite Parmesão e Muçarela','1','2'),
('ITALIANA','Muçarela de Búfala, Aliche, Champignon e Parmesão Salpicado','1','1'),
('ITALIANA','Muçarela de Búfala, Aliche, Champignon e Parmesão Salpicado','1','2'),
('JARDINEIRA','Milho, Ervilha, Palmito e Muçarela','1','1'),
('JARDINEIRA','Milho, Ervilha, Palmito e Muçarela','1','2'),
('LIGHT','Escarola Temperada com Alho, Milho, Palmito e Queijo fresco','1','1'),
('LIGHT','Escarola Temperada com Alho, Milho, Palmito e Queijo fresco','1','2'),
('LONBO','Lombinho canadense com Muçarela ou Requeijão','1','1'),
('LONBO','Lombinho canadense com Muçarela ou Requeijão','1','2'),
('MARGUERITA','Muçarela, Manjericão e Rodelas de Tomate','1','1'),
('MARGUERITA','Muçarela, Manjericão e Rodelas de Tomate','1','2'),
('MARGUERITA II','Muçarela de Búfala, Manjericão, Parmesão e Tomate Seco','1','1'),
('MARGUERITA II','Muçarela de Búfala, Manjericão, Parmesão e Tomate Seco','1','2')


insert into produto (nome_produto, descricao, id_tipo_produto, id_especificacao) values 
('MILHO VERDE','Milho Verde e Muçarela ou Requeijão','1','1'),
('MILHO VERDE','Milho Verde e Muçarela ou Requeijão','1','2'),
('MILHO AO CREME','Milho, Creme de Leite e Muçarela','1','1'),
('MILHO AO CREME','Milho, Creme de Leite e Muçarela','1','2'),
('MINEIRA LIGHT','Peito de Peru, Palmito, Ervilha e Queijo Fresco','1','1'),
('MINEIRA LIGHT','Peito de Peru, Palmito, Ervilha e Queijo Fresco','1','2'),
('MODA DA CASA','Brócolis, tomate Seco e Muçarela de Búfala','1','1'),
('MODA DA CASA','Brócolis, tomate Seco e Muçarela de Búfala','1','2'),
('MODA MISTER','Carne Seca, Palmito, Berinjela e Muçarela','1','1'),
('MODA MISTER','Carne Seca, Palmito, Berinjela e Muçarela','1','2'),
('MUÇARELA','Muçarela e Azeitonas','1','1'),
('MUÇARELA','Muçarela e Azeitonas','1','2'),
('MUÇARELA II','Muçarela de Búfala, Rucula Tomate Seco e Azeitonas','1','1'),
('MUÇARELA II','Muçarela de Búfala, Rucula Tomate Seco e Azeitonas','1','2'),
('NAPOLITANA','Muçarela, Parmesão e Rodelas de Tomate','1','1'),
('NAPOLITANA','Muçarela, Parmesão e Rodelas de Tomate','1','2'),
('PALMITO','palmito com Muçarela ou Requeijão','1','1'),
('PALMITO','palmito com Muçarela ou Requeijão','1','2'),
('PAULISTA','Calabresa Suína, Palmito, Rodelas de Tomate e Muçarela','1','1'),
('PAULISTA','Calabresa Suína, Palmito, Rodelas de Tomate e Muçarela','1','2'),
('PERUANA','Atum, Ovos e Muçarela','1','1'),
('PERUANA','Atum, Ovos e Muçarela','1','2'),
('PEITO DE PERU','Peito de Peru, Cebola, Cheddar ou Requeijão','1','1'),
('PEITO DE PERU','Peito de Peru, Cebola, Cheddar ou Requeijão','1','2'),
('PICANHA','Filé de Picanha, Molho de Tomate e Muçarela','1','1'),
('PICANHA','Filé de Picanha, Molho de Tomate e Muçarela','1','2'),
('PIZZAIOLO','Presunto, Champignon com Muçarela ou Requeijão','1','1'),
('PIZZAIOLO','Presunto, Champignon com Muçarela ou Requeijão','1','2'),
('POMODORO','Muçarela, Rodelas de Tomate Parmesão, Alho e Azeitonas ','1','1'),
('POMODORO','Muçarela, Rodelas de Tomate Parmesão, Alho e Azeitonas ','1','2'),
('PORTUGUESA','Muçarela, Palmito, Ervilha, Ovo, Cebola e Muçarela','1','1'),
('PORTUGUESA','Muçarela, Palmito, Ervilha, Ovo, Cebola e Muçarela','1','2'),
('PORTUGUESA ESPECIAL','Muçarela de búfala, Tomate Seco, Peito de Peru Desfiado e Palmito (Acompanha Borda Recheada)','1','1'),
('PORTUGUESA ESPECIAL','Muçarela de búfala, Tomate Seco, Peito de Peru Desfiado e Palmito (Acompanha Borda Recheada)','1','2'),
('PREMIADA','Muçarela, Champignon, Alcaparras e Parmesão','1','1'),
('PREMIADA','Muçarela, Champignon, Alcaparras e Parmesão','1','2'),
('QUATRO QUEIJOS','Muçarela, Provolone, Parmesão e Requeijão','1','1'),
('QUATRO QUEIJOS','Muçarela, Provolone, Parmesão e Requeijão','1','2'),
('ROMANA','Aliche, Rodelas de Tomate e Muçarela','1','1'),
('ROMANA','Aliche, Rodelas de Tomate e Muçarela','1','2'),
('SILICIANA','Bacon, Champignon e Muçarela','1','1'),
('SILICIANA','Bacon, Champignon e Muçarela','1','2'),
('STROGONOFF','Strogonoff de Filé Mignon, Batata Palha e Muçarela','1','1'),
('STROGONOFF','Strogonoff de Filé Mignon, Batata Palha e Muçarela','1','2'),
('SUPREMA','Muçarela de Búfala, Palmito Especial e Catupiry(Acompanha Borda Recheada)','1','1'),
('SUPREMA','Muçarela de Búfala, Palmito Especial e Catupiry(Acompanha Borda Recheada)','1','2'),
('TOSCANA','Calabresa Suína, Palmito e Bacon','1','1'),
('TOSCANA','Calabresa Suína, Palmito e Bacon','1','2'),
('TRÊS QUEIJOS','Provolone Gorgonzola e Parmesão','1','1'),
('TRÊS QUEIJOS','Provolone Gorgonzola e Parmesão','1','2'),
('VENEZA','Presunto, Champignon, Palminto e Muçarela','1','1'),
('VENEZA','Presunto, Champignon, Palminto e Muçarela','1','2')

