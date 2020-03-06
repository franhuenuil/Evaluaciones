/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     6/3/2020 12:43:01                            */
/*==============================================================*/

drop table if exists CINE;

drop table if exists DERIVA;

drop table if exists FICHA;

drop table if exists FUNCION;

drop table if exists OPINION;

drop table if exists PARTICIPANTE;

drop table if exists PELICULA;

drop table if exists POSEE;

drop table if exists PROMOCION;

drop table if exists SALA;

/*==============================================================*/
/* Table: CINE                                                  */
/*==============================================================*/
create table CINE
(
   DIRECCION            int not null,
   NOMBRE               varchar(30),
   TELEFONO             int,
   primary key (DIRECCION)
);

/*==============================================================*/
/* Table: DERIVA                                                */
/*==============================================================*/
create table DERIVA
(
   ID                   int not null,
   primary key (ID)
);

/*==============================================================*/
/* Table: FICHA                                                 */
/*==============================================================*/
create table FICHA
(
   IDENTIFICADOR        int not null,
   ID                   int,
   TITULO_DIST          varchar(30) not null,
   TITULO_ORIG          varchar(30) not null,
   GENERO               varchar(10) not null,
   IDIOMA               varchar(10) not null,
   SUBTITULO            bool not null,
   PAIS_ORIGEN          varchar(10) not null,
   ANO_PROD             int not null,
   URL                  varchar(30) not null,
   DURACION             time not null,
   CALIFICACION         varchar(2) not null,
   FECHA_ESTRENO        date not null,
   RESUMEN              varchar(180) not null
);

/*==============================================================*/
/* Table: FUNCION                                               */
/*==============================================================*/
create table FUNCION
(
   IDENTIFICACION       int not null,
   IDENTIFICADOR        int,
   HORA                 time,
   DIA                  date
);

/*==============================================================*/
/* Table: OPINION                                               */
/*==============================================================*/
create table OPINION
(
   ID                   int not null,
   NOMBRE               varchar(30) not null,
   EDAD                 int not null,
   FECHA_OP             date not null,
   CALIFICACION         varchar(2) not null,
   COMENTARIO           varchar(50) not null,
   primary key (ID)
);

/*==============================================================*/
/* Table: PARTICIPANTE                                          */
/*==============================================================*/
create table PARTICIPANTE
(
   IDENTIFICADOR        int,
   NOMBRE               varchar(30),
   NACIONALIDAD         varchar(10),
   PARTICIPACIONES      int,
   DIRECTOR_            varchar(15),
   ACTOR                varchar(15)
);

/*==============================================================*/
/* Table: PELICULA                                              */
/*==============================================================*/
create table PELICULA
(
   IDENTIFICADOR        int not null,
   primary key (IDENTIFICADOR)
);

/*==============================================================*/
/* Table: POSEE                                                 */
/*==============================================================*/
create table POSEE
(
   IDENTIFICADOR        int not null,
   primary key (IDENTIFICADOR)
);

/*==============================================================*/
/* Table: PROMOCION                                             */
/*==============================================================*/
create table PROMOCION
(
   DIRECCION            int not null,
   DESCUENTO            int,
   DESCRIPCION          varchar(50),
   primary key (DIRECCION)
);

/*==============================================================*/
/* Table: SALA                                                  */
/*==============================================================*/
create table SALA
(
   IDENTIFICACION       int not null,
   DIRECCION            int not null,
   BUTACA               int not null,
   NOMBRE               varchar(30),
   primary key (IDENTIFICACION)
);

alter table CINE add constraint FK_REFERENCE_11 foreign key (DIRECCION)
      references PROMOCION (DIRECCION) on delete restrict on update restrict;

alter table DERIVA add constraint FK_DERIVA2 foreign key (ID)
      references OPINION (ID) on delete restrict on update restrict;

alter table FICHA add constraint FK_DERIVA foreign key (ID)
      references DERIVA (ID) on delete restrict on update restrict;

alter table FICHA add constraint FK_TIENE2 foreign key (IDENTIFICADOR)
      references PELICULA (IDENTIFICADOR) on delete restrict on update restrict;

alter table FUNCION add constraint FK_PRESENTA foreign key (IDENTIFICACION)
      references SALA (IDENTIFICACION) on delete restrict on update restrict;

alter table FUNCION add constraint FK_REFERENCE_10 foreign key (IDENTIFICADOR)
      references PELICULA (IDENTIFICADOR) on delete restrict on update restrict;

alter table PARTICIPANTE add constraint FK_REFERENCE_12 foreign key (IDENTIFICADOR)
      references POSEE (IDENTIFICADOR) on delete restrict on update restrict;

alter table POSEE add constraint FK_POSEE2 foreign key (IDENTIFICADOR)
      references PELICULA (IDENTIFICADOR) on delete restrict on update restrict;

alter table SALA add constraint FK_TIENEN foreign key (DIRECCION)
      references CINE (DIRECCION) on delete restrict on update restrict;

