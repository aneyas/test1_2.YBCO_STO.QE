#!/bin/bash

nohup /opt/mpich_icc_ifort/bin/mpirun -np 8 ~/software/PWSCF/espresso-5.0.3/bin/pw.x -npool 8 -input YBCO_STO.pw.in &>YBCO_STO.pw.out &
