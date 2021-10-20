/* Insercion para la tabla colors */

insert into colors (id, name, hexa)
values(1, 'Blanco', '#ffffff');
insert into colors (id, name, hexa)
values(2, 'Gris', '#c0c0c0');
insert into colors (id, name, hexa)
values(3, 'Negro', '#000000');
insert into colors (id, name, hexa)
values(4, 'Rojo', '#ff0000');
insert into colors (id, name, hexa)
values(5, 'Marrón', '#800000');
insert into colors (id, name, hexa)
values(6, 'Olivo', '#808000');
insert into colors (id, name, hexa)
values(7, 'Verde Lima', '#00ff00');
insert into colors (id, name, hexa)
values(8, 'Verde', '#008000');
insert into colors (id, name, hexa)
values(9, 'Aqua', '#00fffff');
insert into colors (id, name, hexa)
values(10, 'Azul', '#0000ff');
insert into colors (id, name, hexa)
values(11, 'Fucsia', '#ff00ff');
insert into colors (id, name, hexa)
values(12, 'Purpura', '#800080');

/* Inserción para la tabla marcas  */
insert into marcs(id, name, image)
values (1, 'Burberry', 'Burberry-Logo.1999.jpg');
insert into marcs(id, name, image)
values (2, 'Guess', 'Guess-Logo-5.png');
insert into marcs(id, name, image)
values (3, 'Lacoste', 'logo-Lacoste.png');
insert into marcs(id, name, image)
values (4, 'Nautica', 'Nautica-Watches-Logo.png');
insert into marcs(id, name, image)
values (5, 'Polo Ralph Lauren', 'polo ralph lauren.jpg');
insert into marcs(id, name, image)
values (6, 'Polo Sport', 'Polo-Sport-Ralph-Lauren.jpg');
insert into marcs(id, name, image)
values (7, 'Saint Laurent', 'Saint-Laurent-símbolo.jpg');
insert into marcs(id, name, image)
values (8, 'Stone Island', 'Stone-Island-Logo-1.png');
insert into marcs(id, name, image)
values (9, 'Tommy Hilfiger', 'Tommy_Hilfiger_Logo.png');

/* Inserción para la tabla productos / elementos fictisios */
insert into products (id, name, idColor, idCategory, idTalle, idMarca, description, price, linkpago, idGenre, discount)
values (1, 'Camisa Azul', 10, 5, 2, 3, 'Camisa manga larga color azul', 10000, 'default', 2, 15);
insert into products (id, name, idColor, idCategory, idTalle, idMarca, description, price, linkpago, idGenre, discount)
values (2, 'Parcas', 2, 4, 3, 6, 'Parca color gris con capucha de color gris', 15000, 'default', 2, 15);
insert into products (id, name, idColor, idCategory, idTalle, idMarca, description, price, linkpago, idGenre, discount)
values (3, 'Polerones 2 colores', 3,2, 1, 7, 'Poleron balnco y negro manga larga con cuello redondo', 9900, 'default', 2, 15);
insert into products (id, name, idColor, idCategory, idTalle, idMarca, description, price, linkpago, idGenre, discount)
values (4, 'Sweter smokin', 2, 1, 1, 1, 'sweter estilo smokin con manga larga a botones', 1233, 'default', 2, 10);
insert into products (id, name, idColor, idCategory, idTalle, idMarca, description, price, linkpago, idGenre, discount)
values ();
insert into products (id, name, idColor, idCategory, idTalle, idMarca, description, price, linkpago, idGenre, discount)
values ();
insert into products (id, name, idColor, idCategory, idTalle, idMarca, description, price, linkpago, idGenre, discount)
values ();
insert into products (id, name, idColor, idCategory, idTalle, idMarca, description, price, linkpago, idGenre, discount)
values ();
insert into products (id, name, idColor, idCategory, idTalle, idMarca, description, price, linkpago, idGenre, discount)
values ();


/* Inserción para la tabla images */
insert into products (id, name, idProduct)
values (1, 'm1.jpg', 1);
insert into products (id, name, idProduct)
values (2, 'm2.jpg', 2);
insert into products (id, name, idProduct)
values (3, 'm4.jpg', 3);
insert into products (id, name, idProduct)
values (4, 'm8.jpg', 4);
