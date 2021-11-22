CREATE PROCEDURE [dbo].[OLista]
@IdOrden int= NULL

AS BEGIN
  SET NOCOUNT ON

  SELECT 
     O.IdOrden,
	 O.CantidadProducto,
	 O.Estado,
	 P.IdProducto,
     P.NombreProducto,
     P.PrecioProducto
    FROM Orden O
        INNER JOIN Producto P
       ON P.IdProducto= O.IdProducto
    WHERE
    (@IdOrden IS NULL OR IdOrden = @IdOrden)

END