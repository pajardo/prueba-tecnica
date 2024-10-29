create database empleados ;
use empleados;


create table empelados (
id_empleado int primary key,
nombre varchar(200),
apellido varchar(200),
edad int,
id_departamento int
);

create table departamento (
id_departamento int primary key,
departamento varchar(100),
ciudad varchar(100),
barrio varchar(100)
);

create table salario (
id_salario int primary key,
id_empleado int,
valor int,
foreign key (id_empleado) references empleados(id_empleado)
);

INSERT INTO `empleados`.`departamento` (`id_departamento`, `departamento`, `ciudad`, `barrio`) VALUES ('1', 'cauca', 'cali', 'mango');
INSERT INTO `empleados`.`departamento` (`id_departamento`, `departamento`, `ciudad`, `barrio`) VALUES ('2', 'casanare', 'yopal', 'pipa');


INSERT INTO `empleados`.`empelados` (`id_empleado`, `nombre`, `apellido`, `edad`, `id_departamento`) VALUES ('1', 'joseph', 'eln', '16', '1');
INSERT INTO `empleados`.`empelados` (`id_empleado`, `nombre`, `apellido`, `edad`, `id_departamento`) VALUES ('2', 'rossana', 'alcala', '17', '2');


INSERT INTO `empleados`.`salario` (`id_salario`, `id_empleado`, `valor`) VALUES ('1', '1', '20000');
INSERT INTO `empleados`.`salario` (`id_salario`, `id_empleado`, `valor`) VALUES ('2', '2', '10000');


select * from empleados.empelados;
alter table empleados add column sexo varchar(50);

select* from empleados.departamento;
update departamento set departamento=bolivar where id_departamento=3;

select* from empleados.empelados;
update empleados set nombre=carlos where id_empleado=3;

select* from empleados.salario;
update salario set valor=90000 where id_salario=3;

delete from empleados.departamento where id=3;
delete from empleados.salario where id=3;

select* from empleados.departamento;
alter table departamento drop column barrio;

show databases



