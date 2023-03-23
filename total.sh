#!/bin/bash 

# search for .yaml files recursively in the home directory 
for file in $(find ~ -name "*.yaml")
do
  echo -n "$file:" 
  wc -l $file | awk '{print $1}'
done 