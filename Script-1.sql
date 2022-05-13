create table if not exists cinema(
id serial primary key,
name_ varchar(50),
address varchar(200)
);
create table if not exists  movie(
id serial primary key,
name_ varchar(100),
rating char(5),
run_time smallint
);
create table if not exists  movies(
movie_id int not null ,
foreign key (movie_id) references movie(id),
cinema_id int not null,
foreign key (cinema_id) references cinema(id)
);
create table if not exists  concessions(
id serial primary key,
cinema_id int not null,
foreign key (cinema_id) references cinema(id),
sales numeric(8,2)
);
create table if not exists  customers(
id serial primary key,
first_name varchar(50),
last_name varchar(50),
tickets_id int,
cinema_id int not null,
foreign key (cinema_id) references cinema(id)
);
create table if not exists  theater(
id serial primary key,
cinema_id int not null,
foreign key(cinema_id) references cinema(id),
name_ varchar(20) null
);
create table if not exists  showings(
id serial primary key,
theater_id int not null,
foreign key (theater_id) references theater(id),
movie_id int not null,
date_ date not null,
start_time time not null,
end_time time not null
);
create table if not exists  tickets(
id serial primary key,
showings_id int not null,
foreign key (showings_id) references showings(id),
price numeric(4,2) not null
);
