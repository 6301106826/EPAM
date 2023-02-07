#!/bin/bash

file_one() {
  for file in "$@"
 do
    if [ -f "$file" ]
 then
      echo "$file is a regular file"
ls -l "$file"
   
 elif [ -d "$file" ]
 then
      echo "$file is a directory"
      ls -l "$file"
    else
      echo "$file is another type of file"
      ls -l "$file"
    fi
  done
}
file_two() {
  local count=0
  for file in "$@"
 do
    if [ -f "$file" ]
 then
      ((count++))
    fi
done
  echo "Total regular files: $count"
}
file_one $@
file_two $@
