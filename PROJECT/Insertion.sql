--costumer
INSERT INTO customer (id, address, name, phone) VALUES (101, '202 Pyramid Valley Road', 'Angela', '+77012003040');
INSERT INTO customer (id, address, name, phone) VALUES (102, '574 Airplane Avenue', 'Zola', '+77089800101');
INSERT INTO customer (id, address, name, phone) VALUES (105, '3669 Davis Street', 'Freda', '+77012307856');
INSERT INTO customer (id, address, name, phone) VALUES (104, '4856 Thompson Drive', 'Steven', '+77055000505');
INSERT INTO customer (id, address, name, phone) VALUES (109, '3695 Langtown Road', 'Vicky', '+77096780909');
INSERT INTO customer (id, address, name, phone) VALUES (112, '2101 Camden Street', 'Crystal', '+77012004389');
INSERT INTO customer (id, address, name, phone) VALUES (113, '1865 Junior Avenue', 'Sue', '+77055934567');
INSERT INTO customer (id, address, name, phone) VALUES (110, '1865 Junior Avenue', 'Lola', '+77032347890');
INSERT INTO customer (id, address, name, phone) VALUES (111, '4855 Thompson Drive', 'Mike', '+7086781220');
INSERT INTO customer (id, address, name, phone) VALUES (117, '1487 Whitetail Lane', 'Dennis', '+77056708040');
INSERT INTO customer (id, address, name, phone) VALUES (118, '1142 Five Points', 'Shannon', '+77089300102');
INSERT INTO customer (id, address, name, phone) VALUES (119, '201 Pyramid Valley Road', 'Jone', '+77017192054');
INSERT INTO customer (id, address, name, phone) VALUES (114, '3669 Davis Street', 'Gretchen', '+77072309876');
INSERT INTO customer (id, address, name, phone) VALUES (115, '1365 Heather Sees Way', 'Ethier', '+77001002340');
INSERT INTO customer (id, address, name, phone) VALUES (120, '1364 Heather Sees Way', 'Retha', '+77013214567');


--company
INSERT INTO company (id, name) VALUES ('002', 'Apple');
INSERT INTO company (id, name) VALUES ('009', 'BMW');
INSERT INTO company (id, name) VALUES ('011', 'Goggle');
INSERT INTO company (id, name) VALUES ('005', 'Coca Cola');
INSERT INTO company (id, name) VALUES ('007', 'Amazon');

--package
INSERT INTO package (id, amount, type, name, cost) VALUES (301,32, 'big', 'cupboard', 678 );
INSERT INTO package (id, amount, type, name, cost) VALUES (302,1, 'big', 'board', 8423 );
INSERT INTO package (id, amount, type, name, cost) VALUES (303,4, 'medium', 'notebook', 534 );
INSERT INTO package (id, amount, type, name, cost) VALUES (304,3, 'big', 'car', 678 );
INSERT INTO package (id, amount, type, name, cost) VALUES (305,24, 'big', 'car', 4333 );
INSERT INTO package (id, amount, type, name, cost) VALUES (306,100, 'big', 'car', 6543);
INSERT INTO package (id, amount, type, name, cost) VALUES (307,1, 'medium', 'Iphone 13', 600 );
INSERT INTO package (id, amount, type, name, cost) VALUES (308,35, 'small', 'AirPods', 960 );
INSERT INTO package (id, amount, type, name, cost) VALUES (309,67, 'small', 'watch', 554 );
INSERT INTO package (id, amount, type, name, cost) VALUES (300,13, 'big', 'keyboard', 2210 );

--account
INSERT INTO account(id, login,  credit_card_id, customer_id) VALUES (234,  'angela_kk', 7656877, 101);
INSERT INTO account(id,  login, credit_card_id, customer_id) VALUES (235,  'zola_77', 7653660, 102);
INSERT INTO account(id,  login, credit_card_id, customer_id) VALUES (226,  'freda_kashin', 4356789, 105);
INSERT INTO account(id,  login, credit_card_id, customer_id) VALUES (245,  'steven_mars', 3452116, 104);
INSERT INTO account(id,  login, credit_card_id, customer_id) values (299,  'vicky_01', 4433678, 109);
INSERT INTO account(id,  login, credit_card_id, customer_id) VALUES (266,  'crystal_mash', 7654567, 112);
INSERT INTO account(id,  login, credit_card_id, customer_id) VALUES (231,  'sue1.mk',0013450, 113 );
INSERT INTO account(id,  login, credit_card_id, customer_id) VALUES (232,  'lolaaa2', 2456099, 110);
INSERT INTO account(id,  login, credit_card_id, customer_id) VALUES (236,  'mike_vaz', 4500901, 111);
INSERT INTO account(id,  login, credit_card_id, customer_id) VALUES (237, 'denniska', 1200563, 117);
INSERT INTO account(id,  login, credit_card_id, customer_id) VALUES (238,  'shannon_9', 2368743, 118);
INSERT INTO account(id,  login, credit_card_id, customer_id) VALUES (239,  'jone.bone', 7632643, 119);
INSERT INTO account(id,  login, credit_card_id, customer_id) VALUES (240,  'greta_kakv_skazke', 3724633, 114);
INSERT INTO account(id,  login, credit_card_id, customer_id) VALUES (243,  'Ethier_lk', 7237232,115);
INSERT INTO account(id,  login, credit_card_id, customer_id) VALUES (244,  'rethaa', 2638763,120);

--bill
INSERT INTO bill (id, total_price) VALUES ('901', '567');
INSERT INTO bill (id, total_price) VALUES ('902', '1275');
INSERT INTO bill (id, total_price) VALUES ('903', '870');
INSERT INTO bill (id, total_price) VALUES ('904', '1500');
INSERT INTO bill (id, total_price) VALUES ('905', '600');
INSERT INTO bill (id, total_price) VALUES ('906', '15000');
INSERT INTO bill (id, total_price) VALUES ('907', '3000');
INSERT INTO bill (id, total_price) VALUES ('908', '99');
INSERT INTO bill (id, total_price) VALUES ('909', '500');
INSERT INTO bill (id, total_price) VALUES ('910', '2000');
INSERT INTO bill (id, total_price) VALUES ('911', '450');
INSERT INTO bill (id, total_price) VALUES ('912', '155');
INSERT INTO bill (id, total_price) VALUES ('913', '780');
INSERT INTO bill (id, total_price) VALUES ('914', '567');
INSERT INTO bill (id, total_price) VALUES ('915', '2780');

--transport
INSERT INTO transport (name, price_for_delivery) VALUES ('Truck', 300);
INSERT INTO transport (name, price_for_delivery) VALUES ('Truck1721', 350);
INSERT INTO transport (name, price_for_delivery) VALUES ('Plane', 800);
INSERT INTO transport (name, price_for_delivery) VALUES ('Plane2', 1200);
INSERT INTO transport (name, price_for_delivery) VALUES ('Rail', 100);
INSERT INTO transport (name, price_for_delivery) VALUES ('Rail2', 200);
INSERT INTO transport (name, price_for_delivery) VALUES ('Rail3', 600);
INSERT INTO transport (name, price_for_delivery) VALUES ('Plane3', 690);
INSERT INTO transport (name, price_for_delivery) VALUES ('Truck', 657);
INSERT INTO transport (name, price_for_delivery) VALUES ('Truck3', 370);
INSERT INTO transport (name, price_for_delivery) VALUES ('Truck', 785);
INSERT INTO transport (name, price_for_delivery) VALUES ('Rail', 940);
INSERT INTO transport (name, price_for_delivery) VALUES ('Plane', 600);
INSERT INTO transport (name, price_for_delivery) VALUES ('Plane', 600);
INSERT INTO transport (name, price_for_delivery) VALUES ('Rail', 1010);

--shipment
INSERT INTO shipment (id, customer_id, company_id, package_id, bill_id, transport_name,order_date, delivery_date) VALUES (45, 101, 002,301, 901, 'Truck', '16-05-2021', '05-06-2021' );
INSERT INTO shipment (id, customer_id, company_id, package_id, bill_id, transport_name,order_date, delivery_date) VALUES (46, 102, 009,302, 902, 'Truck1721', '30-06-2019', '01-07-2019');
INSERT INTO shipment (id, customer_id, company_id, package_id, bill_id, transport_name,order_date, delivery_date) VALUES (47, 105, 011,303, 903, 'Plane', '11-04-2019', '18-04-2019' );
INSERT INTO shipment (id, customer_id, company_id, package_id, bill_id, transport_name,order_date, delivery_date) VALUES (48, 104, 005,304, 904, 'Plane2', '20-06-2020', '25-06-2020' );
INSERT INTO shipment (id, customer_id, company_id, package_id, bill_id, transport_name,order_date, delivery_date) VALUES (49, 109, 007,305, 905, 'Rail',  '25-06-2020', '30-06-2020' );
INSERT INTO shipment (id, customer_id, company_id, package_id, bill_id, transport_name,order_date, delivery_date) VALUES (50, 112, 002,306, 906, 'Rail2', '08-01-2021', '13-02-2021' );
INSERT INTO shipment (id, customer_id, company_id, package_id, bill_id, transport_name,order_date, delivery_date) VALUES (51, 113, 002,307, 907, 'Rail3', '17-09-2020', '25-09-2020' );
INSERT INTO shipment (id, customer_id, company_id, package_id, bill_id, transport_name,order_date, delivery_date) VALUES (52, 110, 007,308, 908, 'Plane3', '22-10-2021', '01-11-2021' );

--track / history
INSERT INTO track(track_id, status, vehicle, start_loc, current_loc, end_loc)
VALUES (45, 'delivered', 'Truck', 'Kiev', 'Moscow', 'Moscow');
INSERT INTO history (id, date, location) VALUES (45, '16-05-2021', 'Kiev');
INSERT INTO history (id, date, location) VALUES (45, '03-06-2021', 'Moscow');
INSERT INTO history (id, date, location) VALUES (45, '05-06-2021', 'Moscow');

INSERT INTO track(track_id, status, vehicle, start_loc, current_loc, end_loc)
VALUES (46, 'delivered', 'Truck1721', 'USA', 'Turkey', 'Turkey');
INSERT INTO history(id, date, location) VALUES (46, '30-06-2019', 'USA');
INSERT INTO history(id, date, location) VALUES (46, '30-06-2019', 'Turkey');
INSERT INTO history(id, date, location) VALUES (46, '01-07-2019', 'Turkey');

INSERT INTO track(track_id, status, vehicle, start_loc, current_loc, end_loc)
VALUES (47, 'on the way', 'Plane', 'USA', 'Georgia', 'Turkey');
INSERT INTO history(id, date, location) VALUES (47, '11-04-2020', 'USA');
INSERT INTO history(id, date, location) VALUES (47, '15-04-2020', 'Georgia');

INSERT INTO track(track_id,start_loc,current_loc,end_loc,vehicle,status)
VALUES (48,'Denmark','German','Kazakhstan','Plane2','on the way');
insert into history(id,location,date) values(48,'Denmark','20-06-2020');
insert into history(id,location,date) values(48,'German','23-06-2020');

INSERT INTO track(track_id,start_loc,current_loc,end_loc,vehicle,status)
VALUES (49,'Italy','German','Kazakhstan','Rail','on the way');
insert into history(id,location,date) values(49,'Italy','25-06-2020');
insert into history(id,location,date) values(49,'German','29-06-2020');

INSERT INTO track(track_id,start_loc,current_loc,end_loc,vehicle,status)
VALUES (50,'Canada','Switzerland','Kazakhstan','Rail2','on the way');
insert into history(id,location,date) values(50,'Canada','08-01-2021');
insert into history(id,location,date) values(50,'Switzerland','09-02-2021');
insert into history(id,location,date) values(50,'Kazakhstan','11-02-2021');

INSERT INTO track(track_id,start_loc,current_loc,end_loc,vehicle,status)
VALUES (51,'Japan','China','China','Rail3','delivered');
insert into history(id,location,date) values(51,'Japan','17-09-2020');
insert into history(id,location,date) values(51,'China','22-09-2020');
insert into history(id,location,date) values(51,'China','25-09-2020');

INSERT INTO track(track_id,start_loc,current_loc,end_loc,vehicle,status)
VALUES (52,'Spain','Kiev','Kazakhstan','Plane3','delivered');
insert into history(id,location,date) values(52,'Spain','22-10-2021');
insert into history(id,location,date) values(52,'Kiev','25-10-2021');
insert into history(id,location,date) values(52,'Kazakhstan','01-11-2021');

--credit card
INSERT INTO credit_card (id, cvv, expiration_date, full_name, bill_id, date) VALUES (870, 668, '2021-04-10', 'Angela O.Prima', 901, '16-05-2021');
INSERT INTO credit_card (id, cvv, expiration_date, full_name, bill_id, date) VALUES (890, 345, '2026-05-05', 'Zola L.Gearhart', 902, '30-06-2019');
INSERT INTO credit_card (id, cvv, expiration_date, full_name, bill_id, date) VALUES (876, 789, '2026-12-15', 'Freda D.Gallardo', 903, '11-04-2020');
INSERT INTO credit_card (id, cvv, expiration_date, full_name, bill_id, date) VALUES (871, 456, '2023-10-06', 'Steven J.Proskal', 904, '20-06-2020');
INSERT INTO credit_card (id, cvv, expiration_date, full_name, bill_id, date) VALUES (872, 409, '2021-12-26', 'Vicky J.Gladden', 905, '25-06-2020');
INSERT INTO credit_card (id, cvv, expiration_date, full_name, bill_id, date) VALUES (873, 901, '2020-05-16', 'Crystal T.McNeil', 906, '08-01-2021');
INSERT INTO credit_card (id, cvv, expiration_date, full_name, bill_id, date) VALUES (874, 101,'2025-03-12', 'Sue M.Stoddard', 907, '17-09-2020');
INSERT INTO credit_card (id, cvv, expiration_date, full_name, bill_id, date) VALUES (875, 203, '2026-10-02', 'Lola H.Wahl', 908, '22-10-2021');

--prices
insert into prices(cost, package_type) values(500,'small_pack');
insert into prices(cost, package_type) values(2000, 'small');
insert into prices(cost, package_type) values(1550,'express');
insert into prices(cost, package_type) values(1500,'big_pack');

--hazardous_material
INSERT INTO hazardous_material(type, package_id) VALUES ('no hazardous material', 'package1');
INSERT INTO hazardous_material(type, package_id) VALUES ('no hazardous material', 'package2');
INSERT INTO hazardous_material(type, package_id) VALUES ('no hazardous material', 'package3');
INSERT INTO hazardous_material(type, package_id) VALUES ('no hazardous material', 'package4');
INSERT INTO hazardous_material(type, package_id) VALUES ('no hazardous material', 'package5');
INSERT INTO hazardous_material(type, package_id) VALUES ('no hazardous material', 'package6');
INSERT INTO hazardous_material (type, package_id) VALUES ('no hazardous material', 'package7');
INSERT INTO hazardous_material(type, package_id) VALUES ('detected hazardous material', 'package8');
INSERT INTO hazardous_material(type, package_id) VALUES ('no hazardous material', 'package9');
INSERT INTO hazardous_material(type, package_id) VALUES ('no hazardous material', 'package10');
INSERT INTO hazardous_material(type, package_id) VALUES ('no hazardous material', 'package11');
INSERT INTO hazardous_material(type, package_id) VALUES ('no hazardous material', 'package12');
INSERT INTO hazardous_material(type, package_id) VALUES ('no hazardous material', 'package13');
INSERT INTO hazardous_material(type, package_id) VALUES ('no hazardous material', 'package14');
INSERT INTO hazardous_material(type, package_id) VALUES ('no hazardous material', 'package15');

--international shipment
INSERT INTO international_shipment(declaration_id) VALUES ('Declaration1');