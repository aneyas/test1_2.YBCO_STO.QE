#!/usr/bin/env gnuplot

set terminal postscript eps size 5in, 3.5in enhanced color dashed "Times-Roman, 32"

file_name = "atom_positions.eps"
set output file_name

set samples 4000 #make sure the curves are smooth.

set datafile missing '--'

FIT_LIMIT = 1e-30


set ylabel "Distance (angstrom)" offset 0,0

set xlabel "Layers" offset 0,0.7
set format x "%g"
set format y "%g"
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


set key at graph 0.91, 0.75 
set key samplen 1 spacing 1.0 font "Time-Roman,24"
set key maxrows 3

lcb=78.14397 #lattice constant before relaxation.
lca=78.10835 #lattice constant after relaxation.

# Test initial Ti-O distance.
#plot "./atom_positions.DAT" using ($1):(($4-$3)*lcb)\
#     with lp lt 1 ps 1.5 pt 9 lc rgb "red" title "Ti-O (init)"
Ti_O_init=1.9719631 #Ti-O distance in the intial configuration.
f(x)=Ti_O_init

# Test initial Sr-O distance.
#plot "./atom_positions.DAT" using ($1):(($2-$4)*lcb)\
#    with lp lt 1 ps 1.5 pt 9 lc rgb "red" title "Sr-O (init)"
Sr_O_init=0.0 #Sr-O distance in the intial configuration.

# Relaxed Ti-O distance.
plot     "./atom_positions.DAT" using ($1):(($6-$8)*lca)\
     with lp lt 1 ps 1.5 pt 9 lc rgb "blue" title "Ti-O (relaxed, O below Ti)",\
     f(x) title "Ti-O (ideal)",\
    "./atom_positions.DAT" using ($1):(($7-$6)*lca)\
     with lp lt 1 ps 1.5 pt 9 lc rgb "red" title "Ti-O (relaxed, O above Ti)"

!epstopdf `ls -t -1 *.eps | head -1`
