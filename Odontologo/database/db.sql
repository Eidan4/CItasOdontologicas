CREATE SCHEMA GestionCitas1  ;
-- drop schema GestionCitas1  ;
USE GestionCitas1 ;

create table tipoidentidad(
	id int not null auto_increment primary key,
    nombre varchar(45) not null
);

insert into tipoidentidad(nombre) values ("CC");
insert into tipoidentidad(nombre) values ("TI");
insert into tipoidentidad(nombre) values ("CD");
insert into tipoidentidad(nombre) values ("CE");
insert into tipoidentidad(nombre) values ("CN");
insert into tipoidentidad(nombre) values ("ME");
insert into tipoidentidad(nombre) values ("NT");
insert into tipoidentidad(nombre) values ("PE");
insert into tipoidentidad(nombre) values ("PS");
insert into tipoidentidad(nombre) values ("PT");
insert into tipoidentidad(nombre) values ("RC");
insert into tipoidentidad(nombre) values ("SC");

create table genero(
	id int auto_increment not null primary key,
    nombre_generos varchar(45) not null
);

insert into genero(nombre_generos) value ("Masculino");
insert into genero(nombre_generos) value ("Femenino");
insert into genero(nombre_generos) value ("Otro");

create table estadocivil(
	id int auto_increment not null primary key,
    nombre_estadocivil varchar(45) not null
);

insert into estadocivil(nombre_estadocivil) values ("Soltero");
insert into estadocivil(nombre_estadocivil) values ("Casado");
insert into estadocivil(nombre_estadocivil) values ("Union libre");

create table rh(
	id int auto_increment not null primary key,
    nombre_rh varchar(45) not null
);

insert rh(nombre_rh) values ("A+");
insert rh(nombre_rh) values ("A-");
insert rh(nombre_rh) values ("B+");
insert rh(nombre_rh) values ("B-");
insert rh(nombre_rh) values ("O+");
insert rh(nombre_rh) values ("O-");
insert rh(nombre_rh) values ("AB+");
insert rh(nombre_rh) values ("AB-");

CREATE TABLE  Pacientes (
id INT NOT NULL primary key auto_increment,
username VARCHAR(16) NOT NULL,
password varchar(60) NOT NULL,
pa_apellido VARCHAR(45) NOT NULL,
idgenero int not null,
pa_direccion VARCHAR(45) NOT NULL,
pa_ciudad VARCHAR(45) NOT NULL,
idestadocivil int not null, 
pa_paisorigen VARCHAR(45) NOT NULL,
idrh int not null,
pa_correo VARCHAR(50) NOT NULL,
pa_telefonocelular varchar(10) NOT NULL,
pa_telefonooficiona varchar(10) NULL,
pa_cedula varchar(10) NOT NULL unique,
idtipoidentidad int not null,
pa_fechanacimiento DATE NOT NULL,
foreign key(idrh) references rh(id),
foreign key(idestadocivil) references estadocivil(id),
foreign key(idgenero) references genero(id),
foreign key(idtipoidentidad) references tipoidentidad(id)
);

insert into Pacientes(username,pa_apellido,idgenero,pa_direccion,pa_ciudad,idestadocivil,pa_paisorigen,idrh,pa_correo,pa_telefonocelular,pa_telefonooficiona,pa_cedula ,idtipoidentidad,pa_fechanacimiento,password) 
values ("Eidan Joel","Ruiz Pinzon",1,"Calle 63G #119B-19","Bogota",1,"Colombia",5,"eidanjoel6@gmail.com",3214216255,3214216255,1021392147,1,'2004-01-11','eidan123');

insert into Pacientes(username,pa_apellido,idgenero,pa_direccion,pa_ciudad,idestadocivil,pa_paisorigen,idrh,pa_correo,pa_telefonocelular,pa_telefonooficiona,pa_cedula ,idtipoidentidad,pa_fechanacimiento,password) 
values ("Cistropher","Rey",1,"Calle 63G #119B-19","Bogota",1,"Colombia",5,"cristopher@gmail.com",3214216255,3214216255,1021367147,1,'2004-06-12','cris123');

insert into Pacientes(username,pa_apellido,idgenero,pa_direccion,pa_ciudad,idestadocivil,pa_paisorigen,idrh,pa_correo,pa_telefonocelular,pa_telefonooficiona,pa_cedula ,idtipoidentidad,pa_fechanacimiento,password) 
values ("Ron","Rodriguez",1,"Calle 43G #119B-29","Bogota",2,"Colombia",3,"Ronr@gmail.com",3214213245,3214213245,1021366747,1,'1999-02-12','Ron123');

insert into Pacientes(username,pa_apellido,idgenero,pa_direccion,pa_ciudad,idestadocivil,pa_paisorigen,idrh,pa_correo,pa_telefonocelular,pa_telefonooficiona,pa_cedula ,idtipoidentidad,pa_fechanacimiento,password) 
values ("Ema","Rodriguez",2,"Calle 63G #119B-29","Bogota",3,"Colombia",6,"Emar@gmail.com",3224213245,3224213245,1032366747,1,'1980-02-12','Ema123');

insert into Pacientes(username,pa_apellido,idgenero,pa_direccion,pa_ciudad,idestadocivil,pa_paisorigen,idrh,pa_correo,pa_telefonocelular,pa_telefonooficiona,pa_cedula ,idtipoidentidad,pa_fechanacimiento,password) 
values ("Elisa","Lorena",2,"Av 45a #119B-29","Bogota",1,"Colombia",2,"Elisa@gmail.com",3223213245,3232213245,1032343747,1,'1985-12-31','Elisa123');

insert into Pacientes(username,pa_apellido,idgenero,pa_direccion,pa_ciudad,idestadocivil,pa_paisorigen,idrh,pa_correo,pa_telefonocelular,pa_telefonooficiona,pa_cedula ,idtipoidentidad,pa_fechanacimiento,password) 
values ("Esperanza","Valencia",2,"Av 54E #143B-33","Bogota",1,"Colombia",5,"Esperanza@gmail.com",3223212344,3223212344,1032343214,1,'2000-12-31','Esperanza123');

insert into Pacientes(username,pa_apellido,idgenero,pa_direccion,pa_ciudad,idestadocivil,pa_paisorigen,idrh,pa_correo,pa_telefonocelular,pa_telefonooficiona,pa_cedula ,idtipoidentidad,pa_fechanacimiento,password) 
values ("Fernando","Perez",3,"Calle 32B #117B-11","Bogota",2,"Colombia",7,"Fernando@gmail.com",3224325523,3224325523,1039213955,5,'1987-06-3','Fernanado123');

insert into Pacientes(username,pa_apellido,idgenero,pa_direccion,pa_ciudad,idestadocivil,pa_paisorigen,idrh,pa_correo,pa_telefonocelular,pa_telefonooficiona,pa_cedula ,idtipoidentidad,pa_fechanacimiento,password) 
values ("Daniela","Orospo",3,"Av 32B #20B-13","Bogota",3,"Colombia",5,"Daniela@gmail.com",3222213122,3222213122,1039212155,5,'2001-07-01','Daniela123');

insert into Pacientes(username,pa_apellido,idgenero,pa_direccion,pa_ciudad,idestadocivil,pa_paisorigen,idrh,pa_correo,pa_telefonocelular,pa_telefonooficiona,pa_cedula ,idtipoidentidad,pa_fechanacimiento,password) 
values ("Raul","Rodriguez",1,"Av 45A #20BC13","Bogota",3,"Colombia",6,"Raul@gmail.com",3214346255,3214346255,1039342155,6,'2000-08-01','Raul123');

insert into Pacientes(username,pa_apellido,idgenero,pa_direccion,pa_ciudad,idestadocivil,pa_paisorigen,idrh,pa_correo,pa_telefonocelular,pa_telefonooficiona,pa_cedula ,idtipoidentidad,pa_fechanacimiento,password) 
values ("Luis","Maria",3,"Calle 45C #20A-13","Bogota",3,"Colombia",6,"Luis@gmail.com",3122213122,3122213122,1056245155,7,'1998-12-01','Luis123');



select * from pacientes;

CREATE TABLE  Consultorio (
  id INT auto_increment  NOT NULL primary key,
  co_ubicacion VARCHAR(45) NOT NULL,
  co_sede VARCHAR(45) NOT NULL,
  co_direccion VARCHAR(45) NOT NULL
  );
  
  insert into Consultorio  (co_ubicacion,co_sede,co_direccion) values ("Bogota","Sede Principal","Cra 47a #118-27");
  insert into Consultorio  (co_ubicacion,co_sede,co_direccion) values ("Bogota","Sede del Norte","Av Boyaca #80-94");
  insert into Consultorio  (co_ubicacion,co_sede,co_direccion) values ("Bogota","Sede de Villa Luz","Ak. 86 ##55a-75");

select * from Consultorio;

CREATE TABLE  Odontologo (
  id INT auto_increment NOT NULL primary key,
  od_nombre VARCHAR(45) NULL,
  od_apellido VARCHAR(45) NULL,
  idgenero int not null,
  idrh int not null,
  idtipoidentidad int not null,
  idConsultorio int not null,
  idestadocivil int not null, 
  od_fechanacimiento date not null,
  od_telefonocelular varchar(45) NULL,
  od_especialidad VARCHAR(45) NULL,
  od_NTP varchar(45) NOT NULL,
  od_correo VARCHAR(45) NOT NULL,
  od_direccion VARCHAR(45) NOT NULL,
  od_cedula varchar(45) NOT NULL unique, 
	foreign key(idrh) references rh(id),
	foreign key(idestadocivil) references estadocivil(id),
	foreign key(idgenero) references genero(id),
	foreign key(idtipoidentidad) references tipoidentidad(id),
    foreign key(idConsultorio) references consultorio(id)
  );
  
  
  insert into Odontologo(od_nombre,od_apellido,idgenero,idrh,idtipoidentidad,idConsultorio,idestadocivil, od_fechanacimiento, od_telefonocelular,od_especialidad,od_NTP,od_correo,od_direccion,od_cedula)
  values ("Estabean","Fernando",2,4,1,1,1,"2003-12-11","3213123445","Limpieza Oral","5011422169","esteban@gmail.com","Calle 11a #118B-67","1023452176");
  
   insert into Odontologo(od_nombre,od_apellido,idgenero,idrh,idtipoidentidad,idConsultorio,idestadocivil, od_fechanacimiento, od_telefonocelular,od_especialidad,od_NTP,od_correo,od_direccion,od_cedula)
  values ("Orlando","Raul",1,3,1,2,2,"1999-01-02","3213121245","Diseño de Sonrisa","4011423169","Orlandon@gmail.com","Av 12G #39A-43","1323323476");
  
   insert into Odontologo(od_nombre,od_apellido,idgenero,idrh,idtipoidentidad,idConsultorio,idestadocivil, od_fechanacimiento, od_telefonocelular,od_especialidad,od_NTP,od_correo,od_direccion,od_cedula)
  values ("Sergio","Pinzon",1,2,1,3,3,"1890-02-03","3123124445","Blanqueamiento Dental","6012422169","Sergio@gmail.com","Calle 54C #18B-23","1123452376");
  
   insert into Odontologo(od_nombre,od_apellido,idgenero,idrh,idtipoidentidad,idConsultorio,idestadocivil, od_fechanacimiento, od_telefonocelular,od_especialidad,od_NTP,od_correo,od_direccion,od_cedula)
  values ("Maria","Ruiz",2,1,1,3,3,"2000-11-21","3223124445","Diseño de Sonrisa","9014522169","marian@gmail.com","Av 32bis #11B-71","1553412476");
  
   insert into Odontologo(od_nombre,od_apellido,idgenero,idrh,idtipoidentidad,idConsultorio,idestadocivil, od_fechanacimiento, od_telefonocelular,od_especialidad,od_NTP,od_correo,od_direccion,od_cedula)
  values ("Valentina","Alcantar",2,7,1,2,1,"2001-04-04","3123124445","Limpieza Oral","1011469169","Valentinan@gmail.com","Calle 55E #131B-24","1433553476");
  

  select * from Odontologo;
  
create table medicamentos(
	id int auto_increment not null primary key,
    me_nombre varchar(45) not null
);

insert into medicamentos(me_nombre) values ("Amoxicilina + ácido clavulánico");
insert into medicamentos(me_nombre) values ("Sulbactam.");
insert into medicamentos(me_nombre) values ("Ampicilina.");
insert into medicamentos(me_nombre) values ("Penicilina G sódica.");
insert into medicamentos(me_nombre) values ("Piperacilina + tazobactam.");
insert into medicamentos(me_nombre) values ("Ticarcilina + ácido clavulánico.");
insert into medicamentos(me_nombre) values ("Eritromicina.");
insert into medicamentos(me_nombre) values ("Tetraciclina.");
insert into medicamentos(me_nombre) values ("Clindamicina");
insert into medicamentos(me_nombre) values ("Metronidazol");
insert into medicamentos(me_nombre) values ("Gentamicina");

select * from medicamentos;

CREATE TABLE  Tratamiento (
	id  INT auto_increment NOT NULL primary key,
	idmedicamentos int null,
	idmedicamentos2 int null,
	tra_nombre VARCHAR(300) NOT NULL,
	tra_diagnostico VARCHAR(300) NOT NULL,
	tra_observaciones VARCHAR(300) NOT NULL,
	foreign key (idmedicamentos) references Medicamentos(id),
	foreign key (idmedicamentos2) references Medicamentos(id)
);
  
insert into Tratamiento(tra_nombre,tra_diagnostico,tra_observaciones,idmedicamentos,idmedicamentos2)            
values ("Diagnóstico y Prevención","Revision y generar un diagnostico para evitar patologias","Revision para evitar patologias",1,2);

insert into Tratamiento(tra_nombre,tra_diagnostico,tra_observaciones,idmedicamentos,idmedicamentos2)            
values ("Ortodoncia","movimientos que desplazan los dientes de forma individual o en bloque y corrigen su colocación","Necesita Ortodoncia",3,4);

insert into Tratamiento(tra_nombre,tra_diagnostico,tra_observaciones,idmedicamentos,idmedicamentos2)            
values ("Implantes","Colocar un diente que te falta","Le falta un diente al paciente",5,6);

insert into Tratamiento(tra_nombre,tra_diagnostico,tra_observaciones,idmedicamentos,idmedicamentos2)            
values ("Estética Dental","Sencillos e indoloros que te ayudarán a mejorar la salud y apariencia de su boca","Mejorar su apriencia de su boca",7,8);

insert into Tratamiento(tra_nombre,tra_diagnostico,tra_observaciones,idmedicamentos,idmedicamentos2)            
values ("Periodoncia","tratamiento de aquellas patologías que afectan a los tejidos que protegen, rodean y sujetan los dientes","Proteger el tejido de los dientes",9,10);

insert into Tratamiento(tra_nombre,tra_diagnostico,tra_observaciones,idmedicamentos,idmedicamentos2)            
values ("Prótesis","elemento artificial destinado a restaurar la anatomía de una o varias piezas dentarias","Le falta mas de un diente",5,6);

insert into Tratamiento(tra_nombre,tra_diagnostico,tra_observaciones,idmedicamentos,idmedicamentos2)            
values ("Caries","la conservación de los dientes y del tejido dental sano, evitando siempre que sea posible la extracción de las piezas afectadas","El diente tiene muchas caries",1,3);

insert into Tratamiento(tra_nombre,tra_diagnostico,tra_observaciones,idmedicamentos,idmedicamentos2)            
values ("Bruxismo","consiste en apretar de forma inconsciente la mandíbula o incluso rechinar los dientes, generalmente mientras dormimos","Tiene un poco torsida la mandibula",4,7);

insert into Tratamiento(tra_nombre,tra_diagnostico,tra_observaciones,idmedicamentos,idmedicamentos2)            
values ("Sensibilidad dental","La sensibilidad dental es una de las molestias dentales más frecuente entre la población","Tiene sensibilidad dental",8,1);

insert into Tratamiento(tra_nombre,tra_diagnostico,tra_observaciones,idmedicamentos,idmedicamentos2)            
values ("Halitosis","puede producirse por una deficiente higiene oral, aunque el hecho de fumar, beber alcohol o comer alimentos de sabor fuerte favorecen la misma.","Mal olor en la boca",5,6);

insert into Tratamiento(tra_nombre,tra_diagnostico,tra_observaciones,idmedicamentos,idmedicamentos2)            
values ("Tratamiento antirronquidos","Se realiza mediante férulas de adelantamiento mandibular que modifican la posición de la mandíbula y la lengua","Muchos ronquidos por las noches",1,10);




select * from Tratamiento;

CREATE TABLE  Cita (
id INT NOT NULL AUTO_INCREMENT primary key,
idPacientes INT  not NULL,
idOdontologo INT  not NULL,
idTratamiento int not null,
idTratamiento2 int null,
ci_fechacita DATE NOT NULL,
ci_horainicio TIME NULL,
ci_horafinal TIME NULL,
ci_motivoconsulta VARCHAR(45) NOT NULL,
FOREIGN KEY (idPacientes) REFERENCES Pacientes (id),
FOREIGN KEY (idOdontologo) REFERENCES Odontologo (id),
FOREIGN KEY (idTratamiento) REFERENCES Tratamiento (id),
FOREIGN KEY (idTratamiento2) REFERENCES Tratamiento (id)
);
  
insert into Cita(idPacientes,idOdontologo,idTratamiento,idTratamiento2,ci_fechacita,ci_horainicio,ci_horafinal,ci_motivoconsulta)
values(1,1,1,2,"2021-12-14","11:13","1:00","Revision Dental");

insert into Cita(idPacientes,idOdontologo,idTratamiento,idTratamiento2,ci_fechacita,ci_horainicio,ci_horafinal,ci_motivoconsulta)
values(1,1,1,4,"2020-12-14","11:13","1:00","Revision Dental");

insert into Cita(idPacientes,idOdontologo,idTratamiento,idTratamiento2,ci_fechacita,ci_horainicio,ci_horafinal,ci_motivoconsulta)
values(1,1,1,6,"2019-12-14","11:13","1:00","Revision Dental");

insert into Cita(idPacientes,idOdontologo,idTratamiento,idTratamiento2,ci_fechacita,ci_horainicio,ci_horafinal,ci_motivoconsulta)
values(2,2,2,3,"2018-06-11","10:13","2:00","Necesita Ortodoncia");

insert into Cita(idPacientes,idOdontologo,idTratamiento,idTratamiento2,ci_fechacita,ci_horainicio,ci_horafinal,ci_motivoconsulta)
values(2,2,2,1,"2019-06-11","10:13","2:00","Necesita Ortodoncia");

insert into Cita(idPacientes,idOdontologo,idTratamiento,idTratamiento2,ci_fechacita,ci_horainicio,ci_horafinal,ci_motivoconsulta)
values(2,2,2,6,"2020-06-11","10:13","2:00","Necesita Ortodoncia");

insert into Cita(idPacientes,idOdontologo,idTratamiento,idTratamiento2,ci_fechacita,ci_horainicio,ci_horafinal,ci_motivoconsulta)
values(3,3,4,1,"2018-09-28","9:00","12:00","Mejorar mi apariencia dental");

insert into Cita(idPacientes,idOdontologo,idTratamiento,idTratamiento2,ci_fechacita,ci_horainicio,ci_horafinal,ci_motivoconsulta)
values(3,4,4,2,"2019-09-28","9:00","12:00","Mejorar mi apariencia dental");

insert into Cita(idPacientes,idOdontologo,idTratamiento,idTratamiento2,ci_fechacita,ci_horainicio,ci_horafinal,ci_motivoconsulta)
values(3,4,4,5,"2021-09-28","9:00","12:00","Mejorar mi apariencia dental");

insert into Cita(idPacientes,idOdontologo,idTratamiento,idTratamiento2,ci_fechacita,ci_horainicio,ci_horafinal,ci_motivoconsulta)
values(4,4,5,1,"2019-09-28","8:00","12:00","Cuidar mi tejido dental");

insert into Cita(idPacientes,idOdontologo,idTratamiento,idTratamiento2,ci_fechacita,ci_horainicio,ci_horafinal,ci_motivoconsulta)
values(4,4,5,7,"2020-09-28","8:00","12:00","Cuidar mi tejido dental");

insert into Cita(idPacientes,idOdontologo,idTratamiento,idTratamiento2,ci_fechacita,ci_horainicio,ci_horafinal,ci_motivoconsulta)
values(4,4,5,8,"2022-09-28","8:00","12:00","Cuidar mi tejido dental");

insert into Cita(idPacientes,idOdontologo,idTratamiento,idTratamiento2,ci_fechacita,ci_horainicio,ci_horafinal,ci_motivoconsulta)
values(5,5,6,1,"2019-07-11","7:00","9:00","Se le calleron varios dientes");

insert into Cita(idPacientes,idOdontologo,idTratamiento,idTratamiento2,ci_fechacita,ci_horainicio,ci_horafinal,ci_motivoconsulta)
values(5,5,6,4,"2019-09-11","7:00","9:00","Se le calleron varios dientes");

insert into Cita(idPacientes,idOdontologo,idTratamiento,idTratamiento2,ci_fechacita,ci_horainicio,ci_horafinal,ci_motivoconsulta)
values(5,5,6,3,"2019-11-11","7:00","9:00","Se le calleron varios dientes");

insert into Cita(idPacientes,idOdontologo,idTratamiento,idTratamiento2,ci_fechacita,ci_horainicio,ci_horafinal,ci_motivoconsulta)
values(6,1,7,1,"2018-10-11","1:00","5:00","Tiene varias Caries");

insert into Cita(idPacientes,idOdontologo,idTratamiento,idTratamiento2,ci_fechacita,ci_horainicio,ci_horafinal,ci_motivoconsulta)
values(6,1,7,4,"2018-12-11","1:00","5:00","Tiene varias Caries");

insert into Cita(idPacientes,idOdontologo,idTratamiento,idTratamiento2,ci_fechacita,ci_horainicio,ci_horafinal,ci_motivoconsulta)
values(6,1,7,6,"2019-01-12","1:00","5:00","Tiene varias Caries");

insert into Cita(idPacientes,idOdontologo,idTratamiento,idTratamiento2,ci_fechacita,ci_horainicio,ci_horafinal,ci_motivoconsulta)
values(7,2,8,9,"2019-06-12","1:00","5:00","Tengo un poco torcida la mandibula");

insert into Cita(idPacientes,idOdontologo,idTratamiento,idTratamiento2,ci_fechacita,ci_horainicio,ci_horafinal,ci_motivoconsulta)
values(7,2,8,2,"2020-06-12","1:00","5:00","Tengo un poco torcida la mandibula");

insert into Cita(idPacientes,idOdontologo,idTratamiento,idTratamiento2,ci_fechacita,ci_horainicio,ci_horafinal,ci_motivoconsulta)
values(7,2,8,5,"2021-06-12","1:00","5:00","Tengo un poco torcida la mandibula");

insert into Cita(idPacientes,idOdontologo,idTratamiento,idTratamiento2,ci_fechacita,ci_horainicio,ci_horafinal,ci_motivoconsulta)
values(8,3,9,1,"2018-05-04","3:00","6:00","tiene sensibilidad dental");

insert into Cita(idPacientes,idOdontologo,idTratamiento,idTratamiento2,ci_fechacita,ci_horainicio,ci_horafinal,ci_motivoconsulta)
values(8,3,9,3,"2019-05-04","3:00","6:00","tiene sensibilidad dental");

insert into Cita(idPacientes,idOdontologo,idTratamiento,idTratamiento2,ci_fechacita,ci_horainicio,ci_horafinal,ci_motivoconsulta)
values(8,3,9,8,"2020-05-04","3:00","6:00","tiene sensibilidad dental");

insert into Cita(idPacientes,idOdontologo,idTratamiento,idTratamiento2,ci_fechacita,ci_horainicio,ci_horafinal,ci_motivoconsulta)
values(9,4,10,1,"2019-04-15","8:00","10:00","Tiene mal aliento");

insert into Cita(idPacientes,idOdontologo,idTratamiento,idTratamiento2,ci_fechacita,ci_horainicio,ci_horafinal,ci_motivoconsulta)
values(9,4,10,3,"2020-07-01","8:00","10:00","Tiene mal aliento");

insert into Cita(idPacientes,idOdontologo,idTratamiento,idTratamiento2,ci_fechacita,ci_horainicio,ci_horafinal,ci_motivoconsulta)
values(9,4,10,4,"2021-04-06","8:00","10:00","Tiene mal aliento");

insert into Cita(idPacientes,idOdontologo,idTratamiento,idTratamiento2,ci_fechacita,ci_horainicio,ci_horafinal,ci_motivoconsulta)
values(10,5,11,1,"2019-08-12","6:00","8:00","Tiene muchos ronqui por las noches");

insert into Cita(idPacientes,idOdontologo,idTratamiento,idTratamiento2,ci_fechacita,ci_horainicio,ci_horafinal,ci_motivoconsulta)
values(10,5,11,6,"2020-08-12","6:00","8:00","Tiene muchos ronqui por las noches");

insert into Cita(idPacientes,idOdontologo,idTratamiento,idTratamiento2,ci_fechacita,ci_horainicio,ci_horafinal,ci_motivoconsulta)
values(10,5,11,8,"2021-08-12","6:00","8:00","Tiene muchos ronqui por las noches");

select * from Cita;
  

/*CREATE TABLE  Facturacion (
  idFacturacion INT  auto_increment not NULL primary key,
  idPacientes int not null,
  idCita int NOT NULL,
  fa_costocita INT NOT NULL,
  fa_fechamaximapago DATE NOT NULL,
  foreign key (idCita) references Cita(idCita),
  foreign key (idPacientes) references Pacientes(idPacientes)
  );
drop table facturacion ;
  
  insert into facturacion values(201,100000,'2021-09-07',301,1);*/


CREATE TABLE  HistorialMedico (
  id INT auto_increment NOT NULL primary key,
  hi_antecedentespersonales VARCHAR(45) NULL,
  hi_antecedentesfamiliares VARCHAR(45) NULL,
  hi_odontologosanteriores VARCHAR(45) NULL,
  hi_tratamientoanterior VARCHAR(45) NULL,
  hi_alergias VARCHAR(45) NULL,
  idPacientes INT NOT NULL,
foreign key (idPacientes) references Pacientes(id)

);

SELECT * FROM pacientes WHERE pa_cedula  = 1021392147