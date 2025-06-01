CREATE TABLE "user" (
  "id" integer PRIMARY KEY,
  "email" varchar,
  "full_name" varchar,
  "password" varchar,
  "email_verified" varchar,
  "created_at"  timestamptz NOT NULL DEFAULT (now())
);
