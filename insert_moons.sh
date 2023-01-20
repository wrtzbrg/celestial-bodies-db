#! /bin/bash

PSQL="psql --username=postgres --dbname=universe -t --no-align -c"
echo $1
if [[ $1 =~ ^[0-9]+$ ]]
then

  COUNT=0
  while [[ $COUNT -lt $1 ]]
  do
    PLANET_ID=$(( $RANDOM%12+1 ))
    MOON_NAME=Moon-$RANDOM
    LIFE=$(( $RANDOM%100 )).$(( $RANDOM%10 ))
    INSERT_RES=$($PSQL "insert into moon(name, planet_id, life_chance,nn, looks_good) VALUES('$MOON_NAME', $PLANET_ID, $LIFE, 0, false )")
    echo "$INSERT_RES"
    #echo $COUNT
  ((COUNT++))
  
  done
else
echo kaç ay insert etmek istiyorsan arg olarak ekle
fi
