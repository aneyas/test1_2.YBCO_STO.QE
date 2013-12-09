#!/bin/bash

npool=1

nohup /opt/mpich_icc_ifort/bin/mpirun -np 1 ~/software/PWSCF/espresso-5.0.3/bin/pw.x -nimage 1 -npool $npool -input YBCO_STO.pw.in &>YBCO_STO.pw.out &
