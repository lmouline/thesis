#!/bin/bash

pdflatex -output-directory build ./Main.tex
bibtex ./build/Main
makeindex  -s "./build/Main.ist" -t "./build/Main.glg" -o "./build/Main.gls" "./build/Main.glo"
pdflatex -output-directory build ./Main.tex
pdflatex -output-directory build ./Main.tex
