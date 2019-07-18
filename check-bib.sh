#!/bin/bash

FILE_PATH=${1?Error: no file path given}

grep '^@.*' $FILE_PATH | sort | uniq -d
