package main

import (
	"log"

	_ "github.com/spf13/pflag"
	"github.com/Fadyio/template-repo/Golang-Template/pkg/version"
)

func main() {
	log.Printf("version: %s\n", version.Version)
}
