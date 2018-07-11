'DATABASE Name: MyChild_Database'

create table Teenage (
	teen_no int(10) NOT NULL AUTO_INCREMENT,
	id_no int(25) NOT NULL UNIQUE,
	name varchar(20)  NOT NULL,
	surname varchar(20) NOT NULL,
	gender varchar(20) NOT NULL,
	age int(25) NOT NULL,
	address varchar(20)  NOT NULL,
	contact_no int(25) NOT NULL,
	email varchar(20),
	username varchar(20),
	password varchar(30),
		
		PRIMARY KEY(teen_no)
);
	
	
create table Staff (
	staff_no int(10) NOT NULL AUTO_INCREMENT,
	name varchar(20)  NOT NULL,
	surname varchar(20) NOT NULL,
	contact_no int(25) NOT NULL,
	email varchar(50),
	job_title varchar(50)
	username varchar(20),
	password varchar(30),
	Org_id int(10),
		
		PRIMARY KEY(staff_no)
		FOREIGN KEY (Org_id)
);
	
create table Parent (
	parent_no int(10) NOT NULL AUTO_INCREMENT,
	id_no int(25) NOT NULL UNIQUE,
	name varchar(20)  NOT NULL,
	surname varchar(20) NOT NULL,
	gender varchar(20) NOT NULL,
	age int(25) NOT NULL,
	address varchar(20)  NOT NULL,
	contact_no int(25) NOT NULL,
	email varchar(20),
	username varchar(20),
	password varchar(30),
		
		PRIMARY KEY(parent_no)
);	

create table News_Feed (
	news_no int(10) NOT NULL AUTO_INCREMENT,
	news varchar(250)  NOT NULL,
	date_posted date, 
	Org_id int(10),
		
		PRIMARY KEY(news_no)
		FOREIGN KEY (Org_id)
);
	
	
create table Parent_platform (
	pp_no int(10) NOT NULL AUTO_INCREMENT,
	message varchar(250)  NOT NULL,
	parent_no int(10), 
	staff_id int(10),
		
		PRIMARY KEY(pp_no)
		FOREIGN KEY (parent_no)
		FOREIGN KEY (staff_id)
);	

create table Open_platform (
	op_no int(10) NOT NULL AUTO_INCREMENT,
	message varchar(250)  NOT NULL,
	parent_no int(10), 
	staff_id int(10),
	teen_no int(10)
		
		PRIMARY KEY(op_no)
		FOREIGN KEY (parent_no)
		FOREIGN KEY (teen_no)
		FOREIGN KEY (Org_id)
);	

create table Teen_platform (
	tp_no int(10) NOT NULL AUTO_INCREMENT,
	message varchar(250)  NOT NULL, 
	staff_id int(10),
	teen_no int(10)
		
		PRIMARY KEY(tp_no)
		FOREIGN KEY (teen_no)
		FOREIGN KEY (Org_id)
);		
	
	
	create table Workshop (
	workshop_no int(10) NOT NULL AUTO_INCREMENT,
	workshop_date date,
	workshop_time time, 
	address varchar(30),
	workshop_name varchar(50),
		
		PRIMARY KEY(workshop_no)
);	
	
create table Admin (
	admin_no int(10) NOT NULL AUTO_INCREMENT,
	 name varchar(20)  NOT NULL,
	surname varchar(20) NOT NULL,
	address varchar(30),
    email varchar(20),
	username varchar(20),
	password varchar(30),
		
	PRIMARY KEY(admin_no)
	
	
);

create table Organisation (
	org_no int(10) NOT NULL AUTO_INCREMENT,
	 org_name varchar(20)  NOT NULL,
	surname varchar(20) NOT NULL,
	org_address varchar(30),
	dicription varchar(30),
	code varchar(30),
	
	PRIMARY KEY(org_no)
	
	
);

	