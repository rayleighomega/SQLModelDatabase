use modelatgebbddfinal;

select marca, colorMontura, colorVidrioI, colorVidrioD, tipu, preu from ulleres
inner join marcas
on marcas.idMarcas = ulleres.Marcas_idMarcas
inner join monturas
on monturas.idMonturas = ulleres.Monturas_idMonturas;

select idUlleres, preu, nombre from ventas
inner join empleats on
empleats.idEmpleats = ventas.Empleats_idEmpleats
inner join ulleres on
ulleres.idUlleres = ventas.Empleats_idEmpleats

