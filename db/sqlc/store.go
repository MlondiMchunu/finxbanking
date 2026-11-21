package db

import "database/sql"

// store provides all functions to execute db queries and transactions
type Store struct {
	*Queries
	db *sql.DB
}

FUNC 