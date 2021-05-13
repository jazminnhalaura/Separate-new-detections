#!/bin/bash

dir='/Users/jazminnhalaura/seismic_progs/Matchlocate2-master/OBS/MultipleTemplate'

cd $dir;

rm dets_MAD20 dets_MAD25;

cat newdets.dat | awk '{if ($9 >= 20) print $0}' > dets_MAD20;

cat newdets.dat | awk '{if ($9 >= 25) print $0}' > dets_MAD25

  
