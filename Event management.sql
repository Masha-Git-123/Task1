create schema if not exists Presidio;
use Presidio;

create table students(
student_id INT Auto_Increment Primary key,
full_name varchar(45) Not Null,
email varchar(150) Not Null Unique,
phonenumber varchar(15) Not Null,
college_name varchar(50) Not Null,
created_at Timestamp DEfault Current_Timestamp
);

create table events(
event_id INT Auto_Increment Primary key,
event_name varchar(100) Not Null,
description varchar(255) Not Null,
even_date DateTime Not Null,
max_seats Int Not Null,
available_seats Int Not Null
);

CREATE TABLE registration (
    registration_id INT AUTO_INCREMENT PRIMARY KEY,

    student_id INT NOT NULL,
    event_id INT NOT NULL,

    registered_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    status VARCHAR(20) DEFAULT 'ACTIVE',

    CONSTRAINT fk_registration_student
        FOREIGN KEY (student_id)
        REFERENCES students(student_id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,

    CONSTRAINT fk_registration_event
        FOREIGN KEY (event_id)
        REFERENCES events(event_id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
);