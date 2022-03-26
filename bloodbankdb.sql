/* BLOOD BANK MANAGEMENT */

drop database bloodbank;
create database bloodbank;

\c bloodbank
CREATE TABLE LOGIN
 (	
USER_ID VARCHAR(16) UNIQUE,
USER_NAME VARCHAR(30),
JOB VARCHAR(30),
PASSWORD VARCHAR(30),
PRIMARY KEY(USER_ID)
      );

CREATE TABLE BLOOD_PROCESSING_MANAGER
 (	
    bm_id INT,
    bm_name VARCHAR(15),
    sex CHAR(1),
    PRIMARY KEY (bm_id)
      );

CREATE TABLE REGISTRATION_STAFF
(
    rs_id INT,
    rs_name VARCHAR(15),
    sex CHAR(1),
    PRIMARY KEY (rs_id)
);

CREATE TABLE DISTRICT
(
    district_id INT,
    district_name VARCHAR(15),
    PRIMARY KEY (district_id)
);
	
CREATE TABLE RECIPIENT
 (	r_id INT,
    sex CHAR(1),
    age INT,
    r_regDate INT,
    r_name VARCHAR(15),
    b_qnty DECIMAL DEFAULT 10.0,
    r_bloodGroup VARCHAR,
    rs_id INT,
    dis_id INT,
    bm_id INT,
    FOREIGN KEY (bm_id) REFERENCES BLOOD_PROCESSING_MANAGER(bm_id),
    FOREIGN KEY (rs_id) REFERENCES REGISTRATION_STAFF(rs_id),
    FOREIGN KEY (dis_id) REFERENCES DISTRICT(district_id)
     	);
	
CREATE TABLE DISEASE_RECOGNITION
 (	d_rec_id INT,
    d_rec_name VARCHAR(15),
    sex CHAR(1),
    PRIMARY KEY (d_rec_id)
    	);


CREATE TABLE BLOOD_SAMPLE
(
    blood_group VARCHAR,
    sample_id INT,
    stat VARCHAR,
    derecog_id INT,
    bm_id INT,
    FOREIGN KEY (derecog_id) REFERENCES DISEASE_RECOGNITION(d_rec_id),
    FOREIGN KEY (bm_id) REFERENCES BLOOD_PROCESSING_MANAGER(bm_id)
);

CREATE TABLE HOSPITAL
(
    h_id INT,
    hb_qnty DECIMAL,
    hb_grp VARCHAR,
    Hname VARCHAR,
    dis_id INT,
    bm_id INT,
    FOREIGN KEY (h_id) REFERENCES BLOOD_PROCESSING_MANAGER(bm_id),
    FOREIGN KEY(dis_id) REFERENCES DISTRICT(district_id)
);

CREATE TABLE DONOR
(
    dName VARCHAR,
    did INT,
    sex CHAR(1),
    age INT CHECK (age >=15),
    dreg_date VARCHAR,
    db_grp VARCHAR,
    dis_id INT,
    rs_id INT,
    FOREIGN KEY (dis_id) REFERENCES DISTRICT(district_id),
    FOREIGN KEY (rs_id) REFERENCES REGISTRATION_STAFF(rs_id)
);

