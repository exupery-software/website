package main

import (
	"flag"
	"fmt"
	"html/template"
	"log"
	"os"
	"path"
)

type flags struct {
	name  string
	out   string
	files []string
}

func (f flags) TemplateName() string {
	if f.name != "" {
		return f.name
	}

	// If `name` is unset, use the name of the first file.
	return path.Base(f.files[0])
}

func (f flags) OutputFile() string {
	info, err := os.Stat(f.out)
	if err != nil {
		return f.out
	}

	if !info.IsDir() {
		return f.out
	}

	// if `out` is a directory, use the name of the last file.
	return path.Join(f.out, path.Base(f.files[len(f.files)-1]))
}

func main() {
	var flags flags
	fs := flag.NewFlagSet(os.Args[0], flag.ExitOnError)
	fs.StringVar(&flags.name, "name", "", "template name")
	fs.StringVar(&flags.out, "out", "-", "output file")
	fs.Parse(os.Args[1:])
	flags.files = fs.Args()

	if err := run(flags); err != nil {
		log.Fatal(err)
	}
}

func run(flags flags) error {
	if len(flags.files) == 0 {
		return fmt.Errorf("at least one template required")
	}

	tpl, err := template.ParseFiles(flags.files...)
	if err != nil {
		return err
	}

	var w *os.File
	if outFile := flags.OutputFile(); outFile == "" || outFile == "-" {
		w = os.Stdout
	} else {
		var err error
		w, err = os.Create(outFile)
		if err != nil {
			return err
		}
		defer w.Close()
	}

	return tpl.ExecuteTemplate(w, flags.TemplateName(), nil)
}
