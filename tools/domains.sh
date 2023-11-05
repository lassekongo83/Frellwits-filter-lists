#!/bin/bash

# A simple script to list all the domains included in a filter file. It excludes domains starting with ||.

INPUT_FILE='../lists/main.txt'
OUTPUT='../../domains.txt'

# COSMETIC FILTERS
# egrep cosmetic filters and scriptlets
egrep '##' $INPUT_FILE | sed -e 's/#.*//' | tr ',' '\n' | sort -u -V > $OUTPUT

# DOMAIN SPECIFIC
egrep 'domain=' $INPUT_FILE | sed -e 's/.*domain=//' | tr '|' '\n' | sort -u -V >> $OUTPUT

# Remove duplicate lines and sort
sort -u -V -o $OUTPUT $OUTPUT