-- Create table in data base

CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar,
  "email" varchar,
  "password" varchar,
  "age" int,
  "role" int,
  "membership" int
);

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "categorie" int,
  "title" varchar,
  "description" text,
  "level" int,
  "teacher" varchar
);

CREATE TABLE "course_videos" (
  "id" uuid PRIMARY KEY,
  "title" varchar,
  "url" varchar
);

CREATE TABLE "courses_course_video" (
  "id" uuid PRIMARY KEY,
  "course_id" uuid,
  "course_video" uuid
);

CREATE TABLE "categories" (
  "id" serial PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "roles" (
  "id" serial PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "memberships" (
  "id" serial PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "courses_users" (
  "id" uuid PRIMARY KEY,
  "course_id" uuid,
  "course_user" uuid
);

CREATE TABLE "levels" (
  "id" srial PRIMARY KEY,
  "name" varchar
);

ALTER TABLE "users" ADD FOREIGN KEY ("membership") REFERENCES "memberships" ("id");

ALTER TABLE "users" ADD FOREIGN KEY ("role") REFERENCES "roles" ("id");

ALTER TABLE "courses_users" ADD FOREIGN KEY ("course_user") REFERENCES "users" ("id");

ALTER TABLE "courses_users" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("categorie") REFERENCES "categories" ("id");

ALTER TABLE "courses_course_video" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "courses_course_video" ADD FOREIGN KEY ("course_video") REFERENCES "course_videos" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("level") REFERENCES "levels" ("id");

-- Insert data in data base 

insert into users (
	id,
	name,
	email,
	password,
	age,
	role,
	membership
) values (
	'0670cb35-186d-4b5c-b9f3-2b6a64fa2b49',
	'oscar',
	'oscar045@gmail.com',
	'Crypt0.12S',
	20,
	1,
	1
), (
	'fd5d045b-67a8-4390-9843-ffa16973343c',
	'gilberto',
	'gilberto012@gmail.com',
	'Crzz12.+',
	22,
	2,
	2
);

insert into roles (
	id,
	name
	
) values (
	1,
	'student'
), (
	2,
	'teacher'
), (
	3, 
	'admin'
);

insert into memberships (
	id,
	name
) values(
	1,
	'pack basic'
), (
	2,
	'package medium'
), (
	3,
	'package premium'
);

insert into levels (
	id,
	name
) values (
 	1,
 	'beginners'
 ), (
 	2,
 	'middle'
 ),  (
	3,
	'advanced'
 );

insert into courses_users (
	id,
	course_id,
	course_user
) values(
	'f7f8517c-e876-4084-a1a7-79db057c8707',
	'01841dd3-f4c4-4b1f-aab8-364c152b64d4',
	'0670cb35-186d-4b5c-b9f3-2b6a64fa2b49'
), (
	'15752578-87a4-444b-ac60-67de78f1d48f',
	'11d5b279-d619-418d-b30d-859a579bd9ef',
	'fd5d045b-67a8-4390-9843-ffa16973343c'
);
 
insert into courses_course_video (
	id,
	course_id,
	course_video
) values (
	'a99c23fb-4a67-4160-bb35-76d9f383dcad',
	'01841dd3-f4c4-4b1f-aab8-364c152b64d4',
	'f09f8bdb-b732-43a3-980c-1ed9dd9dd5c0'
);

insert into courses (
	id,
	categorie,
	title,
	description,
	level,
	teacher
) values (
	'01841dd3-f4c4-4b1f-aab8-364c152b64d4',
	1,
	'programing',
	'this course is about programing with javascript',
	1,
	'alex'
), (
	'11d5b279-d619-418d-b30d-859a579bd9ef',
	2,
	'Desing UX'
	'Course about Desing UX'
	3,
	'Mk ramiro'
);


insert into course_videos (
	id,
	title,
	url
) values (
 'f09f8bdb-b732-43a3-980c-1ed9dd9dd5c0',
 'JavaScript',
 'https://courseWebDesing.com'
), (
	'096fe186-cf4e-44d6-a416-de3299e5d140',
	'Desing UX',
	'https://courseDesingUX.com'
);

insert into categories (
	id,
	name 
) values (
	1,
	'software'
), (
	2,
	'Desing UX'
);



 