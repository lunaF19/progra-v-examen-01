use [PV_Examen01];

/*
Permite crear un nuevo registro en la tabla “Producto”.
Evidentemente los datos del registro que se debe de crear en la base de datos se tienen
que enviar por parámetro a este procedimiento almacenado. El orden y tipo de dato de
los parámetros antes mencionados es el siguiente:

*/
GO
CREATE OR ALTER PROCEDURE spCrearProducto
	@nombre			varchar(100),
	@cantidad		int,
	@precioUnitario		numeric(9,2),
	@fechaRegistro		datetime
AS
	DECLARE @Lv_id_usuario CHAR(20);
BEGIN 

	INSERT INTO [PV_Examen01].[dbo].[Producto](
		 [nombre]
		,[cantidad]
		,[precioUnitario]
		,[fechaRegistro]
	) VALUES (
	@nombre,
	@cantidad,
	@precioUnitario,
	@fechaRegistro
	);
 
END;


/*
 Test de spCrearProducto
*/

-- EXEC spCrearProducto 'Producto Nuevo #4', 4, 499, SYSDATETIME()
-- select * from [PV_Examen01].[dbo].[Producto]


 