CREATE PROCEDURE [dbo].[ParametroObtener]
	@Id_Parametro INT = NULL

AS 
BEGIN
  SET NOCOUNT ON

  /*Obtener datos de proveedor*/
  SELECT
         Id_Parametro
		,Codigo
		,Descripcion
		,Valor
		,Estado
  FROM 
       dbo.Parametro
  WHERE
      (@Id_Parametro IS NULL OR Id_Parametro=@Id_Parametro)

END
