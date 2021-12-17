delete from author;
delete from basket;
delete from book;
delete from contains;
delete from customer;
delete from has;
delete from orders;
delete from owner;
delete from phone_number;
delete from publisher;
delete from report;
delete from writes;

insert into author values ('10001', 'William Shakespeare');
insert into author values ('10002', 'Agatha Christie');
insert into author values ('10003', 'Barbara Cartland');
insert into author values ('10004', 'Danielle Steel');
insert into author values ('10005', 'J.K. Rowling');

insert into publisher values ('11001', 'Scholastic', '123 Sesame Street, Ottawa, ON, K1J 3E2', 'scholastic@gmail.com', '123456789101');
insert into publisher values ('11002', 'Chronicle', '100 Bank Street, Toronto, ON, K4P 1P7', 'chronicle@gmail.com', '123456789102');
insert into publisher values ('11003', 'Sterling', '50 Queen Street, Montreal, ON, K9M 7I6', 'sterling@gmail.com', '123456789103');

insert into owner values ('12001', 'Krishna Mathi');

insert into book values ('1112223334441', '11001', '12001', 'Hamlet', 'Fiction', '176', '10.99');
insert into book values ('1112223334442', '11001', '12001', 'Romeo & Juliet', 'Fiction', '192', '16.99');
insert into book values ('1112223334443', '11002', '12001', 'Crooked House', 'Fiction', '253', '21.99');
insert into book values ('1112223334444', '11002', '12001', 'Five Little Pigs', 'Fiction', '145', '8.99');
insert into book values ('1112223334445', '11003', '12001', 'The Wings of Love', 'Non-Fiction', '167', '5.99');
insert into book values ('1112223334446', '11003', '12001', 'Duel of Hearts', 'Non-Fiction', '121', '9.99');
insert into book values ('1112223334447', '11003', '12001', 'The Butler', 'Fiction', '150', '23.99');
insert into book values ('1112223334448', '11003', '12001', 'Royal', 'Fiction', '200', '17.99');
insert into book values ('1112223334449', '11001', '12001', 'Troubled Blood', 'Fiction', '300', '12.99');
insert into book values ('1112223334450', '11002', '12001', 'Harry Potter', 'Fiction', '400', '19.99');

insert into writes values ('10001', '1112223334441');
insert into writes values ('10001', '1112223334442');
insert into writes values ('10002', '1112223334443');
insert into writes values ('10002', '1112223334444');
insert into writes values ('10003', '1112223334445');
insert into writes values ('10003', '1112223334446');
insert into writes values ('10004', '1112223334447');
insert into writes values ('10004', '1112223334448');
insert into writes values ('10005', '1112223334449');
insert into writes values ('10005', '1112223334450');

insert into phone_number values ('11001', '6131234567', 'Work');
insert into phone_number values ('11001', '6471234567', 'Mobile');
insert into phone_number values ('11002', '4169876543', 'Work');
insert into phone_number values ('11002', '4168276463', 'Home');
insert into phone_number values ('11003', '1234567891', 'Work');

insert into customer values ('13001', 'Kobe Bryant', '32 White Street, Ottawa, ON, K3R 9T4', '2000-02-11', '32 White Street, Ottawa, ON, K3R 9T4', '32 White Street, Ottawa, ON, K3R 9T4');
insert into customer values ('13002', 'LeBron James', '64 Black Street, Ottawa, ON, K4R 9Y4', '1996-04-23', '64 Black Street, Ottawa, ON, K4R 9Y4', '98 Blue Street, Ottawa, ON, K8R 9P4');
insert into customer values ('13003', 'Michael Jordan', '96 Red Street, Ottawa, ON, K5R 9L4', '1994-09-03', '1 Green Street, Ottawa, ON, K1R 9K4', '3 Yellow Street, Ottawa, ON, K2R 9O4');

insert into orders values ('1', '13001', 'Completed', '2021-12-07');
insert into orders values ('1', '13002', 'Pending', '2022-01-05');

insert into basket values ('1');
insert into basket values ('2');
insert into basket values ('3');

insert into has values ('13001', '1');
insert into has values ('13002', '2');
insert into has values ('13003', '3');

insert into contains values ('1', '1112223334441', '2');
insert into contains values ('1', '1112223334443', '1');
insert into contains values ('2', '1112223334445', '1');
insert into contains values ('2', '1112223334450', '3');

insert into report values ('1', '12001', '1234567.29', '1234849.89', '6472892.26');
