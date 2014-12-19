#!/bin/bash
file=$1
start=$2
amount=$3
end=$(($start+$amount-1))

for (( c=$start; c<=$end; c++ ))
do
  echo "J
  H 100
  S l1;0,0,30,30,50
  O R
  T 7,7,0,5,pt14;do not remove!
  B 5,10,0,EAN8,12,0.6;$c
  T 5,28,0,5,pt14;31c3 LOC
  T 30,28,0,5,pt14;CCCV
  A 1" >> $file
done
