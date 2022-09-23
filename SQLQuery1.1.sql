USE [BDVENTAS]
GO
SET ANSI_NULLS ON
GO
ALTER trigger [dbo].[ActualizarStock]
on [dbo].DETALLE_VENTA]
	for insert
as	
	Begin
		declare @Cantidad int
		declare @StockActual int

	--obtener la cantidad que  insertamos
	select @Cantidad =DV_Cantidad
		from inserted

	----obtener el stock Actual
	select @StockActual=P.canproducto
			from PRODUCTOS P
			join inserted i
				on P.cdproducto=i.cdproducto

				--validar la cantidad perdida
					begin
						--Actualizar el stock del producto
							update Productos
set canproducto=canproducto-@Cantidad
							from Productos P
							join inserted i
							on P.cdproducto=i.cdproducto
				END
		END
