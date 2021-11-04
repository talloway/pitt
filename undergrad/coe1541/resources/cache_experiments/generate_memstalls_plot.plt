# Plot configurations

set style line 1 lt rgb "red" lw 20 ps 5
set style line 2 lt rgb "blue" lw 20 ps 5
set style line 3 lt rgb "green" lw 20 ps 5
set style line 4 lt rgb "purple" lw 20 ps 5
set title "Percentage of Memory Stall Cycles" 
set xlabel "Data structure size"
set ylabel "Percentage of memory stall cycles"
set xrange [ * : * ] noreverse writeback
set x2range [ * : * ] noreverse writeback
set yrange [ * : 100 ] noreverse writeback
set y2range [ * : * ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback
set logscale x
set key at graph 1.0, 0.7

# Render plot
set terminal pdf transparent enhanced font "arial,10" fontscale 5.0 size 45, 30

if (!exists("inputFile")) inputFile='IPC.dat'
if (!exists("outputFile")) outputFile='IPC.pdf'
set output outputFile
plot inputFile using 1:2 with linespoints linestyle 1 t "array", inputFile using 1:3 with linespoints linestyle 2 t "array, no data", \
inputFile using 1:4 with linespoints linestyle 3 t "linked list", inputFile using 1:5 with linespoints linestyle 4 t "linked list, no data"
unset out

