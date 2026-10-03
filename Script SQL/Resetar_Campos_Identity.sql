/*
ALTER TABLE Imobilizado ADD Registro_Novo INT IDENTITY(1,1);
GO
ALTER TABLE Imobilizado DROP COLUMN Registro;
GO
EXEC sp_rename '[Imobilizado].[Registro_Novo]', 'Registro', 'COLUMN';
GO

SELECT * FROM Imobilizado;
GO
*/
SELECT  Script = 'DBCC CHECKIDENT ('+t.NAME+', RESEED, 1);',
    t.name AS NomeTabela,
    c.name AS NomeColuna,
    c.seed_value AS ValorInicial,
    c.increment_value AS Incremento
FROM sys.identity_columns c
INNER JOIN sys.tables t ON c.object_id = t.object_id
ORDER BY t.name;


