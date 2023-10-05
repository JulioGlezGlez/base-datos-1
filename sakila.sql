Se pide:

    Realiza la carga de la BBDD de Sakila, tal y como se muestra en los enlaces proporcionados.
    Realiza cada una de las siguientes consultas:
        Actores que tienen de primer nombre Scarlett.
             mysql> select * from actor where first_name = "Scarlett";
            +----------+------------+-----------+---------------------+
            | actor_id | first_name | last_name | last_update         |
            +----------+------------+-----------+---------------------+
            |       81 | SCARLETT   | DAMON     | 2006-02-15 04:34:33 |
            |      124 | SCARLETT   | BENING    | 2006-02-15 04:34:33 |
            +----------+------------+-----------+---------------------+

        Actores que tienen de apellido Johansson.
        
        mysql> select * from actor where last_name = "Johansson";
        +----------+------------+-----------+---------------------+
        | actor_id | first_name | last_name | last_update         |
        +----------+------------+-----------+---------------------+
        |        8 | MATTHEW    | JOHANSSON | 2006-02-15 04:34:33 |
        |       64 | RAY        | JOHANSSON | 2006-02-15 04:34:33 |
        |      146 | ALBERT     | JOHANSSON | 2006-02-15 04:34:33 |
        +----------+------------+-----------+---------------------+
        
        Actores que contengan una O en su nombre.
        mysql> select * from actor where first_name regexp "O";
        +----------+-------------+--------------+---------------------+
        | actor_id | first_name  | last_name    | last_update         |
        +----------+-------------+--------------+---------------------+
        |        1 | PENELOPE    | GUINESS      | 2006-02-15 04:34:33 |
        |        5 | JOHNNY      | LOLLOBRIGIDA | 2006-02-15 04:34:33 |
        |        9 | JOE         | SWANK        | 2006-02-15 04:34:33 |
        +-------------------------------------------------------------+
        36 rows in set (0,00 sec)
        
        Actores que contengan una O en su nombre y en una A en su apellido.
        mysql> select * from actor where first_name regexp "O" and last_name regexp "A";
        +----------+------------+--------------+---------------------+
        | actor_id | first_name | last_name    | last_update         |
        +----------+------------+--------------+---------------------+
        |        5 | JOHNNY     | LOLLOBRIGIDA | 2006-02-15 04:34:33 |
        |        9 | JOE        | SWANK        | 2006-02-15 04:34:33 |
        |       11 | ZERO       | CAGE         | 2006-02-15 04:34:33 |
        |      172 | GROUCHO    | WILLIAMS     | 2006-02-15 04:34:33 |
        |      176 | JON        | CHASE        | 2006-02-15 04:34:33 |
        |      188 | ROCK       | DUKAKIS      | 2006-02-15 04:34:33 |
        |      192 | JOHN       | SUVARI       | 2006-02-15 04:34:33 |
        +----------+------------+--------------+---------------------+
        16 rows in set (0,00 sec)

        
        Actores que contengan dos O en su nombre y en una A en su apellido.
        mysql> select * from actor where first_name regexp '([O]{1}).*([O]{1})' and last_name regexp 'A';
        +----------+------------+-----------+---------------------+
        | actor_id | first_name | last_name | last_update         |
        +----------+------------+-----------+---------------------+
        |       28 | WOODY      | HOFFMAN   | 2006-02-15 04:34:33 |
        |       78 | GROUCHO    | SINATRA   | 2006-02-15 04:34:33 |
        |      172 | GROUCHO    | WILLIAMS  | 2006-02-15 04:34:33 |
        +----------+------------+-----------+---------------------+
        3 rows in set (0,00 sec

        Actores donde su tercera letra sea B.
        mysql> select * from actor where first_name regexp '..B';
        +----------+------------+-----------+---------------------+
        | actor_id | first_name | last_name | last_update         |
        +----------+------------+-----------+---------------------+
        |       15 | CUBA       | OLIVIER   | 2006-02-15 04:34:33 |
        |       19 | BOB        | FAWCETT   | 2006-02-15 04:34:33 |
        |      118 | CUBA       | ALLEN     | 2006-02-15 04:34:33 |
        |      125 | ALBERT     | NOLTE     | 2006-02-15 04:34:33 |
        |      146 | ALBERT     | JOHANSSON | 2006-02-15 04:34:33 |
        |      182 | DEBBIE     | AKROYD    | 2006-02-15 04:34:33 |
        |      189 | CUBA       | BIRCH     | 2006-02-15 04:34:33 |
        +----------+------------+-----------+---------------------+
        7 rows in set (0,00 sec)
        
        Ciudades que empiezan por a.
        mysql> select * from city where city regexp '^A';
        +---------+-------------------------+------------+---------------------+
        | city_id | city                    | country_id | last_update         |
        +---------+-------------------------+------------+---------------------+
        |       1 | A Coruña (La Coruña)    |         87 | 2006-02-15 04:45:25 |
        |       2 | Abha                    |         82 | 2006-02-15 04:45:25 |
        |       3 | Abu Dhabi               |        101 | 2006-02-15 04:45:25 |
        +----------------------------------------------------------------------+     
        43 rows in set (0,00 sec)
        
        Ciudades que acaban por s.
        mysql> select * from city where city regexp 'S$';
        +---------+----------------------------+------------+---------------------+
        | city_id | city                       | country_id | last_update         |
        +---------+----------------------------+------------+---------------------+
        |      25 | Angra dos Reis             |         15 | 2006-02-15 04:45:25 |
        |      26 | Anápolis                   |         15 | 2006-02-15 04:45:25 |
        +-------------------------------------------------------------------------+        
        31 rows in set (0,00 sec)
        
        Ciudades del country 61.
        mysql> select * from city where country_id in (61);
        +---------+----------+------------+---------------------+
        | city_id | city     | country_id | last_update         |
        +---------+----------+------------+---------------------+
        |     115 | Chisinau |         61 | 2006-02-15 04:45:25 |
        +---------+----------+------------+---------------------+
        1 row in set (0,00 sec)
                
        Ciudades del country Spain.
        
        
        Ciudades con nombres compuestos.
        Películas con una duración entre 80 y 100.
        
        mysql> select title,length from film where length between 80 and 100;
        +-------------------------+--------+
        | title                   | length |
        +-------------------------+--------+
        | ACADEMY DINOSAUR        |     86 |
        | ALICE FANTASIA          |     94 |
        +----------------------------------+ 
        147 rows in set (0,00 sec)
        
        Peliculas con un rental_rate entre 1 y 3.
        
        mysql> select title,rental_rate from film where rental_rate between 1 and 3;
        +-----------------------------+-------------+
        | title                       | rental_rate |
        +-----------------------------+-------------+
        | ADAPTATION HOLES            |        2.99 |
        | AFFAIR PREJUDICE            |        2.99 |
        | AFRICAN EGG                 |        2.99 |
        +-------------------------------------------+  
        323 rows in set (0,00 sec)

        Películas con un titulo de más de 12 letras.
        
        mysql> select title from film where title regexp ".............";
        +-----------------------------+
        | title                       |
        +-----------------------------+
        | ACADEMY DINOSAUR            |
        | ACE GOLDFINGER              |
        +-----------------------------+
        691 rows in set (0,00 sec)

        Peliculas con un rating de PG o G.
        
        
        Peliculas que no tengan un rating de NC-17.
        
        mysql> select title,rating from film where rating not in ("NC-17");
        +-----------------------------+--------+
        | title                       | rating |
        +-----------------------------+--------+
        | ACADEMY DINOSAUR            | PG     |
        | ACE GOLDFINGER              | G      |
        | AFFAIR PREJUDICE            | G      |
        +--------------------------------------+
        790 rows in set (0,00 sec)
        
        Peliculas con un rating PG y duracion de más de 120.
        
        mysql> select title,rating,length from film where rating in ("PG") and length = 120;
        Empty set (0,00 sec)
        
        ¿Cuantos actores hay?
        
        mysql> select *  from actor;
        +----------+-------------+--------------+---------------------+
        | actor_id | first_name  | last_name    | last_update         |
        +----------+-------------+--------------+---------------------+
        |        1 | PENELOPE    | GUINESS      | 2006-02-15 04:34:33 |
        |        2 | NICK        | WAHLBERG     | 2006-02-15 04:34:33 |
        +-------------------------------------------------------------+
        200 rows in set (0,00 sec)
        
        ¿Cuántas ciudades tiene el country Spain?
        ¿Cuántos countries hay que empiezan por a?
        Media de duración de peliculas con PG.
        
        mysql> select avg(length) from film where rating in ("PG");
            +-------------+
            | avg(length) |
            +-------------+
            |    112.0052 |
            +-------------+
            1 row in set (0,00 sec)
        
        Suma de rental_rate de todas las peliculas.
        
        mysql> select sum(rental_rate) from film;
        +------------------+
        | sum(rental_rate) |
        +------------------+
        |          2980.00 |
        +------------------+
        1 row in set (0,00 sec)
        
        Pelicula con mayor duración.
        
        mysql> select max(length) from film;
        +-------------+
        | max(length) |
        +-------------+
        |         185 |
        +-------------+
        1 row in set (0,00 sec)
        
        Película con menor duración.
        
        mysql> select min(length) from film;
        +-------------+
        | min(length) |
        +-------------+
        |          46 |
        +-------------+
        1 row in set (0,00 sec)
        
        Mostrar las ciudades del country Spain (multitabla).
        Mostrar el nombre de la película y el nombre de los actores.
        Mostrar el nombre de la película y el de sus categorías.
        Mostrar el country, la ciudad y dirección de cada miembro del staff.
        Mostrar el country, la ciudad y dirección de cada customer.
        Numero de películas de cada rating
        Cuantas películas ha realizado el actor ED CHASE.
        Media de duración de las películas cada categoría.
