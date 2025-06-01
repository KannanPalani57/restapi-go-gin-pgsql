-- name: CreateUser :one
INSERT INTO users (
  password,
  full_name,
  email, 
  email_verified
) VALUES (
  $1, $2, $3, $4
) RETURNING *;

-- name: GetUser :one
SELECT * FROM users
WHERE full_name = $1 LIMIT 1;
