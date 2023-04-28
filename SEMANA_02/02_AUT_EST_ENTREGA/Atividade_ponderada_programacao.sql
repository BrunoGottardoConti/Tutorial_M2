CREATE TABLE pessoas ( 
	nomes                TEXT     ,
	id                   INTEGER NOT NULL    ,
	CONSTRAINT unq_pessoas_id UNIQUE ( id )
 );

CREATE TABLE realizacao ( 
	realizacao1          TEXT     ,
	id                   INTEGER NOT NULL    ,
	FOREIGN KEY ( id ) REFERENCES pessoas( id )  
 );

CREATE TABLE experiencias ( 
	experiencia1         TEXT     ,
	id                   INTEGER NOT NULL    ,
	FOREIGN KEY ( id ) REFERENCES pessoas( id )  
 );

CREATE TABLE formacao ( 
	formacao1            TEXT     ,
	id                   INTEGER NOT NULL    ,
	FOREIGN KEY ( id ) REFERENCES pessoas( id )  
 );
