use WebServices
go

-----CREAMOS LOS PROCEDIMIENTOS ALMACENADOS-----------
create procedure usp_registrar(
@documentoidentidad varchar(60),
@nombres varchar(60),
@telefono varchar(60),
@correo varchar(60),
@ciudad varchar(60)
)
as
begin

insert into USUARIO(DocumentoIdentidad,Nombres,Telefono,Correo,Ciudad)
values
(
@documentoidentidad,
@nombres,
@telefono,
@correo,
@ciudad
)
end

go

create procedure usp_modificar(
@idusuario int,
@documentoidentidad varchar(60),
@nombres varchar(60),
@telefono varchar(60),
@correo varchar(60),
@ciudad varchar(60)
)
as
begin

update USUARIO set
DocumentoIdentidad = @documentoidentidad,
Nombres = @nombres,
Telefono = @telefono,
Correo = @correo,
Ciudad = @ciudad
where IdUsuario = @idusuario

end

go

create procedure usp_obtener(@idusuario int)
as
begin

select * from USUARIO where IdUsuario = @idusuario
end

go 
create procedure usp_listar
as
begin

select * from USUARIO
end

go
go

create procedure usp_eliminar(
@idusuario int
)
as
begin

delete from USUARIO where IdUsuario = @idusuario
end

go