CREATE DATABASE Estudio;

use Estudio;
create table carrera(
id_C int primary key identity(1,1),
nom_C varchar (50),
depart_C varchar (50))

use Estudio;
create table materia(
Clave_M int primary key identity(1,1),
Nom_M varchar (50),
Cred_M int)

use Estudio;
create table profesor(
Clave_P int primary key identity(1,1),
Nom_P varchar (50),
Dir_P varchar (50),
Tel_P int,
Hor_P time,
mat int,
constraint mat foreign key (mat) references materia(Clave_M))

use Estudio;
create table alumno(
Mat_alu int primary key identity(1,1),
Nom_alu varchar (50),
Edad_alu int,
Sem_alu int,
Gen_alu varchar (50),
Clave1 int,
Clave2 int,
Clave3 int,
constraint Clave1 foreign key (Clave1) references carrera(id_C),
constraint Clave2 foreign key (Clave2) references materia(Clave_M),
constraint Clave3 foreign key (Clave3) references profesor(Clave_P))

create procedure SP_regC
@nom_C as varchar (50), @depart_C as varchar (50)
AS print 'Ingresar registros a tabla Carrera.'
insert into carrera (nom_C,depart_C) values (@nom_C,@depart_C)

create procedure SP_regM
@Nom_M as varchar (50), @Cred_M as int
AS print 'Ingresar registros a tabla Materia.'
insert into materia (Nom_M,Cred_M) values (@Nom_M,@Cred_M)

create procedure SP_regP
@Nom_P as varchar (50), @Dir_P as varchar (50), @Tel_P as int, @Hor_P as time, @mat as int
AS print 'Ingresar registros a tabla Profesor.'
insert into profesor (Nom_P,Dir_P,Tel_P,Hor_P,mat) values (@Nom_P,@Dir_P,@Tel_P,@Hor_P,@mat)

create procedure SP_regA
@Nom_alu as varchar (50), @Edad_alu as int, @Sem_alu as int, @Gen_alu as varchar (50), @Clave1 as int, @Clave2 as int, @Clave3 as int
AS print 'Ingresar registros a tabla Alumno.'
insert into alumno (Nom_alu,Edad_alu,Sem_alu,Gen_alu,Clave1,Clave2,Clave3) values (@Nom_alu,@Edad_alu,@Sem_alu,@Gen_alu,@Clave1,@Clave2,@Clave3)

	select * from carrera
	select * from materia
	select * from profesor
	select * from alumno

	exec SP_regC 'Administraci�n de Empresas','Ciencias'
	exec SP_regM 'CTS',2
	exec SP_regP 'Matilda','Calle 44',5041010,'12:00',6
	exec SP_regA 'Brayan',44,1,'Masculino',1,6,6

-- Cantidad de alumnos que ven la misma materia con su respectivo nombre 
select Nom_M 'Nombre materia',Clave2 'N�mero materia',COUNT(Mat_alu) 'Cantidad de estudiantes' from alumno inner join materia on alumno.Clave2=materia.Clave_M group by Nom_M,Clave2

-- Profesor con la cantidad de estudiantes
select Nom_P 'Nombre profesor',count(Clave3) 'Cantidad de estudiantes' from alumno inner join profesor on alumno.Clave3=profesor.Clave_P group by Nom_P

-- Carrera con más alumnos
select top 1 nom_C 'Nombre carrera de m�s estudiantes',count(Mat_alu) 'Cantidad estudiantes' from alumno inner join carrera on alumno.Clave1=carrera.id_C group by nom_C, id_C order by COUNT(Mat_alu) desc
