﻿CREATE PROCEDURE [dbo].[PActualizar]
	@IdProducto int,
	@NombreProducto varchar(50),
	@PrecioProducto DECIMAL(10,2)


AS BEGIN
SET NOCOUNT ON

  BEGIN TRANSACTION TRASA

    BEGIN TRY
	
	UPDATE dbo.Producto SET
	 NombreProducto = @NombreProducto
	 ,PrecioProducto = @PrecioProducto
	WHERE 
	       IdProducto=@IdProducto
	
	  COMMIT TRANSACTION TRASA
	  SELECT 0 AS CodeError, '' AS MsgError

  END TRY

  BEGIN CATCH

	   SELECT 
			 ERROR_NUMBER() AS CodeError,
			 ERROR_MESSAGE() AS MsgError
   
	   ROLLBACK TRANSACTION TRASA

   END CATCH

 END