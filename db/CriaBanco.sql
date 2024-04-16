--- >>> Tabela abc_Tanque
CREATE TABLE abc_Tanque
(
    Id_Tanque INTEGER NOT NULL,
    Desc_Tanque VARCHAR(50),
    Tipo_Tanque CHAR  NOT NULL,
    CONSTRAINT pk_abc_Tanque PRIMARY KEY(Id_Tanque)
);

CREATE GENERATOR gen_IdTanque;

CREATE OR ALTER TRIGGER tr_IdTanque FOR abc_Tanque
ACTIVE BEFORE INSERT POSITION 0
AS
BEGIN
    NEW.Id_Tanque = gen_id(gen_IdTanque, 1);
END;

INSERT INTO abc_Tanque
           (Desc_Tanque
           ,Tipo_Tanque)
     VALUES('Tanque Abc - 1'
           ,'D');

INSERT INTO abc_Tanque
           (Desc_Tanque
           ,Tipo_Tanque)
     VALUES('Tanque Abc - 2'
           ,'G');

--- <<<



--- >>> Tabela abc_Bomba
CREATE TABLE abc_Bomba
(
    Id_Bomba INTEGER NOT NULL,
    Desc_Bomba VARCHAR(50),
    Id_Tanque INTEGER NOT NULL,
    CONSTRAINT pk_abc_Bomba PRIMARY KEY(Id_Bomba),
    CONSTRAINT fk_abc_BombaTanque FOREIGN KEY(Id_Tanque) REFERENCES abc_Tanque(Id_Tanque)
);

CREATE GENERATOR gen_IdBomba;

CREATE OR ALTER TRIGGER tr_IdBomba FOR abc_Bomba
ACTIVE BEFORE INSERT POSITION 0
AS
BEGIN
    NEW.Id_Bomba = gen_id(gen_IdBomba, 1);
END;

INSERT INTO abc_Bomba
           (Desc_Bomba
           ,Id_Tanque)
     VALUES('Bomba Abc 1'
           ,1);

INSERT INTO abc_Bomba
           (Desc_Bomba
           ,Id_Tanque)
     VALUES('Bomba Abc 2'
           ,1);

INSERT INTO abc_Bomba
           (Desc_Bomba
           ,Id_Tanque)
     VALUES('Bomba Abc 3'
           ,2);

INSERT INTO abc_Bomba
           (Desc_Bomba
           ,Id_Tanque)
     VALUES('Bomba Abc 4'
           ,2);

--- <<<


--- >>> Tabela abc_Movimento

CREATE TABLE abc_Movimento
(
    Id_Movimento INTEGER NOT NULL,
    Data DATE NOT NULL,
    Id_Bomba INTEGER NOT NULL,
    Litros DECIMAL(10,2) NOT NULL,
    Valor DECIMAL(10,2) NOT NULL,
    Imposto DECIMAL(10,2) NOT NULL,
    CONSTRAINT pk_Movimento PRIMARY KEY(Id_Movimento),
    CONSTRAINT fk_MovimentoBomba FOREIGN KEY(Id_Bomba) REFERENCES abc_Bomba(Id_Bomba)
);

CREATE GENERATOR gen_Movimento;

CREATE OR ALTER TRIGGER tr_Movimento FOR abc_Movimento
ACTIVE BEFORE INSERT POSITION 0
AS
BEGIN
    NEW.Id_Movimento = gen_id(gen_Movimento, 1);
END;

--- <<<



--- >>> Tabela abc_PerfilVenda

CREATE TABLE abc_PerfilVenda
(
    Id_PerfilVenda INTEGER NOT NULL,
    Vl_LitroGasolina DECIMAL(10,2) NOT NULL,
    Vl_LitroDiesel DECIMAL(10,2) NOT NULL,
    Vl_Imposto DECIMAL(10,2) NOT NULL,
    CONSTRAINT pk_PerfilVenda PRIMARY KEY(Id_PerfilVenda)
);

INSERT INTO abc_PerfilVenda
           (Id_PerfilVenda
           ,Vl_LitroGasolina
           ,Vl_LitroDiesel
           ,Vl_Imposto)
     VALUES(1
           ,4.90
           ,6.20
           ,13.00);


--- <<<