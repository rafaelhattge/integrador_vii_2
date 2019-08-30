CREATE TABLE IF NOT EXISTS usuario (id SERIAL PRIMARY KEY,
									nome VARCHAR (300) NOT NULL,
									email VARCHAR (300) NOT NULL UNIQUE,
									usuario VARCHAR (300) NOT NULL UNIQUE,
									senha VARCHAR (8) NOT NULL,
									tipo CHAR (1) NOT NULL);

CREATE TABLE IF NOT EXISTS projeto (idprojeto SERIAL PRIMARY KEY,
									titulo VARCHAR(128) NOT NULL);
									
CREATE TYPE PRIORIDADE AS ENUM ('B', 'M', 'A');
CREATE TYPE COMPLEXIDADE AS ENUM ('B', 'M', 'A');
CREATE TABLE IF NOT EXISTS requisito (idrequisito SERIAL PRIMARY KEY,
									  titulo VARCHAR (128) NOT NULL,
									  tipo CHAR (1) NOT NULL,
									  prioridade PRIORIDADE NOT NULL,
									  complexidade COMPLEXIDADE NOT NULL,
									  idprojeto INTEGER REFERENCES projeto(idprojeto) ON DELETE CASCADE);

CREATE TABLE IF NOT EXISTS versao (idversao SERIAL PRIMARY KEY,
								   numeroversao SERIAL NOT NULL,
								   descricao VARCHAR(1024) NOT NULL,
								   data DATE NOT NULL,
								   idrequisito INTEGER REFERENCES requisito(idrequisito) ON DELETE CASCADE);