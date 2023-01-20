#! /bin/bash

PSQL="psql --username=postgres --dbname=universe -t --no-align -c"
echo $1
if [[ $1 =~ ^[0-9]+$ ]]
then

  COUNT=0
  while [[ $COUNT -lt $1 ]]
  do
    GLX_ID=$(( $RANDOM%14+4 ))
    STAR_NAME=STAR-$RANDOM
    AGE=$(( $RANDOM*10000))
    INSERT_RES=$($PSQL "insert into star( name, galaxy_id, age, is_bright) VALUES('$STAR_NAME', $GLX_ID, $AGE, true )")
    echo "$INSERT_RES"
    #echo $COUNT
  ((COUNT++))
  
  done
else
echo kaç ay insert etmek istiyorsan arg olarak ekle
fi