set lmargin 12
set bmargin 5

set xtics font "Arial,20"
set ytics font "Arial,20"
set xlabel "Distance (z)" font "Arial,24" offset 0,-0.5
set ylabel "(4{/Symbol p} {/Symbol e}_{0}) V(z) / Q" font "Arial,24" offset -1.5,0
set key font "Arial,20" box on spacing 2 width 4 height 0.75
set pointsize 2

c_1 = 1.0/24.0
c_2 = 2*0.0208

f(x) = 1/x - c_1/x**3
g(x) = 1/x - c_2/x**3
h(x) = 1/x

set xrange [0.1:30]
set yrange [0:2]

set logscale x

set terminal png
set output "line_of_charges.png"

plot f(x) w p lc -1 pt 6 title "Discrete", g(x) w l lc -1 lw 2 title "Continuous", h(x) w l lc "red" lw 2 title "Point charge"