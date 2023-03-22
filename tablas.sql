CREATE TYPE "level" AS ENUM (
  'beginner',
  'half',
  'advanced'
);

CREATE TABLE "users" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "name" varchar,
  "email" varchar,
  "password" varchar,
  "age" int
);

CREATE TABLE "users_courses" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "user_id" int,
  "course_id" int
);

CREATE TABLE "courses" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "title" varchar,
  "description" varchar,
  "level" level,
  "teacher" varchar,
  "category_id" int
);

CREATE TABLE "course_videos" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "title" varchar,
  "url" string
);

CREATE TABLE "categories" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "name" varchar,
  "video_id" int
);

ALTER TABLE "users_courses" ADD FOREIGN KEY ("user_id") REFERENCES "courses" ("id");

ALTER TABLE "users_courses" ADD FOREIGN KEY ("course_id") REFERENCES "users" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("id");

ALTER TABLE "categories" ADD FOREIGN KEY ("video_id") REFERENCES "course_videos" ("id");



