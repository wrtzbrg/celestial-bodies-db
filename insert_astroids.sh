#! /bin/bash

PSQL="psql --username=postgres --dbname=universe -t --no-align -c"
echo $1
if [[ $1 =~ ^[0-9]+$ ]]
then

  COUNT=0
  while [[ $COUNT -lt $1 ]]
  do
    AST_NAME=Astroid-$RANDOM
    INSERT_RES=$($PSQL "insert into astroids(name, hit_earth) VALUES('$AST_NAME', false )")
    echo "$INSERT_RES"
    #echo $COUNT
  ((COUNT++))
  done
else
echo kaç ay insert etmek istiyorsan arg olarak ekle
fi
