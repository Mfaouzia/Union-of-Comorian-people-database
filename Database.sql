-- UNION OF COMORIAN PEOPLE IN CHINA --

CREATE TABLE administrator(
    admin_id INT,
    login_name VARCHAR(15),
    admin_password VARCHAR (25),
    CONSTRAINT pk_administrator PRIMARY KEY(admin_id)
);

CREATE TABLE member(
    mem_id INT,
    mem_name CHAR(30),
    mem_surname CHAR(30),
    gender VARCHAR(10),
    dob DATE, 
    pob CHAR(40),
    mem_email VARCHAR(60),
    mem_mobile INT(15),
    socio-professional_category CHAR(30),
    marital_status CHAR(30),
    member_as CHAR(40)
    CONSTRAINT pk_member PRIMARY KEY(mem_id)

);

CREATE TABLE adress(
    mem_id INT,
    province CHAR(30),
    city CHAR(30), 
    district CHAR(40),
    street_name VARCHAR(50),
    postal_code INT(20),
    CONSTRAINT fk_adress_member FOREIGN KEY(mem_id)
    REFERENCES member(mem_id)

);

CREATE TABLE titles(
    mem_id INT,
    title CHAR(30), -- president, sg....
	from_date DATE,
	to_date DATE,
	CONSTRAINT fk_titles_member FOREIGN KEY(mem_id) 
	REFERENCES member(mem_id)

);

CREATE TABLE fee(
    mem_id INT,
    membership_fee INT,
    receipt_no VARCHAR(10),
    date_of_receipt DATE,
    contribution_status CHAR(15),
    CONSTRAINT fk_fee_member FOREIGN KEY(mem_id)
    REFERENCES member(mem_id)
 
);

CREATE TABLE activity(
    act_id INT,
    act_name CHAR(50),
    act_place VARCHAR(50),
    act_time DATE,
    act_money_spent INT,
    CONSTRAINT pk_activity PRIMARY KEY(act_id)
);

CREATE TABLE product(
    mem_id INT,
    prod_id INT,
    prod_name CHAR(50),
    pic_file_name VARCHAR(100),
    picture_data VARBINARY(MAX),
    CONSTRAINT pk_product PRIMARY KEY(prod_id, mem_id)

);


