#!/bin/bash

pdflatex -output-directory build ./main.tex
bibtex ./build/main
makeindex  -s "./build/main.ist" -t "./build/main.glg" -o "./build/main.gls" "./build/main.glo"
pdflatex -output-directory build ./main.tex
pdflatex -output-directory build ./main.tex
