#!/bin/bash

pdflatex -output-directory build ./main.tex
bibtex ./build/main
pdflatex -output-directory build ./main.tex
pdflatex -output-directory build ./main.tex