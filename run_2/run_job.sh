#!/bin/bash

npool=4
nimage=1
np=`echo "$npool*$nimage" | bc`

nohup /opt/mpich_icc_ifort/bin/mpirun -np $np ~/software/PWSCF/espresso-5.0.3/bin/pw.x -nimage $nimage -npool $npool -input YBCO_STO.pw.in &>YBCO_STO.pw.out &
