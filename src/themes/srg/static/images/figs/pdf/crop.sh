#!/bin/sh

for filename in `ls *.pdf`
do
    pdfcrop $filename $filename
done 

