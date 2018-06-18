#!/bin/bash
#
# Run me to clean all tex products but the PDF file
#
# $ cd <this/dir>
# $ ./clean.bash
#
#


rm -f *.log
rm -f *.lol
rm -f *.aux
rm -f *.out
rm -f *.toc
rm -f *.tdo
rm -f *.lof
rm -f *.lot
rm -f *.gz
rm -f *.bbl
rm -f *.blg

rm -f chapters/*.log
rm -f chapters/*.aux
rm -f chapters/*.out
rm -f chapters/*.toc
rm -f chapters/*.tdo
rm -f chapters/*.lof
rm -f chapters/*.lot
rm -f chapters/*.gz
rm -f chapters/*.bbl
rm -f chapters/*.blg
