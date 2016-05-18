#!/bin/bash
FILES=/Users/gaelsonney/dev/custom/*
#for f in $FILES
#echo "***   siteminder_unit   ****"
for f in *.sql
do
  echo "Processing $f file..."
  # take action on each file. $f store current file name
  mysql siteminder_dev -u root -psiteminder < $f
  mysql siteminder_unit -u root -psiteminder < $f
done