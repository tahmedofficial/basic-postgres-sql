-- Active: 1748020506171@@127.0.0.1@5432@ph@public

CREATE Table my_users (
    user_name VARCHAR(50),
    email VARCHAR(100)
);

DROP Table my_user

INSERT INTO
    my_users
VALUES ('tanvir', 'tanvir@gmail.com'),
    ('ornee', 'ornee@gmail.com');

SELECT * FROM my_users

CREATE Table deleted_users (
    deleted_user_name VARCHAR(50),
    deletedAt TIMESTAMP
)

SELECT * FROM deleted_users

CREATE or REPLACE Function save_deleted_user() RETURNS TRIGGER LANGUAGE PLPGSQL as $$
    BEGIN
        INSERT INTO deleted_users VALUES (OLD.user_name, now());
        RAISE NOTICE ' User audite log created';
        RETURN OLD;
    END
$$

CREATE Trigger save_deleted_user_trigger
BEFORE DELETE on my_users
for EACH row
EXECUTE FUNCTION save_deleted_user();

DELETE FROM my_users WHERE user_name = 'tanvir'