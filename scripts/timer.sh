#!/bin/bash
COUNTER=$1
COUNTER=$(($COUNTER * 60))
minusone(){
    COUNTER=$(($COUNTER - 1))
    sleep 1
}

while [ $COUNTER -gt 0 ]; 
do
    echo  "You still have $COUNTER  seconds left"
    minusone
done

[ $COUNTER -eq 0 ] && echo time is up && minusone
[ $COUNTER = "-1"] && echo You now are one second late && minusone

while true 
do
    echo You now are ${COUNTER#-} seconds late
    minusone
done