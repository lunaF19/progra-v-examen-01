use [PV_Examen01];

/*
Permite obtener todos los datos que existen en la tabla
“Producto”. Estos valores se devuelven ordenados de forma ascendente a partir del
nombre del producto, y no es necesario enviar parámetros a este procedimiento
almacenado.
*/
GO
CREATE OR ALTER PROCEDURE spConsultarTodosLosProductos

AS

BEGIN
	SELECT [idProducto]
      ,[nombre]
      ,[cantidad]
      ,[precioUnitario]
      ,[fechaRegistro]
      ,[fechaModificacion]
  FROM [PV_Examen01].[dbo].[Producto];
END;


/*
 Test de spConsultarTodosLosProductos
*/

-- EXEC spConsultarTodosLosProductos