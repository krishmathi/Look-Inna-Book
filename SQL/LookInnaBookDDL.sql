create table book(
	ISBN numeric(13),
	publisher_ID varchar(5), 
	owner_ID varchar(5),
	name varchar(20) not null,
	genre varchar(20) check (genre in ('Fiction', 'Non-Fiction')),
	number_of_pages numeric(4),
	price numeric(5,2),
	primary key (ISBN, publisher_ID, owner_ID),
	foreign key (publisher_ID) references publisher (ID)
		on delete cascade,
	foreign key (owner_ID) references owner (ID)
		on delete cascade
);

create table publisher(
	ID varchar(5),
	name varchar(20) not null,
	address varchar(150) not null,
	email varchar(150) not null,
	banking_acct numeric(12) not null,
	primary key (ID),
);

create table author(
	ID varchar(5),
	name varchar(20) not null,
	primary key (ID)
);

create table writes(
	ID varchar(5),
	ISBN numeric(13),
	primary key (ID, ISBN),
	foreign key (ID) references author
		on delete cascade,
	foreign key (ISBN) references book
		on delete cascade
);

create table owner(
	ID varchar(5),
	name varchar(20) not null,
	primary key (ID)
);

create table report(
	ID varchar(5),
	owner_ID varchar(5),
	sales_vs_expidentures numeric(10,2),
	sales_per_genre numeric(10,2),
	sales_per_author numeric(10,2),
	primary key (owner_ID, ID),
	foreign key (owner_ID) references owner (ID)
		on delete cascade
);

create table basket(
	ID varchar(5),
	primary key (ID)
);

create table contains(
	basket_ID varchar(5),
	ISBN numeric(13),
	copies numeric(2),
	primary key (basket_ID, ISBN),
	foreign key (basket_ID) references basket (ID)
		on delete cascade,
	foreign key (ISBN) references book
		on delete cascade
);

create table user(
	ID varchar(5),
	name varchar(20) not null,
	address varchar(150) not null,
	birth_date date not null,
	billing_address varchar(150),
	shipping_address varchar(150),
	primary key (ID)
);

create table order(
	order_no numeric(3),
	user_ID varchar(5),
	status varchar(9) check (status in ('Pending', 'Shipped', 'Completed')),
	expected_delivery date,
	primary key (user_ID, order_no),
	foreign key (user_ID) references user (ID)
		on delete cascade
);

create table has(
	user_ID varchar(5),
	basket_ID varchar(5),
	primary key (user_ID, basket_ID),
	foreign key (user_ID) references user (ID)
		on delete cascade,
	foreign key (basket_ID) references basket (ID)
		on delete cascade
);

create table phone_number(
	publisher_ID varchar(5),
	phone_number varchar(10),
	type varchar(6) check (type in ('Mobile', 'Home', 'Work')),
	primary key (publisher_ID, phone_number),
	foreign key (publisher_ID) references publisher (ID)
		on delete cascade
);
