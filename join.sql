-- Active: 1748020506171@@127.0.0.1@5432@ph

SELECT * FROM post as p JOIN "user" as u on p.user_id = u.id;

SELECT * FROM post LEFT JOIN "user" on post.user_id = "user".id;

SELECT * FROM post RIGHT JOIN "user" on post.user_id = "user".id;


