insert into cinema (name_, address)
values('Bestest Family Cinemark', '101 Curvy Street, Dallas, TX 76446');

insert into concessions (cinema_id, sales)
values(1, 3424.23),(1,23432.23);

insert into customers(first_name, last_name, tickets_id, cinema_id)
values('Debbie', 'Jones', 1, 1), ('Ben', 'Worthington', 2, 1), ('Grant', 'Meathooks', 3, 1);

insert into movie (name_,rating, run_time )
values('The Robot Who Could', 'PG-13', 232), ('Teeny Mod', 'R', 132), 
('Jimmy''s Parents are Dead Because He Touched Himself', 'G', 315);

insert into movies (movie_id, cinema_id)
values(1,1),(2,1),(3,1);

insert into theater(cinema_id, name_)
values(1,'Theater 2'),(1,'Theater 3'),(1,'Theater 4');

insert into showings(theater_id, movie_id, date_, start_time,end_time)
values
(1,1,'2022-02-03', '12:30', '14:45'),
(2,2,'2022-02-03', '12:30', '14:45'),
(3,3,'2022-02-03', '12:30', '14:45'),
(1,1,'2022-02-03', '14:55', '16:45'),
(2,2,'2022-02-03', '14:55', '16:45'),
(3,3,'2022-02-03', '14:55', '16:45');

insert into tickets(showings_id, price)
values
(1,8.50),(2,8.50),(2,8.50),(3,8.50),(4,8.50),
(4,8.50),(4,8.50),(5,8.50),(6,8.50),(6,8.50);