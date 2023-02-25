CREATE TABLE "production" (
  "id" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "name" varchar(255),
  "created_at" timestamp DEFAULT 'now',
  "updated_at" timestamp DEFAULT 'now'
);

CREATE TABLE "movie" (
  "id" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "title" varchar(255),
  "year" integer,
  "created_at" timestamp DEFAULT 'now',
  "updated_at" timestamp DEFAULT 'now'
);

CREATE TABLE "genre" (
  "id" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "title" varchar(255),
  "created_at" timestamp DEFAULT 'now',
  "updated_at" timestamp DEFAULT 'now'
);

CREATE TABLE "genre_movie" (
  "id" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "production_id" integer,
  "movie_id" integer,
  "genre_id" integer,
  "created_at" timestamp DEFAULT 'now',
  "updated_at" timestamp DEFAULT 'now'
);

ALTER TABLE "genre_movie" ADD FOREIGN KEY ("production_id") REFERENCES "production" ("id");

ALTER TABLE "genre_movie" ADD FOREIGN KEY ("movie_id") REFERENCES "movie" ("id");

ALTER TABLE "genre_movie" ADD FOREIGN KEY ("genre_id") REFERENCES "genre" ("id");
