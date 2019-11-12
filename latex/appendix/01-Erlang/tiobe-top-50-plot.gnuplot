set terminal eps
set output "tiobe-top-50-plot.eps"

set datafile separator ","

set key off

set ylabel "Positioning (lower numeric value is better)"

set xdata time
set timefmt "%Y-%m"

set yrange [50 : 1] reverse # Reverse the y-axis
set xrange ["2016-07" : "2019-09"]
set format x "%b'%y"
plot "tiobe-top-50.csv" using 1:2 with lines lt rgb "#A2003E"
