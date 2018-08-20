CREATE TABLE tb_estados(
sigla INTEGER PRIMARY KEY NOT NULL,
nome VARCHAR(90) 
);

CREATE TABLE tb_cidade(
codigo INTEGER PRIMARY KEY NOT NULL,
nome VARCHAR(90)
);


CREATE TABLE tb_cliente (
  codigo INTEGER PRIMARY KEY NOT NULL,
  nome VARCHAR(90),
  cnpj VARCHAR(14),
  telefone_contato VARCHAR(12),
  email_contato VARCHAR(30)
);


ALTER TABLE tb_cidade
ADD CONSTRAINT FK_id_estado FOREIGN KEY (sigla) REFERENCES tb_estado(silga);



ALTER TABLE tb_cliente
ADD CONSTRAINT Fk_sigla_estado FOREIGN KEY (sigla) REFERENCES tb_estado(silga);


ALTER TABLE tb_cliente
ADD CONSTRAINT Fk_codigo_cidade FOREIGN KEY (codigo) REFERENCES tb_estado(codigo);


