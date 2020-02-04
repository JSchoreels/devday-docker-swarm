#!/bin/bash
INPUT_STRING=hello
requestNbr=0
COLOR1='\033[1;31m'
COLOR2='\033[1;32m'
while [ 1 ]
do
  response=$(curl -sS localhost)
  if [[ $response == *"V1"* ]]; then
  	printf "${COLOR1}i=%s %s\n" "$requestNbr" "$response"
  fi
  if [[ $response == *"V2"* ]]; then
	printf "${COLOR2}i=%s %s\n" "$requestNbr" "$response"
  fi
  ((requestNbr++))
done
