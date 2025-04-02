create table if not exists Unit (
	unit_id serial primary key,
	unit_name varchar(40) not null
)

create table if not exists Position (
	position_id serial primary key,
	position_title varchar(40) not null,
	unit_id integer not null references Unit(unit_id),
	manager_id integer not null
)

create table if not exists Employee (
	employee_id serial primary key,
	name varchar(40) not null,
	unit_id integer not null references Unit(unit_id),
	position_id integer not null references position(position_id)
)





