#!/bin/bash

WKDIR='<SET WKDIR HERE>'
FILES=$(basename "$WKDIR/*.fasta")

for f in $FILES
do
	sed -i 's/_[^_]*$//g' $f; #removes end of the fasta header following last '_'
	sed -i 's/^[^_]*_/>/g' $f; #removes beginning of fasta header until first '_'
done
