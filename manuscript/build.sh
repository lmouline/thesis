#!/bin/bash

pdflatex -output-directory build ./Main.tex
makeindex  -s "./build/Main.ist" -t "./build/Main.glg" -o "./build/Main.gls" "./build/Main.glo"
makeindex -s "./build/Main.ist" -t "./build/Main.alg" -o "./build/Main.acr" "./build/Main.acn"
pdflatex -output-directory build ./Main.tex
biber ./build/Main
pdflatex -output-directory build ./Main.tex
pdflatex -output-directory build ./Main.tex