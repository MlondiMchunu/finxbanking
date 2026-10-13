INSERT INTO entries (
    account_id,
    amount
) VALUES (
    $1, $2, $3
) returning *;

-- name: getEntry :one
SELECT * FROM entries
WHERE account_id = $1 LIMIT 1;

-- name: ListEntries :many
SELECT * FROM entries
ORDER BY amount
LIMIT $1
OFFSET $2;

-- name: UpdateEntry :one
UPDATE entries SET amount = $2 WHERE account_id = $1 RETURNING *;

-- name: DeleteEntry :exec 
DELETE FROM entries WHERE account_id = $1;