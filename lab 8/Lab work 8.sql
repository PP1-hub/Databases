CREATE FUNCTION inc(val integer) RETURNS integer AS              -- 1a
    $$
    BEGIN
        RETURN val + 1;
    end;
    $$
    LANGUAGE plpgsql;
   select inc(3);

CREATE FUNCTION sum(p1 numeric, p2 numeric) RETURNS numeric AS    --1b
    $$
    BEGIN
        RETURN p1 + p2;
    end;
    $$
    LANGUAGE plpgsql;
  select sum(5, 6);

CREATE FUNCTION bool_int(p integer ) RETURNS boolean AS            --1c
    $$
    declare result boolean;
    BEGIN
       if p % 2 = 0 then
           result = true;
       else
           result = false;
       end if;
       return result;
    end;
    $$
   LANGUAGE plpgsql;
select bool_int(13);

CREATE FUNCTION is_valid(password varchar) RETURNS bool AS      --1D
    $$
    BEGIN
        IF length(password)>5 then
            return true;
        else
            return false;
        end if;
    end;

    $$
language plpgsql;

select is_valid('');

CREATE FUNCTION one_input(s varchar(50)) RETURNS record AS        --1e
    $$
    declare rec record;
    BEGIN
        select split_part(s, '', 1) a,
               split_part(s, '', 2) b
            into rec;
        return rec;

    end;
    $$
  LANGUAGE plpgsql;

select one_input('Anar');

--TASK 2
CREATE TABLE account(                                          --2 A
   id serial primary key,
   bill integer,
   login varchar(255),
   account_update timestamp

);
INSERT INTO account(bill, login) VALUES (1200, 'aka_nazi');
INSERT INTO account(bill,login) VALUES (560, 'bb_ARu');

CREATE function account_change() RETURNS trigger AS
    $$
    BEGIN
        new.account_update = now();
        return new;

    end;
    $$
language plpgsql;

create trigger accounts_timestamp before insert or update on account
    for each row execute procedure account_change();

select * from account where id=1;

insert into account(bill, login) values(100, 'Amishka.252');

update account
set bill='100 ---- 99.9'
where id=1;


CREATE table people(                                             -- 2B
    id serial primary key,
    name varchar(100),
    birthday integer,
    age numeric
);
select extract(year from current_date);

CREATE FUNCTION age_people() RETURNS TRIGGER AS
    $$
    BEGIN
        new.age = extract(year from current_date) - new.birth_year;
        return new;
    end;

    $$
language plpgsql;

drop trigger age_from_year on people;
create trigger age_from_year before insert or update on people
    for each row execute procedure age_people();

insert into people(name, birthday) values ('Alex', 1999);
insert into people(name, birthday) values ('Alexa', 1898);
insert into people(name, birthday) values ('Duffy', 2020);

update people set birthday=2020 where id=2;

select *
from people;


CREATE TABLE item(                                                --2c
    id serial primary key,
    name varchar(100),
    price numeric,
    total_price numeric

);
INSERT INTO item(name, price) VALUES ('AirPods Pro', 170);

CREATE FUNCTION item_tax() RETURNS TRIGGER AS
    $$
    BEGIN
        new.total_price = new.price + (new.price * 0.12);
        return new;

    end;
    $$
language plpgsql;

CREATE TRIGGER total_price_tax before insert or update on item
    for each row execute procedure item_tax();

INSERT INTO item(name, price) VALUES ('AirPods1' , 150);
update item set price=200 where id=1;

select *
from item;



CREATE FUNCTION prevent_del() RETURNS TRIGGER AS                 --2D
    $$
    BEGIN
        raise exception 'You cannot delete this';
    end;

    $$
language plpgsql;

create trigger del before delete on products
    for each row execute procedure prevent_del();

delete from products
where id = 1;

CREATE TRIGGER total_price_tax after insert on item                    --2E
    for each row execute procedure is_valid();
CREATE TRIGGER total_price_tax after insert on item
    for each row execute procedure one_input();


--TASK 3
-- A function is used to calculate result using giving inputs
-- A procedure is used to perform certain tasks in order

--TASK 4
CREATE table employee(
    id serial primary key,
    name varchar(50),
    date_of_birth date,
    age integer,
    salary integer,
    work_experience integer,
    discount integer
);
INSERT INTO employee(name, date_of_birth, age, salary, work_experience, discount) VALUES ('Dylan', '1991-06-10', 26, 4000, 5, 0);

select *            --a
from employee;
create procedure salary_inc() AS

 $$
 Begin
     update employee set salary = salary + (salary*0.1) where work_experience / 2 > 0;
     update employee set discount = discount + (salary*0.1) where work_experience / 2 > 0;
     update employee set discount = discount + (salary*0.1) where work_experience > 5;
 end;
 $$
language plpgsql;

create procedure inc() AS
    $$
    BEGIN
        update employee set salary = salary + (salary * 0.15) where age > 40;
        update employee set salary = salary + (salary * 0.15) where work_experience > 8;
        update employee set discount = discount + (discount * 0.20) where work_experience > 8;
    end;
    $$
language plpgsql;

call salary_inc();
call inc();

--TASK 5
create table members (
    memid integer primary key,
    surname character varying(200),
    firstname character varying(200),
    address character varying(300),
    zipcode integer,
    telephone character varying(20),
    recommendedby integer references members(memid),
    joindate timestamp
);
create table facilities (
    facid integer,
    name character varying(100),
    membercost numeric,
    guestcost numeric,
    initialoutlay numeric,
    monthlymaintenance numeric
);
create table bookings (
    facid integer primary key references  facilities(facid),
    memid integer primary key references members(memid),
    starttime timestamp,
    slots integer
);

INSERT INTO members(memid, surname, firstname, address, zipcode, telephone, recommendedby, joindate) VALUES
(0, 'Luke', 'Brown', '2696 Stonepot Road', '90210', '123-123', NULL, '2008-01-31'),
(1, 'Penny', 'Davis', '983 Church Street', '78234', '718-455', NULL, '2021-08-20'),
(2, 'Karen', 'McCall','1305 Raver Croft Drive', '34589', '765-789', '1', '2021-10-04'),
(3, 'Levi', 'Miller', '4456 Vineyard Drive', '23098', '084-465', NULL,'2021-12-07'),
(4, 'Daisy', 'Stewart', '2710 Farland Street', '09823', '773-924', '2', '2021-12-08'),
(5, 'Brandon', 'Mitchell', '5017 Burnside Avenue', '34512', '435-631', '2', '2021-12-21'),
(6, 'Valerie', 'Smith', '5018 Burnside Avenue','67432', '435-690', NULL, '2021-11-29' ),
(7, 'Melanie', 'Powell', '4036 Edsel Road', '90211', '267-480', '1', '2021-12-06'),
(8, 'Sonya', 'Baker', '940 Irish Lane', '90220', '234-900', '3', '2021-09-10'),
(9, 'Richard', 'Bell', '4701 Laurel Lane', '90230', '901-902', '1', '2021-09-08'),
(10, 'Mike', 'Power', '1879 August Lane', '90100', '318-376', NULL, '2021-07-26'),
(11, 'Chester', 'Woodbury', '2821 Trouser Leg Road', '09834', '245-098', NULL, '2021-07-20'),
(12, 'Bruce', 'Johnson', '3124 Valley View Drive', '87600', '617-744', '1', '2021-08-06'),
(13, 'Karen', 'Duffy', '335 Webster Street', '09867', '345-009', '2', '2021-09-14'),
(14, 'Jonathan', 'Gay', '3427 Finwood Road', '90434', '732-514', '3', '2021-09-27'),
(15, 'Kenneth', 'Duffy', '3376 Willow Greene Drive', '90834', '334-303', NULL, '2021-10-20'),
(16, 'Heather', 'Pauli', '1533 Drummond Street', '98710', '973-226', '2', '2021-12-21'),
(17, 'Kristie', 'McCombs', '3310 Palmer Road', '00000', '972-225', '1', '2021-12-06'),
(18, 'Kenneth', 'Jhonsen', '504 Thorn Street', '09834', '307-567', NULL, '2021-12-21'),
(19, 'Scott', 'Upton', '711 Hamill Avenue', '09800', '317-565','1', '2021-08-19'),
(20, 'Karen', 'Lowa', '100 Stratford Court', '09812', '345-098', '4', '2021-10-12'),
(21, 'Constance', 'Morris', '4594 Lightning Point Drive', '02345', NULL, '3', '2021-10-20'),
(22, 'Edward', 'Cooper', '4529 Callison Lane', '45601', '445-001', '2', '2021-09-07');

with recursive recommenders(recommender, member) AS(
    select recommendedby, memid
    from members
    union all
    select mems.recommendedby, recs.member
		from recommenders recs
		inner join members mems
			on mems.memid = recs.recommender

)
select recs.member member, recs.recommender, mems.firstname, mems.surname
	from recommenders recs
	inner join members mems
		on recs.recommender = mems.memid
	where recs.member = 22 or recs.member = 12
order by recs.member asc, recs.recommender desc


