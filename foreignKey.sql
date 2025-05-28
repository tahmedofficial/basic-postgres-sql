-- Active: 1748020506171@@127.0.0.1@5432@ph

CREATE Table "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

CREATE Table post (
    id SERIAL PRIMARY KEY,
    title TEXT,
    user_id INTEGER REFERENCES "user" (id) on delete CASCADE
)

ALTER Table post alter COLUMN user_id set NOT NULL;

INSERT INTO
    "user" (username)
VALUES ('Tanvir'),
    ('Ornee'),
    ('Humayra'),
    ('Rafia');

SELECT * FROM "user";

INSERT INTO
    post (title, user_id)
VALUES (
        'Enjoying a sunny day with ornee',
        2
    ),
    (
        'humayra just share a recipy',
        3
    ),
    (
        'exploring advantures with rafia',
        4
    ),
    ('her wisdom is good', 4)

SELECT * FROM post

DROP TABLE "user"

DROP TABLE "post"

INSERT INTO post (title, user_id) VALUES ('test', NULL)

DELETE FROM "user" WHERE id = 4;

SELECT * FROM post as p JOIN "user" as u on p.user_id = u.id;

INSERT INTO post VALUES (6, 'test title', NULL)

SELECT * FROM post RIGHT JOIN "user" on post.user_id = "user".id;














