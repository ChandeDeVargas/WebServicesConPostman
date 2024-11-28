CREATE DATABASE WebServices
GO

USE WebServices
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'USUARIO')
BEGIN
    CREATE TABLE USUARIO (
        IdUsuario INT PRIMARY KEY IDENTITY(1,1),
        DocumentoIdentidad VARCHAR(60),
        Nombres VARCHAR(60),
        Telefono VARCHAR(60),
        Correo VARCHAR(60),
        Ciudad VARCHAR(60),
        FechaRegistro DATETIME DEFAULT GETDATE()
    )
END

SELECT * FROM dbo.USUARIO

INSERT INTO dbo.USUARIO (DocumentoIdentidad, Nombres, Telefono, Correo, Ciudad)
VALUES
    ('987654321', 'Scarlett Johansson', '8098887777', 'scarlett@gmail.com', 'Estados Unidos'),
    ('555123456', 'Chris Evans', '8095554444', 'chrisevans@gmail.com', 'Inglaterra'),
    ('111222333', 'Robert Downey Jr.', '8091112222', 'rdj@gmail.com', 'Canada'),
    ('444333222', 'Gal Gadot', '8094443333', 'galgadot@gmail.com', 'Francia');

DROP TABLE USUARIO

EXEC usp_obtener 2;