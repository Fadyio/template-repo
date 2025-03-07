package main

import (
	"log"

	_ "github.com/spf13/pflag"
	"github.com/thockin/go-build-template/pkg/version"
)

func main() {
	log.Printf("version: %s\n", version.Version)
}
