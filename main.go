package main

import (
	"github.com/bgpat/wantedly-docker-test-api/db"
	"github.com/bgpat/wantedly-docker-test-api/server"
)

// main ...
func main() {
	database := db.Connect()
	s := server.Setup(database)
	s.Run(":8080")
}
