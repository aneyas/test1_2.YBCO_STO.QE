#!/bin/bash

npool=2
nimage=1
np=`echo "$npool*$nimage" | bc`

nohup /opt/mpich_icc_ifort/bin/mpirun -np $np ~/software/PWSCF/espresso-5.0.3/bin/pw.x -nimage $nimage -npool $npool -input STO.in &>STO.pw.out &
