CREATE PROCEDURE [dbo].[PLista]
@IdProducto int= NULL

AS
	BEGIN
	SET NOCOUNT ON

	SELECT IdProducto,
		  NombreProducto,
		  PrecioProducto
	  FROM dbo.Producto
    WHERE
    (@IdProducto IS NULL OR IdProducto = @IdProducto)

	END