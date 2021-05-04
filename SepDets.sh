#!/bin/bash

dir='/Users/jazminnhalaura/seismic_progs/MatchLocate2-master/OBS/MultipleTemplate'

cd $dir;
rm templatedets.dat newdets.dat

ls -d 2* ../Trace/ > temps.tmp;

cat temps.tmp | awk '{print substr($0,1,4) "/" substr($0,5,2) "/" substr($0,7,2)}' > dates.tmp

for line in $(cat dates.tmp); do

cat DetectedFinal_all | grep $line | awk '{if (substr($2,1,4) substr($2,6,2) substr($2,9,2) substr($3,1,2) substr($3,4,2) substr($3,7,5) == $10) print $0}'  >> templatedets.dat;

cat DetectedFinal_all | grep $line | awk '{if (substr($2,1,4) substr($2,6,2) substr($2,9,2) substr($3,1,2) substr($3,4,2) substr($3,7,5) != $10) print $0}' >> newdets.dat

done

cat templatedets.dat | awk '{if ($8 < 0.9) print $0}' > weirdcoef.log

rm *.tmp

 
