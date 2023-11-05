#!/bin/bash
# Simple terminal script for submitting stuff to your git repository.

ADDFILES=$(git add .github Frellwits-Swedish-Hosts-File.txt LICENSE resources tools lists Frellwits-Swedish-Filter.txt README.md gitpush.sh filter_info_en.md filter_info_sv.md CONTRIBUTING.md);
read -r -p "Commit message: "  COMMITMESSAGE
COMMIT=$(git commit -m "$COMMITMESSAGE");
PUSH=$(git push -u origin master);

echo "$ADDFILES"
echo "$COMMIT"
echo "$PUSH"