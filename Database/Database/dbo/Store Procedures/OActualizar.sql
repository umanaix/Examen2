﻿CREATE PROCEDURE [dbo].[OActualizar]
    @IdOrden int,	
	@IdProducto int,
	@CantidadProducto int,
	@Estado bit


AS BEGIN
SET NOCOUNT ON

  BEGIN TRANSACTION TRASA

    BEGIN TRY
	
	UPDATE dbo.Orden SET
	 IdProducto = @IdProducto,
	 CantidadProducto = @CantidadProducto,
	 Estado = @Estado
	WHERE 
	       IdOrden = @IdOrden
	
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