#!/bin/bash

# Just a small ugly script that makes it easier for me to see which domains (approximately) that are used in the filter. (Only counting first-party domains.)

INPUT_FILE='main.txt'
COSMETIC='output/1.txt'
SPECIFIC='output/2.txt'
OUTPUT='domains.txt'

# COSMETIC FILTERS
# egrep cosmetic filters and scriptlets
egrep '##' $INPUT_FILE > $COSMETIC

# Grab all domains before a #
sed -i -e 's/#.*//' $COSMETIC

# Remove empty lines
sed -r -i -e '/^\s*$/d' $COSMETIC

# Put domains separated by a comma on a new line
cat $COSMETIC | sed -i -e 's/,/\n/g' $COSMETIC

# Remove duplicate lines and sort
cat $COSMETIC | sort -u -V -o $COSMETIC $COSMETIC

# DOMAIN SPECIFIC
egrep 'domain=' $INPUT_FILE > $SPECIFIC

# Grab all domains after domain=
sed -i -e 's/.*domain=//' $SPECIFIC

# Put domains separated by a | on a new line
cat $SPECIFIC | sed -i -e 's/|/\n/g' $SPECIFIC

# Remove duplicate lines and sort
cat $SPECIFIC | sort -u -V -o $SPECIFIC $SPECIFIC

# Merge files and remove empty lines and duplicates again
paste -d"\n" $COSMETIC $SPECIFIC > $OUTPUT
sed -r -i -e '/^\s*$/d' $OUTPUT
cat $OUTPUT | sort -u -V -o $OUTPUT $OUTPUT

# No need to keep the temp txt files in output
rm output/*.txt