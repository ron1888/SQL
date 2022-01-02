--Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null

create table employees (
id serial  primary key,
employee_name Varchar(50) not null
);

--Наполнить таблицу employee 70 строками.

insert into employees
values 
(1, 'Lionel Messi'),
(2, 'Cristiano Ronaldo'),
(3, 'Xavi'),
(4, 'Andres Iniesta'),
(5, 'Zlatan Ibrahimovic'),
(6, 'Radamel Falcao'),
(7, 'Robin van Persie'),
(8, 'Andrea Pirlo'),
(9, 'Yaya Toure'),
(10, 'Edinson Cavani'),
(11, 'Sergio Aguero'),
(12, 'Iker Casillas'),
(13, 'Neymar'),
(14, 'Sergio Busquets'),
(15, 'Xabi Alonso'),
(16, 'Thiago Silva'),
(17, 'Mesut Ozil'),
(18, 'David Silva'),
(19, 'Bastian Schweinsteiger'),
(20, 'Gianluigi Buffon'),
(21, 'Luis Suarez'),
(22, 'Sergio Ramos'),
(23, 'Vincent Kompany'),
(24, 'Gerard Pique'),
(25, 'Philipp Lahm'),
(26, 'Willian'),
(27, 'Marco Reus'),
(28, 'Franck Ribery'),
(29, 'Manuel Neuer'),
(30, 'Ashley Cole'),
(31, 'Wayne Rooney'),
(32, 'Juan Mata'),
(33, 'Thomas Muller'),
(34, 'Mario G?tze'),
(35, 'Karim Benzema'),
(36, 'Cesc Fabregas'),
(37, 'Oscar'),
(38, 'Fernandinho'),
(39, 'Javier Mascherano'),
(40, 'Gareth Bale'),
(41, 'Javier Zanetti'),
(42, 'Daniele De Rossi'),
(43, 'Dani Alves'),
(44, 'Petr Cech'),
(45, 'Mats Hummels'),
(46, 'Carles Puyol'),
(47, 'Angel Di Maria'),
(48, 'Carlos Tevez'),
(49, 'Didier Drogba'),
(50, 'Giorgio Chiellini'),
(51, 'Marcelo'),
(52, 'Stephan El Shaarawy'),
(53, 'Toni Kroos'),
(54, 'Samuel Eto’o'),
(55, 'Jordi Alba'),
(56, 'Mario Gomez'),
(57, 'Arturo Vidal'),
(58, 'Eden Hazard'),
(59, 'James Rodriguez'),
(60, 'Marouane Fellaini'),
(61, 'Ramires'),
(62, 'David Villa'),
(63, 'Klaas Jan Huntelaar'),
(64, 'Nemanja Vidic'),
(65, 'Joe Hart'),
(66, 'Arjen Robben'),
(67, 'Mario Balotelli'),
(68, 'Mathieu Valbuena'),
(69, 'Pierre-Emerick Aubameyang'),
(70, 'Robert Lewandowski');

--Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null

create table salary(
id Serial  primary key,
monthly_salary Int not null
);


--Наполнить таблицу salary 15 строками:

insert into salary
values
(1, 1000),
(2, 1100),
(3, 1200),
(4, 1300),
(5, 1400),
(6, 1500),
(7, 1600),
(8, 1700),
(9, 1800),
(10, 1900),
(11, 2000),
(12, 2100),
(13, 2200),
(14, 2300),
(15, 2400);

--Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null

create table employee_salary(
id Serial  primary key,
employee_id Int not null unique,
salary_id Int not null
);

--Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary
values 
(1, 80, 2),
(2, 81, 1),
(3, 82, 3),
(4, 84, 4),
(5, 85, 6),
(6, 86, 5),
(7, 87, 7),
(8, 89, 8),
(9, 83, 9),
(10, 90, 10),
(11, 1, 11),
(12, 2, 12),
(13, 3, 15),
(14, 4, 14),
(15, 5, 13),
(16, 6, 11),
(17, 7, 1),
(18, 8, 2),
(19, 9, 4),
(20, 10, 5),
(21, 11, 2),
(22, 12, 1),
(23, 13, 1),
(24, 14, 2),
(25, 15, 8),
(26, 16, 9),
(27, 17, 2),
(28, 18, 2),
(29, 19, 12),
(30, 20, 2),
(31, 21, 11),
(32, 22, 15),
(33, 23, 14),
(34, 24, 14),
(35, 25, 13),
(36, 26, 12),
(37, 27, 12),
(38, 28, 11),
(39, 29, 1),
(40, 30, 8);

--Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique

create table roles(
id Serial  primary key,
role_name int not null unique
);

--Поменять тип столба role_name с int на varchar(30)

alter table roles 
alter column role_name type Varchar(30);

--Наполнить таблицу roles 20 строками:

insert into roles 
values
(1, 'Junior Python developer'),
(2, 'Middle Python developer'),
(3, 'Senior Python developer'),
(4, 'Junior Java developer'),
(5, 'Middle Java developer'),
(6, 'Senior Java developer'),
(7, 'Junior JavaScript developer'),
(8, 'Middle JavaScript developer'),
(9, 'Senior JavaScript developer'),
(10, 'Junior Manual QA engineer'),
(11, 'Middle Manual QA engineer'),
(12, 'Senior Manual QA engineer'),
(13, 'Project Manager'),
(14, 'Designer'),
(15, 'HR'),
(16, 'CEO'),
(17, 'Sales manager'),
(18, 'Junior Automation QA engineer'),
(19, 'Middle Automation QA engineer'),
(20, 'Senior Automation QA engineer');

--Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee(
id Serial  primary key,
employee_id Int not null unique references employees(id),
role_id Int not null references roles(id)
);


--Наполнить таблицу roles_employee 40 строками:

insert into roles_employee
values 
(1, 1, 2),
(2, 2, 1),
(3, 3, 3),
(4, 4, 4),
(5, 5, 6),
(6, 6, 5),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 15),
(14, 14, 14),
(15, 15, 13),
(16, 16, 11),
(17, 17, 1),
(18, 18, 2),
(19, 19, 4),
(20, 20, 5),
(21, 21, 2),
(22, 22, 1),
(23, 23, 1),
(24, 24, 2),
(25, 25, 8),
(26, 26, 9),
(27, 27, 2),
(28, 28, 2),
(29, 29, 12),
(30, 30, 2),
(31, 31, 11),
(32, 32, 15),
(33, 33, 14),
(34, 34, 14),
(35, 35, 13),
(36, 46, 12),
(37, 47, 12),
(38, 48, 11),
(39, 49, 1),
(40, 60, 8); 