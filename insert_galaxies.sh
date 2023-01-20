#! /bin/bash

PSQL="psql --username=postgres --dbname=universe -t --no-align -c"
echo $1
if [[ $1 =~ ^[0-9]+$ ]]
then

  COUNT=0
  while [[ $COUNT -lt $1 ]]
  do
    GLX_NAME=GLX-$RANDOM
    INSERT_RES=$($PSQL "insert into galaxy(name, describe, nn, nnn) VALUES('$GLX_NAME', 'describe', $RANDOM, $RANDOM )")
    echo "$INSERT_RES"
    #echo $COUNT
  ((COUNT++))
  
  done
else
echo kaç glxy insert etmek istiyorsan arg olarak ekle
fi