--TASK 1
/* DDL Commands
   1. (create) Create database university;
               Create table students;
               Create view for_students;

   2. (drop) DROP TABLE ;
               Drop object_type object_name;
               Drop database university;
               Drop table student;

   3. (Alter)  ALTER TABLE table_name ADD column_name COLUMN-definition;


   DML Commands
   1.  INSERT INTO TABLE_NAME
       VALUES (value1, value2, value3, .... valueN);

   INSERT INTO students (RollNo, FIrstName, LastName) VALUES ('60', 'Tom', 'Erichsen');

   2. (delete) DELETE FROM table_name [WHERE condition];

              DELETE FROM students
              WHERE FirstName = 'Jhon';

   3. (update) UPDATE table_name SET [column_name1= value1,...column_nameN = valueN] [WHERE CONDITION]

             UPDATE students
             SET FirstName = 'Jhon', LastName=' Wick'
             WHERE StudID = 3;

   4. (select) SELECT *
               FROM students
 */



create table customers            --task 2
(
    ID               integer,
    full_name        varchar(50) NOT NULL ,
    timestamp        timestamp NOT NULL ,
    delivery_address text NOT NULL ,
    primary key (ID));

create table orders
(
    code             integer,
    customer_id      integer,
    total_sum        double precision NOT NULL ,
    is_paid          boolean NOT NULL ,
    primary key (code),
    foreign key (customer_id) references customers);

create table products
(
    ID               varchar,
    name             varchar UNIQUE NOT NULL ,
    description      text,
    price            double precision NOT NULL CHECK ( price > 0 ),
    primary key (ID));

create table order_items
(
    order_code       integer UNIQUE ,
    product_id       varchar UNIQUE ,
    quantity         integer NOT NULL CHECK ( quantity > 0 )
    primary key (order_code, product_id),
    foreign key (order_code) references orders,
    foreign key (product_id) references products);

--TASK 3
 create table student
(
    full_name            varchar(50),
    age                  integer NOT NULL ,
    birth_date           timestamp NOT NULL ,
    gender               char NOT NULL ,
    average_grade        double precision,
    info_about_yourself  text,
    need_for_dormitory   boolean,
    additional_info      text,
    primary key (full_name));

create table instructors
(
    full_name            varchar(50),
    speaking_languages   text NOT NULL ,
    work_experience      text,
    remote_lessons       boolean,
    primary key (full_name)
 )

create table lesson_participants
(
    lesson_title          varchar(50),
    teaching_instructor   varchar REFERENCES instructors(full_name),
    studying_students     varchar REFERENCES student(full_name),
    room_number           integer

)


--TASK 4
/* INSERT:  insert into products values ('20B010203', 'Anar', 'sbhbx', '200$')

   UPDATE:  UPDATE products
            SET price = 'price' * 1.05;

   DELETE:  delete from products               drop table r
            where name = 'Anar';
 */
