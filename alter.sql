-- Active: 1748020506171@@127.0.0.1@5432@ph

SELECT * FROM person2;

ALTER TABLE person2
ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;

ALTER TABLE person2 DROP COLUMN email

INSERT INTO person2 VALUES ( 7, 'khan', 25, 'tanvir@gmail.com' )

ALTER TABLE person2 RENAME age to user_age;

ALTER TABLE person2 alter COLUMN user_name type VARCHAR(50);

ALTER Table person2 alter COLUMN user_age set NOT NULL;

ALTER Table person2 alter COLUMN user_age DROP NOT NULL;

ALTER Table person2
    ADD constraint unique_person2_user_age UNIQUE(user_age);

SELECT * FROM person2

ALTER TABLE person2
    DROP constraint unique_person2_user_age;

ALTER Table person2
    ADD constraint pk_person2_user_age PRIMARY KEY(id);


TRUNCATE Table person2;

