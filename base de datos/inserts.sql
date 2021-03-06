	#tipos_categorias
INSERT INTO `tipos_categorias` (`descripcion_categoria`) VALUES  ('Acción');
INSERT INTO `tipos_categorias` (`descripcion_categoria`) VALUES  ('Aventuras');
INSERT INTO `tipos_categorias` (`descripcion_categoria`) VALUES  ('Comedia');
INSERT INTO `tipos_categorias` (`descripcion_categoria`) VALUES  ('Terror');
INSERT INTO `tipos_categorias` (`descripcion_categoria`) VALUES  ('Musical');
INSERT INTO `tipos_categorias` (`descripcion_categoria`) VALUES  ('Thriller');
INSERT INTO `tipos_categorias` (`descripcion_categoria`) VALUES  ('Drama');

	#tipos_restricciones
INSERT INTO `tipos_restricciones` (`descripcion_restriccion`,`edad_restriccion`) VALUES  ('Apta para todos los públicos','ninguna');
INSERT INTO `tipos_restricciones` (`descripcion_restriccion`,`edad_restriccion`) VALUES  ('No recomendada para menores de 7 años','7');
INSERT INTO `tipos_restricciones` (`descripcion_restriccion`,`edad_restriccion`) VALUES  ('No recomendada para menores de 12 años','12');
INSERT INTO `tipos_restricciones` (`descripcion_restriccion`,`edad_restriccion`) VALUES  ('No recomendada para menores de 16 años','16');
INSERT INTO `tipos_restricciones` (`descripcion_restriccion`,`edad_restriccion`) VALUES  ('No recomendada para menores de 18 años','18');
	
	#salas
INSERT INTO `salas` (`nombre_sala`, `capacidad_sala`, filas_sala, asientos_filas_sala) VALUES  ('Sala 1', '50', 5, 10);
INSERT INTO `salas` (`nombre_sala`, `capacidad_sala`, filas_sala, asientos_filas_sala) VALUES  ('Sala 2', '50', 5, 10);
INSERT INTO `salas` (`nombre_sala`, `capacidad_sala`, filas_sala, asientos_filas_sala) VALUES  ('Sala 3', '50', 5, 10);
INSERT INTO `salas` (`nombre_sala`, `capacidad_sala`, filas_sala, asientos_filas_sala) VALUES  ('Sala 4', '50', 5, 10);
INSERT INTO `salas` (`nombre_sala`, `capacidad_sala`, filas_sala, asientos_filas_sala) VALUES  ('Sala 5', '250', 10, 25);
INSERT INTO `salas` (`nombre_sala`, `capacidad_sala`, filas_sala, asientos_filas_sala) VALUES  ('Sala 6', '250', 10, 25);
INSERT INTO `salas` (`nombre_sala`, `capacidad_sala`, filas_sala, asientos_filas_sala) VALUES  ('Sala 7', '300', 10, 30);
INSERT INTO `salas` (`nombre_sala`, `capacidad_sala`, filas_sala, asientos_filas_sala) VALUES  ('Sala 8', '300', 10, 30);

	#peliculas
INSERT INTO `peliculas` (`nombre_peli`, `nombre_director_peli`, `fecha_peli`, `categoria1_peli`, `restriccion_peli`, `caratula`) VALUES  ('Aves de presa', 'Cathy Yan', '2020-07-02', 3, 5, "avesdepresaylafantabulosa.jpg");
INSERT INTO `peliculas` (`nombre_peli`, `nombre_director_peli`, `fecha_peli`, `categoria1_peli`, `restriccion_peli`, `caratula`) VALUES  ('ADÚ', 'Salvador Calvo', '2020-31-1', 7, 5,"adu.jpg");
INSERT INTO `peliculas` (`nombre_peli`, `nombre_director_peli`, `fecha_peli`, `categoria1_peli`, `restriccion_peli`, `caratula`) VALUES  ('Especiales', 'Olivier Nakache, Éic Toledano', '2020-28-02', 3, 5,"especiales.jpg");
INSERT INTO `peliculas` (`nombre_peli`, `nombre_director_peli`, `fecha_peli`, `categoria1_peli`, `restriccion_peli`, `caratula`) VALUES  ('E.S.A: El retorno del Rey', 'Peter Jackson', '2003-17-12', 2, 3, "esaretorno.jpg");
INSERT INTO `peliculas` (`nombre_peli`, `nombre_director_peli`, `fecha_peli`, `categoria1_peli`, `restriccion_peli`, `caratula`) VALUES  ('Kill Bill: Volumen 1', 'Quentin Tarantino', '2003-10-10', 1, 5,"killbill1.jpg");
INSERT INTO `peliculas` (`nombre_peli`, `nombre_director_peli`, `fecha_peli`, `categoria1_peli`, `restriccion_peli`, `caratula`) VALUES  ('SW: Episodio IX - El ascenso de Skywalker', 'Jeffrey Jacob Abrams', '2019-12-16', 2, 3,"swix.jpg");

	#sesion
INSERT INTO `sesiones` (`peliculas_id_peli`, `fecha_sesion`, `hora_sesion`, `sala_sesion`) VALUES  (3, '2020-03-30', '18:00', 2);
INSERT INTO `sesiones` (`peliculas_id_peli`, `fecha_sesion`, `hora_sesion`, `sala_sesion`) VALUES  (1, '2020-03-27', '22:00', 1);
INSERT INTO `sesiones` (`peliculas_id_peli`, `fecha_sesion`, `hora_sesion`, `sala_sesion`) VALUES  (4, '2020-03-28', '18:00', 4);
INSERT INTO `sesiones` (`peliculas_id_peli`, `fecha_sesion`, `hora_sesion`, `sala_sesion`) VALUES  (4, '2020-03-30', '22:00', 1);

	#tipos_roles
INSERT INTO `tipos_roles` (`descripcion_rol`) VALUES ('admin');
INSERT INTO `tipos_roles` (`descripcion_rol`) VALUES ('usuario');

	#contrasenas
INSERT INTO `contrasenas` (`contrasena_contra`, `fecha_modificacion`) VALUES  ( 'usuario', '2020-03-05 00:00:00');
INSERT INTO `contrasenas` (`contrasena_contra`, `fecha_modificacion`) VALUES  ( 'usuario', '2020-03-05 00:00:00');
INSERT INTO `contrasenas` (`contrasena_contra`, `fecha_modificacion`) VALUES  ( 'usuario', '2020-03-05 00:00:00');
INSERT INTO `contrasenas` (`contrasena_contra`, `fecha_modificacion`) VALUES  ( 'usuario', '2020-03-05 00:00:00');

	#Usuarios
INSERT INTO `usuarios` (`usuario_usu`, `rol_usu`, `nombre_usu`, `apellidos_usu`, `fechanac_usu`, `telefono_usu`, `correo_usu`,`idcontrasena_usu`) VALUES ("usuario1",1, "nusuario1", "ap1usuario1", '1990-07-12', "666666666", "correo1@correo.es", 1);
INSERT INTO `usuarios` (`usuario_usu`, `rol_usu`, `nombre_usu`, `apellidos_usu`, `fechanac_usu`, `telefono_usu`, `correo_usu`,`idcontrasena_usu`) VALUES ("usuario2",2, "nusuario2", "ap1usuario2", '1995-02-10', "666666666", "correo2@correo.es",2);
INSERT INTO `usuarios` (`usuario_usu`, `rol_usu`, `nombre_usu`, `apellidos_usu`, `fechanac_usu`, `telefono_usu`, `correo_usu`,`idcontrasena_usu`) VALUES ("usuario3",1, "nusuario3", "ap1usuario3", '2005-02-14', "666666666", "correo3@correo.es",3);
INSERT INTO `usuarios` (`usuario_usu`, `rol_usu`, `nombre_usu`, `apellidos_usu`, `fechanac_usu`, `telefono_usu`, `correo_usu`,`idcontrasena_usu`) VALUES ("usuario4",1, "nusuario4", "ap1usuario4", '1970-11-03', "666666666", "correo4@correo.es",4);



	
	#asientos
INSERT INTO `asientos` (`sesion_asiento`, `fila_asiento`, `n_asiento`) VALUES  (1,7,4);
INSERT INTO `asientos` (`sesion_asiento`, `fila_asiento`, `n_asiento`) VALUES  (1,4,3);
INSERT INTO `asientos` (`sesion_asiento`, `fila_asiento`, `n_asiento`) VALUES  (2,7,4);
INSERT INTO `asientos` (`sesion_asiento`, `fila_asiento`, `n_asiento`) VALUES  (1,2,1);
INSERT INTO `asientos` (`sesion_asiento`, `fila_asiento`, `n_asiento`) VALUES  (1,6,9);
INSERT INTO `asientos` (`sesion_asiento`, `fila_asiento`, `n_asiento`) VALUES  (2,1,1);
INSERT INTO `asientos` (`sesion_asiento`, `fila_asiento`, `n_asiento`) VALUES  (3,2,2);
INSERT INTO `asientos` (`sesion_asiento`, `fila_asiento`, `n_asiento`) VALUES  (2,3,3);
INSERT INTO `asientos` (`sesion_asiento`, `fila_asiento`, `n_asiento`) VALUES  (1,4,4);
INSERT INTO `asientos` (`sesion_asiento`, `fila_asiento`, `n_asiento`) VALUES  (4,5,5);
INSERT INTO `asientos` (`sesion_asiento`, `fila_asiento`, `n_asiento`) VALUES  (4,6,6);
INSERT INTO `asientos` (`sesion_asiento`, `fila_asiento`, `n_asiento`) VALUES  (4,7,7);

	#tickets
INSERT INTO `tickets` (`usuario_ticket`, `fecha_ticket`, `hora_ticket`, `sesion_ticket`, `fila_asiento_ticket`, `num_asiento_ticket`) VALUES(1, '2020-03-05', '17:30', 1, 7 ,4);
INSERT INTO `tickets` (`usuario_ticket`, `fecha_ticket`, `hora_ticket`, `sesion_ticket`, `fila_asiento_ticket`, `num_asiento_ticket`) VALUES(1, '2020-03-04', '13:35', 2, 7 ,4);
INSERT INTO `tickets` (`usuario_ticket`, `fecha_ticket`, `hora_ticket`, `sesion_ticket`, `fila_asiento_ticket`, `num_asiento_ticket`) VALUES(2, '2020-03-03', '12:30', 1, 2 ,1);
INSERT INTO `tickets` (`usuario_ticket`, `fecha_ticket`, `hora_ticket`, `sesion_ticket`, `fila_asiento_ticket`, `num_asiento_ticket`) VALUES(3, '2020-03-02', '16:30', 1, 6 ,9);
INSERT INTO `tickets` (`usuario_ticket`, `fecha_ticket`, `hora_ticket`, `sesion_ticket`, `fila_asiento_ticket`, `num_asiento_ticket`) VALUES(2, '2020-03-01', '11:30', 4, 6 ,6);
INSERT INTO `tickets` (`usuario_ticket`, `fecha_ticket`, `hora_ticket`, `sesion_ticket`, `fila_asiento_ticket`, `num_asiento_ticket`) VALUES(2, '2020-03-05', '10:30', 4, 7 ,7);


	#valoraciones
	
INSERT INTO `valoraciones` (`idusuario_val`, `pelicula_val`, `valoracion_val`) VALUES  (1, 1 , 3);
INSERT INTO `valoraciones` (`idusuario_val`, `pelicula_val`, `valoracion_val`) VALUES  (2, 5 , 5);
INSERT INTO `valoraciones` (`idusuario_val`, `pelicula_val`, `valoracion_val`) VALUES  (1, 4 , 5);
INSERT INTO `valoraciones` (`idusuario_val`, `pelicula_val`, `valoracion_val`) VALUES  (3, 2 , 1);
INSERT INTO `valoraciones` (`idusuario_val`, `pelicula_val`, `valoracion_val`) VALUES  (3, 6 , 2);
INSERT INTO `valoraciones` (`idusuario_val`, `pelicula_val`, `valoracion_val`) VALUES  (3, 1 , 4);

