set grid
set xdata time
set format x "%Y-%m-%d"
set timefmt "%Y-%m-%d"

set datafile separator ","
set term png size 1600,1200

##
set output "/var/www/html/csv-reports/images/getfedora-allpoints.png"
set title "Daily Editions Total Unique IPs"
plot ["2014-12-01":"2019-12-31"] \
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:2 title 'Total downloads' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:3 title 'Editions' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:4 title 'Atomic' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:5 title 'Cloud' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:6 title 'Server' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:7 title 'Workstation' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:8 title 'Unknown Edition' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:9 title 'Fedora 20' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:10 title 'Fedora 21' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:11 title 'Fedora 22' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:12 title 'Fedora 23' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:13 title 'Fedora 24' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:14 title 'Fedora 25' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:15 title 'Fedora 26' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:16 title 'Fedora 27' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:17 title 'Fedora 28' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:18 title 'Fedora 29' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:19 title 'Unknown Release' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:25 title 'x86_32' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:26 title 'x86_64' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:27 title 'Unknown' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:28 title 'netinstalls' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:29 title 'net server' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:30 title 'net workstation' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:31 title 'net cloud' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:32 title 'spins' with lines lw 4
unset output

##
set output "/var/www/html/csv-reports/images/getfedora-editions.png"
set title "Daily Editions Total Unique IPs"
plot ["2014-12-01":"2019-12-31"] \
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:2 title 'Total downloads' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:3 title 'Editions' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:4 title 'Atomic' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:5 title 'Cloud' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:6 title 'Server' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:7 title 'Workstation' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:8 title 'Unknown' with lines lw 4
unset output

##
set output "/var/www/html/csv-reports/images/getfedora-editions-filled.png"
set title "Daily Editions Total Unique IPs"
plot ["2014-12-01":"2019-12-31"] \
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:2 title 'Total downloads' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:3 title 'Editions' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:($4+$5+$6+$7+$8) title 'Atomic' with filledcurves x1,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:($5+$6+$7+$8) title 'Cloud' with filledcurves x1,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:($6+$7+$8) title 'Server' with filledcurves x1,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:($7+$8) title 'Workstation' with filledcurves x1,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:($8) title 'Unknown' with filledcurves x1
unset output

##
set output "/var/www/html/csv-reports/images/getfedora-versions-filled.png"
set title "Daily Version Totals"
plot ["2014-12-01":"2019-12-31"] \
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:2 title 'Total number' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:($9+$10+$11+$12+$13+$14+$15+$16+$17+$18+$19) title 'Fedora-20' with  filledcurves x1,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:(   $10+$11+$12+$13+$14+$15+$16+$17+$18+$19) title 'Fedora-21' with  filledcurves x1,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:(       $11+$12+$13+$14+$15+$16+$17+$18+$19) title 'Fedora-22' with  filledcurves x1,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:(           $12+$13+$14+$15+$16+$17+$18+$19) title 'Fedora-23' with  filledcurves x1,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:(               $13+$14+$15+$16+$17+$18+$19) title 'Fedora-24' with  filledcurves x1,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:(                   $14+$15+$16+$17+$18+$19) title 'Fedora-25' with  filledcurves x1,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:(                       $15+$16+$17+$18+$19) title 'Fedora-26' with  filledcurves x1,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:(                           $16+$17+$18+$19) title 'Fedora-27' with  filledcurves x1,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:(                               $17+$18+$19) title 'Fedora-28' with  filledcurves x1,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:(                                   $18+$19) title 'Fedora-29' with  filledcurves x1,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:(                                       $19) title 'Unknown Rel' with  filledcurves x1
unset output

##
set output "/var/www/html/csv-reports/images/getfedora-arch.png"
set title "Daily x86 Architectures Filled Totals"
plot ["2014-12-01":"2019-12-31"] \
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:2 title 'Total number' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:($25+$26) title 'x86_32' with  filledcurves x1,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:($26) title 'x86_64' with  filledcurves x1
unset output

##
set output "/var/www/html/csv-reports/images/getfedora-netinstalls.png"
set title "Daily Netinstalls Total"
plot ["2014-01-01":"2019-12-31"] \
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:28 title 'Total Netinstalls' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:29 title 'Server' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:30 title 'Workstation' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:31 title 'Cloud' with lines lw 4
unset output

##
set output "/var/www/html/csv-reports/images/getfedora-netinstalls-filled.png"
set title "Daily Netinstalls Total"
plot ["2014-01-01":"2019-12-31"] \
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:28 title 'Total Netinstalls' with lines lw 4,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:($29+$30+$31) title 'Server' with  filledcurves x1,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:($30+$31) title 'Workstation' with filledcurves x1,\
     '/var/www/html/csv-reports/getfedora/getfedoradata-all.csv' using 1:($31) title 'Cloud' with  filledcurves x1
unset output

