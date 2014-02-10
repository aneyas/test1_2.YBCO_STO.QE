#!/usr/bin/env gnuplot

set terminal postscript eps size 5in, 3.5in enhanced color dashed "Times-Roman, 32"

file_name = "lattice_constant_in_O-O_distance.eps"
set output file_name

set samples 4000 #make sure the curves are smooth.

set datafile missing '--'

FIT_LIMIT = 1e-30


set ylabel "Distance (angstrom)" offset 1,0

set xlabel "Layers" offset 0,0.7
set format x "%g"
set format y "%4.3f"
#set format y "%8.7f"

#set mxtics 2
set mytics 2
set my2tics 2

set lmargin 7.8
set bmargin 3
set rmargin 1.8

set xrange [1:4]
#set yrange [0:160]

#set xtics 0,200,890 offset 0, 0.0
set xtics 1,1,4 offset 0.0,0
set mytics 2
set mxtics 2


set key at graph 0.70, 0.85 
set key samplen 1 spacing 1.0 font "Time-Roman,24"
set key maxrows 3

lcb=77.1169722464 #lattice constant before relaxation.
lca=77.1169983246 #lattice constant after relaxation.

# Test initial Ti-O distance.
#plot "./atom_positions.DAT" using ($1):(($4-$3)*lcb)\
#     with lp lt 1 ps 1.5 pt 9 lc rgb "red" title "Ti-O (init)"
Ti_O_init=3.89896 #Ti-O distance in the intial configuration.
f(x)=Ti_O_init

# Test initial Sr-O distance.
#plot "./atom_positions.DAT" using ($1):(($2-$4)*lcb)\
#    with lp lt 1 ps 1.5 pt 9 lc rgb "red" title "Sr-O (init)"
Sr_O_init=0.0 #Sr-O distance in the intial configuration.

# Relaxed Ti-O distance.
plot "./atom_positions.DAT" using ($1):(($9-$8)*lca)\
    with lp lt 1 ps 1.5 pt 9 lc rgb "blue" title "O-O (relaxed)",\
    f(x) title "O-O (before relaxation)

#    "./atom_positions.DAT" using ($1):(($5-$3)*lcb)\
#     with lp lt 1 ps 1.5 pt 5 lc rgb "dark-yellow" title "Ti<O (before relaxation)"

!epstopdf `ls -t -1 *.eps | head -1`
