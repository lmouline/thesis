#!/bin/bash

pdflatex -output-directory build ./main.tex
makeindex  -s "./build/main.ist" -t "./build/main.glg" -o "./build/main.gls" "./build/main.glo"
makeindex -s "./build/main.ist" -t "./build/main.alg" -o "./build/main.acr" "./build/main.acn"
pdflatex -output-directory build ./main.tex
biber ./build/main
pdflatex -output-directory build ./main.tex
pdflatex -output-directory build ./main.tex