CREATE DATABASE cabaña_suiza ;
USE cabaña_suiza;
CREATE TABLE cliente(
id_cliente int unsigned not null auto_increment,
nombre varchar (45) not null,
apellido varchar (45) not null,
dni tinyint unsigned null,
mail varchar(255) not null,
telefono varchar (50) null,
primary key (id_cliente)
);

CREATE TABLE consultas(
id_consulta int unsigned not null auto_increment,
fecha_ingreso_consulta date not null,
fecha_egreso_consulta date not null,
comentario text null,
id_cliente int unsigned not null,
PRIMARY KEY (id_consulta),
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE reservas(
id_reserva int unsigned not null auto_increment,
fecha_ingreso_reserva date not null,
fecha_egreso_reserva date not null,
importe bigint unsigned not null,
seña tinyint unsigned not null,
id_cliente int unsigned not null,
PRIMARY KEY (id_reserva),
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);