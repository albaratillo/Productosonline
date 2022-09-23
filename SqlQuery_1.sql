use model

CREATE TABLE [dbo].[Users]
(

		[Id_usuario] int not null PRIMARY KEY IDENTITY(1,1),
		[Nombre] VARCHAR (50) NULL,
		[Usuario] VARCHAR (50) NULL,
		[Password] VARCHAR (50)NULL,
		[Tipo_usuario] VARCHAR (50)NULL,

		)

		select * from Users

		insert into Users values ('Alex Galicia','Alex03','123','Admin'),
								 ('Carlos Perez','Carlos','321','Usuario');