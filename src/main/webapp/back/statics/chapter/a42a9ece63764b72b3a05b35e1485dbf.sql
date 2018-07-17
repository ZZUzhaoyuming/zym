/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/11/28 9:30:42                           */
/*==============================================================*/


drop table if exists book_bookrack;

drop table if exists t_book;

drop table if exists t_bookrack;

drop table if exists t_chapter;

drop table if exists t_manager;

drop table if exists t_picture;

drop table if exists t_sort;

drop table if exists t_user;

/*==============================================================*/
/* Table: book_bookrack                                         */
/*==============================================================*/
create table book_bookrack
(
   id                   varchar(40) not null,
   rack_id              varchar(40),
   book_id              varchar(40),
   primary key (id)
);

/*==============================================================*/
/* Table: t_book                                                */
/*==============================================================*/
create table t_book
(
   id                   varchar(40) not null,
   name                 varchar(20),
   sketch               varchar(100),
   publishdate          timestamp,
   sort_id              varchar(40),
   readnumber           varchar(10),
   photo                varchar(100),
   author               varchar(40),
   isbn                 varchar(20),
   publish              varchar(20),
   status               varchar(20),
   primary key (id)
);

/*==============================================================*/
/* Table: t_bookrack                                            */
/*==============================================================*/
create table t_bookrack
(
   id                   varchar(40) not null,
   name                 varchar(40),
   primary key (id)
);

/*==============================================================*/
/* Table: t_chapter                                             */
/*==============================================================*/
create table t_chapter
(
   id                   varchar(40) not null,
   chapter_name         varchar(20),
   url                  varchar(100),
   book_id              varchar(40),
   primary key (id)
);

/*==============================================================*/
/* Table: t_manager                                             */
/*==============================================================*/
create table t_manager
(
   id                   varchar(40) not null,
   username             varchar(20),
   password             varchar(40),
   realname             varchar(20),
   bir                  timestamp,
   primary key (id)
);

/*==============================================================*/
/* Table: t_picture                                             */
/*==============================================================*/
create table t_picture
(
   id                   varchar(40) not null,
   name                 varchar(20),
   url                  varchar(100),
   uploaddate           timestamp,
   primary key (id)
);

/*==============================================================*/
/* Table: t_sort                                                */
/*==============================================================*/
create table t_sort
(
   id                   varchar(40) not null,
   name                 varchar(20),
   parent_id            varchar(40),
   primary key (id)
);

/*==============================================================*/
/* Table: t_user                                                */
/*==============================================================*/
create table t_user
(
   id                   varchar(40) not null,
   name                 varchar(20),
   acount_number        varchar(40),
   password             varchar(40),
   photo                varchar(100),
   inreadcount          int(5),
   outreadcount         int(5),
   user_status          varchar(20),
   registdate           timestamp,
   rack_id              varchar(40),
   bir                  timestamp,
   primary key (id)
);

