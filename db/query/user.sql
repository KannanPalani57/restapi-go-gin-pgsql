-- name: CreateUser :one
INSERT INTO "user" (
  email,
  full_name,
  password, 
  email_verified
) VALUES (
  $1, $2, $3, $4
) RETURNING *;

-- name: GetUser :one
SELECT * FROM "user"
WHERE full_name = $1 LIMIT 1;
