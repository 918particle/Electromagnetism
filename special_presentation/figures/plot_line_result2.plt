set lmargin 12
set bmargin 5

set xtics font "Arial,20"
set ytics font "Arial,20"
set xlabel "Wavenumber (k)" font "Arial,24" offset 0,-0.5
set ylabel "(4{/Symbol p} {/Symbol e}_{0}) V(k) / Q" font "Arial,24" offset -1.5,0
set key top left font "Arial,20" box on spacing 2 width 4 height 0.75
set pointsize 2

c_1 = 1.0/24.0
c_2 = 2*0.0208
p = 3.14159

f(x) = p*(1 + 2.0*p*p*c_1*x**2)
g(x) = p*(1 + 2.0*p*p*c_2*x**2)
h(x) = p*1.0

set xrange [0.01:10.0]
set yrange [0.0:10.0]

set logscale x
#set logscale y

set terminal png
set output "line_of_charges2.png"

plot f(x) w p lc -1 pt 6 title "Discrete", g(x) w l lc -1 lw 2 title "Continuous", h(x) w l lc "red" lw 2 title "Point charge"