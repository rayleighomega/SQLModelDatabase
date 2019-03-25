use modelatgebbddfinal;

insert into marcas(marca)
Values
('MultiOpticas'),
('VisionLab'),
('Optica Alfredo');

insert into empleats(nombre)
Values
('Antonio Rodriguez'),
('Luis XVI'),
('Maria Garcia');

insert into monturas(tipu)
Values
('flotant'),
('pasta'),
('metàl·lica');

insert into proveedors(carrer, numero, pis, porta, ciudad, codiPostal, pais, telefon, fax, NIF, nom)
Values
('Villanueva', 241, 4, 'A', 'Barcelona', 08020, 'España', 933124578, 933124579, '52784545L', 'Lentes Villanueva'),
('Roc Boronat', 125, 0, 'D', 'Barcelona', 08020, 'España', 933858598, 933858597, '12457812P', 'Gafas 22 te roba');

insert into ulleres(Marcas_idMarcas, graduacionI, graduacionD, colorMontura, colorVidrioI, colorVidrioD, preu, Monturas_idMonturas)
Values
(1, 1.5, 2.5, 'Verde', 'Normal', 'Normal', 200, 2),
(1, 0.5, 1.5, 'Verde', 'Normal', 'Normal', 150, 1),
(2, 3.5, 0.5, 'Verde', 'Normal', 'Normal', 200, 3),
(3, 2, 3.5, 'Verde', 'Normal', 'Normal', 550, 3);

insert into compras(Proveedors_idProveedors, Marcas_idMarcas)
Values
(1, 1),
(1, 1),
(2, 2),
(2, 3);

insert into ventas(Empleats_idEmpleats, Ulleres_idUlleres)
Values
(1, 1),
(2, 2),
(2, 3);

